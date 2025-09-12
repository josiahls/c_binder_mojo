
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

# # Node: TranslationUnitDecl()
alias __int128_t = # Node: Sign()
alias __uint128_t = # Node: Sign()
struct __NSConstantString_tag(Copyable & Movable):
	pass
alias __NSConstantString = __NSConstantString_tag

alias __SVInt8_t = # Node: Sign()
alias __SVInt16_t = # Node: Sign()
alias __SVInt32_t = # Node: Sign()
alias __SVInt64_t = # Node: Sign()
alias __SVUint8_t = # Node: Sign()
alias __SVUint16_t = # Node: Sign()
alias __SVUint32_t = # Node: Sign()
alias __SVUint64_t = # Node: Sign()
alias __SVFloat16_t = # Node: Sign()
alias __SVFloat32_t = # Node: Sign()
alias __SVFloat64_t = # Node: Sign()
alias __SVBFloat16_t = # Node: Sign()
alias __clang_svint8x2_t = # Node: Sign()
alias __clang_svint16x2_t = # Node: Sign()
alias __clang_svint32x2_t = # Node: Sign()
alias __clang_svint64x2_t = # Node: Sign()
alias __clang_svuint8x2_t = # Node: Sign()
alias __clang_svuint16x2_t = # Node: Sign()
alias __clang_svuint32x2_t = # Node: Sign()
alias __clang_svuint64x2_t = # Node: Sign()
alias __clang_svfloat16x2_t = # Node: Sign()
alias __clang_svfloat32x2_t = # Node: Sign()
alias __clang_svfloat64x2_t = # Node: Sign()
alias __clang_svbfloat16x2_t = # Node: Sign()
alias __clang_svint8x3_t = # Node: Sign()
alias __clang_svint16x3_t = # Node: Sign()
alias __clang_svint32x3_t = # Node: Sign()
alias __clang_svint64x3_t = # Node: Sign()
alias __clang_svuint8x3_t = # Node: Sign()
alias __clang_svuint16x3_t = # Node: Sign()
alias __clang_svuint32x3_t = # Node: Sign()
alias __clang_svuint64x3_t = # Node: Sign()
alias __clang_svfloat16x3_t = # Node: Sign()
alias __clang_svfloat32x3_t = # Node: Sign()
alias __clang_svfloat64x3_t = # Node: Sign()
alias __clang_svbfloat16x3_t = # Node: Sign()
alias __clang_svint8x4_t = # Node: Sign()
alias __clang_svint16x4_t = # Node: Sign()
alias __clang_svint32x4_t = # Node: Sign()
alias __clang_svint64x4_t = # Node: Sign()
alias __clang_svuint8x4_t = # Node: Sign()
alias __clang_svuint16x4_t = # Node: Sign()
alias __clang_svuint32x4_t = # Node: Sign()
alias __clang_svuint64x4_t = # Node: Sign()
alias __clang_svfloat16x4_t = # Node: Sign()
alias __clang_svfloat32x4_t = # Node: Sign()
alias __clang_svfloat64x4_t = # Node: Sign()
alias __clang_svbfloat16x4_t = # Node: Sign()
alias __SVBool_t = # Node: Sign()
alias __builtin_ms_va_list = # Node: Sign()UnsafePointer[]
struct __va_list(Copyable & Movable):
	pass
alias __builtin_va_list = __va_list

alias __u_char = # Node: Sign()
alias __u_short = # Node: Sign()
alias __u_int = # Node: Sign()
alias __u_long = # Node: Sign()
alias __int8_t = # Node: Sign()
alias __uint8_t = # Node: Sign()
alias __int16_t = # Node: Sign()
alias __uint16_t = # Node: Sign()
alias __int32_t = # Node: Sign()
alias __uint32_t = # Node: Sign()
alias __int64_t = # Node: Sign()
alias __uint64_t = # Node: Sign()
alias __int_least8_t = __int8_t
alias __uint_least8_t = __uint8_t
alias __int_least16_t = __int16_t
alias __uint_least16_t = __uint16_t
alias __int_least32_t = __int32_t
alias __uint_least32_t = __uint32_t
alias __int_least64_t = __int64_t
alias __uint_least64_t = __uint64_t
alias __quad_t = # Node: Sign()
alias __u_quad_t = # Node: Sign()
alias __intmax_t = # Node: Sign()
alias __uintmax_t = # Node: Sign()
alias __dev_t = # Node: Sign()
alias __uid_t = # Node: Sign()
alias __gid_t = # Node: Sign()
alias __ino_t = # Node: Sign()
alias __ino64_t = # Node: Sign()
alias __mode_t = # Node: Sign()
alias __nlink_t = # Node: Sign()
alias __off_t = # Node: Sign()
alias __off64_t = # Node: Sign()
alias __pid_t = # Node: Sign()
struct anonomous_record_1(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1

alias __clock_t = # Node: Sign()
alias __rlim_t = # Node: Sign()
alias __rlim64_t = # Node: Sign()
alias __id_t = # Node: Sign()
alias __time_t = # Node: Sign()
alias __useconds_t = # Node: Sign()
alias __suseconds_t = # Node: Sign()
alias __suseconds64_t = # Node: Sign()
alias __daddr_t = # Node: Sign()
alias __key_t = # Node: Sign()
alias __clockid_t = # Node: Sign()
alias __timer_t = # Node: Sign()UnsafePointer[]
alias __blksize_t = # Node: Sign()
alias __blkcnt_t = # Node: Sign()
alias __blkcnt64_t = # Node: Sign()
alias __fsblkcnt_t = # Node: Sign()
alias __fsblkcnt64_t = # Node: Sign()
alias __fsfilcnt_t = # Node: Sign()
alias __fsfilcnt64_t = # Node: Sign()
alias __fsword_t = # Node: Sign()
alias __ssize_t = # Node: Sign()
alias __syscall_slong_t = # Node: Sign()
alias __syscall_ulong_t = # Node: Sign()
alias __loff_t = __off64_t
alias __caddr_t = # Node: Sign()UnsafePointer[]
alias __intptr_t = # Node: Sign()
alias __socklen_t = # Node: Sign()
alias __sig_atomic_t = # Node: Sign()
alias int8_t = __int8_t
alias int16_t = __int16_t
alias int32_t = __int32_t
alias int64_t = __int64_t
alias uint8_t = __uint8_t
alias uint16_t = __uint16_t
alias uint32_t = __uint32_t
alias uint64_t = __uint64_t
alias int_least8_t = __int_least8_t
alias int_least16_t = __int_least16_t
alias int_least32_t = __int_least32_t
alias int_least64_t = __int_least64_t
alias uint_least8_t = __uint_least8_t
alias uint_least16_t = __uint_least16_t
alias uint_least32_t = __uint_least32_t
alias uint_least64_t = __uint_least64_t
alias int_fast8_t = # Node: Sign()
alias int_fast16_t = # Node: Sign()
alias int_fast32_t = # Node: Sign()
alias int_fast64_t = # Node: Sign()
alias uint_fast8_t = # Node: Sign()
alias uint_fast16_t = # Node: Sign()
alias uint_fast32_t = # Node: Sign()
alias uint_fast64_t = # Node: Sign()
alias intptr_t = # Node: Sign()
alias uintptr_t = # Node: Sign()
alias intmax_t = __intmax_t
alias uintmax_t = __uintmax_t
alias ptrdiff_t = # Node: Sign()
alias size_t = # Node: Sign()
alias wchar_t = # Node: Sign()
struct anonomous_record_2(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_2

alias simple_type_byte = # Node: Sign()
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Byte types 

alias get_simple_type_byte = fn (simple_type_byte) -> simple_type_byte
alias simple_type_ubyte = # Node: Sign()
alias get_simple_type_ubyte = fn (simple_type_ubyte) -> simple_type_ubyte
alias simple_type_sbyte = # Node: Sign()
alias get_simple_type_sbyte = fn (simple_type_sbyte) -> simple_type_sbyte
alias simple_type_short = # Node: Sign()
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Short types 

alias get_simple_type_short = fn (simple_type_short) -> simple_type_short
alias simple_type_ushort = # Node: Sign()
alias get_simple_type_ushort = fn (simple_type_ushort) -> simple_type_ushort
alias simple_type_sshort = # Node: Sign()
alias get_simple_type_sshort = fn (simple_type_sshort) -> simple_type_sshort
alias simple_type_int = # Node: Sign()
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Int types 

alias get_simple_type_int = fn (simple_type_int) -> simple_type_int
alias simple_type_uint = # Node: Sign()
alias get_simple_type_uint = fn (simple_type_uint) -> simple_type_uint
alias simple_type_sint = # Node: Sign()
alias get_simple_type_sint = fn (simple_type_sint) -> simple_type_sint
alias simple_type_long = # Node: Sign()
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Long types 

alias get_simple_type_long = fn (simple_type_long) -> simple_type_long
alias simple_type_ulong = # Node: Sign()
alias get_simple_type_ulong = fn (simple_type_ulong) -> simple_type_ulong
alias simple_type_slong = # Node: Sign()
alias get_simple_type_slong = fn (simple_type_slong) -> simple_type_slong
alias simple_type_long_long = # Node: Sign()
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Long long types 

alias get_simple_type_long_long = fn (simple_type_long_long) -> simple_type_long_long
alias simple_type_ulong_long = # Node: Sign()
alias get_simple_type_ulong_long = fn (simple_type_ulong_long) -> simple_type_ulong_long
alias simple_type_slong_long = # Node: Sign()
alias get_simple_type_slong_long = fn (simple_type_slong_long) -> simple_type_slong_long
alias simple_type_float = # Node: Sign()
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Float types 

alias get_simple_type_float = fn (simple_type_float) -> simple_type_float
alias simple_type_double = # Node: Sign()
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Double types 

alias get_simple_type_double = fn (simple_type_double) -> simple_type_double
alias simple_type_long_double = # Node: Sign()
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Long double types 

alias get_simple_type_long_double = fn (simple_type_long_double) -> simple_type_long_double


alias simple_type_defs_get_simple_type_byte = ExternalFunction['get_simple_type_byte', get_simple_type_byte]
alias simple_type_defs_get_simple_type_ubyte = ExternalFunction['get_simple_type_ubyte', get_simple_type_ubyte]
alias simple_type_defs_get_simple_type_sbyte = ExternalFunction['get_simple_type_sbyte', get_simple_type_sbyte]
alias simple_type_defs_get_simple_type_short = ExternalFunction['get_simple_type_short', get_simple_type_short]
alias simple_type_defs_get_simple_type_ushort = ExternalFunction['get_simple_type_ushort', get_simple_type_ushort]
alias simple_type_defs_get_simple_type_sshort = ExternalFunction['get_simple_type_sshort', get_simple_type_sshort]
alias simple_type_defs_get_simple_type_int = ExternalFunction['get_simple_type_int', get_simple_type_int]
alias simple_type_defs_get_simple_type_uint = ExternalFunction['get_simple_type_uint', get_simple_type_uint]
alias simple_type_defs_get_simple_type_sint = ExternalFunction['get_simple_type_sint', get_simple_type_sint]
alias simple_type_defs_get_simple_type_long = ExternalFunction['get_simple_type_long', get_simple_type_long]
alias simple_type_defs_get_simple_type_ulong = ExternalFunction['get_simple_type_ulong', get_simple_type_ulong]
alias simple_type_defs_get_simple_type_slong = ExternalFunction['get_simple_type_slong', get_simple_type_slong]
alias simple_type_defs_get_simple_type_long_long = ExternalFunction['get_simple_type_long_long', get_simple_type_long_long]
alias simple_type_defs_get_simple_type_ulong_long = ExternalFunction['get_simple_type_ulong_long', get_simple_type_ulong_long]
alias simple_type_defs_get_simple_type_slong_long = ExternalFunction['get_simple_type_slong_long', get_simple_type_slong_long]
alias simple_type_defs_get_simple_type_float = ExternalFunction['get_simple_type_float', get_simple_type_float]
alias simple_type_defs_get_simple_type_double = ExternalFunction['get_simple_type_double', get_simple_type_double]
alias simple_type_defs_get_simple_type_long_double = ExternalFunction['get_simple_type_long_double', get_simple_type_long_double]

@always_inline
fn _get_lib_path(so_file_name: String) raises -> Path:
    var env_var_name:String = so_file_name.split('.')[0].upper() + '_LIB_PATH'

    var checked_paths: List[Path] = []

    for ld_path in getenv('LD_LIBRARY_PATH').split(':'):
        if (path := Path(ld_path) / so_file_name).exists():
            return path
        checked_paths.append(path)

    var extra_paths: List[Path] = [
        Path('/usr/local/lib'),
        Path('/usr/lib'),
        Path('/lib'),
        Path(so_file_name),
        Path.home() / '.local' / 'lib',
    ]

    for extra_path in extra_paths:
        if (path := extra_path / so_file_name).exists():
            return path
        checked_paths.append(extra_path)

    if (path := Path(getenv(env_var_name)) / so_file_name).exists():
        return path
    else:
        var msg = String("Could not find library: {0} in any of the following paths: {1} or {2}={3}").format(
            so_file_name, 
            String(", ").join(checked_paths), 
            env_var_name, 
            getenv(env_var_name)
        )
        raise Error(
            msg
        )


@fieldwise_init
struct simple_type_defs(Copyable, Movable):
    var lib: DLHandle
    
    var get_simple_type_byte: simple_type_defs_get_simple_type_byte.type
    var get_simple_type_ubyte: simple_type_defs_get_simple_type_ubyte.type
    var get_simple_type_sbyte: simple_type_defs_get_simple_type_sbyte.type
    var get_simple_type_short: simple_type_defs_get_simple_type_short.type
    var get_simple_type_ushort: simple_type_defs_get_simple_type_ushort.type
    var get_simple_type_sshort: simple_type_defs_get_simple_type_sshort.type
    var get_simple_type_int: simple_type_defs_get_simple_type_int.type
    var get_simple_type_uint: simple_type_defs_get_simple_type_uint.type
    var get_simple_type_sint: simple_type_defs_get_simple_type_sint.type
    var get_simple_type_long: simple_type_defs_get_simple_type_long.type
    var get_simple_type_ulong: simple_type_defs_get_simple_type_ulong.type
    var get_simple_type_slong: simple_type_defs_get_simple_type_slong.type
    var get_simple_type_long_long: simple_type_defs_get_simple_type_long_long.type
    var get_simple_type_ulong_long: simple_type_defs_get_simple_type_ulong_long.type
    var get_simple_type_slong_long: simple_type_defs_get_simple_type_slong_long.type
    var get_simple_type_float: simple_type_defs_get_simple_type_float.type
    var get_simple_type_double: simple_type_defs_get_simple_type_double.type
    var get_simple_type_long_double: simple_type_defs_get_simple_type_long_double.type

    fn __init__(out self):
        try:
            self.lib = DLHandle(_get_lib_path('libsimple_type_defs.so'))
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load simple_type_defs from", 'libsimple_type_defs.so', ":\n", e)
            )

    
        self.get_simple_type_byte = simple_type_defs_get_simple_type_byte.load(self.lib)
        self.get_simple_type_ubyte = simple_type_defs_get_simple_type_ubyte.load(self.lib)
        self.get_simple_type_sbyte = simple_type_defs_get_simple_type_sbyte.load(self.lib)
        self.get_simple_type_short = simple_type_defs_get_simple_type_short.load(self.lib)
        self.get_simple_type_ushort = simple_type_defs_get_simple_type_ushort.load(self.lib)
        self.get_simple_type_sshort = simple_type_defs_get_simple_type_sshort.load(self.lib)
        self.get_simple_type_int = simple_type_defs_get_simple_type_int.load(self.lib)
        self.get_simple_type_uint = simple_type_defs_get_simple_type_uint.load(self.lib)
        self.get_simple_type_sint = simple_type_defs_get_simple_type_sint.load(self.lib)
        self.get_simple_type_long = simple_type_defs_get_simple_type_long.load(self.lib)
        self.get_simple_type_ulong = simple_type_defs_get_simple_type_ulong.load(self.lib)
        self.get_simple_type_slong = simple_type_defs_get_simple_type_slong.load(self.lib)
        self.get_simple_type_long_long = simple_type_defs_get_simple_type_long_long.load(self.lib)
        self.get_simple_type_ulong_long = simple_type_defs_get_simple_type_ulong_long.load(self.lib)
        self.get_simple_type_slong_long = simple_type_defs_get_simple_type_slong_long.load(self.lib)
        self.get_simple_type_float = simple_type_defs_get_simple_type_float.load(self.lib)
        self.get_simple_type_double = simple_type_defs_get_simple_type_double.load(self.lib)
        self.get_simple_type_long_double = simple_type_defs_get_simple_type_long_double.load(self.lib)

