
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
alias atomic_bool = Bool
alias atomic_char = Int8
alias atomic_schar = Int8
alias atomic_uchar = UInt8
alias atomic_short = Int16
alias atomic_ushort = UInt16
alias atomic_int = ffi.c_int
alias atomic_uint = ffi.c_int
alias atomic_long = ffi.c_long
alias atomic_ulong = ffi.c_ulong
alias atomic_llong = ffi.c_long_long
alias atomic_ullong = ffi.c_ulong_long
alias atomic_char16_t = uint_least16_t
alias atomic_char32_t = uint_least32_t
alias atomic_wchar_t = wchar_t
alias atomic_int_least8_t = int_least8_t
alias atomic_uint_least8_t = uint_least8_t
alias atomic_int_least16_t = int_least16_t
alias atomic_uint_least16_t = uint_least16_t
alias atomic_int_least32_t = int_least32_t
alias atomic_uint_least32_t = uint_least32_t
alias atomic_int_least64_t = int_least64_t
alias atomic_uint_least64_t = uint_least64_t
alias atomic_int_fast8_t = int_fast8_t
alias atomic_uint_fast8_t = uint_fast8_t
alias atomic_int_fast16_t = int_fast16_t
alias atomic_uint_fast16_t = uint_fast16_t
alias atomic_int_fast32_t = int_fast32_t
alias atomic_uint_fast32_t = uint_fast32_t
alias atomic_int_fast64_t = int_fast64_t
alias atomic_uint_fast64_t = uint_fast64_t
alias atomic_intptr_t = intptr_t
alias atomic_uintptr_t = uintptr_t
alias atomic_size_t = size_t
alias atomic_ptrdiff_t = ptrdiff_t
alias atomic_intmax_t = intmax_t
alias atomic_uintmax_t = uintmax_t
struct atomic_flag(Copyable & Movable):
	var _Value : _Atomic(_Bool)

alias atomic_flag_test_and_set = fn (UnsafePointer[atomic_flag]) -> Bool
alias atomic_flag_test_and_set_explicit = fn (UnsafePointer[atomic_flag], memory_order) -> Bool
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
