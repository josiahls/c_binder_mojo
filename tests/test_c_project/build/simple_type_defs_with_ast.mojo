from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path

Node: TypedefDecl(__int128_t)
alias __int128_t = Int128
Node: TypedefDecl(__uint128_t)
alias __uint128_t = UInt128
Node: TypedefDecl(__NSConstantString)
alias __NSConstantString = __NSConstantString_tag


struct __NSConstantString_tag:
    pass


Node: TypedefDecl(__SVInt8_t)
alias __SVInt8_t = Int8
Node: TypedefDecl(__SVInt16_t)
alias __SVInt16_t = Int16
Node: TypedefDecl(__SVInt32_t)
alias __SVInt32_t = Int32
Node: TypedefDecl(__SVInt64_t)
alias __SVInt64_t = Int64
Node: TypedefDecl(__SVUint8_t)
alias __SVUint8_t = UInt8
Node: TypedefDecl(__SVUint16_t)
alias __SVUint16_t = UInt16
Node: TypedefDecl(__SVUint32_t)
alias __SVUint32_t = UInt32
Node: TypedefDecl(__SVUint64_t)
alias __SVUint64_t = UInt64
Node: TypedefDecl(__SVFloat16_t)
alias __SVFloat16_t = Float16
Node: TypedefDecl(__SVFloat32_t)
alias __SVFloat32_t = Float32
Node: TypedefDecl(__SVFloat64_t)
alias __SVFloat64_t = Float64
Node: TypedefDecl(__SVBFloat16_t)
alias __SVBFloat16_t = BFloat16
Node: TypedefDecl(__clang_svint8x2_t)
alias __clang_svint8x2_t = UnsafePointer[Int8]
Node: TypedefDecl(__clang_svint16x2_t)
alias __clang_svint16x2_t = UnsafePointer[Int16]
Node: TypedefDecl(__clang_svint32x2_t)
alias __clang_svint32x2_t = UnsafePointer[Int32]
Node: TypedefDecl(__clang_svint64x2_t)
alias __clang_svint64x2_t = UnsafePointer[Int64]
Node: TypedefDecl(__clang_svuint8x2_t)
alias __clang_svuint8x2_t = UnsafePointer[UInt8]
Node: TypedefDecl(__clang_svuint16x2_t)
alias __clang_svuint16x2_t = UnsafePointer[UInt16]
Node: TypedefDecl(__clang_svuint32x2_t)
alias __clang_svuint32x2_t = UnsafePointer[UInt32]
Node: TypedefDecl(__clang_svuint64x2_t)
alias __clang_svuint64x2_t = UnsafePointer[UInt64]
Node: TypedefDecl(__clang_svfloat16x2_t)
alias __clang_svfloat16x2_t = UnsafePointer[Float16]
Node: TypedefDecl(__clang_svfloat32x2_t)
alias __clang_svfloat32x2_t = UnsafePointer[Float32]
Node: TypedefDecl(__clang_svfloat64x2_t)
alias __clang_svfloat64x2_t = UnsafePointer[Float64]
Node: TypedefDecl(__clang_svbfloat16x2_t)
alias __clang_svbfloat16x2_t = UnsafePointer[BFloat16]
Node: TypedefDecl(__clang_svint8x3_t)
alias __clang_svint8x3_t = UnsafePointer[Int8]
Node: TypedefDecl(__clang_svint16x3_t)
alias __clang_svint16x3_t = UnsafePointer[Int16]
Node: TypedefDecl(__clang_svint32x3_t)
alias __clang_svint32x3_t = UnsafePointer[Int32]
Node: TypedefDecl(__clang_svint64x3_t)
alias __clang_svint64x3_t = UnsafePointer[Int64]
Node: TypedefDecl(__clang_svuint8x3_t)
alias __clang_svuint8x3_t = UnsafePointer[UInt8]
Node: TypedefDecl(__clang_svuint16x3_t)
alias __clang_svuint16x3_t = UnsafePointer[UInt16]
Node: TypedefDecl(__clang_svuint32x3_t)
alias __clang_svuint32x3_t = UnsafePointer[UInt32]
Node: TypedefDecl(__clang_svuint64x3_t)
alias __clang_svuint64x3_t = UnsafePointer[UInt64]
Node: TypedefDecl(__clang_svfloat16x3_t)
alias __clang_svfloat16x3_t = UnsafePointer[Float16]
Node: TypedefDecl(__clang_svfloat32x3_t)
alias __clang_svfloat32x3_t = UnsafePointer[Float32]
Node: TypedefDecl(__clang_svfloat64x3_t)
alias __clang_svfloat64x3_t = UnsafePointer[Float64]
Node: TypedefDecl(__clang_svbfloat16x3_t)
alias __clang_svbfloat16x3_t = UnsafePointer[BFloat16]
Node: TypedefDecl(__clang_svint8x4_t)
alias __clang_svint8x4_t = UnsafePointer[Int8]
Node: TypedefDecl(__clang_svint16x4_t)
alias __clang_svint16x4_t = UnsafePointer[Int16]
Node: TypedefDecl(__clang_svint32x4_t)
alias __clang_svint32x4_t = UnsafePointer[Int32]
Node: TypedefDecl(__clang_svint64x4_t)
alias __clang_svint64x4_t = UnsafePointer[Int64]
Node: TypedefDecl(__clang_svuint8x4_t)
alias __clang_svuint8x4_t = UnsafePointer[UInt8]
Node: TypedefDecl(__clang_svuint16x4_t)
alias __clang_svuint16x4_t = UnsafePointer[UInt16]
Node: TypedefDecl(__clang_svuint32x4_t)
alias __clang_svuint32x4_t = UnsafePointer[UInt32]
Node: TypedefDecl(__clang_svuint64x4_t)
alias __clang_svuint64x4_t = UnsafePointer[UInt64]
Node: TypedefDecl(__clang_svfloat16x4_t)
alias __clang_svfloat16x4_t = UnsafePointer[Float16]
Node: TypedefDecl(__clang_svfloat32x4_t)
alias __clang_svfloat32x4_t = UnsafePointer[Float32]
Node: TypedefDecl(__clang_svfloat64x4_t)
alias __clang_svfloat64x4_t = UnsafePointer[Float64]
Node: TypedefDecl(__clang_svbfloat16x4_t)
alias __clang_svbfloat16x4_t = UnsafePointer[BFloat16]
Node: TypedefDecl(__SVBool_t)
alias __SVBool_t = Bool
Node: TypedefDecl(__builtin_ms_va_list)
alias __builtin_ms_va_list = UnsafePointer[Int8]
Node: TypedefDecl(__builtin_va_list)
alias __builtin_va_list = __va_list


struct __va_list:
    pass


Node: TypedefDecl(__u_char)
alias __u_char = UInt8
Node: TypedefDecl(__u_short)
alias __u_short = UInt16
Node: TypedefDecl(__u_int)
alias __u_int = UInt32
Node: TypedefDecl(__u_long)
alias __u_long = ffi.c_ulong
Node: TypedefDecl(__int8_t)
alias __int8_t = Int8
Node: TypedefDecl(__uint8_t)
alias __uint8_t = UInt8
Node: TypedefDecl(__int16_t)
alias __int16_t = Int16
Node: TypedefDecl(__uint16_t)
alias __uint16_t = UInt16
Node: TypedefDecl(__int32_t)
alias __int32_t = Int32
Node: TypedefDecl(__uint32_t)
alias __uint32_t = UInt32
Node: TypedefDecl(__int64_t)
alias __int64_t = ffi.c_long
Node: TypedefDecl(__uint64_t)
alias __uint64_t = ffi.c_ulong
Node: TypedefDecl(__int_least8_t)
alias __int_least8_t = __int8_t
Node: TypedefDecl(__uint_least8_t)
alias __uint_least8_t = __uint8_t
Node: TypedefDecl(__int_least16_t)
alias __int_least16_t = __int16_t
Node: TypedefDecl(__uint_least16_t)
alias __uint_least16_t = __uint16_t
Node: TypedefDecl(__int_least32_t)
alias __int_least32_t = __int32_t
Node: TypedefDecl(__uint_least32_t)
alias __uint_least32_t = __uint32_t
Node: TypedefDecl(__int_least64_t)
alias __int_least64_t = __int64_t
Node: TypedefDecl(__uint_least64_t)
alias __uint_least64_t = __uint64_t
Node: TypedefDecl(__quad_t)
alias __quad_t = ffi.c_long
Node: TypedefDecl(__u_quad_t)
alias __u_quad_t = ffi.c_ulong
Node: TypedefDecl(__intmax_t)
alias __intmax_t = ffi.c_long
Node: TypedefDecl(__uintmax_t)
alias __uintmax_t = ffi.c_ulong
Node: TypedefDecl(__dev_t)
alias __dev_t = ffi.c_ulong
Node: TypedefDecl(__uid_t)
alias __uid_t = UInt32
Node: TypedefDecl(__gid_t)
alias __gid_t = UInt32
Node: TypedefDecl(__ino_t)
alias __ino_t = ffi.c_ulong
Node: TypedefDecl(__ino64_t)
alias __ino64_t = ffi.c_ulong
Node: TypedefDecl(__mode_t)
alias __mode_t = UInt32
Node: TypedefDecl(__nlink_t)
alias __nlink_t = UInt32
Node: TypedefDecl(__off_t)
alias __off_t = ffi.c_long
Node: TypedefDecl(__off64_t)
alias __off64_t = ffi.c_long
Node: TypedefDecl(__pid_t)
alias __pid_t = Int32


struct anonomous_record_1:
    # Node: FieldDecl()
    var __val: StaticTuple[Int32, 2]


Node: TypedefDecl(__fsid_t)
alias __fsid_t = anonomous_record_1

# Forward declaration of anonomous_record_1
# struct anonomous_record_1:
# 	pass
#
Node: TypedefDecl(__clock_t)
alias __clock_t = ffi.c_long
Node: TypedefDecl(__rlim_t)
alias __rlim_t = ffi.c_ulong
Node: TypedefDecl(__rlim64_t)
alias __rlim64_t = ffi.c_ulong
Node: TypedefDecl(__id_t)
alias __id_t = UInt32
Node: TypedefDecl(__time_t)
alias __time_t = ffi.c_long
Node: TypedefDecl(__useconds_t)
alias __useconds_t = UInt32
Node: TypedefDecl(__suseconds_t)
alias __suseconds_t = ffi.c_long
Node: TypedefDecl(__suseconds64_t)
alias __suseconds64_t = ffi.c_long
Node: TypedefDecl(__daddr_t)
alias __daddr_t = Int32
Node: TypedefDecl(__key_t)
alias __key_t = Int32
Node: TypedefDecl(__clockid_t)
alias __clockid_t = Int32
Node: TypedefDecl(__timer_t)
alias __timer_t = OpaquePointer
Node: TypedefDecl(__blksize_t)
alias __blksize_t = Int32
Node: TypedefDecl(__blkcnt_t)
alias __blkcnt_t = ffi.c_long
Node: TypedefDecl(__blkcnt64_t)
alias __blkcnt64_t = ffi.c_long
Node: TypedefDecl(__fsblkcnt_t)
alias __fsblkcnt_t = ffi.c_ulong
Node: TypedefDecl(__fsblkcnt64_t)
alias __fsblkcnt64_t = ffi.c_ulong
Node: TypedefDecl(__fsfilcnt_t)
alias __fsfilcnt_t = ffi.c_ulong
Node: TypedefDecl(__fsfilcnt64_t)
alias __fsfilcnt64_t = ffi.c_ulong
Node: TypedefDecl(__fsword_t)
alias __fsword_t = ffi.c_long
Node: TypedefDecl(__ssize_t)
alias __ssize_t = ffi.c_long
Node: TypedefDecl(__syscall_slong_t)
alias __syscall_slong_t = ffi.c_long
Node: TypedefDecl(__syscall_ulong_t)
alias __syscall_ulong_t = ffi.c_ulong
Node: TypedefDecl(__loff_t)
alias __loff_t = __off64_t
Node: TypedefDecl(__caddr_t)
alias __caddr_t = UnsafePointer[Int8]
Node: TypedefDecl(__intptr_t)
alias __intptr_t = ffi.c_long
Node: TypedefDecl(__socklen_t)
alias __socklen_t = UInt32
Node: TypedefDecl(__sig_atomic_t)
alias __sig_atomic_t = Int32
Node: TypedefDecl(int8_t)
alias int8_t = __int8_t
Node: TypedefDecl(int16_t)
alias int16_t = __int16_t
Node: TypedefDecl(int32_t)
alias int32_t = __int32_t
Node: TypedefDecl(int64_t)
alias int64_t = __int64_t
Node: TypedefDecl(uint8_t)
alias uint8_t = __uint8_t
Node: TypedefDecl(uint16_t)
alias uint16_t = __uint16_t
Node: TypedefDecl(uint32_t)
alias uint32_t = __uint32_t
Node: TypedefDecl(uint64_t)
alias uint64_t = __uint64_t
Node: TypedefDecl(int_least8_t)
alias int_least8_t = __int_least8_t
Node: TypedefDecl(int_least16_t)
alias int_least16_t = __int_least16_t
Node: TypedefDecl(int_least32_t)
alias int_least32_t = __int_least32_t
Node: TypedefDecl(int_least64_t)
alias int_least64_t = __int_least64_t
Node: TypedefDecl(uint_least8_t)
alias uint_least8_t = __uint_least8_t
Node: TypedefDecl(uint_least16_t)
alias uint_least16_t = __uint_least16_t
Node: TypedefDecl(uint_least32_t)
alias uint_least32_t = __uint_least32_t
Node: TypedefDecl(uint_least64_t)
alias uint_least64_t = __uint_least64_t
Node: TypedefDecl(int_fast8_t)
alias int_fast8_t = Int8
Node: TypedefDecl(int_fast16_t)
alias int_fast16_t = ffi.c_long
Node: TypedefDecl(int_fast32_t)
alias int_fast32_t = ffi.c_long
Node: TypedefDecl(int_fast64_t)
alias int_fast64_t = ffi.c_long
Node: TypedefDecl(uint_fast8_t)
alias uint_fast8_t = UInt8
Node: TypedefDecl(uint_fast16_t)
alias uint_fast16_t = ffi.c_ulong
Node: TypedefDecl(uint_fast32_t)
alias uint_fast32_t = ffi.c_ulong
Node: TypedefDecl(uint_fast64_t)
alias uint_fast64_t = ffi.c_ulong
Node: TypedefDecl(intptr_t)
alias intptr_t = ffi.c_long
Node: TypedefDecl(uintptr_t)
alias uintptr_t = ffi.c_ulong
Node: TypedefDecl(intmax_t)
alias intmax_t = __intmax_t
Node: TypedefDecl(uintmax_t)
alias uintmax_t = __uintmax_t
Node: TypedefDecl(ptrdiff_t)
alias ptrdiff_t = ffi.c_long
Node: TypedefDecl(size_t)
alias size_t = ffi.c_ulong
Node: TypedefDecl(wchar_t)
alias wchar_t = UInt32


struct anonomous_record_2:
    # Node: FieldDecl()
    var __clang_max_align_nonce1: ffi.c_long_long

    # Node: FieldDecl()
    var __clang_max_align_nonce2: Float64


Node: TypedefDecl(max_align_t)
alias max_align_t = anonomous_record_2

# Forward declaration of anonomous_record_2
# struct anonomous_record_2:
# 	pass
#
Node: TypedefDecl(simple_type_byte)
alias simple_type_byte = Int8
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Byte types

# Node: FunctionDecl()
alias get_simple_type_byte = fn (simple_type_byte) -> simple_type_byte
Node: TypedefDecl(simple_type_ubyte)
alias simple_type_ubyte = UInt8
# Node: FunctionDecl()
alias get_simple_type_ubyte = fn (simple_type_ubyte) -> simple_type_ubyte
Node: TypedefDecl(simple_type_sbyte)
alias simple_type_sbyte = Int8
# Node: FunctionDecl()
alias get_simple_type_sbyte = fn (simple_type_sbyte) -> simple_type_sbyte
Node: TypedefDecl(simple_type_short)
alias simple_type_short = Int16
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Short types

# Node: FunctionDecl()
alias get_simple_type_short = fn (simple_type_short) -> simple_type_short
Node: TypedefDecl(simple_type_ushort)
alias simple_type_ushort = UInt16
# Node: FunctionDecl()
alias get_simple_type_ushort = fn (simple_type_ushort) -> simple_type_ushort
Node: TypedefDecl(simple_type_sshort)
alias simple_type_sshort = Int16
# Node: FunctionDecl()
alias get_simple_type_sshort = fn (simple_type_sshort) -> simple_type_sshort
Node: TypedefDecl(simple_type_int)
alias simple_type_int = Int32
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Int types

# Node: FunctionDecl()
alias get_simple_type_int = fn (simple_type_int) -> simple_type_int
Node: TypedefDecl(simple_type_uint)
alias simple_type_uint = UInt32
# Node: FunctionDecl()
alias get_simple_type_uint = fn (simple_type_uint) -> simple_type_uint
Node: TypedefDecl(simple_type_sint)
alias simple_type_sint = Int32
# Node: FunctionDecl()
alias get_simple_type_sint = fn (simple_type_sint) -> simple_type_sint
Node: TypedefDecl(simple_type_long)
alias simple_type_long = ffi.c_long
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Long types

# Node: FunctionDecl()
alias get_simple_type_long = fn (simple_type_long) -> simple_type_long
Node: TypedefDecl(simple_type_ulong)
alias simple_type_ulong = ffi.c_ulong
# Node: FunctionDecl()
alias get_simple_type_ulong = fn (simple_type_ulong) -> simple_type_ulong
Node: TypedefDecl(simple_type_slong)
alias simple_type_slong = ffi.c_long
# Node: FunctionDecl()
alias get_simple_type_slong = fn (simple_type_slong) -> simple_type_slong
Node: TypedefDecl(simple_type_long_long)
alias simple_type_long_long = ffi.c_long_long
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Long long types

# Node: FunctionDecl()
alias get_simple_type_long_long = fn (
    simple_type_long_long
) -> simple_type_long_long
Node: TypedefDecl(simple_type_ulong_long)
alias simple_type_ulong_long = ffi.c_ulong_long
# Node: FunctionDecl()
alias get_simple_type_ulong_long = fn (
    simple_type_ulong_long
) -> simple_type_ulong_long
Node: TypedefDecl(simple_type_slong_long)
alias simple_type_slong_long = ffi.c_long_long
# Node: FunctionDecl()
alias get_simple_type_slong_long = fn (
    simple_type_slong_long
) -> simple_type_slong_long
Node: TypedefDecl(simple_type_float)
alias simple_type_float = Float32
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Float types

# Node: FunctionDecl()
alias get_simple_type_float = fn (simple_type_float) -> simple_type_float
Node: TypedefDecl(simple_type_double)
alias simple_type_double = Float64
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Double types

# Node: FunctionDecl()
alias get_simple_type_double = fn (simple_type_double) -> simple_type_double
Node: TypedefDecl(simple_type_long_double)
alias simple_type_long_double = Float64
# Node: FullComment()
# Node: ParagraphComment()
# Node: TextComment()
#  Long double types

# Node: FunctionDecl()
alias get_simple_type_long_double = fn (
    simple_type_long_double
) -> simple_type_long_double
