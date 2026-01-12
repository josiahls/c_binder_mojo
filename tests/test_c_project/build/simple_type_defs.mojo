
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

alias __int128_t = ffi.c_long_long
alias __uint128_t = ffi.c_ulong_long
@fieldwise_init
struct __NSConstantString_tag(Copyable & Movable):
	pass
alias __NSConstantString = __NSConstantString_tag

alias __SVInt8_t = Int8
alias __SVInt16_t = Int16
alias __SVInt32_t = ffi.c_int
alias __SVInt64_t = ffi.c_long_long
alias __SVUint8_t = UInt8
alias __SVUint16_t = UInt16
alias __SVUint32_t = ffi.c_int
alias __SVUint64_t = ffi.c_ulong_long
alias __SVFloat16_t = Float16
alias __SVFloat32_t = Float32
alias __SVFloat64_t = Float64
alias __SVBFloat16_t = BFloat16
alias __clang_svint8x2_t = SIMD[Int8.dtype, 2]
alias __clang_svint16x2_t = SIMD[Int16.dtype, 2]
alias __clang_svint32x2_t = SIMD[ffi.c_int.dtype, 2]
alias __clang_svint64x2_t = SIMD[ffi.c_long_long.dtype, 2]
alias __clang_svuint8x2_t = SIMD[UInt8.dtype, 2]
alias __clang_svuint16x2_t = SIMD[UInt16.dtype, 2]
alias __clang_svuint32x2_t = SIMD[ffi.c_int.dtype, 2]
alias __clang_svuint64x2_t = SIMD[ffi.c_ulong_long.dtype, 2]
alias __clang_svfloat16x2_t = SIMD[Float16.dtype, 2]
alias __clang_svfloat32x2_t = SIMD[Float32.dtype, 2]
alias __clang_svfloat64x2_t = SIMD[Float64.dtype, 2]
alias __clang_svbfloat16x2_t = SIMD[BFloat16.dtype, 2]
alias __clang_svint8x3_t = SIMD[Int8.dtype, 3]
alias __clang_svint16x3_t = SIMD[Int16.dtype, 3]
alias __clang_svint32x3_t = SIMD[ffi.c_int.dtype, 3]
alias __clang_svint64x3_t = SIMD[ffi.c_long_long.dtype, 3]
alias __clang_svuint8x3_t = SIMD[UInt8.dtype, 3]
alias __clang_svuint16x3_t = SIMD[UInt16.dtype, 3]
alias __clang_svuint32x3_t = SIMD[ffi.c_int.dtype, 3]
alias __clang_svuint64x3_t = SIMD[ffi.c_ulong_long.dtype, 3]
alias __clang_svfloat16x3_t = SIMD[Float16.dtype, 3]
alias __clang_svfloat32x3_t = SIMD[Float32.dtype, 3]
alias __clang_svfloat64x3_t = SIMD[Float64.dtype, 3]
alias __clang_svbfloat16x3_t = SIMD[BFloat16.dtype, 3]
alias __clang_svint8x4_t = SIMD[Int8.dtype, 4]
alias __clang_svint16x4_t = SIMD[Int16.dtype, 4]
alias __clang_svint32x4_t = SIMD[ffi.c_int.dtype, 4]
alias __clang_svint64x4_t = SIMD[ffi.c_long_long.dtype, 4]
alias __clang_svuint8x4_t = SIMD[UInt8.dtype, 4]
alias __clang_svuint16x4_t = SIMD[UInt16.dtype, 4]
alias __clang_svuint32x4_t = SIMD[ffi.c_int.dtype, 4]
alias __clang_svuint64x4_t = SIMD[ffi.c_ulong_long.dtype, 4]
alias __clang_svfloat16x4_t = SIMD[Float16.dtype, 4]
alias __clang_svfloat32x4_t = SIMD[Float32.dtype, 4]
alias __clang_svfloat64x4_t = SIMD[Float64.dtype, 4]
alias __clang_svbfloat16x4_t = SIMD[BFloat16.dtype, 4]
alias __SVBool_t = Bool
alias __builtin_ms_va_list = UnsafePointer[Int8]
@fieldwise_init
struct __va_list(Copyable & Movable):
	pass
alias __builtin_va_list = __va_list

alias __u_char = UInt8
alias __u_short = UInt16
alias __u_int = ffi.c_int
alias __u_long = ffi.c_ulong
alias __int8_t = Int8
alias __uint8_t = UInt8
alias __int16_t = Int16
alias __uint16_t = UInt16
alias __int32_t = ffi.c_int
alias __uint32_t = ffi.c_int
alias __int64_t = ffi.c_long
alias __uint64_t = ffi.c_ulong
alias __int_least8_t = __int8_t
alias __uint_least8_t = __uint8_t
alias __int_least16_t = __int16_t
alias __uint_least16_t = __uint16_t
alias __int_least32_t = __int32_t
alias __uint_least32_t = __uint32_t
alias __int_least64_t = __int64_t
alias __uint_least64_t = __uint64_t
alias __quad_t = ffi.c_long
alias __u_quad_t = ffi.c_ulong
alias __intmax_t = ffi.c_long
alias __uintmax_t = ffi.c_ulong
alias __dev_t = ffi.c_ulong
alias __uid_t = ffi.c_int
alias __gid_t = ffi.c_int
alias __ino_t = ffi.c_ulong
alias __ino64_t = ffi.c_ulong
alias __mode_t = ffi.c_int
alias __nlink_t = ffi.c_int
alias __off_t = ffi.c_long
alias __off64_t = ffi.c_long
alias __pid_t = ffi.c_int
# Forward declaration of anonomous_record_1
# @fieldwise_init
# struct anonomous_record_1(Copyable & Movable):
# 	pass
# 
alias __fsid_t = anonomous_record_1

alias __clock_t = ffi.c_long
alias __rlim_t = ffi.c_ulong
alias __rlim64_t = ffi.c_ulong
alias __id_t = ffi.c_int
alias __time_t = ffi.c_long
alias __useconds_t = ffi.c_int
alias __suseconds_t = ffi.c_long
alias __suseconds64_t = ffi.c_long
alias __daddr_t = ffi.c_int
alias __key_t = ffi.c_int
alias __clockid_t = ffi.c_int
alias __timer_t = OpaquePointer
alias __blksize_t = ffi.c_int
alias __blkcnt_t = ffi.c_long
alias __blkcnt64_t = ffi.c_long
alias __fsblkcnt_t = ffi.c_ulong
alias __fsblkcnt64_t = ffi.c_ulong
alias __fsfilcnt_t = ffi.c_ulong
alias __fsfilcnt64_t = ffi.c_ulong
alias __fsword_t = ffi.c_long
alias __ssize_t = ffi.c_long
alias __syscall_slong_t = ffi.c_long
alias __syscall_ulong_t = ffi.c_ulong
alias __loff_t = __off64_t
alias __caddr_t = UnsafePointer[Int8]
alias __intptr_t = ffi.c_long
alias __socklen_t = ffi.c_int
alias __sig_atomic_t = ffi.c_int
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
alias int_fast8_t = Int8
alias int_fast16_t = ffi.c_long
alias int_fast32_t = ffi.c_long
alias int_fast64_t = ffi.c_long
alias uint_fast8_t = UInt8
alias uint_fast16_t = ffi.c_ulong
alias uint_fast32_t = ffi.c_ulong
alias uint_fast64_t = ffi.c_ulong
alias intptr_t = ffi.c_long
alias uintptr_t = ffi.c_ulong
alias intmax_t = __intmax_t
alias uintmax_t = __uintmax_t
alias ptrdiff_t = ffi.c_long
alias size_t = ffi.c_ulong
alias wchar_t = ffi.c_int
# Forward declaration of anonomous_record_2
# @fieldwise_init
# struct anonomous_record_2(Copyable & Movable):
# 	pass
# 
alias max_align_t = anonomous_record_2

alias simple_type_byte = Int8
#  Byte types 

alias get_simple_type_byte = fn (simple_type_byte) -> simple_type_byte
alias simple_type_ubyte = UInt8
alias get_simple_type_ubyte = fn (simple_type_ubyte) -> simple_type_ubyte
alias simple_type_sbyte = Int8
alias get_simple_type_sbyte = fn (simple_type_sbyte) -> simple_type_sbyte
alias simple_type_short = Int16
#  Short types 

alias get_simple_type_short = fn (simple_type_short) -> simple_type_short
alias simple_type_ushort = UInt16
alias get_simple_type_ushort = fn (simple_type_ushort) -> simple_type_ushort
alias simple_type_sshort = Int16
alias get_simple_type_sshort = fn (simple_type_sshort) -> simple_type_sshort
alias simple_type_int = ffi.c_int
#  Int types 

alias get_simple_type_int = fn (simple_type_int) -> simple_type_int
alias simple_type_uint = ffi.c_int
alias get_simple_type_uint = fn (simple_type_uint) -> simple_type_uint
alias simple_type_sint = ffi.c_int
alias get_simple_type_sint = fn (simple_type_sint) -> simple_type_sint
alias simple_type_long = ffi.c_long
#  Long types 

alias get_simple_type_long = fn (simple_type_long) -> simple_type_long
alias simple_type_ulong = ffi.c_ulong
alias get_simple_type_ulong = fn (simple_type_ulong) -> simple_type_ulong
alias simple_type_slong = ffi.c_long
alias get_simple_type_slong = fn (simple_type_slong) -> simple_type_slong
alias simple_type_long_long = ffi.c_long_long
#  Long long types 

alias get_simple_type_long_long = fn (simple_type_long_long) -> simple_type_long_long
alias simple_type_ulong_long = ffi.c_ulong_long
alias get_simple_type_ulong_long = fn (simple_type_ulong_long) -> simple_type_ulong_long
alias simple_type_slong_long = ffi.c_long_long
alias get_simple_type_slong_long = fn (simple_type_slong_long) -> simple_type_slong_long
alias simple_type_float = Float32
#  Float types 

alias get_simple_type_float = fn (simple_type_float) -> simple_type_float
alias simple_type_double = Float64
#  Double types 

alias get_simple_type_double = fn (simple_type_double) -> simple_type_double
alias simple_type_long_double = Float64
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

