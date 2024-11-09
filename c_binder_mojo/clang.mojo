from memory import UnsafePointer
from sys.info import os_is_linux, os_is_windows, is_64bit, os_is_macos
from sys.ffi import c_char, c_int, c_uint, OpaquePointer, c_long, _external_call_const, external_call, DLHandle
from os import abort
from collections import InlineArray
from memory import bitcast


fn _c_ulong_dtype() -> DType:
    # https://en.wikipedia.org/wiki/64-bit_computing#64-bit_data_models

    @parameter
    if is_64bit() and (os_is_macos() or os_is_linux()):
        # LP64
        return DType.uint64
    elif is_64bit() and os_is_windows():
        # LLP64
        return DType.uint32
    else:
        constrained[False, "size of C `long` is unknown on this target"]()
        return abort[DType]()


alias c_ulong = Scalar[_c_ulong_dtype()]

# Define opaque structures
struct CXIndexStruct:
    var _prt:UnsafePointer[NoneType]

# @value
# @register_passable
struct CXTranslationUnitImpl:
    var _prt:UnsafePointer[NoneType]
    # var _ptr:OpaquePointer
alias CXTranslationUnit = UnsafePointer[CXTranslationUnitImpl]

alias CXIndex = OpaquePointer

# Define CXUnsavedFile structure
struct CXUnsavedFile:
    var Filename: UnsafePointer[c_char]
    var Contents: UnsafePointer[c_char]
    var Length: c_ulong

# Define CXCursor structure
struct CXCursor:
    var kind: c_int
    var xdata: c_int
    # var data: UnsafePointer[OpaquePointer] # This is probably wrong
    # or
    # data0: OpaquePointer
    # data1: OpaquePointer
    # data2: OpaquePointer
    # or
    var data: InlineArray[UnsafePointer[UInt8], 3]
    #     data_array = UnsafePointer[OpaquePointer].alloc(3)
    #     # for i in range(3):
    #     #     data_array[i] = data[i]
    #     self.data = data_array.bitcast[OpaquePointer]()
    # var data: InlineArray[OpaquePointer, 3]

# Define CXString structure
struct CXString:
    var data: OpaquePointer
    var private_flags: c_uint

# Function to parse the translation unit and print AST info
fn clang_ast(filename: UnsafePointer[c_char]) -> StringLiteral:
    dl = DLHandle("/usr/lib/llvm-14/lib/libclang.so.1")

    # Load functions
    clang_createIndex = dl.get_function[fn (c_int, c_int) -> CXIndex]("clang_createIndex")
    clang_parseTranslationUnit2 = dl.get_function[
        fn (
            CXIndex,
            UnsafePointer[c_char],
            UnsafePointer[UnsafePointer[c_char]],
            c_int,
            UnsafePointer[CXUnsavedFile],
            c_uint,
            c_uint,
            UnsafePointer[CXTranslationUnit]
        ) -> c_int
    ]("clang_parseTranslationUnit2")
    clang_disposeTranslationUnit = dl.get_function[fn (CXTranslationUnit) -> NoneType]("clang_disposeTranslationUnit")
    clang_disposeIndex = dl.get_function[fn (CXIndex) -> NoneType]("clang_disposeIndex")
    clang_getTranslationUnitCursor = dl.get_function[fn (CXTranslationUnit) -> CXCursor]("clang_getTranslationUnitCursor")
    clang_getCursorSpelling = dl.get_function[fn (CXCursor) -> CXString]("clang_getCursorSpelling")
    clang_getCString = dl.get_function[fn (CXString) -> UnsafePointer[c_char]]("clang_getCString")
    clang_disposeString = dl.get_function[fn (CXString) -> NoneType]("clang_disposeString")

    # Create an index
    index = clang_createIndex(0, 1)
    if not index.__bool__():
        print("Failed to create index.")
        return 'Failed to create index'

    # Prepare null pointers
    null_args = UnsafePointer[UnsafePointer[c_char]]()
    null_unsaved_files = UnsafePointer[CXUnsavedFile]()

    # Parse the translation unit
    tu = CXTranslationUnit()
    error_code = clang_parseTranslationUnit2(
        index,
        filename,
        null_args,           # No command-line arguments
        0,                   # Number of command-line arguments
        null_unsaved_files,  # No unsaved files
        0,                   # Number of unsaved files
        0,                    # Options (0 for default)
        UnsafePointer.address_of(tu)
    )

    if error_code != 0:
        print(str(error_code))
        return "Failed to parse translation unit"
    else:
        print('it worked')

    if not tu.__bool__():
        print("Failed to parse translation unit.")
        clang_disposeIndex(index)
        return 'Failed to parse translation unit'
    else:
        print("Successfully parsed translation unit.")
    print("tu address:", tu)

    # Get the root cursor of the AST
    root_cursor = clang_getTranslationUnitCursor(tu)

    # Get the spelling of the root cursor
    spelling_cxstring = clang_getCursorSpelling(root_cursor)
    spelling_cstr = clang_getCString(spelling_cxstring)
    spelling = String(spelling_cstr)
    print("Root cursor spelling: " + str(spelling))

    # Dispose of the CXString
    clang_disposeString(spelling_cxstring)

    # Dispose of resources
    clang_disposeTranslationUnit(tu)
    clang_disposeIndex(index)
    return 'Success'
