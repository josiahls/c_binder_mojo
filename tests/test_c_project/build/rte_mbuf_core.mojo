
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

# # Node: TranslationUnitDecl()
alias __int128_t = ffi.c_long_long
alias __uint128_t = ffi.c_ulong_long
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
struct anonomous_record_1(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

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
struct anonomous_record_2(Copyable & Movable):
	var __clang_max_align_nonce1 : ffi.c_long_long

	var __clang_max_align_nonce2 : Float64

alias max_align_t = anonomous_record_2

struct memory_order(Copyable & Movable):
	alias memory_order_relaxed = 0

	alias memory_order_consume = 1

	alias memory_order_acquire = 2

	alias memory_order_release = 3

	alias memory_order_acq_rel = 4

	alias memory_order_seq_cst = 5

alias atomic_thread_fence = fn (memory_order) -> NoneType
alias atomic_signal_fence = fn (memory_order) -> NoneType
alias atomic_bool = 	# # Node: PlaceHolder()
	# {"id":"0x1104cc20","inner":[{"id":"0x10f21fb0","kind":"BuiltinType","type":{"qualType":"_Bool"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(_Bool)"}}

alias atomic_char = 	# # Node: PlaceHolder()
	# {"id":"0x1104ccd0","inner":[{"id":"0x10f21fd0","kind":"BuiltinType","type":{"qualType":"char"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(char)"}}

alias atomic_schar = 	# # Node: PlaceHolder()
	# {"id":"0x1104cd90","inner":[{"id":"0x10f21ff0","kind":"BuiltinType","type":{"qualType":"signed char"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(signed char)"}}

alias atomic_uchar = 	# # Node: PlaceHolder()
	# {"id":"0x1104ce50","inner":[{"id":"0x10f22090","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned char)"}}

alias atomic_short = 	# # Node: PlaceHolder()
	# {"id":"0x1104cf10","inner":[{"id":"0x10f22010","kind":"BuiltinType","type":{"qualType":"short"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(short)"}}

alias atomic_ushort = 	# # Node: PlaceHolder()
	# {"id":"0x1104cfd0","inner":[{"id":"0x10f220b0","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned short)"}}

alias atomic_int = 	# # Node: PlaceHolder()
	# {"id":"0x1104d090","inner":[{"id":"0x10f22030","kind":"BuiltinType","type":{"qualType":"int"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int)"}}

alias atomic_uint = 	# # Node: PlaceHolder()
	# {"id":"0x1104d150","inner":[{"id":"0x10f220d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned int)"}}

alias atomic_long = 	# # Node: PlaceHolder()
	# {"id":"0x1104d210","inner":[{"id":"0x10f22050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(long)"}}

alias atomic_ulong = 	# # Node: PlaceHolder()
	# {"id":"0x1104d2d0","inner":[{"id":"0x10f220f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned long)"}}

alias atomic_llong = 	# # Node: PlaceHolder()
	# {"id":"0x1104d390","inner":[{"id":"0x10f22070","kind":"BuiltinType","type":{"qualType":"long long"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(long long)"}}

alias atomic_ullong = 	# # Node: PlaceHolder()
	# {"id":"0x1104d450","inner":[{"id":"0x10f22110","kind":"BuiltinType","type":{"qualType":"unsigned long long"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned long long)"}}

alias atomic_char16_t = 	# # Node: PlaceHolder()
	# {"id":"0x1104d520","inner":[{"decl":{"id":"0x110202a0","kind":"TypedefDecl","name":"uint_least16_t"},"id":"0x1104d4f0","inner":[{"decl":{"id":"0x11014920","kind":"TypedefDecl","name":"__uint_least16_t"},"id":"0x11020270","inner":[{"decl":{"id":"0x10fc8c70","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x110148f0","inner":[{"id":"0x10f220b0","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least16_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least16_t)"}}

alias atomic_char32_t = 	# # Node: PlaceHolder()
	# {"id":"0x1104d5f0","inner":[{"decl":{"id":"0x11022fb0","kind":"TypedefDecl","name":"uint_least32_t"},"id":"0x1104d5c0","inner":[{"decl":{"id":"0x11014a40","kind":"TypedefDecl","name":"__uint_least32_t"},"id":"0x11020300","inner":[{"decl":{"id":"0x10fc8d50","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x11014a10","inner":[{"id":"0x10f220d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least32_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least32_t)"}}

alias atomic_wchar_t = 	# # Node: PlaceHolder()
	# {"id":"0x1104d6c0","inner":[{"decl":{"id":"0x11023770","kind":"TypedefDecl","name":"wchar_t"},"id":"0x1104d690","inner":[{"id":"0x10f220d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"wchar_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(wchar_t)"}}

alias atomic_int_least8_t = 	# # Node: PlaceHolder()
	# {"id":"0x1104d790","inner":[{"decl":{"id":"0x1101ffd0","kind":"TypedefDecl","name":"int_least8_t"},"id":"0x1104d760","inner":[{"decl":{"id":"0x11014770","kind":"TypedefDecl","name":"__int_least8_t"},"id":"0x1101ffa0","inner":[{"decl":{"id":"0x10fc8b20","kind":"TypedefDecl","name":"__int8_t"},"id":"0x10fc8e90","inner":[{"id":"0x10f21ff0","kind":"BuiltinType","type":{"qualType":"signed char"}}],"kind":"TypedefType","type":{"qualType":"__int8_t"}}],"kind":"TypedefType","type":{"qualType":"__int_least8_t"}}],"kind":"TypedefType","type":{"qualType":"int_least8_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_least8_t)"}}

alias atomic_uint_least8_t = 	# # Node: PlaceHolder()
	# {"id":"0x110528a0","inner":[{"decl":{"id":"0x11020210","kind":"TypedefDecl","name":"uint_least8_t"},"id":"0x11052870","inner":[{"decl":{"id":"0x11014800","kind":"TypedefDecl","name":"__uint_least8_t"},"id":"0x110201e0","inner":[{"decl":{"id":"0x10fc8b90","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x110147d0","inner":[{"id":"0x10f22090","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least8_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least8_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least8_t)"}}

alias atomic_int_least16_t = 	# # Node: PlaceHolder()
	# {"id":"0x11052970","inner":[{"decl":{"id":"0x11020060","kind":"TypedefDecl","name":"int_least16_t"},"id":"0x11052940","inner":[{"decl":{"id":"0x11014890","kind":"TypedefDecl","name":"__int_least16_t"},"id":"0x11020030","inner":[{"decl":{"id":"0x10fc8c00","kind":"TypedefDecl","name":"__int16_t"},"id":"0x11014860","inner":[{"id":"0x10f22010","kind":"BuiltinType","type":{"qualType":"short"}}],"kind":"TypedefType","type":{"qualType":"__int16_t"}}],"kind":"TypedefType","type":{"qualType":"__int_least16_t"}}],"kind":"TypedefType","type":{"qualType":"int_least16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_least16_t)"}}

alias atomic_uint_least16_t = 	# # Node: PlaceHolder()
	# {"id":"0x1104d520","inner":[{"decl":{"id":"0x110202a0","kind":"TypedefDecl","name":"uint_least16_t"},"id":"0x1104d4f0","inner":[{"decl":{"id":"0x11014920","kind":"TypedefDecl","name":"__uint_least16_t"},"id":"0x11020270","inner":[{"decl":{"id":"0x10fc8c70","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x110148f0","inner":[{"id":"0x10f220b0","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least16_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least16_t)"}}

alias atomic_int_least32_t = 	# # Node: PlaceHolder()
	# {"id":"0x11052ac0","inner":[{"decl":{"id":"0x110200f0","kind":"TypedefDecl","name":"int_least32_t"},"id":"0x11052a90","inner":[{"decl":{"id":"0x110149b0","kind":"TypedefDecl","name":"__int_least32_t"},"id":"0x110200c0","inner":[{"decl":{"id":"0x10fc8ce0","kind":"TypedefDecl","name":"__int32_t"},"id":"0x11014980","inner":[{"id":"0x10f22030","kind":"BuiltinType","type":{"qualType":"int"}}],"kind":"TypedefType","type":{"qualType":"__int32_t"}}],"kind":"TypedefType","type":{"qualType":"__int_least32_t"}}],"kind":"TypedefType","type":{"qualType":"int_least32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_least32_t)"}}

alias atomic_uint_least32_t = 	# # Node: PlaceHolder()
	# {"id":"0x1104d5f0","inner":[{"decl":{"id":"0x11022fb0","kind":"TypedefDecl","name":"uint_least32_t"},"id":"0x1104d5c0","inner":[{"decl":{"id":"0x11014a40","kind":"TypedefDecl","name":"__uint_least32_t"},"id":"0x11020300","inner":[{"decl":{"id":"0x10fc8d50","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x11014a10","inner":[{"id":"0x10f220d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least32_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least32_t)"}}

alias atomic_int_least64_t = 	# # Node: PlaceHolder()
	# {"id":"0x11052c10","inner":[{"decl":{"id":"0x11020180","kind":"TypedefDecl","name":"int_least64_t"},"id":"0x11052be0","inner":[{"decl":{"id":"0x11014ad0","kind":"TypedefDecl","name":"__int_least64_t"},"id":"0x11020150","inner":[{"decl":{"id":"0x10fc8dc0","kind":"TypedefDecl","name":"__int64_t"},"id":"0x11014aa0","inner":[{"id":"0x10f22050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"__int64_t"}}],"kind":"TypedefType","type":{"qualType":"__int_least64_t"}}],"kind":"TypedefType","type":{"qualType":"int_least64_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_least64_t)"}}

alias atomic_uint_least64_t = 	# # Node: PlaceHolder()
	# {"id":"0x11052ce0","inner":[{"decl":{"id":"0x11023040","kind":"TypedefDecl","name":"uint_least64_t"},"id":"0x11052cb0","inner":[{"decl":{"id":"0x11014b60","kind":"TypedefDecl","name":"__uint_least64_t"},"id":"0x11023010","inner":[{"decl":{"id":"0x10fc8e30","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x11014b30","inner":[{"id":"0x10f220f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least64_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least64_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least64_t)"}}

alias atomic_int_fast8_t = 	# # Node: PlaceHolder()
	# {"id":"0x11052db0","inner":[{"decl":{"id":"0x110230b0","kind":"TypedefDecl","name":"int_fast8_t"},"id":"0x11052d80","inner":[{"id":"0x10f21ff0","kind":"BuiltinType","type":{"qualType":"signed char"}}],"kind":"TypedefType","type":{"qualType":"int_fast8_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_fast8_t)"}}

alias atomic_uint_fast8_t = 	# # Node: PlaceHolder()
	# {"id":"0x11052e80","inner":[{"decl":{"id":"0x11023270","kind":"TypedefDecl","name":"uint_fast8_t"},"id":"0x11052e50","inner":[{"id":"0x10f22090","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"uint_fast8_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_fast8_t)"}}

alias atomic_int_fast16_t = 	# # Node: PlaceHolder()
	# {"id":"0x11052f50","inner":[{"decl":{"id":"0x11023120","kind":"TypedefDecl","name":"int_fast16_t"},"id":"0x11052f20","inner":[{"id":"0x10f22050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"int_fast16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_fast16_t)"}}

alias atomic_uint_fast16_t = 	# # Node: PlaceHolder()
	# {"id":"0x11053020","inner":[{"decl":{"id":"0x110232e0","kind":"TypedefDecl","name":"uint_fast16_t"},"id":"0x11052ff0","inner":[{"id":"0x10f220f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"uint_fast16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_fast16_t)"}}

alias atomic_int_fast32_t = 	# # Node: PlaceHolder()
	# {"id":"0x110530f0","inner":[{"decl":{"id":"0x11023190","kind":"TypedefDecl","name":"int_fast32_t"},"id":"0x110530c0","inner":[{"id":"0x10f22050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"int_fast32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_fast32_t)"}}

alias atomic_uint_fast32_t = 	# # Node: PlaceHolder()
	# {"id":"0x110531c0","inner":[{"decl":{"id":"0x11023350","kind":"TypedefDecl","name":"uint_fast32_t"},"id":"0x11053190","inner":[{"id":"0x10f220f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"uint_fast32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_fast32_t)"}}

alias atomic_int_fast64_t = 	# # Node: PlaceHolder()
	# {"id":"0x11053290","inner":[{"decl":{"id":"0x11023200","kind":"TypedefDecl","name":"int_fast64_t"},"id":"0x11053260","inner":[{"id":"0x10f22050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"int_fast64_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_fast64_t)"}}

alias atomic_uint_fast64_t = 	# # Node: PlaceHolder()
	# {"id":"0x11053360","inner":[{"decl":{"id":"0x110233c0","kind":"TypedefDecl","name":"uint_fast64_t"},"id":"0x11053330","inner":[{"id":"0x10f220f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"uint_fast64_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_fast64_t)"}}

alias atomic_intptr_t = 	# # Node: PlaceHolder()
	# {"id":"0x11053430","inner":[{"decl":{"id":"0x11023430","kind":"TypedefDecl","name":"intptr_t"},"id":"0x11053400","inner":[{"id":"0x10f22050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"intptr_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(intptr_t)"}}

alias atomic_uintptr_t = 	# # Node: PlaceHolder()
	# {"id":"0x11053500","inner":[{"decl":{"id":"0x110234a0","kind":"TypedefDecl","name":"uintptr_t"},"id":"0x110534d0","inner":[{"id":"0x10f220f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"uintptr_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uintptr_t)"}}

alias atomic_size_t = 	# # Node: PlaceHolder()
	# {"id":"0x110535d0","inner":[{"decl":{"id":"0x11023700","kind":"TypedefDecl","name":"size_t"},"id":"0x110535a0","inner":[{"id":"0x10f220f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"size_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(size_t)"}}

alias atomic_ptrdiff_t = 	# # Node: PlaceHolder()
	# {"id":"0x110536a0","inner":[{"decl":{"id":"0x11023690","kind":"TypedefDecl","name":"ptrdiff_t"},"id":"0x11053670","inner":[{"id":"0x10f22050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"ptrdiff_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(ptrdiff_t)"}}

alias atomic_intmax_t = 	# # Node: PlaceHolder()
	# {"id":"0x11053770","inner":[{"decl":{"id":"0x11023530","kind":"TypedefDecl","name":"intmax_t"},"id":"0x11053740","inner":[{"decl":{"id":"0x11014cb0","kind":"TypedefDecl","name":"__intmax_t"},"id":"0x11023500","inner":[{"id":"0x10f22050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"__intmax_t"}}],"kind":"TypedefType","type":{"qualType":"intmax_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(intmax_t)"}}

alias atomic_uintmax_t = 	# # Node: PlaceHolder()
	# {"id":"0x11054860","inner":[{"decl":{"id":"0x110235c0","kind":"TypedefDecl","name":"uintmax_t"},"id":"0x11054830","inner":[{"decl":{"id":"0x11014d20","kind":"TypedefDecl","name":"__uintmax_t"},"id":"0x11023590","inner":[{"id":"0x10f220f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uintmax_t"}}],"kind":"TypedefType","type":{"qualType":"uintmax_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uintmax_t)"}}

struct atomic_flag(Copyable & Movable):
	var _Value : _Atomic(_Bool)

alias atomic_flag_test_and_set = fn (UnsafePointer[atomic_flag]) -> _Bool
alias atomic_flag_test_and_set_explicit = fn (UnsafePointer[atomic_flag], memory_order) -> _Bool
alias atomic_flag_clear = fn (UnsafePointer[atomic_flag]) -> NoneType
alias atomic_flag_clear_explicit = fn (UnsafePointer[atomic_flag], memory_order) -> NoneType
struct rte_mbuf_sched(Copyable & Movable):
	var queue_id : UInt32

	var traffic_class : UInt8

	var color : UInt8

	var reserved : UInt16

alias RTE_MBUF_L2_LEN_BITS = 7

alias RTE_MBUF_L3_LEN_BITS = 9

alias RTE_MBUF_L4_LEN_BITS = 8

alias RTE_MBUF_TSO_SEGSZ_BITS = 16

alias RTE_MBUF_OUTL3_LEN_BITS = 9

alias RTE_MBUF_OUTL2_LEN_BITS = 7

alias RTE_MBUF_TXOFLD_UNUSED_BITS = 17

alias RTE_MBUF_L2_LEN_OFS = 18

alias RTE_MBUF_L3_LEN_OFS = 48

alias RTE_MBUF_L4_LEN_OFS = 40

alias RTE_MBUF_TSO_SEGSZ_OFS = 24

alias RTE_MBUF_OUTL3_LEN_OFS = 15

alias RTE_MBUF_OUTL2_LEN_OFS = 8

alias RTE_MBUF_TXOFLD_UNUSED_OFS = 0

struct anonomous_record_3(Copyable & Movable):
	var data_off : UInt16

	var refcnt : _Atomic(UInt16)

	var nb_segs : UInt16

	var port : UInt16

struct anonomous_record_5(Copyable & Movable):
	var inner_l2_type : UInt8

	var inner_l3_type : UInt8

alias anonomous_record_6 = C_Union[UInt8, anonomous_record_5, , ]

struct anonomous_record_7(Copyable & Movable):
	var l2_type : UInt8

	var l3_type : UInt8

	var l4_type : UInt8

	var tun_type : UInt8

	var union_placeholder_1 : anonomous_record_6




	var inner_l4_type : UInt8

struct anonomous_record_9(Copyable & Movable):
	var hash : UInt16

	var id : UInt16

alias anonomous_record_10 = C_Union[anonomous_record_9, , , UInt32]

struct anonomous_record_12(Copyable & Movable):
	var reserved1 : UInt32

	var reserved2 : UInt16

	var txq : UInt16

struct anonomous_record_11(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_10




	var hi : UInt32

alias anonomous_record_13 = C_Union[UInt32, anonomous_record_11, rte_mbuf_sched, anonomous_record_12, UInt32]

alias anonomous_record_14 = C_Union[anonomous_record_13]

alias anonomous_record_8 = C_Union[UInt32, anonomous_record_7, , , , , , , , ]

struct anonomous_record_15(Copyable & Movable):
	var union_placeholder_1 : anonomous_record_8










	var pkt_len : UInt32

	var data_len : UInt16

	var vlan_tci : UInt16

	var union_placeholder_2 : anonomous_record_14


	var vlan_tci_outer : UInt16

	var buf_len : UInt16

struct anonomous_record_17(Copyable & Movable):
	var l2_len : ffi.c_ulong

	var l3_len : ffi.c_ulong

	var l4_len : ffi.c_ulong

	var tso_segsz : ffi.c_ulong

	var outer_l3_len : ffi.c_ulong

	var outer_l2_len : ffi.c_ulong

struct rte_mbuf_ext_shared_info(Copyable & Movable):
	pass
alias anonomous_record_18 = C_Union[ffi.c_ulong, anonomous_record_17, , , , , , ]

struct rte_mempool(Copyable & Movable):
	pass
alias anonomous_record_16 = C_Union[InlineArray[OpaquePointer, 3], anonomous_record_15, , , , , , , , , , , , , , , ]

alias anonomous_record_4 = C_Union[InlineArray[ffi.c_ulong_long, 1], anonomous_record_3, , , , ]

struct rte_mbuf(Copyable & Movable):
# Alignment: 128 

	var buf_addr : OpaquePointer

	var next : UnsafePointer[rte_mbuf]

	var union_placeholder_1 : anonomous_record_4






	var ol_flags : ffi.c_ulong

	var union_placeholder_2 : anonomous_record_16

















	var pool : rte_mempool

	var dynfield2 : ffi.c_ulong

	var union_placeholder_3 : anonomous_record_18








	var shinfo : rte_mbuf_ext_shared_info

	var priv_size : UInt16

	var timesync : UInt16

	var dynfield1 : InlineArray[ffi.c_ulong, 9]

alias rte_mbuf_extbuf_free_callback_t = fn(OpaquePointer, OpaquePointer) -> NoneType
