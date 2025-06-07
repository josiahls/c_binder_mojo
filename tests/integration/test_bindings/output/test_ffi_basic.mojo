from sys.ffi import DLHandle
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e3508 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer

alias test_int_identity = fn (value: Int32) -> Int32

alias test_uint_identity = fn (value: UInt32) -> UInt32

alias test_long_identity = fn (value: Int64) -> Int64

alias test_float_identity = fn (value: Float32) -> Float32

alias test_double_identity = fn (value: Float64) -> Float64


alias TestFFIBasic_test_int_identity = ExternalFunction['test_int_identity', test_int_identity]
alias TestFFIBasic_test_uint_identity = ExternalFunction['test_uint_identity', test_uint_identity]
alias TestFFIBasic_test_long_identity = ExternalFunction['test_long_identity', test_long_identity]
alias TestFFIBasic_test_float_identity = ExternalFunction['test_float_identity', test_float_identity]
alias TestFFIBasic_test_double_identity = ExternalFunction['test_double_identity', test_double_identity]

@fieldwise_init
struct TestFFIBasic(Copyable, Movable):
    """Handle to the CPython interpreter present in the current process."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var lib: DLHandle
    
    var TestFFIBasic_test_int_identity_func: TestFFIBasic_test_int_identity.type
    var TestFFIBasic_test_uint_identity_func: TestFFIBasic_test_uint_identity.type
    var TestFFIBasic_test_long_identity_func: TestFFIBasic_test_long_identity.type
    var TestFFIBasic_test_float_identity_func: TestFFIBasic_test_float_identity.type
    var TestFFIBasic_test_double_identity_func: TestFFIBasic_test_double_identity.type

    fn __init__(out self):
        try:
            self.lib = DLHandle('/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output/test_ffi_basic.so')
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load TestFFIBasic from", '/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output/test_ffi_basic.so', ":\n", e)
            )

    
        self.TestFFIBasic_test_int_identity_func = TestFFIBasic_test_int_identity.load(self.lib)
        self.TestFFIBasic_test_uint_identity_func = TestFFIBasic_test_uint_identity.load(self.lib)
        self.TestFFIBasic_test_long_identity_func = TestFFIBasic_test_long_identity.load(self.lib)
        self.TestFFIBasic_test_float_identity_func = TestFFIBasic_test_float_identity.load(self.lib)
        self.TestFFIBasic_test_double_identity_func = TestFFIBasic_test_double_identity.load(self.lib)

