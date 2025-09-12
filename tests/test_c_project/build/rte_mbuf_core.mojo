
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple

# # Node: TranslationUnitDecl()
alias __int128_t = Int128
alias __uint128_t = UInt128
struct __NSConstantString_tag(Copyable & Movable):
	pass
alias __NSConstantString = __NSConstantString_tag

alias __SVInt8_t = Int8
alias __SVInt16_t = Int16
alias __SVInt32_t = Int32
alias __SVInt64_t = Int64
alias __SVUint8_t = UInt8
alias __SVUint16_t = UInt16
alias __SVUint32_t = UInt32
alias __SVUint64_t = UInt64
alias __SVFloat16_t = Float16
alias __SVFloat32_t = Float32
alias __SVFloat64_t = Float64
alias __SVBFloat16_t = BFloat16
alias __clang_svint8x2_t = UnsafePointer[Int8]
alias __clang_svint16x2_t = UnsafePointer[Int16]
alias __clang_svint32x2_t = UnsafePointer[Int32]
alias __clang_svint64x2_t = UnsafePointer[Int64]
alias __clang_svuint8x2_t = UnsafePointer[UInt8]
alias __clang_svuint16x2_t = UnsafePointer[UInt16]
alias __clang_svuint32x2_t = UnsafePointer[UInt32]
alias __clang_svuint64x2_t = UnsafePointer[UInt64]
alias __clang_svfloat16x2_t = UnsafePointer[Float16]
alias __clang_svfloat32x2_t = UnsafePointer[Float32]
alias __clang_svfloat64x2_t = UnsafePointer[Float64]
alias __clang_svbfloat16x2_t = UnsafePointer[BFloat16]
alias __clang_svint8x3_t = UnsafePointer[Int8]
alias __clang_svint16x3_t = UnsafePointer[Int16]
alias __clang_svint32x3_t = UnsafePointer[Int32]
alias __clang_svint64x3_t = UnsafePointer[Int64]
alias __clang_svuint8x3_t = UnsafePointer[UInt8]
alias __clang_svuint16x3_t = UnsafePointer[UInt16]
alias __clang_svuint32x3_t = UnsafePointer[UInt32]
alias __clang_svuint64x3_t = UnsafePointer[UInt64]
alias __clang_svfloat16x3_t = UnsafePointer[Float16]
alias __clang_svfloat32x3_t = UnsafePointer[Float32]
alias __clang_svfloat64x3_t = UnsafePointer[Float64]
alias __clang_svbfloat16x3_t = UnsafePointer[BFloat16]
alias __clang_svint8x4_t = UnsafePointer[Int8]
alias __clang_svint16x4_t = UnsafePointer[Int16]
alias __clang_svint32x4_t = UnsafePointer[Int32]
alias __clang_svint64x4_t = UnsafePointer[Int64]
alias __clang_svuint8x4_t = UnsafePointer[UInt8]
alias __clang_svuint16x4_t = UnsafePointer[UInt16]
alias __clang_svuint32x4_t = UnsafePointer[UInt32]
alias __clang_svuint64x4_t = UnsafePointer[UInt64]
alias __clang_svfloat16x4_t = UnsafePointer[Float16]
alias __clang_svfloat32x4_t = UnsafePointer[Float32]
alias __clang_svfloat64x4_t = UnsafePointer[Float64]
alias __clang_svbfloat16x4_t = UnsafePointer[BFloat16]
alias __SVBool_t = Bool
alias __builtin_ms_va_list = UnsafePointer[Int8]
struct __va_list(Copyable & Movable):
	pass
alias __builtin_va_list = __va_list

alias __u_char = UInt8
alias __u_short = UInt16
alias __u_int = UInt32
alias __u_long = ffi.c_ulong
alias __int8_t = Int8
alias __uint8_t = UInt8
alias __int16_t = Int16
alias __uint16_t = UInt16
alias __int32_t = Int32
alias __uint32_t = UInt32
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
alias __uid_t = UInt32
alias __gid_t = UInt32
alias __ino_t = ffi.c_ulong
alias __ino64_t = ffi.c_ulong
alias __mode_t = UInt32
alias __nlink_t = UInt32
alias __off_t = ffi.c_long
alias __off64_t = ffi.c_long
alias __pid_t = Int32
struct anonomous_record_1(Copyable & Movable):
	var __val : InlineArray[Int32, 2]

alias __fsid_t = anonomous_record_1

alias __clock_t = ffi.c_long
alias __rlim_t = ffi.c_ulong
alias __rlim64_t = ffi.c_ulong
alias __id_t = UInt32
alias __time_t = ffi.c_long
alias __useconds_t = UInt32
alias __suseconds_t = ffi.c_long
alias __suseconds64_t = ffi.c_long
alias __daddr_t = Int32
alias __key_t = Int32
alias __clockid_t = Int32
alias __timer_t = OpaquePointer
alias __blksize_t = Int32
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
alias __socklen_t = UInt32
alias __sig_atomic_t = Int32
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
alias wchar_t = UInt32
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
	# {"id":"0x1c1b0c60","inner":[{"id":"0x1c085fb0","kind":"BuiltinType","type":{"qualType":"_Bool"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(_Bool)"}}

alias atomic_char = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b0d10","inner":[{"id":"0x1c085fd0","kind":"BuiltinType","type":{"qualType":"char"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(char)"}}

alias atomic_schar = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b0dd0","inner":[{"id":"0x1c085ff0","kind":"BuiltinType","type":{"qualType":"signed char"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(signed char)"}}

alias atomic_uchar = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b0e90","inner":[{"id":"0x1c086090","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned char)"}}

alias atomic_short = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b0f50","inner":[{"id":"0x1c086010","kind":"BuiltinType","type":{"qualType":"short"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(short)"}}

alias atomic_ushort = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1010","inner":[{"id":"0x1c0860b0","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned short)"}}

alias atomic_int = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b10d0","inner":[{"id":"0x1c086030","kind":"BuiltinType","type":{"qualType":"int"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int)"}}

alias atomic_uint = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1190","inner":[{"id":"0x1c0860d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned int)"}}

alias atomic_long = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1250","inner":[{"id":"0x1c086050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(long)"}}

alias atomic_ulong = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1310","inner":[{"id":"0x1c0860f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned long)"}}

alias atomic_llong = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b13d0","inner":[{"id":"0x1c086070","kind":"BuiltinType","type":{"qualType":"long long"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(long long)"}}

alias atomic_ullong = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1490","inner":[{"id":"0x1c086110","kind":"BuiltinType","type":{"qualType":"unsigned long long"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(unsigned long long)"}}

alias atomic_char16_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1560","inner":[{"decl":{"id":"0x1c1842e0","kind":"TypedefDecl","name":"uint_least16_t"},"id":"0x1c1b1530","inner":[{"decl":{"id":"0x1c178960","kind":"TypedefDecl","name":"__uint_least16_t"},"id":"0x1c1842b0","inner":[{"decl":{"id":"0x1c12ccb0","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x1c178930","inner":[{"id":"0x1c0860b0","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least16_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least16_t)"}}

alias atomic_char32_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1630","inner":[{"decl":{"id":"0x1c186ff0","kind":"TypedefDecl","name":"uint_least32_t"},"id":"0x1c1b1600","inner":[{"decl":{"id":"0x1c178a80","kind":"TypedefDecl","name":"__uint_least32_t"},"id":"0x1c184340","inner":[{"decl":{"id":"0x1c12cd90","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x1c178a50","inner":[{"id":"0x1c0860d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least32_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least32_t)"}}

alias atomic_wchar_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1700","inner":[{"decl":{"id":"0x1c1877b0","kind":"TypedefDecl","name":"wchar_t"},"id":"0x1c1b16d0","inner":[{"id":"0x1c0860d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"wchar_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(wchar_t)"}}

alias atomic_int_least8_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b17d0","inner":[{"decl":{"id":"0x1c184010","kind":"TypedefDecl","name":"int_least8_t"},"id":"0x1c1b17a0","inner":[{"decl":{"id":"0x1c1787b0","kind":"TypedefDecl","name":"__int_least8_t"},"id":"0x1c183fe0","inner":[{"decl":{"id":"0x1c12cb60","kind":"TypedefDecl","name":"__int8_t"},"id":"0x1c12ced0","inner":[{"id":"0x1c085ff0","kind":"BuiltinType","type":{"qualType":"signed char"}}],"kind":"TypedefType","type":{"qualType":"__int8_t"}}],"kind":"TypedefType","type":{"qualType":"__int_least8_t"}}],"kind":"TypedefType","type":{"qualType":"int_least8_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_least8_t)"}}

alias atomic_uint_least8_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b68e0","inner":[{"decl":{"id":"0x1c184250","kind":"TypedefDecl","name":"uint_least8_t"},"id":"0x1c1b68b0","inner":[{"decl":{"id":"0x1c178840","kind":"TypedefDecl","name":"__uint_least8_t"},"id":"0x1c184220","inner":[{"decl":{"id":"0x1c12cbd0","kind":"TypedefDecl","name":"__uint8_t"},"id":"0x1c178810","inner":[{"id":"0x1c086090","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"__uint8_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least8_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least8_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least8_t)"}}

alias atomic_int_least16_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b69b0","inner":[{"decl":{"id":"0x1c1840a0","kind":"TypedefDecl","name":"int_least16_t"},"id":"0x1c1b6980","inner":[{"decl":{"id":"0x1c1788d0","kind":"TypedefDecl","name":"__int_least16_t"},"id":"0x1c184070","inner":[{"decl":{"id":"0x1c12cc40","kind":"TypedefDecl","name":"__int16_t"},"id":"0x1c1788a0","inner":[{"id":"0x1c086010","kind":"BuiltinType","type":{"qualType":"short"}}],"kind":"TypedefType","type":{"qualType":"__int16_t"}}],"kind":"TypedefType","type":{"qualType":"__int_least16_t"}}],"kind":"TypedefType","type":{"qualType":"int_least16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_least16_t)"}}

alias atomic_uint_least16_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1560","inner":[{"decl":{"id":"0x1c1842e0","kind":"TypedefDecl","name":"uint_least16_t"},"id":"0x1c1b1530","inner":[{"decl":{"id":"0x1c178960","kind":"TypedefDecl","name":"__uint_least16_t"},"id":"0x1c1842b0","inner":[{"decl":{"id":"0x1c12ccb0","kind":"TypedefDecl","name":"__uint16_t"},"id":"0x1c178930","inner":[{"id":"0x1c0860b0","kind":"BuiltinType","type":{"qualType":"unsigned short"}}],"kind":"TypedefType","type":{"qualType":"__uint16_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least16_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least16_t)"}}

alias atomic_int_least32_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b6b00","inner":[{"decl":{"id":"0x1c184130","kind":"TypedefDecl","name":"int_least32_t"},"id":"0x1c1b6ad0","inner":[{"decl":{"id":"0x1c1789f0","kind":"TypedefDecl","name":"__int_least32_t"},"id":"0x1c184100","inner":[{"decl":{"id":"0x1c12cd20","kind":"TypedefDecl","name":"__int32_t"},"id":"0x1c1789c0","inner":[{"id":"0x1c086030","kind":"BuiltinType","type":{"qualType":"int"}}],"kind":"TypedefType","type":{"qualType":"__int32_t"}}],"kind":"TypedefType","type":{"qualType":"__int_least32_t"}}],"kind":"TypedefType","type":{"qualType":"int_least32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_least32_t)"}}

alias atomic_uint_least32_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b1630","inner":[{"decl":{"id":"0x1c186ff0","kind":"TypedefDecl","name":"uint_least32_t"},"id":"0x1c1b1600","inner":[{"decl":{"id":"0x1c178a80","kind":"TypedefDecl","name":"__uint_least32_t"},"id":"0x1c184340","inner":[{"decl":{"id":"0x1c12cd90","kind":"TypedefDecl","name":"__uint32_t"},"id":"0x1c178a50","inner":[{"id":"0x1c0860d0","kind":"BuiltinType","type":{"qualType":"unsigned int"}}],"kind":"TypedefType","type":{"qualType":"__uint32_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least32_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least32_t)"}}

alias atomic_int_least64_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b6c50","inner":[{"decl":{"id":"0x1c1841c0","kind":"TypedefDecl","name":"int_least64_t"},"id":"0x1c1b6c20","inner":[{"decl":{"id":"0x1c178b10","kind":"TypedefDecl","name":"__int_least64_t"},"id":"0x1c184190","inner":[{"decl":{"id":"0x1c12ce00","kind":"TypedefDecl","name":"__int64_t"},"id":"0x1c178ae0","inner":[{"id":"0x1c086050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"__int64_t"}}],"kind":"TypedefType","type":{"qualType":"__int_least64_t"}}],"kind":"TypedefType","type":{"qualType":"int_least64_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_least64_t)"}}

alias atomic_uint_least64_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b6d20","inner":[{"decl":{"id":"0x1c187080","kind":"TypedefDecl","name":"uint_least64_t"},"id":"0x1c1b6cf0","inner":[{"decl":{"id":"0x1c178ba0","kind":"TypedefDecl","name":"__uint_least64_t"},"id":"0x1c187050","inner":[{"decl":{"id":"0x1c12ce70","kind":"TypedefDecl","name":"__uint64_t"},"id":"0x1c178b70","inner":[{"id":"0x1c0860f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uint64_t"}}],"kind":"TypedefType","type":{"qualType":"__uint_least64_t"}}],"kind":"TypedefType","type":{"qualType":"uint_least64_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_least64_t)"}}

alias atomic_int_fast8_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b6df0","inner":[{"decl":{"id":"0x1c1870f0","kind":"TypedefDecl","name":"int_fast8_t"},"id":"0x1c1b6dc0","inner":[{"id":"0x1c085ff0","kind":"BuiltinType","type":{"qualType":"signed char"}}],"kind":"TypedefType","type":{"qualType":"int_fast8_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_fast8_t)"}}

alias atomic_uint_fast8_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b6ec0","inner":[{"decl":{"id":"0x1c1872b0","kind":"TypedefDecl","name":"uint_fast8_t"},"id":"0x1c1b6e90","inner":[{"id":"0x1c086090","kind":"BuiltinType","type":{"qualType":"unsigned char"}}],"kind":"TypedefType","type":{"qualType":"uint_fast8_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_fast8_t)"}}

alias atomic_int_fast16_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b6f90","inner":[{"decl":{"id":"0x1c187160","kind":"TypedefDecl","name":"int_fast16_t"},"id":"0x1c1b6f60","inner":[{"id":"0x1c086050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"int_fast16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_fast16_t)"}}

alias atomic_uint_fast16_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b7060","inner":[{"decl":{"id":"0x1c187320","kind":"TypedefDecl","name":"uint_fast16_t"},"id":"0x1c1b7030","inner":[{"id":"0x1c0860f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"uint_fast16_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_fast16_t)"}}

alias atomic_int_fast32_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b7130","inner":[{"decl":{"id":"0x1c1871d0","kind":"TypedefDecl","name":"int_fast32_t"},"id":"0x1c1b7100","inner":[{"id":"0x1c086050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"int_fast32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_fast32_t)"}}

alias atomic_uint_fast32_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b7200","inner":[{"decl":{"id":"0x1c187390","kind":"TypedefDecl","name":"uint_fast32_t"},"id":"0x1c1b71d0","inner":[{"id":"0x1c0860f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"uint_fast32_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_fast32_t)"}}

alias atomic_int_fast64_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b72d0","inner":[{"decl":{"id":"0x1c187240","kind":"TypedefDecl","name":"int_fast64_t"},"id":"0x1c1b72a0","inner":[{"id":"0x1c086050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"int_fast64_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(int_fast64_t)"}}

alias atomic_uint_fast64_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b73a0","inner":[{"decl":{"id":"0x1c187400","kind":"TypedefDecl","name":"uint_fast64_t"},"id":"0x1c1b7370","inner":[{"id":"0x1c0860f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"uint_fast64_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uint_fast64_t)"}}

alias atomic_intptr_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b7470","inner":[{"decl":{"id":"0x1c187470","kind":"TypedefDecl","name":"intptr_t"},"id":"0x1c1b7440","inner":[{"id":"0x1c086050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"intptr_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(intptr_t)"}}

alias atomic_uintptr_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b7540","inner":[{"decl":{"id":"0x1c1874e0","kind":"TypedefDecl","name":"uintptr_t"},"id":"0x1c1b7510","inner":[{"id":"0x1c0860f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"uintptr_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uintptr_t)"}}

alias atomic_size_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b7610","inner":[{"decl":{"id":"0x1c187740","kind":"TypedefDecl","name":"size_t"},"id":"0x1c1b75e0","inner":[{"id":"0x1c0860f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"size_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(size_t)"}}

alias atomic_ptrdiff_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b76e0","inner":[{"decl":{"id":"0x1c1876d0","kind":"TypedefDecl","name":"ptrdiff_t"},"id":"0x1c1b76b0","inner":[{"id":"0x1c086050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"ptrdiff_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(ptrdiff_t)"}}

alias atomic_intmax_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b77b0","inner":[{"decl":{"id":"0x1c187570","kind":"TypedefDecl","name":"intmax_t"},"id":"0x1c1b7780","inner":[{"decl":{"id":"0x1c178cf0","kind":"TypedefDecl","name":"__intmax_t"},"id":"0x1c187540","inner":[{"id":"0x1c086050","kind":"BuiltinType","type":{"qualType":"long"}}],"kind":"TypedefType","type":{"qualType":"__intmax_t"}}],"kind":"TypedefType","type":{"qualType":"intmax_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(intmax_t)"}}

alias atomic_uintmax_t = 	# # Node: PlaceHolder()
	# {"id":"0x1c1b88a0","inner":[{"decl":{"id":"0x1c187600","kind":"TypedefDecl","name":"uintmax_t"},"id":"0x1c1b8870","inner":[{"decl":{"id":"0x1c178d60","kind":"TypedefDecl","name":"__uintmax_t"},"id":"0x1c1875d0","inner":[{"id":"0x1c0860f0","kind":"BuiltinType","type":{"qualType":"unsigned long"}}],"kind":"TypedefType","type":{"qualType":"__uintmax_t"}}],"kind":"TypedefType","type":{"qualType":"uintmax_t"}}],"kind":"AtomicType","type":{"qualType":"_Atomic(uintmax_t)"}}

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
	# # Node: PlaceHolder()
	# {"id":"0x1c1c3950","inner":[{"id":"0x1c1c3930","inner":[{"id":"0x1c1c3868","kind":"IntegerLiteral","range":{"begin":{"expansionLoc":{"col":8,"isMacroArgExpansion":true,"line":175,"offset":6844,"tokLen":19},"spellingLoc":{"col":29,"line":26,"offset":776,"tokLen":3}},"end":{"expansionLoc":{"col":8,"isMacroArgExpansion":true,"line":175,"offset":6844,"tokLen":19},"spellingLoc":{"col":29,"line":26,"offset":776,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"ConstantExpr","range":{"begin":{"expansionLoc":{"col":8,"isMacroArgExpansion":true,"line":175,"offset":6844,"tokLen":19},"spellingLoc":{"col":29,"line":26,"offset":776,"tokLen":3}},"end":{"expansionLoc":{"col":8,"isMacroArgExpansion":true,"line":175,"offset":6844,"tokLen":19},"spellingLoc":{"col":29,"line":26,"offset":776,"tokLen":3}}},"type":{"qualType":"int"},"value":"128","valueCategory":"prvalue"}],"kind":"AlignedAttr","range":{"begin":{"expansionLoc":{"col":8,"line":175,"offset":6844,"tokLen":19},"spellingLoc":{"col":41,"line":32,"offset":1067,"tokLen":11}},"end":{"expansionLoc":{"col":8,"line":175,"offset":6844,"tokLen":19},"spellingLoc":{"col":54,"line":32,"offset":1080,"tokLen":1}}}}

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
