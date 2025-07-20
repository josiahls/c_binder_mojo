from sys.ffi import DLHandle
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from sys.ffi import _Global
from sys import ffi, alignof, simdwidthof
from utils import StaticTuple


alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = __NSConstantString_tag
@register_passable("trivial")
struct __NSConstantString_tag(Copyable & Movable):
	pass


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

alias __builtin_va_list = __va_list
@register_passable("trivial")
struct __va_list(Copyable & Movable):
	pass


alias size_t = UInt64

alias wchar_t = UInt32

alias _Float128 = Float64

alias _Float32 = Float32

alias _Float64 = Float64

alias _Float32x = Float64

alias _Float64x = Float64
@register_passable("trivial")
struct Anonymous___usr_include_stdlib_h_59_9__line_63_3_(Copyable & Movable):
	var quot: Int32
	var rem: Int32


alias div_t = Anonymous___usr_include_stdlib_h_59_9__line_63_3_
@register_passable("trivial")
struct Anonymous__line_67_9__line_71_3_(Copyable & Movable):
	var quot: Int64
	var rem: Int64


alias ldiv_t = Anonymous__line_67_9__line_71_3_
@register_passable("trivial")
struct Anonymous__line_77_23__line_81_3_(Copyable & Movable):
	var quot: Int128
	var rem: Int128


alias lldiv_t = Anonymous__line_77_23__line_81_3_
alias __ctype_get_mb_cur_max = fn() -> size_t
alias atof = fn(read __nptr: UnsafePointer[Int8]) -> Float64
alias atoi = fn(read __nptr: UnsafePointer[Int8]) -> Int32
alias atol = fn(read __nptr: UnsafePointer[Int8]) -> Int64
alias atoll = fn(read __nptr: UnsafePointer[Int8]) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias strtod = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtod = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias strtof = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float32
alias strtof = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias strtold = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtold = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias strtol = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> Int64
alias strtol = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias strtoul = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> UInt64
alias strtoul = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> UInt64
alias strtoq = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int128
alias strtouq = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> UInt128
 # Disabled either due to a redefinition or a previous declaration: alias strtoll = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> Int128
alias strtoll = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias strtoull = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> UInt128
alias strtoull = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> UInt128
alias l64a = fn(__n: Int64) -> UnsafePointer[Int8]
alias a64l = fn(read __s: UnsafePointer[Int8]) -> Int64

alias __u_char = UInt8

alias __u_short = UInt16

alias __u_int = UInt32

alias __u_long = UInt64

alias __int8_t = Int8

alias __uint8_t = UInt8

alias __int16_t = Int16

alias __uint16_t = UInt16

alias __int32_t = Int32

alias __uint32_t = UInt32

alias __int64_t = Int64

alias __uint64_t = UInt64

alias __int_least8_t = Int8

alias __uint_least8_t = UInt8

alias __int_least16_t = Int16

alias __uint_least16_t = UInt16

alias __int_least32_t = Int32

alias __uint_least32_t = UInt32

alias __int_least64_t = Int64

alias __uint_least64_t = UInt64

alias __quad_t = Int64

alias __u_quad_t = UInt64

alias __intmax_t = Int64

alias __uintmax_t = UInt64

alias __dev_t = UInt64

alias __uid_t = UInt32

alias __gid_t = UInt32

alias __ino_t = UInt64

alias __ino64_t = UInt64

alias __mode_t = UInt32

alias __nlink_t = UInt32

alias __off_t = Int64

alias __off64_t = Int64

alias __pid_t = Int32
@register_passable("trivial")
struct Anonymous___usr_include_aarch64_linux_gnu_bits_typesizes_h_72_24__col_47_(Copyable & Movable):
	var __val: StaticTuple[Int32, 2]


alias __fsid_t = Anonymous___usr_include_aarch64_linux_gnu_bits_typesizes_h_72_24__col_47_

alias __clock_t = Int64

alias __rlim_t = UInt64

alias __rlim64_t = UInt64

alias __id_t = UInt32

alias __time_t = Int64

alias __useconds_t = UInt32

alias __suseconds_t = Int64

alias __suseconds64_t = Int64

alias __daddr_t = Int32

alias __key_t = Int32

alias __clockid_t = Int32

alias __timer_t = UnsafePointer[NoneType]

alias __blksize_t = Int32

alias __blkcnt_t = Int64

alias __blkcnt64_t = Int64

alias __fsblkcnt_t = UInt64

alias __fsblkcnt64_t = UInt64

alias __fsfilcnt_t = UInt64

alias __fsfilcnt64_t = UInt64

alias __fsword_t = Int64

alias __ssize_t = Int64

alias __syscall_slong_t = Int64

alias __syscall_ulong_t = UInt64

alias __loff_t = Int64

alias __caddr_t = UnsafePointer[Int8]

alias __intptr_t = Int64

alias __socklen_t = UInt32

alias __sig_atomic_t = Int32

alias u_char = UInt8

alias u_short = UInt16

alias u_int = UInt32

alias u_long = UInt64

alias quad_t = Int64

alias u_quad_t = UInt64

alias fsid_t = __fsid_t

alias loff_t = __loff_t

alias ino_t = UInt64

alias dev_t = UInt64

alias gid_t = UInt32

alias mode_t = UInt32

alias nlink_t = UInt32

alias uid_t = UInt32

alias off_t = Int64

alias pid_t = Int32

alias id_t = UInt32

alias ssize_t = Int64

alias daddr_t = Int32

alias caddr_t = __caddr_t

alias key_t = Int32

alias clock_t = Int64

alias clockid_t = Int32

alias time_t = Int64

alias timer_t = __timer_t

alias ulong = UInt64

alias ushort = UInt16

alias uint = UInt32

alias int8_t = Int8

alias int16_t = Int16

alias int32_t = Int32

alias int64_t = Int64

alias u_int8_t = UInt8

alias u_int16_t = UInt16

alias u_int32_t = UInt32

alias u_int64_t = UInt64

alias register_t = Int64 # TODO(josiahls): c_binder_mojo does not support mode attributes yet: mode_attr_node: mode: __word__

alias __bswap_16 = fn(__bsx: __uint16_t) -> __uint16_t
alias __bswap_32 = fn(__bsx: __uint32_t) -> __uint32_t
alias __bswap_64 = fn(__bsx: __uint64_t) -> __uint64_t
alias __uint16_identity = fn(__x: __uint16_t) -> __uint16_t
alias __uint32_identity = fn(__x: __uint32_t) -> __uint32_t
alias __uint64_identity = fn(__x: __uint64_t) -> __uint64_t
@register_passable("trivial")
struct Anonymous___usr_include_aarch64_linux_gnu_bits_types___sigset_t_h_5_9__line_8_1_(Copyable & Movable):
	var __val: StaticTuple[UInt64, 16]


alias __sigset_t = Anonymous___usr_include_aarch64_linux_gnu_bits_types___sigset_t_h_5_9__line_8_1_

alias sigset_t = __sigset_t
@register_passable("trivial")
struct timeval(Copyable & Movable):
	var tv_sec: __time_t
	var tv_usec: __suseconds_t

@register_passable("trivial")
struct timespec(Copyable & Movable):
	var tv_sec: __time_t
	var tv_nsec: __syscall_slong_t


alias suseconds_t = Int64

alias __fd_mask = Int64
@register_passable("trivial")
struct Anonymous__line_59_9__line_70_3_(Copyable & Movable):
	var __fds_bits: StaticTuple[__fd_mask, 16]


alias fd_set = Anonymous__line_59_9__line_70_3_

alias fd_mask = Int64
alias select = fn(__nfds: Int32, __readfds: UnsafePointer[fd_set], __writefds: UnsafePointer[fd_set], __exceptfds: UnsafePointer[fd_set], __timeout: UnsafePointer[timeval]) -> Int32
alias pselect = fn(__nfds: Int32, __readfds: UnsafePointer[fd_set], __writefds: UnsafePointer[fd_set], __exceptfds: UnsafePointer[fd_set], read __timeout: UnsafePointer[timespec], read __sigmask: UnsafePointer[__sigset_t]) -> Int32

alias blksize_t = Int32

alias blkcnt_t = Int64

alias fsblkcnt_t = UInt64

alias fsfilcnt_t = UInt64
@register_passable("trivial")
struct _Anonymous___usr_include_aarch64_linux_gnu_bits_atomic_wide_counter_h_25_9__line_33_1__Anonymous__line_28_3__line_32_3_(Copyable & Movable):
	var __low: UInt32
	var __high: UInt32


@register_passable("trivial")
struct Anonymous___usr_include_aarch64_linux_gnu_bits_atomic_wide_counter_h_25_9__line_33_1_(Copyable & Movable):
	var __value64: UInt128
	var __value32: _Anonymous___usr_include_aarch64_linux_gnu_bits_atomic_wide_counter_h_25_9__line_33_1__Anonymous__line_28_3__line_32_3_


alias __atomic_wide_counter = Anonymous___usr_include_aarch64_linux_gnu_bits_atomic_wide_counter_h_25_9__line_33_1_
@register_passable("trivial")
struct __pthread_internal_list(Copyable & Movable):
	var __prev: UnsafePointer[__pthread_internal_list]
	var __next: UnsafePointer[__pthread_internal_list]


alias __pthread_list_t = __pthread_internal_list
@register_passable("trivial")
struct __pthread_internal_slist(Copyable & Movable):
	var __next: UnsafePointer[__pthread_internal_slist]


alias __pthread_slist_t = __pthread_internal_slist
@register_passable("trivial")
struct __pthread_mutex_s(Copyable & Movable):
	var __lock: Int32
	var __count: UInt32
	var __owner: Int32
	var __nusers: UInt32
	var __kind: Int32
	var __spins: Int32
	var __list: __pthread_list_t

@register_passable("trivial")
struct __pthread_rwlock_arch_t(Copyable & Movable):
	var __readers: UInt32
	var __writers: UInt32
	var __wrphase_futex: UInt32
	var __writers_futex: UInt32
	var __pad3: UInt32
	var __pad4: UInt32
	var __cur_writer: Int32
	var __shared: Int32
	var __pad1: UInt64
	var __pad2: UInt64
	var __flags: UInt32

@register_passable("trivial")
struct __pthread_cond_s(Copyable & Movable):
	var __wseq: __atomic_wide_counter
	var __g1_start: __atomic_wide_counter
	var __g_refs: StaticTuple[UInt32, 2]
	var __g_size: StaticTuple[UInt32, 2]
	var __g1_orig_size: UInt32
	var __wrefs: UInt32
	var __g_signals: StaticTuple[UInt32, 2]


alias __tss_t = UInt32

alias __thrd_t = UInt64
@register_passable("trivial")
struct Anonymous__line_108_9__line_111_1_(Copyable & Movable):
	var __data: Int32


alias __once_flag = Anonymous__line_108_9__line_111_1_

alias pthread_t = UInt64
@register_passable("trivial")
struct Anonymous__line_32_9__line_36_1_(Copyable & Movable):
	var __size: StaticTuple[Int8, 8]
	var __align: Int32


alias pthread_mutexattr_t = Anonymous__line_32_9__line_36_1_
@register_passable("trivial")
struct Anonymous__line_41_9__line_45_1_(Copyable & Movable):
	var __size: StaticTuple[Int8, 8]
	var __align: Int32


alias pthread_condattr_t = Anonymous__line_41_9__line_45_1_

alias pthread_key_t = UInt32

alias pthread_once_t = Int32
@register_passable("trivial")
struct pthread_attr_t(Copyable & Movable):
	var __size: StaticTuple[Int8, 64]
	var __align: Int64

# Disabled since this is already declared
# alias pthread_attr_t = pthread_attr_t
@register_passable("trivial")
struct Anonymous__line_67_9__line_72_1_(Copyable & Movable):
	var __data: __pthread_mutex_s
	var __size: StaticTuple[Int8, 48]
	var __align: Int64


alias pthread_mutex_t = Anonymous__line_67_9__line_72_1_
@register_passable("trivial")
struct Anonymous__line_75_9__line_80_1_(Copyable & Movable):
	var __data: __pthread_cond_s
	var __size: StaticTuple[Int8, 48]
	var __align: Int128


alias pthread_cond_t = Anonymous__line_75_9__line_80_1_
@register_passable("trivial")
struct Anonymous__line_86_9__line_91_1_(Copyable & Movable):
	var __data: __pthread_rwlock_arch_t
	var __size: StaticTuple[Int8, 56]
	var __align: Int64


alias pthread_rwlock_t = Anonymous__line_86_9__line_91_1_
@register_passable("trivial")
struct Anonymous__line_93_9__line_97_1_(Copyable & Movable):
	var __size: StaticTuple[Int8, 8]
	var __align: Int64


alias pthread_rwlockattr_t = Anonymous__line_93_9__line_97_1_

alias pthread_spinlock_t = Int32
@register_passable("trivial")
struct Anonymous__line_108_9__line_112_1_(Copyable & Movable):
	var __size: StaticTuple[Int8, 32]
	var __align: Int64


alias pthread_barrier_t = Anonymous__line_108_9__line_112_1_
@register_passable("trivial")
struct Anonymous__line_114_9__line_118_1_(Copyable & Movable):
	var __size: StaticTuple[Int8, 8]
	var __align: Int32


alias pthread_barrierattr_t = Anonymous__line_114_9__line_118_1_
alias random = fn() -> Int64
alias srandom = fn(__seed: UInt32) -> NoneType
alias initstate = fn(__seed: UInt32, __statebuf: UnsafePointer[Int8], __statelen: size_t) -> UnsafePointer[Int8]
alias setstate = fn(__statebuf: UnsafePointer[Int8]) -> UnsafePointer[Int8]
@register_passable("trivial")
struct random_data(Copyable & Movable):
	var fptr: UnsafePointer[Int32]
	var rptr: UnsafePointer[Int32]
	var state: UnsafePointer[Int32]
	var rand_type: Int32
	var rand_deg: Int32
	var rand_sep: Int32
	var end_ptr: UnsafePointer[Int32]

alias random_r = fn(__buf: UnsafePointer[random_data], __result: UnsafePointer[Int32]) -> Int32
alias srandom_r = fn(__seed: UInt32, __buf: UnsafePointer[random_data]) -> Int32
alias initstate_r = fn(__seed: UInt32, __statebuf: UnsafePointer[Int8], __statelen: size_t, __buf: UnsafePointer[random_data]) -> Int32
alias setstate_r = fn(__statebuf: UnsafePointer[Int8], __buf: UnsafePointer[random_data]) -> Int32
alias rand = fn() -> Int32
alias srand = fn(__seed: UInt32) -> NoneType
alias rand_r = fn(__seed: UnsafePointer[UInt32]) -> Int32
alias drand48 = fn() -> Float64
alias erand48 = fn(__xsubi: UnsafePointer[UInt16]) -> Float64
alias lrand48 = fn() -> Int64
alias nrand48 = fn(__xsubi: UnsafePointer[UInt16]) -> Int64
alias mrand48 = fn() -> Int64
alias jrand48 = fn(__xsubi: UnsafePointer[UInt16]) -> Int64
alias srand48 = fn(__seedval: Int64) -> NoneType
alias seed48 = fn(__seed16v: UnsafePointer[UInt16]) -> UnsafePointer[UInt16]
alias lcong48 = fn(__param: UnsafePointer[UInt16]) -> NoneType
@register_passable("trivial")
struct drand48_data(Copyable & Movable):
	var __x: StaticTuple[UInt16, 3]
	var __old_x: StaticTuple[UInt16, 3]
	var __c: UInt16
	var __init: UInt16
	var __a: UInt128

alias drand48_r = fn(__buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Float64]) -> Int32
alias erand48_r = fn(__xsubi: UnsafePointer[UInt16], __buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Float64]) -> Int32
alias lrand48_r = fn(__buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias nrand48_r = fn(__xsubi: UnsafePointer[UInt16], __buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias mrand48_r = fn(__buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias jrand48_r = fn(__xsubi: UnsafePointer[UInt16], __buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias srand48_r = fn(__seedval: Int64, __buffer: UnsafePointer[drand48_data]) -> Int32
alias seed48_r = fn(__seed16v: UnsafePointer[UInt16], __buffer: UnsafePointer[drand48_data]) -> Int32
alias lcong48_r = fn(__param: UnsafePointer[UInt16], __buffer: UnsafePointer[drand48_data]) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias malloc = fn(UInt64) -> OpaquePointer
alias malloc = fn(__size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias calloc = fn(UInt64, UInt64) -> OpaquePointer
alias calloc = fn(__nmemb: size_t, __size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias realloc = fn(OpaquePointer, UInt64) -> OpaquePointer
alias realloc = fn(__ptr: OpaquePointer, __size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias free = fn(OpaquePointer) -> NoneType
alias free = fn(__ptr: OpaquePointer) -> NoneType
 # Disabled either due to a redefinition or a previous declaration: alias reallocarray = fn(__ptr: OpaquePointer, __nmemb: size_t, __size: size_t) -> OpaquePointer
alias reallocarray = fn(__ptr: OpaquePointer, __nmemb: size_t, __size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias alloca = fn(UInt64) -> OpaquePointer
alias alloca = fn(__size: size_t) -> OpaquePointer
alias valloc = fn(__size: size_t) -> OpaquePointer
alias posix_memalign = fn(__memptr: UnsafePointer[OpaquePointer], __alignment: size_t, __size: size_t) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias aligned_alloc = fn(UInt64, UInt64) -> OpaquePointer
alias aligned_alloc = fn(__alignment: size_t, __size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias abort = fn() -> NoneType
 # Disabled either due to a redefinition or a previous declaration: alias abort = fn() -> NoneType
alias atexit = fn(__func: fn() -> NoneType) -> Int32
alias at_quick_exit = fn(__func: fn() -> NoneType) -> Int32
alias on_exit = fn(__func: fn(Int32, OpaquePointer) -> NoneType, __arg: OpaquePointer) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias exit = fn(Int32) -> NoneType
alias exit = fn(__status: Int32) -> NoneType
alias quick_exit = fn(__status: Int32) -> NoneType
 # Disabled either due to a redefinition or a previous declaration: alias _Exit = fn(Int32) -> NoneType
alias _Exit = fn(__status: Int32) -> NoneType
 # Disabled either due to a redefinition or a previous declaration: alias getenv = fn(read __name: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias putenv = fn(__string: UnsafePointer[Int8]) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias setenv = fn(read __name: UnsafePointer[Int8], read __value: UnsafePointer[Int8], __replace: Int32) -> Int32
alias unsetenv = fn(read __name: UnsafePointer[Int8]) -> Int32
alias clearenv = fn() -> Int32
alias mktemp = fn(__template: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias mkstemp = fn(__template: UnsafePointer[Int8]) -> Int32
alias mkstemps = fn(__template: UnsafePointer[Int8], __suffixlen: Int32) -> Int32
alias mkdtemp = fn(__template: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias system = fn(read __command: UnsafePointer[Int8]) -> Int32
alias realpath = fn(read __name: UnsafePointer[Int8], __resolved: UnsafePointer[Int8]) -> UnsafePointer[Int8]

alias __compar_fn_t = fn(UnsafePointer[NoneType],UnsafePointer[NoneType]) -> Int32
alias bsearch = fn(read __key: OpaquePointer, read __base: OpaquePointer, __nmemb: size_t, __size: size_t, __compar: __compar_fn_t) -> OpaquePointer
alias qsort = fn(__base: OpaquePointer, __nmemb: size_t, __size: size_t, __compar: __compar_fn_t) -> NoneType
 # Disabled either due to a redefinition or a previous declaration: alias abs = fn(Int32) -> Int32
alias abs = fn(__x: Int32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias labs = fn(Int64) -> Int64
alias labs = fn(__x: Int64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llabs = fn(Int128) -> Int128
alias llabs = fn(__x: Int128) -> Int128
alias div = fn(__numer: Int32, __denom: Int32) -> div_t
alias ldiv = fn(__numer: Int64, __denom: Int64) -> ldiv_t
alias lldiv = fn(__numer: Int128, __denom: Int128) -> lldiv_t
alias ecvt = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias fcvt = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias gcvt = fn(__value: Float64, __ndigit: Int32, __buf: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias qecvt = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias qfcvt = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32]) -> UnsafePointer[Int8]
alias qgcvt = fn(__value: Float64, __ndigit: Int32, __buf: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias ecvt_r = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32], __buf: UnsafePointer[Int8], __len: size_t) -> Int32
alias fcvt_r = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32], __buf: UnsafePointer[Int8], __len: size_t) -> Int32
alias qecvt_r = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32], __buf: UnsafePointer[Int8], __len: size_t) -> Int32
alias qfcvt_r = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32], __buf: UnsafePointer[Int8], __len: size_t) -> Int32
alias mblen = fn(read __s: UnsafePointer[Int8], __n: size_t) -> Int32
alias mbtowc = fn(__pwc: UnsafePointer[wchar_t], read __s: UnsafePointer[Int8], __n: size_t) -> Int32
alias wctomb = fn(__s: UnsafePointer[Int8], __wchar: wchar_t) -> Int32
alias mbstowcs = fn(__pwcs: UnsafePointer[wchar_t], read __s: UnsafePointer[Int8], __n: size_t) -> size_t
alias wcstombs = fn(__s: UnsafePointer[Int8], read __pwcs: UnsafePointer[wchar_t], __n: size_t) -> size_t
alias rpmatch = fn(read __response: UnsafePointer[Int8]) -> Int32
alias getsubopt = fn(__optionp: UnsafePointer[UnsafePointer[Int8]], __tokens: UnsafePointer[UnsafePointer[Int8]], __valuep: UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias getloadavg = fn(__loadavg: UnsafePointer[Float64], __nelem: Int32) -> Int32

alias float_t = Float32

alias double_t = Float64
alias __fpclassify = fn(__value: Float64) -> Int32
alias __signbit = fn(__value: Float64) -> Int32
alias __isinf = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias __finite = fn(Float64) -> Int32
alias __finite = fn(__value: Float64) -> Int32
alias __isnan = fn(__value: Float64) -> Int32
alias __iseqsig = fn(__x: Float64, __y: Float64) -> Int32
alias __issignaling = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias acos = fn(Float64) -> Float64
alias acos = fn(__x: Float64) -> Float64
alias __acos = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias asin = fn(Float64) -> Float64
alias asin = fn(__x: Float64) -> Float64
alias __asin = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atan = fn(Float64) -> Float64
alias atan = fn(__x: Float64) -> Float64
alias __atan = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atan2 = fn(Float64, Float64) -> Float64
alias atan2 = fn(__y: Float64, __x: Float64) -> Float64
alias __atan2 = fn(__y: Float64, __x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cos = fn(Float64) -> Float64
alias cos = fn(__x: Float64) -> Float64
alias __cos = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sin = fn(Float64) -> Float64
alias sin = fn(__x: Float64) -> Float64
alias __sin = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tan = fn(Float64) -> Float64
alias tan = fn(__x: Float64) -> Float64
alias __tan = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cosh = fn(Float64) -> Float64
alias cosh = fn(__x: Float64) -> Float64
alias __cosh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sinh = fn(Float64) -> Float64
alias sinh = fn(__x: Float64) -> Float64
alias __sinh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tanh = fn(Float64) -> Float64
alias tanh = fn(__x: Float64) -> Float64
alias __tanh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias acosh = fn(Float64) -> Float64
alias acosh = fn(__x: Float64) -> Float64
alias __acosh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias asinh = fn(Float64) -> Float64
alias asinh = fn(__x: Float64) -> Float64
alias __asinh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atanh = fn(Float64) -> Float64
alias atanh = fn(__x: Float64) -> Float64
alias __atanh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias exp = fn(Float64) -> Float64
alias exp = fn(__x: Float64) -> Float64
alias __exp = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias frexp = fn(Float64, UnsafePointer[Int32]) -> Float64
alias frexp = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
alias __frexp = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ldexp = fn(Float64, Int32) -> Float64
alias ldexp = fn(__x: Float64, __exponent: Int32) -> Float64
alias __ldexp = fn(__x: Float64, __exponent: Int32) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log = fn(Float64) -> Float64
alias log = fn(__x: Float64) -> Float64
alias __log = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log10 = fn(Float64) -> Float64
alias log10 = fn(__x: Float64) -> Float64
alias __log10 = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias modf = fn(Float64, UnsafePointer[Float64]) -> Float64
alias modf = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
alias __modf = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias expm1 = fn(Float64) -> Float64
alias expm1 = fn(__x: Float64) -> Float64
alias __expm1 = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log1p = fn(Float64) -> Float64
alias log1p = fn(__x: Float64) -> Float64
alias __log1p = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias logb = fn(Float64) -> Float64
alias logb = fn(__x: Float64) -> Float64
alias __logb = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias exp2 = fn(Float64) -> Float64
alias exp2 = fn(__x: Float64) -> Float64
alias __exp2 = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log2 = fn(Float64) -> Float64
alias log2 = fn(__x: Float64) -> Float64
alias __log2 = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias pow = fn(Float64, Float64) -> Float64
alias pow = fn(__x: Float64, __y: Float64) -> Float64
alias __pow = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sqrt = fn(Float64) -> Float64
alias sqrt = fn(__x: Float64) -> Float64
alias __sqrt = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias hypot = fn(Float64, Float64) -> Float64
alias hypot = fn(__x: Float64, __y: Float64) -> Float64
alias __hypot = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cbrt = fn(Float64) -> Float64
alias cbrt = fn(__x: Float64) -> Float64
alias __cbrt = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ceil = fn(Float64) -> Float64
alias ceil = fn(__x: Float64) -> Float64
alias __ceil = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fabs = fn(Float64) -> Float64
alias fabs = fn(__x: Float64) -> Float64
alias __fabs = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias floor = fn(Float64) -> Float64
alias floor = fn(__x: Float64) -> Float64
alias __floor = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmod = fn(Float64, Float64) -> Float64
alias fmod = fn(__x: Float64, __y: Float64) -> Float64
alias __fmod = fn(__x: Float64, __y: Float64) -> Float64
alias isinf = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias finite = fn(Float64) -> Int32
alias finite = fn(__value: Float64) -> Int32
alias drem = fn(__x: Float64, __y: Float64) -> Float64
alias __drem = fn(__x: Float64, __y: Float64) -> Float64
alias significand = fn(__x: Float64) -> Float64
alias __significand = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias copysign = fn(Float64, Float64) -> Float64
alias copysign = fn(__x: Float64, __y: Float64) -> Float64
alias __copysign = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nan = fn(read UnsafePointer[Int8]) -> Float64
alias nan = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias __nan = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias isnan = fn(__value: Float64) -> Int32
alias j0 = fn(Float64) -> Float64
alias __j0 = fn(Float64) -> Float64
alias j1 = fn(Float64) -> Float64
alias __j1 = fn(Float64) -> Float64
alias jn = fn(Int32, Float64) -> Float64
alias __jn = fn(Int32, Float64) -> Float64
alias y0 = fn(Float64) -> Float64
alias __y0 = fn(Float64) -> Float64
alias y1 = fn(Float64) -> Float64
alias __y1 = fn(Float64) -> Float64
alias yn = fn(Int32, Float64) -> Float64
alias __yn = fn(Int32, Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias erf = fn(Float64) -> Float64
alias erf = fn(Float64) -> Float64
alias __erf = fn(Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias erfc = fn(Float64) -> Float64
alias erfc = fn(Float64) -> Float64
alias __erfc = fn(Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias lgamma = fn(Float64) -> Float64
alias lgamma = fn(Float64) -> Float64
alias __lgamma = fn(Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tgamma = fn(Float64) -> Float64
alias tgamma = fn(Float64) -> Float64
alias __tgamma = fn(Float64) -> Float64
alias gamma = fn(Float64) -> Float64
alias __gamma = fn(Float64) -> Float64
alias lgamma_r = fn(Float64, /, __signgamp: UnsafePointer[Int32]) -> Float64
alias __lgamma_r = fn(Float64, /, __signgamp: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias rint = fn(Float64) -> Float64
alias rint = fn(__x: Float64) -> Float64
alias __rint = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nextafter = fn(Float64, Float64) -> Float64
alias nextafter = fn(__x: Float64, __y: Float64) -> Float64
alias __nextafter = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nexttoward = fn(Float64, Float64) -> Float64
alias nexttoward = fn(__x: Float64, __y: Float64) -> Float64
alias __nexttoward = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias remainder = fn(Float64, Float64) -> Float64
alias remainder = fn(__x: Float64, __y: Float64) -> Float64
alias __remainder = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias scalbn = fn(Float64, Int32) -> Float64
alias scalbn = fn(__x: Float64, __n: Int32) -> Float64
alias __scalbn = fn(__x: Float64, __n: Int32) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ilogb = fn(Float64) -> Int32
alias ilogb = fn(__x: Float64) -> Int32
alias __ilogb = fn(__x: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias scalbln = fn(Float64, Int64) -> Float64
alias scalbln = fn(__x: Float64, __n: Int64) -> Float64
alias __scalbln = fn(__x: Float64, __n: Int64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nearbyint = fn(Float64) -> Float64
alias nearbyint = fn(__x: Float64) -> Float64
alias __nearbyint = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias round = fn(Float64) -> Float64
alias round = fn(__x: Float64) -> Float64
alias __round = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias trunc = fn(Float64) -> Float64
alias trunc = fn(__x: Float64) -> Float64
alias __trunc = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias remquo = fn(Float64, Float64, UnsafePointer[Int32]) -> Float64
alias remquo = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
alias __remquo = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias lrint = fn(Float64) -> Int64
alias lrint = fn(__x: Float64) -> Int64
alias __lrint = fn(__x: Float64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llrint = fn(Float64) -> Int128
alias llrint = fn(__x: Float64) -> Int128
alias __llrint = fn(__x: Float64) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias lround = fn(Float64) -> Int64
alias lround = fn(__x: Float64) -> Int64
alias __lround = fn(__x: Float64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llround = fn(Float64) -> Int128
alias llround = fn(__x: Float64) -> Int128
alias __llround = fn(__x: Float64) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias fdim = fn(Float64, Float64) -> Float64
alias fdim = fn(__x: Float64, __y: Float64) -> Float64
alias __fdim = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmax = fn(Float64, Float64) -> Float64
alias fmax = fn(__x: Float64, __y: Float64) -> Float64
alias __fmax = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmin = fn(Float64, Float64) -> Float64
alias fmin = fn(__x: Float64, __y: Float64) -> Float64
alias __fmin = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fma = fn(Float64, Float64, Float64) -> Float64
alias fma = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias __fma = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias scalb = fn(__x: Float64, __n: Float64) -> Float64
alias __scalb = fn(__x: Float64, __n: Float64) -> Float64
alias __fpclassifyf = fn(__value: Float32) -> Int32
alias __signbitf = fn(__value: Float32) -> Int32
alias __isinff = fn(__value: Float32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias __finitef = fn(Float32) -> Int32
alias __finitef = fn(__value: Float32) -> Int32
alias __isnanf = fn(__value: Float32) -> Int32
alias __iseqsigf = fn(__x: Float32, __y: Float32) -> Int32
alias __issignalingf = fn(__value: Float32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias acosf = fn(Float32) -> Float32
alias acosf = fn(__x: Float32) -> Float32
alias __acosf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias asinf = fn(Float32) -> Float32
alias asinf = fn(__x: Float32) -> Float32
alias __asinf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias atanf = fn(Float32) -> Float32
alias atanf = fn(__x: Float32) -> Float32
alias __atanf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias atan2f = fn(Float32, Float32) -> Float32
alias atan2f = fn(__y: Float32, __x: Float32) -> Float32
alias __atan2f = fn(__y: Float32, __x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias cosf = fn(Float32) -> Float32
alias cosf = fn(__x: Float32) -> Float32
alias __cosf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias sinf = fn(Float32) -> Float32
alias sinf = fn(__x: Float32) -> Float32
alias __sinf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias tanf = fn(Float32) -> Float32
alias tanf = fn(__x: Float32) -> Float32
alias __tanf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias coshf = fn(Float32) -> Float32
alias coshf = fn(__x: Float32) -> Float32
alias __coshf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias sinhf = fn(Float32) -> Float32
alias sinhf = fn(__x: Float32) -> Float32
alias __sinhf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias tanhf = fn(Float32) -> Float32
alias tanhf = fn(__x: Float32) -> Float32
alias __tanhf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias acoshf = fn(Float32) -> Float32
alias acoshf = fn(__x: Float32) -> Float32
alias __acoshf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias asinhf = fn(Float32) -> Float32
alias asinhf = fn(__x: Float32) -> Float32
alias __asinhf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias atanhf = fn(Float32) -> Float32
alias atanhf = fn(__x: Float32) -> Float32
alias __atanhf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias expf = fn(Float32) -> Float32
alias expf = fn(__x: Float32) -> Float32
alias __expf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias frexpf = fn(Float32, UnsafePointer[Int32]) -> Float32
alias frexpf = fn(__x: Float32, __exponent: UnsafePointer[Int32]) -> Float32
alias __frexpf = fn(__x: Float32, __exponent: UnsafePointer[Int32]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias ldexpf = fn(Float32, Int32) -> Float32
alias ldexpf = fn(__x: Float32, __exponent: Int32) -> Float32
alias __ldexpf = fn(__x: Float32, __exponent: Int32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias logf = fn(Float32) -> Float32
alias logf = fn(__x: Float32) -> Float32
alias __logf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias log10f = fn(Float32) -> Float32
alias log10f = fn(__x: Float32) -> Float32
alias __log10f = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias modff = fn(Float32, UnsafePointer[Float32]) -> Float32
alias modff = fn(__x: Float32, __iptr: UnsafePointer[Float32]) -> Float32
alias __modff = fn(__x: Float32, __iptr: UnsafePointer[Float32]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias expm1f = fn(Float32) -> Float32
alias expm1f = fn(__x: Float32) -> Float32
alias __expm1f = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias log1pf = fn(Float32) -> Float32
alias log1pf = fn(__x: Float32) -> Float32
alias __log1pf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias logbf = fn(Float32) -> Float32
alias logbf = fn(__x: Float32) -> Float32
alias __logbf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias exp2f = fn(Float32) -> Float32
alias exp2f = fn(__x: Float32) -> Float32
alias __exp2f = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias log2f = fn(Float32) -> Float32
alias log2f = fn(__x: Float32) -> Float32
alias __log2f = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias powf = fn(Float32, Float32) -> Float32
alias powf = fn(__x: Float32, __y: Float32) -> Float32
alias __powf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias sqrtf = fn(Float32) -> Float32
alias sqrtf = fn(__x: Float32) -> Float32
alias __sqrtf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias hypotf = fn(Float32, Float32) -> Float32
alias hypotf = fn(__x: Float32, __y: Float32) -> Float32
alias __hypotf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias cbrtf = fn(Float32) -> Float32
alias cbrtf = fn(__x: Float32) -> Float32
alias __cbrtf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias ceilf = fn(Float32) -> Float32
alias ceilf = fn(__x: Float32) -> Float32
alias __ceilf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fabsf = fn(Float32) -> Float32
alias fabsf = fn(__x: Float32) -> Float32
alias __fabsf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias floorf = fn(Float32) -> Float32
alias floorf = fn(__x: Float32) -> Float32
alias __floorf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fmodf = fn(Float32, Float32) -> Float32
alias fmodf = fn(__x: Float32, __y: Float32) -> Float32
alias __fmodf = fn(__x: Float32, __y: Float32) -> Float32
alias isinff = fn(__value: Float32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias finitef = fn(Float32) -> Int32
alias finitef = fn(__value: Float32) -> Int32
alias dremf = fn(__x: Float32, __y: Float32) -> Float32
alias __dremf = fn(__x: Float32, __y: Float32) -> Float32
alias significandf = fn(__x: Float32) -> Float32
alias __significandf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias copysignf = fn(Float32, Float32) -> Float32
alias copysignf = fn(__x: Float32, __y: Float32) -> Float32
alias __copysignf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias nanf = fn(read UnsafePointer[Int8]) -> Float32
alias nanf = fn(read __tagb: UnsafePointer[Int8]) -> Float32
alias __nanf = fn(read __tagb: UnsafePointer[Int8]) -> Float32
alias isnanf = fn(__value: Float32) -> Int32
alias j0f = fn(Float32) -> Float32
alias __j0f = fn(Float32) -> Float32
alias j1f = fn(Float32) -> Float32
alias __j1f = fn(Float32) -> Float32
alias jnf = fn(Int32, Float32) -> Float32
alias __jnf = fn(Int32, Float32) -> Float32
alias y0f = fn(Float32) -> Float32
alias __y0f = fn(Float32) -> Float32
alias y1f = fn(Float32) -> Float32
alias __y1f = fn(Float32) -> Float32
alias ynf = fn(Int32, Float32) -> Float32
alias __ynf = fn(Int32, Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias erff = fn(Float32) -> Float32
alias erff = fn(Float32) -> Float32
alias __erff = fn(Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias erfcf = fn(Float32) -> Float32
alias erfcf = fn(Float32) -> Float32
alias __erfcf = fn(Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias lgammaf = fn(Float32) -> Float32
alias lgammaf = fn(Float32) -> Float32
alias __lgammaf = fn(Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias tgammaf = fn(Float32) -> Float32
alias tgammaf = fn(Float32) -> Float32
alias __tgammaf = fn(Float32) -> Float32
alias gammaf = fn(Float32) -> Float32
alias __gammaf = fn(Float32) -> Float32
alias lgammaf_r = fn(Float32, /, __signgamp: UnsafePointer[Int32]) -> Float32
alias __lgammaf_r = fn(Float32, /, __signgamp: UnsafePointer[Int32]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias rintf = fn(Float32) -> Float32
alias rintf = fn(__x: Float32) -> Float32
alias __rintf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias nextafterf = fn(Float32, Float32) -> Float32
alias nextafterf = fn(__x: Float32, __y: Float32) -> Float32
alias __nextafterf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias nexttowardf = fn(Float32, Float64) -> Float32
alias nexttowardf = fn(__x: Float32, __y: Float64) -> Float32
alias __nexttowardf = fn(__x: Float32, __y: Float64) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias remainderf = fn(Float32, Float32) -> Float32
alias remainderf = fn(__x: Float32, __y: Float32) -> Float32
alias __remainderf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias scalbnf = fn(Float32, Int32) -> Float32
alias scalbnf = fn(__x: Float32, __n: Int32) -> Float32
alias __scalbnf = fn(__x: Float32, __n: Int32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias ilogbf = fn(Float32) -> Int32
alias ilogbf = fn(__x: Float32) -> Int32
alias __ilogbf = fn(__x: Float32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias scalblnf = fn(Float32, Int64) -> Float32
alias scalblnf = fn(__x: Float32, __n: Int64) -> Float32
alias __scalblnf = fn(__x: Float32, __n: Int64) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias nearbyintf = fn(Float32) -> Float32
alias nearbyintf = fn(__x: Float32) -> Float32
alias __nearbyintf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias roundf = fn(Float32) -> Float32
alias roundf = fn(__x: Float32) -> Float32
alias __roundf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias truncf = fn(Float32) -> Float32
alias truncf = fn(__x: Float32) -> Float32
alias __truncf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias remquof = fn(Float32, Float32, UnsafePointer[Int32]) -> Float32
alias remquof = fn(__x: Float32, __y: Float32, __quo: UnsafePointer[Int32]) -> Float32
alias __remquof = fn(__x: Float32, __y: Float32, __quo: UnsafePointer[Int32]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias lrintf = fn(Float32) -> Int64
alias lrintf = fn(__x: Float32) -> Int64
alias __lrintf = fn(__x: Float32) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llrintf = fn(Float32) -> Int128
alias llrintf = fn(__x: Float32) -> Int128
alias __llrintf = fn(__x: Float32) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias lroundf = fn(Float32) -> Int64
alias lroundf = fn(__x: Float32) -> Int64
alias __lroundf = fn(__x: Float32) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llroundf = fn(Float32) -> Int128
alias llroundf = fn(__x: Float32) -> Int128
alias __llroundf = fn(__x: Float32) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias fdimf = fn(Float32, Float32) -> Float32
alias fdimf = fn(__x: Float32, __y: Float32) -> Float32
alias __fdimf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fmaxf = fn(Float32, Float32) -> Float32
alias fmaxf = fn(__x: Float32, __y: Float32) -> Float32
alias __fmaxf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fminf = fn(Float32, Float32) -> Float32
alias fminf = fn(__x: Float32, __y: Float32) -> Float32
alias __fminf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fmaf = fn(Float32, Float32, Float32) -> Float32
alias fmaf = fn(__x: Float32, __y: Float32, __z: Float32) -> Float32
alias __fmaf = fn(__x: Float32, __y: Float32, __z: Float32) -> Float32
alias scalbf = fn(__x: Float32, __n: Float32) -> Float32
alias __scalbf = fn(__x: Float32, __n: Float32) -> Float32
alias __fpclassifyl = fn(__value: Float64) -> Int32
alias __signbitl = fn(__value: Float64) -> Int32
alias __isinfl = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias __finitel = fn(Float64) -> Int32
alias __finitel = fn(__value: Float64) -> Int32
alias __isnanl = fn(__value: Float64) -> Int32
alias __iseqsigl = fn(__x: Float64, __y: Float64) -> Int32
alias __issignalingl = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias acosl = fn(Float64) -> Float64
alias acosl = fn(__x: Float64) -> Float64
alias __acosl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias asinl = fn(Float64) -> Float64
alias asinl = fn(__x: Float64) -> Float64
alias __asinl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atanl = fn(Float64) -> Float64
alias atanl = fn(__x: Float64) -> Float64
alias __atanl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atan2l = fn(Float64, Float64) -> Float64
alias atan2l = fn(__y: Float64, __x: Float64) -> Float64
alias __atan2l = fn(__y: Float64, __x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cosl = fn(Float64) -> Float64
alias cosl = fn(__x: Float64) -> Float64
alias __cosl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sinl = fn(Float64) -> Float64
alias sinl = fn(__x: Float64) -> Float64
alias __sinl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tanl = fn(Float64) -> Float64
alias tanl = fn(__x: Float64) -> Float64
alias __tanl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias coshl = fn(Float64) -> Float64
alias coshl = fn(__x: Float64) -> Float64
alias __coshl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sinhl = fn(Float64) -> Float64
alias sinhl = fn(__x: Float64) -> Float64
alias __sinhl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tanhl = fn(Float64) -> Float64
alias tanhl = fn(__x: Float64) -> Float64
alias __tanhl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias acoshl = fn(Float64) -> Float64
alias acoshl = fn(__x: Float64) -> Float64
alias __acoshl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias asinhl = fn(Float64) -> Float64
alias asinhl = fn(__x: Float64) -> Float64
alias __asinhl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atanhl = fn(Float64) -> Float64
alias atanhl = fn(__x: Float64) -> Float64
alias __atanhl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias expl = fn(Float64) -> Float64
alias expl = fn(__x: Float64) -> Float64
alias __expl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias frexpl = fn(Float64, UnsafePointer[Int32]) -> Float64
alias frexpl = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
alias __frexpl = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ldexpl = fn(Float64, Int32) -> Float64
alias ldexpl = fn(__x: Float64, __exponent: Int32) -> Float64
alias __ldexpl = fn(__x: Float64, __exponent: Int32) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias logl = fn(Float64) -> Float64
alias logl = fn(__x: Float64) -> Float64
alias __logl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log10l = fn(Float64) -> Float64
alias log10l = fn(__x: Float64) -> Float64
alias __log10l = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias modfl = fn(Float64, UnsafePointer[Float64]) -> Float64
alias modfl = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
alias __modfl = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias expm1l = fn(Float64) -> Float64
alias expm1l = fn(__x: Float64) -> Float64
alias __expm1l = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log1pl = fn(Float64) -> Float64
alias log1pl = fn(__x: Float64) -> Float64
alias __log1pl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias logbl = fn(Float64) -> Float64
alias logbl = fn(__x: Float64) -> Float64
alias __logbl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias exp2l = fn(Float64) -> Float64
alias exp2l = fn(__x: Float64) -> Float64
alias __exp2l = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log2l = fn(Float64) -> Float64
alias log2l = fn(__x: Float64) -> Float64
alias __log2l = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias powl = fn(Float64, Float64) -> Float64
alias powl = fn(__x: Float64, __y: Float64) -> Float64
alias __powl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sqrtl = fn(Float64) -> Float64
alias sqrtl = fn(__x: Float64) -> Float64
alias __sqrtl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias hypotl = fn(Float64, Float64) -> Float64
alias hypotl = fn(__x: Float64, __y: Float64) -> Float64
alias __hypotl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cbrtl = fn(Float64) -> Float64
alias cbrtl = fn(__x: Float64) -> Float64
alias __cbrtl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ceill = fn(Float64) -> Float64
alias ceill = fn(__x: Float64) -> Float64
alias __ceill = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fabsl = fn(Float64) -> Float64
alias fabsl = fn(__x: Float64) -> Float64
alias __fabsl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias floorl = fn(Float64) -> Float64
alias floorl = fn(__x: Float64) -> Float64
alias __floorl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmodl = fn(Float64, Float64) -> Float64
alias fmodl = fn(__x: Float64, __y: Float64) -> Float64
alias __fmodl = fn(__x: Float64, __y: Float64) -> Float64
alias isinfl = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias finitel = fn(Float64) -> Int32
alias finitel = fn(__value: Float64) -> Int32
alias dreml = fn(__x: Float64, __y: Float64) -> Float64
alias __dreml = fn(__x: Float64, __y: Float64) -> Float64
alias significandl = fn(__x: Float64) -> Float64
alias __significandl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias copysignl = fn(Float64, Float64) -> Float64
alias copysignl = fn(__x: Float64, __y: Float64) -> Float64
alias __copysignl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nanl = fn(read UnsafePointer[Int8]) -> Float64
alias nanl = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias __nanl = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias isnanl = fn(__value: Float64) -> Int32
alias j0l = fn(Float64) -> Float64
alias __j0l = fn(Float64) -> Float64
alias j1l = fn(Float64) -> Float64
alias __j1l = fn(Float64) -> Float64
alias jnl = fn(Int32, Float64) -> Float64
alias __jnl = fn(Int32, Float64) -> Float64
alias y0l = fn(Float64) -> Float64
alias __y0l = fn(Float64) -> Float64
alias y1l = fn(Float64) -> Float64
alias __y1l = fn(Float64) -> Float64
alias ynl = fn(Int32, Float64) -> Float64
alias __ynl = fn(Int32, Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias erfl = fn(Float64) -> Float64
alias erfl = fn(Float64) -> Float64
alias __erfl = fn(Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias erfcl = fn(Float64) -> Float64
alias erfcl = fn(Float64) -> Float64
alias __erfcl = fn(Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias lgammal = fn(Float64) -> Float64
alias lgammal = fn(Float64) -> Float64
alias __lgammal = fn(Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tgammal = fn(Float64) -> Float64
alias tgammal = fn(Float64) -> Float64
alias __tgammal = fn(Float64) -> Float64
alias gammal = fn(Float64) -> Float64
alias __gammal = fn(Float64) -> Float64
alias lgammal_r = fn(Float64, /, __signgamp: UnsafePointer[Int32]) -> Float64
alias __lgammal_r = fn(Float64, /, __signgamp: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias rintl = fn(Float64) -> Float64
alias rintl = fn(__x: Float64) -> Float64
alias __rintl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nextafterl = fn(Float64, Float64) -> Float64
alias nextafterl = fn(__x: Float64, __y: Float64) -> Float64
alias __nextafterl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nexttowardl = fn(Float64, Float64) -> Float64
alias nexttowardl = fn(__x: Float64, __y: Float64) -> Float64
alias __nexttowardl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias remainderl = fn(Float64, Float64) -> Float64
alias remainderl = fn(__x: Float64, __y: Float64) -> Float64
alias __remainderl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias scalbnl = fn(Float64, Int32) -> Float64
alias scalbnl = fn(__x: Float64, __n: Int32) -> Float64
alias __scalbnl = fn(__x: Float64, __n: Int32) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ilogbl = fn(Float64) -> Int32
alias ilogbl = fn(__x: Float64) -> Int32
alias __ilogbl = fn(__x: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias scalblnl = fn(Float64, Int64) -> Float64
alias scalblnl = fn(__x: Float64, __n: Int64) -> Float64
alias __scalblnl = fn(__x: Float64, __n: Int64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nearbyintl = fn(Float64) -> Float64
alias nearbyintl = fn(__x: Float64) -> Float64
alias __nearbyintl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias roundl = fn(Float64) -> Float64
alias roundl = fn(__x: Float64) -> Float64
alias __roundl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias truncl = fn(Float64) -> Float64
alias truncl = fn(__x: Float64) -> Float64
alias __truncl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias remquol = fn(Float64, Float64, UnsafePointer[Int32]) -> Float64
alias remquol = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
alias __remquol = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias lrintl = fn(Float64) -> Int64
alias lrintl = fn(__x: Float64) -> Int64
alias __lrintl = fn(__x: Float64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llrintl = fn(Float64) -> Int128
alias llrintl = fn(__x: Float64) -> Int128
alias __llrintl = fn(__x: Float64) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias lroundl = fn(Float64) -> Int64
alias lroundl = fn(__x: Float64) -> Int64
alias __lroundl = fn(__x: Float64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llroundl = fn(Float64) -> Int128
alias llroundl = fn(__x: Float64) -> Int128
alias __llroundl = fn(__x: Float64) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias fdiml = fn(Float64, Float64) -> Float64
alias fdiml = fn(__x: Float64, __y: Float64) -> Float64
alias __fdiml = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmaxl = fn(Float64, Float64) -> Float64
alias fmaxl = fn(__x: Float64, __y: Float64) -> Float64
alias __fmaxl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fminl = fn(Float64, Float64) -> Float64
alias fminl = fn(__x: Float64, __y: Float64) -> Float64
alias __fminl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmal = fn(Float64, Float64, Float64) -> Float64
alias fmal = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias __fmal = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias scalbl = fn(__x: Float64, __n: Float64) -> Float64
alias __scalbl = fn(__x: Float64, __n: Float64) -> Float64

alias signgam = Int32 # extern
# Anonymous enum
alias FP_NAN: Int = 0
alias FP_INFINITE: Int = 1
alias FP_ZERO: Int = 2
alias FP_SUBNORMAL: Int = 3
alias FP_NORMAL: Int = 4


alias ptrdiff_t = Int64
@register_passable("trivial")
struct Anonymous___usr_lib_llvm_14_lib_clang_14_0_0_include___stddef_max_align_t_h_19_9__line_24_1_(Copyable & Movable):
	var __clang_max_align_nonce1: Int128
	var __clang_max_align_nonce2: Float64


alias max_align_t = Anonymous___usr_lib_llvm_14_lib_clang_14_0_0_include___stddef_max_align_t_h_19_9__line_24_1_

alias uint8_t = UInt8

alias uint16_t = UInt16

alias uint32_t = UInt32

alias uint64_t = UInt64

alias int_least8_t = __int_least8_t

alias int_least16_t = __int_least16_t

alias int_least32_t = __int_least32_t

alias int_least64_t = __int_least64_t

alias uint_least8_t = __uint_least8_t

alias uint_least16_t = __uint_least16_t

alias uint_least32_t = __uint_least32_t

alias uint_least64_t = __uint_least64_t

alias int_fast8_t = Int8

alias int_fast16_t = Int64

alias int_fast32_t = Int64

alias int_fast64_t = Int64

alias uint_fast8_t = UInt8

alias uint_fast16_t = UInt64

alias uint_fast32_t = UInt64

alias uint_fast64_t = UInt64

alias intptr_t = Int64

alias uintptr_t = UInt64

alias intmax_t = Int64

alias uintmax_t = UInt64

alias mjtNum = Float64

alias mjtByte = UInt8
#-------------------------------------- byte definition -------------------------------------------

@register_passable("trivial")
struct mjtDisableBit_(Copyable & Movable): # Enum

	#---------------------------------- enum types (mjt) ----------------------------------------------
	alias mjDSBL_CONSTRAINT: Int = 1
	alias mjDSBL_EQUALITY: Int = 2
	alias mjDSBL_FRICTIONLOSS: Int = 4
	alias mjDSBL_LIMIT: Int = 8
	alias mjDSBL_CONTACT: Int = 16
	alias mjDSBL_PASSIVE: Int = 32
	alias mjDSBL_GRAVITY: Int = 64
	alias mjDSBL_CLAMPCTRL: Int = 128
	alias mjDSBL_WARMSTART: Int = 256
	alias mjDSBL_FILTERPARENT: Int = 512
	alias mjDSBL_ACTUATION: Int = 1024
	alias mjDSBL_REFSAFE: Int = 2048
	alias mjDSBL_SENSOR: Int = 4096
	alias mjDSBL_MIDPHASE: Int = 8192
	alias mjDSBL_EULERDAMP: Int = 16384
	alias mjDSBL_AUTORESET: Int = 32768
	alias mjDSBL_NATIVECCD: Int = 65536
	alias mjNDISABLE: Int = 17


alias mjtDisableBit = mjtDisableBit_
#---------------------------------- enum types (mjt) ----------------------------------------------

@register_passable("trivial")
struct mjtEnableBit_(Copyable & Movable): # Enum
	alias mjENBL_OVERRIDE: Int = 1
	alias mjENBL_ENERGY: Int = 2
	alias mjENBL_FWDINV: Int = 4
	alias mjENBL_INVDISCRETE: Int = 8
	alias mjENBL_MULTICCD: Int = 16
	alias mjENBL_ISLAND: Int = 32
	alias mjNENABLE: Int = 6


alias mjtEnableBit = mjtEnableBit_
@register_passable("trivial")
struct mjtJoint_(Copyable & Movable): # Enum
	alias mjJNT_FREE: Int = 0
	alias mjJNT_BALL: Int = 1
	alias mjJNT_SLIDE: Int = 2
	alias mjJNT_HINGE: Int = 3


alias mjtJoint = mjtJoint_
@register_passable("trivial")
struct mjtGeom_(Copyable & Movable): # Enum
	alias mjGEOM_PLANE: Int = 0
	alias mjGEOM_HFIELD: Int = 1
	alias mjGEOM_SPHERE: Int = 2
	alias mjGEOM_CAPSULE: Int = 3
	alias mjGEOM_ELLIPSOID: Int = 4
	alias mjGEOM_CYLINDER: Int = 5
	alias mjGEOM_BOX: Int = 6
	alias mjGEOM_MESH: Int = 7
	alias mjGEOM_SDF: Int = 8
	alias mjNGEOMTYPES: Int = 9
	alias mjGEOM_ARROW: Int = 100
	alias mjGEOM_ARROW1: Int = 101
	alias mjGEOM_ARROW2: Int = 102
	alias mjGEOM_LINE: Int = 103
	alias mjGEOM_LINEBOX: Int = 104
	alias mjGEOM_FLEX: Int = 105
	alias mjGEOM_SKIN: Int = 106
	alias mjGEOM_LABEL: Int = 107
	alias mjGEOM_TRIANGLE: Int = 108
	alias mjGEOM_NONE: Int = 1001


alias mjtGeom = mjtGeom_
@register_passable("trivial")
struct mjtCamLight_(Copyable & Movable): # Enum
	alias mjCAMLIGHT_FIXED: Int = 0
	alias mjCAMLIGHT_TRACK: Int = 1
	alias mjCAMLIGHT_TRACKCOM: Int = 2
	alias mjCAMLIGHT_TARGETBODY: Int = 3
	alias mjCAMLIGHT_TARGETBODYCOM: Int = 4


alias mjtCamLight = mjtCamLight_
@register_passable("trivial")
struct mjtLightType_(Copyable & Movable): # Enum
	alias mjLIGHT_SPOT: Int = 0
	alias mjLIGHT_DIRECTIONAL: Int = 1
	alias mjLIGHT_POINT: Int = 2
	alias mjLIGHT_IMAGE: Int = 3


alias mjtLightType = mjtLightType_
@register_passable("trivial")
struct mjtTexture_(Copyable & Movable): # Enum
	alias mjTEXTURE_2D: Int = 0
	alias mjTEXTURE_CUBE: Int = 1
	alias mjTEXTURE_SKYBOX: Int = 2


alias mjtTexture = mjtTexture_
@register_passable("trivial")
struct mjtTextureRole_(Copyable & Movable): # Enum
	alias mjTEXROLE_USER: Int = 0
	alias mjTEXROLE_RGB: Int = 1
	alias mjTEXROLE_OCCLUSION: Int = 2
	alias mjTEXROLE_ROUGHNESS: Int = 3
	alias mjTEXROLE_METALLIC: Int = 4
	alias mjTEXROLE_NORMAL: Int = 5
	alias mjTEXROLE_OPACITY: Int = 6
	alias mjTEXROLE_EMISSIVE: Int = 7
	alias mjTEXROLE_RGBA: Int = 8
	alias mjTEXROLE_ORM: Int = 9
	alias mjNTEXROLE: Int = 10


alias mjtTextureRole = mjtTextureRole_
@register_passable("trivial")
struct mjtColorSpace_(Copyable & Movable): # Enum
	alias mjCOLORSPACE_AUTO: Int = 0
	alias mjCOLORSPACE_LINEAR: Int = 1
	alias mjCOLORSPACE_SRGB: Int = 2


alias mjtColorSpace = mjtColorSpace_
@register_passable("trivial")
struct mjtIntegrator_(Copyable & Movable): # Enum
	alias mjINT_EULER: Int = 0
	alias mjINT_RK4: Int = 1
	alias mjINT_IMPLICIT: Int = 2
	alias mjINT_IMPLICITFAST: Int = 3


alias mjtIntegrator = mjtIntegrator_
@register_passable("trivial")
struct mjtCone_(Copyable & Movable): # Enum
	alias mjCONE_PYRAMIDAL: Int = 0
	alias mjCONE_ELLIPTIC: Int = 1


alias mjtCone = mjtCone_
@register_passable("trivial")
struct mjtJacobian_(Copyable & Movable): # Enum
	alias mjJAC_DENSE: Int = 0
	alias mjJAC_SPARSE: Int = 1
	alias mjJAC_AUTO: Int = 2


alias mjtJacobian = mjtJacobian_
@register_passable("trivial")
struct mjtSolver_(Copyable & Movable): # Enum
	alias mjSOL_PGS: Int = 0
	alias mjSOL_CG: Int = 1
	alias mjSOL_NEWTON: Int = 2


alias mjtSolver = mjtSolver_
@register_passable("trivial")
struct mjtEq_(Copyable & Movable): # Enum
	alias mjEQ_CONNECT: Int = 0
	alias mjEQ_WELD: Int = 1
	alias mjEQ_JOINT: Int = 2
	alias mjEQ_TENDON: Int = 3
	alias mjEQ_FLEX: Int = 4
	alias mjEQ_DISTANCE: Int = 5


alias mjtEq = mjtEq_
@register_passable("trivial")
struct mjtWrap_(Copyable & Movable): # Enum
	alias mjWRAP_NONE: Int = 0
	alias mjWRAP_JOINT: Int = 1
	alias mjWRAP_PULLEY: Int = 2
	alias mjWRAP_SITE: Int = 3
	alias mjWRAP_SPHERE: Int = 4
	alias mjWRAP_CYLINDER: Int = 5


alias mjtWrap = mjtWrap_
@register_passable("trivial")
struct mjtTrn_(Copyable & Movable): # Enum
	alias mjTRN_JOINT: Int = 0
	alias mjTRN_JOINTINPARENT: Int = 1
	alias mjTRN_SLIDERCRANK: Int = 2
	alias mjTRN_TENDON: Int = 3
	alias mjTRN_SITE: Int = 4
	alias mjTRN_BODY: Int = 5
	alias mjTRN_UNDEFINED: Int = 1000


alias mjtTrn = mjtTrn_
@register_passable("trivial")
struct mjtDyn_(Copyable & Movable): # Enum
	alias mjDYN_NONE: Int = 0
	alias mjDYN_INTEGRATOR: Int = 1
	alias mjDYN_FILTER: Int = 2
	alias mjDYN_FILTEREXACT: Int = 3
	alias mjDYN_MUSCLE: Int = 4
	alias mjDYN_USER: Int = 5


alias mjtDyn = mjtDyn_
@register_passable("trivial")
struct mjtGain_(Copyable & Movable): # Enum
	alias mjGAIN_FIXED: Int = 0
	alias mjGAIN_AFFINE: Int = 1
	alias mjGAIN_MUSCLE: Int = 2
	alias mjGAIN_USER: Int = 3


alias mjtGain = mjtGain_
@register_passable("trivial")
struct mjtBias_(Copyable & Movable): # Enum
	alias mjBIAS_NONE: Int = 0
	alias mjBIAS_AFFINE: Int = 1
	alias mjBIAS_MUSCLE: Int = 2
	alias mjBIAS_USER: Int = 3


alias mjtBias = mjtBias_
@register_passable("trivial")
struct mjtObj_(Copyable & Movable): # Enum
	alias mjOBJ_UNKNOWN: Int = 0
	alias mjOBJ_BODY: Int = 1
	alias mjOBJ_XBODY: Int = 2
	alias mjOBJ_JOINT: Int = 3
	alias mjOBJ_DOF: Int = 4
	alias mjOBJ_GEOM: Int = 5
	alias mjOBJ_SITE: Int = 6
	alias mjOBJ_CAMERA: Int = 7
	alias mjOBJ_LIGHT: Int = 8
	alias mjOBJ_FLEX: Int = 9
	alias mjOBJ_MESH: Int = 10
	alias mjOBJ_SKIN: Int = 11
	alias mjOBJ_HFIELD: Int = 12
	alias mjOBJ_TEXTURE: Int = 13
	alias mjOBJ_MATERIAL: Int = 14
	alias mjOBJ_PAIR: Int = 15
	alias mjOBJ_EXCLUDE: Int = 16
	alias mjOBJ_EQUALITY: Int = 17
	alias mjOBJ_TENDON: Int = 18
	alias mjOBJ_ACTUATOR: Int = 19
	alias mjOBJ_SENSOR: Int = 20
	alias mjOBJ_NUMERIC: Int = 21
	alias mjOBJ_TEXT: Int = 22
	alias mjOBJ_TUPLE: Int = 23
	alias mjOBJ_KEY: Int = 24
	alias mjOBJ_PLUGIN: Int = 25
	alias mjNOBJECT: Int = 26
	alias mjOBJ_FRAME: Int = 100
	alias mjOBJ_DEFAULT: Int = 101
	alias mjOBJ_MODEL: Int = 102


alias mjtObj = mjtObj_
@register_passable("trivial")
struct mjtConstraint_(Copyable & Movable): # Enum
	alias mjCNSTR_EQUALITY: Int = 0
	alias mjCNSTR_FRICTION_DOF: Int = 1
	alias mjCNSTR_FRICTION_TENDON: Int = 2
	alias mjCNSTR_LIMIT_JOINT: Int = 3
	alias mjCNSTR_LIMIT_TENDON: Int = 4
	alias mjCNSTR_CONTACT_FRICTIONLESS: Int = 5
	alias mjCNSTR_CONTACT_PYRAMIDAL: Int = 6
	alias mjCNSTR_CONTACT_ELLIPTIC: Int = 7


alias mjtConstraint = mjtConstraint_
@register_passable("trivial")
struct mjtConstraintState_(Copyable & Movable): # Enum
	alias mjCNSTRSTATE_SATISFIED: Int = 0
	alias mjCNSTRSTATE_QUADRATIC: Int = 1
	alias mjCNSTRSTATE_LINEARNEG: Int = 2
	alias mjCNSTRSTATE_LINEARPOS: Int = 3
	alias mjCNSTRSTATE_CONE: Int = 4


alias mjtConstraintState = mjtConstraintState_
@register_passable("trivial")
struct mjtSensor_(Copyable & Movable): # Enum
	alias mjSENS_TOUCH: Int = 0
	alias mjSENS_ACCELEROMETER: Int = 1
	alias mjSENS_VELOCIMETER: Int = 2
	alias mjSENS_GYRO: Int = 3
	alias mjSENS_FORCE: Int = 4
	alias mjSENS_TORQUE: Int = 5
	alias mjSENS_MAGNETOMETER: Int = 6
	alias mjSENS_RANGEFINDER: Int = 7
	alias mjSENS_CAMPROJECTION: Int = 8
	alias mjSENS_JOINTPOS: Int = 9
	alias mjSENS_JOINTVEL: Int = 10
	alias mjSENS_TENDONPOS: Int = 11
	alias mjSENS_TENDONVEL: Int = 12
	alias mjSENS_ACTUATORPOS: Int = 13
	alias mjSENS_ACTUATORVEL: Int = 14
	alias mjSENS_ACTUATORFRC: Int = 15
	alias mjSENS_JOINTACTFRC: Int = 16
	alias mjSENS_TENDONACTFRC: Int = 17
	alias mjSENS_BALLQUAT: Int = 18
	alias mjSENS_BALLANGVEL: Int = 19
	alias mjSENS_JOINTLIMITPOS: Int = 20
	alias mjSENS_JOINTLIMITVEL: Int = 21
	alias mjSENS_JOINTLIMITFRC: Int = 22
	alias mjSENS_TENDONLIMITPOS: Int = 23
	alias mjSENS_TENDONLIMITVEL: Int = 24
	alias mjSENS_TENDONLIMITFRC: Int = 25
	alias mjSENS_FRAMEPOS: Int = 26
	alias mjSENS_FRAMEQUAT: Int = 27
	alias mjSENS_FRAMEXAXIS: Int = 28
	alias mjSENS_FRAMEYAXIS: Int = 29
	alias mjSENS_FRAMEZAXIS: Int = 30
	alias mjSENS_FRAMELINVEL: Int = 31
	alias mjSENS_FRAMEANGVEL: Int = 32
	alias mjSENS_FRAMELINACC: Int = 33
	alias mjSENS_FRAMEANGACC: Int = 34
	alias mjSENS_SUBTREECOM: Int = 35
	alias mjSENS_SUBTREELINVEL: Int = 36
	alias mjSENS_SUBTREEANGMOM: Int = 37
	alias mjSENS_INSIDESITE: Int = 38
	alias mjSENS_GEOMDIST: Int = 39
	alias mjSENS_GEOMNORMAL: Int = 40
	alias mjSENS_GEOMFROMTO: Int = 41
	alias mjSENS_CONTACT: Int = 42
	alias mjSENS_E_POTENTIAL: Int = 43
	alias mjSENS_E_KINETIC: Int = 44
	alias mjSENS_CLOCK: Int = 45
	alias mjSENS_PLUGIN: Int = 46
	alias mjSENS_USER: Int = 47


alias mjtSensor = mjtSensor_
@register_passable("trivial")
struct mjtStage_(Copyable & Movable): # Enum
	alias mjSTAGE_NONE: Int = 0
	alias mjSTAGE_POS: Int = 1
	alias mjSTAGE_VEL: Int = 2
	alias mjSTAGE_ACC: Int = 3


alias mjtStage = mjtStage_
@register_passable("trivial")
struct mjtDataType_(Copyable & Movable): # Enum
	alias mjDATATYPE_REAL: Int = 0
	alias mjDATATYPE_POSITIVE: Int = 1
	alias mjDATATYPE_AXIS: Int = 2
	alias mjDATATYPE_QUATERNION: Int = 3


alias mjtDataType = mjtDataType_
@register_passable("trivial")
struct mjtConDataField_(Copyable & Movable): # Enum
	alias mjCONDATA_FOUND: Int = 0
	alias mjCONDATA_FORCE: Int = 1
	alias mjCONDATA_TORQUE: Int = 2
	alias mjCONDATA_DIST: Int = 3
	alias mjCONDATA_POS: Int = 4
	alias mjCONDATA_NORMAL: Int = 5
	alias mjCONDATA_TANGENT: Int = 6
	alias mjNCONDATA: Int = 7


alias mjtConDataField = mjtConDataField_
@register_passable("trivial")
struct mjtSameFrame_(Copyable & Movable): # Enum
	alias mjSAMEFRAME_NONE: Int = 0
	alias mjSAMEFRAME_BODY: Int = 1
	alias mjSAMEFRAME_INERTIA: Int = 2
	alias mjSAMEFRAME_BODYROT: Int = 3
	alias mjSAMEFRAME_INERTIAROT: Int = 4


alias mjtSameFrame = mjtSameFrame_
@register_passable("trivial")
struct mjtLRMode_(Copyable & Movable): # Enum
	alias mjLRMODE_NONE: Int = 0
	alias mjLRMODE_MUSCLE: Int = 1
	alias mjLRMODE_MUSCLEUSER: Int = 2
	alias mjLRMODE_ALL: Int = 3


alias mjtLRMode = mjtLRMode_
@register_passable("trivial")
struct mjtFlexSelf_(Copyable & Movable): # Enum
	alias mjFLEXSELF_NONE: Int = 0
	alias mjFLEXSELF_NARROW: Int = 1
	alias mjFLEXSELF_BVH: Int = 2
	alias mjFLEXSELF_SAP: Int = 3
	alias mjFLEXSELF_AUTO: Int = 4


alias mjtFlexSelf = mjtFlexSelf_
@register_passable("trivial")
struct mjtSDFType_(Copyable & Movable): # Enum
	alias mjSDFTYPE_SINGLE: Int = 0
	alias mjSDFTYPE_INTERSECTION: Int = 1
	alias mjSDFTYPE_MIDSURFACE: Int = 2
	alias mjSDFTYPE_COLLISION: Int = 3


alias mjtSDFType = mjtSDFType_
@register_passable("trivial")
struct mjLROpt_(Copyable & Movable):
	var mode: Int32
	var useexisting: Int32
	var uselimit: Int32
	var accel: mjtNum
	var maxforce: mjtNum
	var timeconst: mjtNum
	var timestep: mjtNum
	var inttotal: mjtNum
	var interval: mjtNum
	var tolrange: mjtNum


alias mjLROpt = mjLROpt_
@register_passable("trivial")
struct mjVFS_(Copyable & Movable):
	var impl_: OpaquePointer


alias mjVFS = mjVFS_
@register_passable("trivial")
struct mjOption_(Copyable & Movable):
	var timestep: mjtNum
	var apirate: mjtNum
	var impratio: mjtNum
	var tolerance: mjtNum
	var ls_tolerance: mjtNum
	var noslip_tolerance: mjtNum
	var ccd_tolerance: mjtNum
	var gravity: StaticTuple[mjtNum, 3]
	var wind: StaticTuple[mjtNum, 3]
	var magnetic: StaticTuple[mjtNum, 3]
	var density: mjtNum
	var viscosity: mjtNum
	var o_margin: mjtNum
	var o_solref: StaticTuple[mjtNum, 2]
	var o_solimp: StaticTuple[mjtNum, 5]
	var o_friction: StaticTuple[mjtNum, 5]
	var integrator: Int32
	var cone: Int32
	var jacobian: Int32
	var solver: Int32
	var iterations: Int32
	var ls_iterations: Int32
	var noslip_iterations: Int32
	var ccd_iterations: Int32
	var disableflags: Int32
	var enableflags: Int32
	var disableactuator: Int32
	var sdf_initpoints: Int32
	var sdf_iterations: Int32


alias mjOption = mjOption_
@register_passable("trivial")
struct _mjVisual__Anonymous__line_595_3__line_621_3_(Copyable & Movable):
	var fog: StaticTuple[Float32, 4]
	var haze: StaticTuple[Float32, 4]
	var force: StaticTuple[Float32, 4]
	var inertia: StaticTuple[Float32, 4]
	var joint: StaticTuple[Float32, 4]
	var actuator: StaticTuple[Float32, 4]
	var actuatornegative: StaticTuple[Float32, 4]
	var actuatorpositive: StaticTuple[Float32, 4]
	var com: StaticTuple[Float32, 4]
	var camera: StaticTuple[Float32, 4]
	var light: StaticTuple[Float32, 4]
	var selectpoint: StaticTuple[Float32, 4]
	var connect: StaticTuple[Float32, 4]
	var contactpoint: StaticTuple[Float32, 4]
	var contactforce: StaticTuple[Float32, 4]
	var contactfriction: StaticTuple[Float32, 4]
	var contacttorque: StaticTuple[Float32, 4]
	var contactgap: StaticTuple[Float32, 4]
	var rangefinder: StaticTuple[Float32, 4]
	var constraint: StaticTuple[Float32, 4]
	var slidercrank: StaticTuple[Float32, 4]
	var crankbroken: StaticTuple[Float32, 4]
	var frustum: StaticTuple[Float32, 4]
	var bv: StaticTuple[Float32, 4]
	var bvactive: StaticTuple[Float32, 4]


@register_passable("trivial")
struct _mjVisual__Anonymous__line_575_3__line_593_3_(Copyable & Movable):
	var forcewidth: Float32
	var contactwidth: Float32
	var contactheight: Float32
	var connect: Float32
	var com: Float32
	var camera: Float32
	var light: Float32
	var selectpoint: Float32
	var jointlength: Float32
	var jointwidth: Float32
	var actuatorlength: Float32
	var actuatorwidth: Float32
	var framelength: Float32
	var framewidth: Float32
	var constraint: Float32
	var slidercrank: Float32
	var frustum: Float32


@register_passable("trivial")
struct _mjVisual__Anonymous__line_559_3__line_573_3_(Copyable & Movable):
	var stiffness: Float32
	var stiffnessrot: Float32
	var force: Float32
	var torque: Float32
	var alpha: Float32
	var fogstart: Float32
	var fogend: Float32
	var znear: Float32
	var zfar: Float32
	var haze: Float32
	var shadowclip: Float32
	var shadowscale: Float32
	var actuatortendon: Float32


@register_passable("trivial")
struct _mjVisual__Anonymous__line_552_3__line_557_3_(Copyable & Movable):
	var ambient: StaticTuple[Float32, 3]
	var diffuse: StaticTuple[Float32, 3]
	var specular: StaticTuple[Float32, 3]
	var active: Int32


@register_passable("trivial")
struct _mjVisual__Anonymous__line_544_3__line_550_3_(Copyable & Movable):
	var shadowsize: Int32
	var offsamples: Int32
	var numslices: Int32
	var numstacks: Int32
	var numquads: Int32


@register_passable("trivial")
struct _mjVisual__Anonymous__line_528_3__line_542_3_(Copyable & Movable):
	var cameraid: Int32
	var orthographic: Int32
	var fovy: Float32
	var ipd: Float32
	var azimuth: Float32
	var elevation: Float32
	var linewidth: Float32
	var glow: Float32
	var realtime: Float32
	var offwidth: Int32
	var offheight: Int32
	var ellipsoidinertia: Int32
	var bvactive: Int32


@register_passable("trivial")
struct mjVisual_(Copyable & Movable):
	var `global`: _mjVisual__Anonymous__line_528_3__line_542_3_
	var quality: _mjVisual__Anonymous__line_544_3__line_550_3_
	var headlight: _mjVisual__Anonymous__line_552_3__line_557_3_
	var map: _mjVisual__Anonymous__line_559_3__line_573_3_
	var scale: _mjVisual__Anonymous__line_575_3__line_593_3_
	var rgba: _mjVisual__Anonymous__line_595_3__line_621_3_


alias mjVisual = mjVisual_
@register_passable("trivial")
struct mjStatistic_(Copyable & Movable):
	var meaninertia: mjtNum
	var meanmass: mjtNum
	var meansize: mjtNum
	var extent: mjtNum
	var center: StaticTuple[mjtNum, 3]


alias mjStatistic = mjStatistic_
@register_passable("trivial")
struct mjModel_(Copyable & Movable):
	var nq: Int32
	var nv: Int32
	var nu: Int32
	var na: Int32
	var nbody: Int32
	var nbvh: Int32
	var nbvhstatic: Int32
	var nbvhdynamic: Int32
	var noct: Int32
	var njnt: Int32
	var ngeom: Int32
	var nsite: Int32
	var ncam: Int32
	var nlight: Int32
	var nflex: Int32
	var nflexnode: Int32
	var nflexvert: Int32
	var nflexedge: Int32
	var nflexelem: Int32
	var nflexelemdata: Int32
	var nflexelemedge: Int32
	var nflexshelldata: Int32
	var nflexevpair: Int32
	var nflextexcoord: Int32
	var nmesh: Int32
	var nmeshvert: Int32
	var nmeshnormal: Int32
	var nmeshtexcoord: Int32
	var nmeshface: Int32
	var nmeshgraph: Int32
	var nmeshpoly: Int32
	var nmeshpolyvert: Int32
	var nmeshpolymap: Int32
	var nskin: Int32
	var nskinvert: Int32
	var nskintexvert: Int32
	var nskinface: Int32
	var nskinbone: Int32
	var nskinbonevert: Int32
	var nhfield: Int32
	var nhfielddata: Int32
	var ntex: Int32
	var ntexdata: Int32
	var nmat: Int32
	var npair: Int32
	var nexclude: Int32
	var neq: Int32
	var ntendon: Int32
	var nwrap: Int32
	var nsensor: Int32
	var nnumeric: Int32
	var nnumericdata: Int32
	var ntext: Int32
	var ntextdata: Int32
	var ntuple: Int32
	var ntupledata: Int32
	var nkey: Int32
	var nmocap: Int32
	var nplugin: Int32
	var npluginattr: Int32
	var nuser_body: Int32
	var nuser_jnt: Int32
	var nuser_geom: Int32
	var nuser_site: Int32
	var nuser_cam: Int32
	var nuser_tendon: Int32
	var nuser_actuator: Int32
	var nuser_sensor: Int32
	var nnames: Int32
	var npaths: Int32
	var nnames_map: Int32
	var nM: Int32
	var nB: Int32
	var nC: Int32
	var nD: Int32
	var nJmom: Int32
	var ntree: Int32
	var ngravcomp: Int32
	var nemax: Int32
	var njmax: Int32
	var nconmax: Int32
	var nuserdata: Int32
	var nsensordata: Int32
	var npluginstate: Int32
	var narena: size_t
	var nbuffer: size_t
	var opt: mjOption
	var vis: mjVisual
	var stat: mjStatistic
	var buffer: OpaquePointer
	var qpos0: UnsafePointer[mjtNum]
	var qpos_spring: UnsafePointer[mjtNum]
	var body_parentid: UnsafePointer[Int32]
	var body_rootid: UnsafePointer[Int32]
	var body_weldid: UnsafePointer[Int32]
	var body_mocapid: UnsafePointer[Int32]
	var body_jntnum: UnsafePointer[Int32]
	var body_jntadr: UnsafePointer[Int32]
	var body_dofnum: UnsafePointer[Int32]
	var body_dofadr: UnsafePointer[Int32]
	var body_treeid: UnsafePointer[Int32]
	var body_geomnum: UnsafePointer[Int32]
	var body_geomadr: UnsafePointer[Int32]
	var body_simple: UnsafePointer[mjtByte]
	var body_sameframe: UnsafePointer[mjtByte]
	var body_pos: UnsafePointer[mjtNum]
	var body_quat: UnsafePointer[mjtNum]
	var body_ipos: UnsafePointer[mjtNum]
	var body_iquat: UnsafePointer[mjtNum]
	var body_mass: UnsafePointer[mjtNum]
	var body_subtreemass: UnsafePointer[mjtNum]
	var body_inertia: UnsafePointer[mjtNum]
	var body_invweight0: UnsafePointer[mjtNum]
	var body_gravcomp: UnsafePointer[mjtNum]
	var body_margin: UnsafePointer[mjtNum]
	var body_user: UnsafePointer[mjtNum]
	var body_plugin: UnsafePointer[Int32]
	var body_contype: UnsafePointer[Int32]
	var body_conaffinity: UnsafePointer[Int32]
	var body_bvhadr: UnsafePointer[Int32]
	var body_bvhnum: UnsafePointer[Int32]
	var bvh_depth: UnsafePointer[Int32]
	var bvh_child: UnsafePointer[Int32]
	var bvh_nodeid: UnsafePointer[Int32]
	var bvh_aabb: UnsafePointer[mjtNum]
	var oct_depth: UnsafePointer[Int32]
	var oct_child: UnsafePointer[Int32]
	var oct_aabb: UnsafePointer[mjtNum]
	var oct_coeff: UnsafePointer[mjtNum]
	var jnt_type: UnsafePointer[Int32]
	var jnt_qposadr: UnsafePointer[Int32]
	var jnt_dofadr: UnsafePointer[Int32]
	var jnt_bodyid: UnsafePointer[Int32]
	var jnt_group: UnsafePointer[Int32]
	var jnt_limited: UnsafePointer[mjtByte]
	var jnt_actfrclimited: UnsafePointer[mjtByte]
	var jnt_actgravcomp: UnsafePointer[mjtByte]
	var jnt_solref: UnsafePointer[mjtNum]
	var jnt_solimp: UnsafePointer[mjtNum]
	var jnt_pos: UnsafePointer[mjtNum]
	var jnt_axis: UnsafePointer[mjtNum]
	var jnt_stiffness: UnsafePointer[mjtNum]
	var jnt_range: UnsafePointer[mjtNum]
	var jnt_actfrcrange: UnsafePointer[mjtNum]
	var jnt_margin: UnsafePointer[mjtNum]
	var jnt_user: UnsafePointer[mjtNum]
	var dof_bodyid: UnsafePointer[Int32]
	var dof_jntid: UnsafePointer[Int32]
	var dof_parentid: UnsafePointer[Int32]
	var dof_treeid: UnsafePointer[Int32]
	var dof_Madr: UnsafePointer[Int32]
	var dof_simplenum: UnsafePointer[Int32]
	var dof_solref: UnsafePointer[mjtNum]
	var dof_solimp: UnsafePointer[mjtNum]
	var dof_frictionloss: UnsafePointer[mjtNum]
	var dof_armature: UnsafePointer[mjtNum]
	var dof_damping: UnsafePointer[mjtNum]
	var dof_invweight0: UnsafePointer[mjtNum]
	var dof_M0: UnsafePointer[mjtNum]
	var geom_type: UnsafePointer[Int32]
	var geom_contype: UnsafePointer[Int32]
	var geom_conaffinity: UnsafePointer[Int32]
	var geom_condim: UnsafePointer[Int32]
	var geom_bodyid: UnsafePointer[Int32]
	var geom_dataid: UnsafePointer[Int32]
	var geom_matid: UnsafePointer[Int32]
	var geom_group: UnsafePointer[Int32]
	var geom_priority: UnsafePointer[Int32]
	var geom_plugin: UnsafePointer[Int32]
	var geom_sameframe: UnsafePointer[mjtByte]
	var geom_solmix: UnsafePointer[mjtNum]
	var geom_solref: UnsafePointer[mjtNum]
	var geom_solimp: UnsafePointer[mjtNum]
	var geom_size: UnsafePointer[mjtNum]
	var geom_aabb: UnsafePointer[mjtNum]
	var geom_rbound: UnsafePointer[mjtNum]
	var geom_pos: UnsafePointer[mjtNum]
	var geom_quat: UnsafePointer[mjtNum]
	var geom_friction: UnsafePointer[mjtNum]
	var geom_margin: UnsafePointer[mjtNum]
	var geom_gap: UnsafePointer[mjtNum]
	var geom_fluid: UnsafePointer[mjtNum]
	var geom_user: UnsafePointer[mjtNum]
	var geom_rgba: UnsafePointer[Float32]
	var site_type: UnsafePointer[Int32]
	var site_bodyid: UnsafePointer[Int32]
	var site_matid: UnsafePointer[Int32]
	var site_group: UnsafePointer[Int32]
	var site_sameframe: UnsafePointer[mjtByte]
	var site_size: UnsafePointer[mjtNum]
	var site_pos: UnsafePointer[mjtNum]
	var site_quat: UnsafePointer[mjtNum]
	var site_user: UnsafePointer[mjtNum]
	var site_rgba: UnsafePointer[Float32]
	var cam_mode: UnsafePointer[Int32]
	var cam_bodyid: UnsafePointer[Int32]
	var cam_targetbodyid: UnsafePointer[Int32]
	var cam_pos: UnsafePointer[mjtNum]
	var cam_quat: UnsafePointer[mjtNum]
	var cam_poscom0: UnsafePointer[mjtNum]
	var cam_pos0: UnsafePointer[mjtNum]
	var cam_mat0: UnsafePointer[mjtNum]
	var cam_orthographic: UnsafePointer[Int32]
	var cam_fovy: UnsafePointer[mjtNum]
	var cam_ipd: UnsafePointer[mjtNum]
	var cam_resolution: UnsafePointer[Int32]
	var cam_sensorsize: UnsafePointer[Float32]
	var cam_intrinsic: UnsafePointer[Float32]
	var cam_user: UnsafePointer[mjtNum]
	var light_mode: UnsafePointer[Int32]
	var light_bodyid: UnsafePointer[Int32]
	var light_targetbodyid: UnsafePointer[Int32]
	var light_type: UnsafePointer[Int32]
	var light_texid: UnsafePointer[Int32]
	var light_castshadow: UnsafePointer[mjtByte]
	var light_bulbradius: UnsafePointer[Float32]
	var light_intensity: UnsafePointer[Float32]
	var light_range: UnsafePointer[Float32]
	var light_active: UnsafePointer[mjtByte]
	var light_pos: UnsafePointer[mjtNum]
	var light_dir: UnsafePointer[mjtNum]
	var light_poscom0: UnsafePointer[mjtNum]
	var light_pos0: UnsafePointer[mjtNum]
	var light_dir0: UnsafePointer[mjtNum]
	var light_attenuation: UnsafePointer[Float32]
	var light_cutoff: UnsafePointer[Float32]
	var light_exponent: UnsafePointer[Float32]
	var light_ambient: UnsafePointer[Float32]
	var light_diffuse: UnsafePointer[Float32]
	var light_specular: UnsafePointer[Float32]
	var flex_contype: UnsafePointer[Int32]
	var flex_conaffinity: UnsafePointer[Int32]
	var flex_condim: UnsafePointer[Int32]
	var flex_priority: UnsafePointer[Int32]
	var flex_solmix: UnsafePointer[mjtNum]
	var flex_solref: UnsafePointer[mjtNum]
	var flex_solimp: UnsafePointer[mjtNum]
	var flex_friction: UnsafePointer[mjtNum]
	var flex_margin: UnsafePointer[mjtNum]
	var flex_gap: UnsafePointer[mjtNum]
	var flex_internal: UnsafePointer[mjtByte]
	var flex_selfcollide: UnsafePointer[Int32]
	var flex_activelayers: UnsafePointer[Int32]
	var flex_dim: UnsafePointer[Int32]
	var flex_matid: UnsafePointer[Int32]
	var flex_group: UnsafePointer[Int32]
	var flex_interp: UnsafePointer[Int32]
	var flex_nodeadr: UnsafePointer[Int32]
	var flex_nodenum: UnsafePointer[Int32]
	var flex_vertadr: UnsafePointer[Int32]
	var flex_vertnum: UnsafePointer[Int32]
	var flex_edgeadr: UnsafePointer[Int32]
	var flex_edgenum: UnsafePointer[Int32]
	var flex_elemadr: UnsafePointer[Int32]
	var flex_elemnum: UnsafePointer[Int32]
	var flex_elemdataadr: UnsafePointer[Int32]
	var flex_elemedgeadr: UnsafePointer[Int32]
	var flex_shellnum: UnsafePointer[Int32]
	var flex_shelldataadr: UnsafePointer[Int32]
	var flex_evpairadr: UnsafePointer[Int32]
	var flex_evpairnum: UnsafePointer[Int32]
	var flex_texcoordadr: UnsafePointer[Int32]
	var flex_nodebodyid: UnsafePointer[Int32]
	var flex_vertbodyid: UnsafePointer[Int32]
	var flex_edge: UnsafePointer[Int32]
	var flex_edgeflap: UnsafePointer[Int32]
	var flex_elem: UnsafePointer[Int32]
	var flex_elemtexcoord: UnsafePointer[Int32]
	var flex_elemedge: UnsafePointer[Int32]
	var flex_elemlayer: UnsafePointer[Int32]
	var flex_shell: UnsafePointer[Int32]
	var flex_evpair: UnsafePointer[Int32]
	var flex_vert: UnsafePointer[mjtNum]
	var flex_vert0: UnsafePointer[mjtNum]
	var flex_node: UnsafePointer[mjtNum]
	var flex_node0: UnsafePointer[mjtNum]
	var flexedge_length0: UnsafePointer[mjtNum]
	var flexedge_invweight0: UnsafePointer[mjtNum]
	var flex_radius: UnsafePointer[mjtNum]
	var flex_stiffness: UnsafePointer[mjtNum]
	var flex_bending: UnsafePointer[mjtNum]
	var flex_damping: UnsafePointer[mjtNum]
	var flex_edgestiffness: UnsafePointer[mjtNum]
	var flex_edgedamping: UnsafePointer[mjtNum]
	var flex_edgeequality: UnsafePointer[mjtByte]
	var flex_rigid: UnsafePointer[mjtByte]
	var flexedge_rigid: UnsafePointer[mjtByte]
	var flex_centered: UnsafePointer[mjtByte]
	var flex_flatskin: UnsafePointer[mjtByte]
	var flex_bvhadr: UnsafePointer[Int32]
	var flex_bvhnum: UnsafePointer[Int32]
	var flex_rgba: UnsafePointer[Float32]
	var flex_texcoord: UnsafePointer[Float32]
	var mesh_vertadr: UnsafePointer[Int32]
	var mesh_vertnum: UnsafePointer[Int32]
	var mesh_faceadr: UnsafePointer[Int32]
	var mesh_facenum: UnsafePointer[Int32]
	var mesh_bvhadr: UnsafePointer[Int32]
	var mesh_bvhnum: UnsafePointer[Int32]
	var mesh_octadr: UnsafePointer[Int32]
	var mesh_octnum: UnsafePointer[Int32]
	var mesh_normaladr: UnsafePointer[Int32]
	var mesh_normalnum: UnsafePointer[Int32]
	var mesh_texcoordadr: UnsafePointer[Int32]
	var mesh_texcoordnum: UnsafePointer[Int32]
	var mesh_graphadr: UnsafePointer[Int32]
	var mesh_vert: UnsafePointer[Float32]
	var mesh_normal: UnsafePointer[Float32]
	var mesh_texcoord: UnsafePointer[Float32]
	var mesh_face: UnsafePointer[Int32]
	var mesh_facenormal: UnsafePointer[Int32]
	var mesh_facetexcoord: UnsafePointer[Int32]
	var mesh_graph: UnsafePointer[Int32]
	var mesh_scale: UnsafePointer[mjtNum]
	var mesh_pos: UnsafePointer[mjtNum]
	var mesh_quat: UnsafePointer[mjtNum]
	var mesh_pathadr: UnsafePointer[Int32]
	var mesh_polynum: UnsafePointer[Int32]
	var mesh_polyadr: UnsafePointer[Int32]
	var mesh_polynormal: UnsafePointer[mjtNum]
	var mesh_polyvertadr: UnsafePointer[Int32]
	var mesh_polyvertnum: UnsafePointer[Int32]
	var mesh_polyvert: UnsafePointer[Int32]
	var mesh_polymapadr: UnsafePointer[Int32]
	var mesh_polymapnum: UnsafePointer[Int32]
	var mesh_polymap: UnsafePointer[Int32]
	var skin_matid: UnsafePointer[Int32]
	var skin_group: UnsafePointer[Int32]
	var skin_rgba: UnsafePointer[Float32]
	var skin_inflate: UnsafePointer[Float32]
	var skin_vertadr: UnsafePointer[Int32]
	var skin_vertnum: UnsafePointer[Int32]
	var skin_texcoordadr: UnsafePointer[Int32]
	var skin_faceadr: UnsafePointer[Int32]
	var skin_facenum: UnsafePointer[Int32]
	var skin_boneadr: UnsafePointer[Int32]
	var skin_bonenum: UnsafePointer[Int32]
	var skin_vert: UnsafePointer[Float32]
	var skin_texcoord: UnsafePointer[Float32]
	var skin_face: UnsafePointer[Int32]
	var skin_bonevertadr: UnsafePointer[Int32]
	var skin_bonevertnum: UnsafePointer[Int32]
	var skin_bonebindpos: UnsafePointer[Float32]
	var skin_bonebindquat: UnsafePointer[Float32]
	var skin_bonebodyid: UnsafePointer[Int32]
	var skin_bonevertid: UnsafePointer[Int32]
	var skin_bonevertweight: UnsafePointer[Float32]
	var skin_pathadr: UnsafePointer[Int32]
	var hfield_size: UnsafePointer[mjtNum]
	var hfield_nrow: UnsafePointer[Int32]
	var hfield_ncol: UnsafePointer[Int32]
	var hfield_adr: UnsafePointer[Int32]
	var hfield_data: UnsafePointer[Float32]
	var hfield_pathadr: UnsafePointer[Int32]
	var tex_type: UnsafePointer[Int32]
	var tex_colorspace: UnsafePointer[Int32]
	var tex_height: UnsafePointer[Int32]
	var tex_width: UnsafePointer[Int32]
	var tex_nchannel: UnsafePointer[Int32]
	var tex_adr: UnsafePointer[Int32]
	var tex_data: UnsafePointer[mjtByte]
	var tex_pathadr: UnsafePointer[Int32]
	var mat_texid: UnsafePointer[Int32]
	var mat_texuniform: UnsafePointer[mjtByte]
	var mat_texrepeat: UnsafePointer[Float32]
	var mat_emission: UnsafePointer[Float32]
	var mat_specular: UnsafePointer[Float32]
	var mat_shininess: UnsafePointer[Float32]
	var mat_reflectance: UnsafePointer[Float32]
	var mat_metallic: UnsafePointer[Float32]
	var mat_roughness: UnsafePointer[Float32]
	var mat_rgba: UnsafePointer[Float32]
	var pair_dim: UnsafePointer[Int32]
	var pair_geom1: UnsafePointer[Int32]
	var pair_geom2: UnsafePointer[Int32]
	var pair_signature: UnsafePointer[Int32]
	var pair_solref: UnsafePointer[mjtNum]
	var pair_solreffriction: UnsafePointer[mjtNum]
	var pair_solimp: UnsafePointer[mjtNum]
	var pair_margin: UnsafePointer[mjtNum]
	var pair_gap: UnsafePointer[mjtNum]
	var pair_friction: UnsafePointer[mjtNum]
	var exclude_signature: UnsafePointer[Int32]
	var eq_type: UnsafePointer[Int32]
	var eq_obj1id: UnsafePointer[Int32]
	var eq_obj2id: UnsafePointer[Int32]
	var eq_objtype: UnsafePointer[Int32]
	var eq_active0: UnsafePointer[mjtByte]
	var eq_solref: UnsafePointer[mjtNum]
	var eq_solimp: UnsafePointer[mjtNum]
	var eq_data: UnsafePointer[mjtNum]
	var tendon_adr: UnsafePointer[Int32]
	var tendon_num: UnsafePointer[Int32]
	var tendon_matid: UnsafePointer[Int32]
	var tendon_group: UnsafePointer[Int32]
	var tendon_limited: UnsafePointer[mjtByte]
	var tendon_actfrclimited: UnsafePointer[mjtByte]
	var tendon_width: UnsafePointer[mjtNum]
	var tendon_solref_lim: UnsafePointer[mjtNum]
	var tendon_solimp_lim: UnsafePointer[mjtNum]
	var tendon_solref_fri: UnsafePointer[mjtNum]
	var tendon_solimp_fri: UnsafePointer[mjtNum]
	var tendon_range: UnsafePointer[mjtNum]
	var tendon_actfrcrange: UnsafePointer[mjtNum]
	var tendon_margin: UnsafePointer[mjtNum]
	var tendon_stiffness: UnsafePointer[mjtNum]
	var tendon_damping: UnsafePointer[mjtNum]
	var tendon_armature: UnsafePointer[mjtNum]
	var tendon_frictionloss: UnsafePointer[mjtNum]
	var tendon_lengthspring: UnsafePointer[mjtNum]
	var tendon_length0: UnsafePointer[mjtNum]
	var tendon_invweight0: UnsafePointer[mjtNum]
	var tendon_user: UnsafePointer[mjtNum]
	var tendon_rgba: UnsafePointer[Float32]
	var wrap_type: UnsafePointer[Int32]
	var wrap_objid: UnsafePointer[Int32]
	var wrap_prm: UnsafePointer[mjtNum]
	var actuator_trntype: UnsafePointer[Int32]
	var actuator_dyntype: UnsafePointer[Int32]
	var actuator_gaintype: UnsafePointer[Int32]
	var actuator_biastype: UnsafePointer[Int32]
	var actuator_trnid: UnsafePointer[Int32]
	var actuator_actadr: UnsafePointer[Int32]
	var actuator_actnum: UnsafePointer[Int32]
	var actuator_group: UnsafePointer[Int32]
	var actuator_ctrllimited: UnsafePointer[mjtByte]
	var actuator_forcelimited: UnsafePointer[mjtByte]
	var actuator_actlimited: UnsafePointer[mjtByte]
	var actuator_dynprm: UnsafePointer[mjtNum]
	var actuator_gainprm: UnsafePointer[mjtNum]
	var actuator_biasprm: UnsafePointer[mjtNum]
	var actuator_actearly: UnsafePointer[mjtByte]
	var actuator_ctrlrange: UnsafePointer[mjtNum]
	var actuator_forcerange: UnsafePointer[mjtNum]
	var actuator_actrange: UnsafePointer[mjtNum]
	var actuator_gear: UnsafePointer[mjtNum]
	var actuator_cranklength: UnsafePointer[mjtNum]
	var actuator_acc0: UnsafePointer[mjtNum]
	var actuator_length0: UnsafePointer[mjtNum]
	var actuator_lengthrange: UnsafePointer[mjtNum]
	var actuator_user: UnsafePointer[mjtNum]
	var actuator_plugin: UnsafePointer[Int32]
	var sensor_type: UnsafePointer[Int32]
	var sensor_datatype: UnsafePointer[Int32]
	var sensor_needstage: UnsafePointer[Int32]
	var sensor_objtype: UnsafePointer[Int32]
	var sensor_objid: UnsafePointer[Int32]
	var sensor_reftype: UnsafePointer[Int32]
	var sensor_refid: UnsafePointer[Int32]
	var sensor_intprm: UnsafePointer[Int32]
	var sensor_dim: UnsafePointer[Int32]
	var sensor_adr: UnsafePointer[Int32]
	var sensor_cutoff: UnsafePointer[mjtNum]
	var sensor_noise: UnsafePointer[mjtNum]
	var sensor_user: UnsafePointer[mjtNum]
	var sensor_plugin: UnsafePointer[Int32]
	var plugin: UnsafePointer[Int32]
	var plugin_stateadr: UnsafePointer[Int32]
	var plugin_statenum: UnsafePointer[Int32]
	var plugin_attr: UnsafePointer[Int8]
	var plugin_attradr: UnsafePointer[Int32]
	var numeric_adr: UnsafePointer[Int32]
	var numeric_size: UnsafePointer[Int32]
	var numeric_data: UnsafePointer[mjtNum]
	var text_adr: UnsafePointer[Int32]
	var text_size: UnsafePointer[Int32]
	var text_data: UnsafePointer[Int8]
	var tuple_adr: UnsafePointer[Int32]
	var tuple_size: UnsafePointer[Int32]
	var tuple_objtype: UnsafePointer[Int32]
	var tuple_objid: UnsafePointer[Int32]
	var tuple_objprm: UnsafePointer[mjtNum]
	var key_time: UnsafePointer[mjtNum]
	var key_qpos: UnsafePointer[mjtNum]
	var key_qvel: UnsafePointer[mjtNum]
	var key_act: UnsafePointer[mjtNum]
	var key_mpos: UnsafePointer[mjtNum]
	var key_mquat: UnsafePointer[mjtNum]
	var key_ctrl: UnsafePointer[mjtNum]
	var name_bodyadr: UnsafePointer[Int32]
	var name_jntadr: UnsafePointer[Int32]
	var name_geomadr: UnsafePointer[Int32]
	var name_siteadr: UnsafePointer[Int32]
	var name_camadr: UnsafePointer[Int32]
	var name_lightadr: UnsafePointer[Int32]
	var name_flexadr: UnsafePointer[Int32]
	var name_meshadr: UnsafePointer[Int32]
	var name_skinadr: UnsafePointer[Int32]
	var name_hfieldadr: UnsafePointer[Int32]
	var name_texadr: UnsafePointer[Int32]
	var name_matadr: UnsafePointer[Int32]
	var name_pairadr: UnsafePointer[Int32]
	var name_excludeadr: UnsafePointer[Int32]
	var name_eqadr: UnsafePointer[Int32]
	var name_tendonadr: UnsafePointer[Int32]
	var name_actuatoradr: UnsafePointer[Int32]
	var name_sensoradr: UnsafePointer[Int32]
	var name_numericadr: UnsafePointer[Int32]
	var name_textadr: UnsafePointer[Int32]
	var name_tupleadr: UnsafePointer[Int32]
	var name_keyadr: UnsafePointer[Int32]
	var name_pluginadr: UnsafePointer[Int32]
	var names: UnsafePointer[Int8]
	var names_map: UnsafePointer[Int32]
	var paths: UnsafePointer[Int8]
	var signature: UInt64


alias mjModel = mjModel_
@register_passable("trivial")
struct mjtTaskStatus_(Copyable & Movable): # Enum
	alias mjTASK_NEW: Int = 0
	alias mjTASK_QUEUED: Int = 1
	alias mjTASK_COMPLETED: Int = 2


alias mjtTaskStatus = mjtTaskStatus_

alias mjfTask = fn(UnsafePointer[NoneType]) -> UnsafePointer[NoneType]
# function pointer type for mjTask

@register_passable("trivial")
struct mjThreadPool_(Copyable & Movable):
	var nworker: Int32


alias mjThreadPool = mjThreadPool_
@register_passable("trivial")
struct mjTask_(Copyable & Movable):
	var func: mjfTask
	var args: OpaquePointer
	var status: Int32


alias mjTask = mjTask_
@register_passable("trivial")
struct mjtState_(Copyable & Movable): # Enum

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjSTATE_TIME: Int = 1
	alias mjSTATE_QPOS: Int = 2
	alias mjSTATE_QVEL: Int = 4
	alias mjSTATE_ACT: Int = 8
	alias mjSTATE_WARMSTART: Int = 16
	alias mjSTATE_CTRL: Int = 32
	alias mjSTATE_QFRC_APPLIED: Int = 64
	alias mjSTATE_XFRC_APPLIED: Int = 128
	alias mjSTATE_EQ_ACTIVE: Int = 256
	alias mjSTATE_MOCAP_POS: Int = 512
	alias mjSTATE_MOCAP_QUAT: Int = 1024
	alias mjSTATE_USERDATA: Int = 2048
	alias mjSTATE_PLUGIN: Int = 4096
	alias mjNSTATE: Int = 13
	alias mjSTATE_PHYSICS: Int = 14
	alias mjSTATE_FULLPHYSICS: Int = 4111
	alias mjSTATE_USER: Int = 4064
	alias mjSTATE_INTEGRATION: Int = 8191


alias mjtState = mjtState_
#---------------------------------- primitive types (mjt) -----------------------------------------

@register_passable("trivial")
struct mjtWarning_(Copyable & Movable): # Enum
	alias mjWARN_INERTIA: Int = 0
	alias mjWARN_CONTACTFULL: Int = 1
	alias mjWARN_CNSTRFULL: Int = 2
	alias mjWARN_VGEOMFULL: Int = 3
	alias mjWARN_BADQPOS: Int = 4
	alias mjWARN_BADQVEL: Int = 5
	alias mjWARN_BADQACC: Int = 6
	alias mjWARN_BADCTRL: Int = 7
	alias mjNWARNING: Int = 8


alias mjtWarning = mjtWarning_
@register_passable("trivial")
struct mjtTimer_(Copyable & Movable): # Enum
	alias mjTIMER_STEP: Int = 0
	alias mjTIMER_FORWARD: Int = 1
	alias mjTIMER_INVERSE: Int = 2
	alias mjTIMER_POSITION: Int = 3
	alias mjTIMER_VELOCITY: Int = 4
	alias mjTIMER_ACTUATION: Int = 5
	alias mjTIMER_CONSTRAINT: Int = 6
	alias mjTIMER_ADVANCE: Int = 7
	alias mjTIMER_POS_KINEMATICS: Int = 8
	alias mjTIMER_POS_INERTIA: Int = 9
	alias mjTIMER_POS_COLLISION: Int = 10
	alias mjTIMER_POS_MAKE: Int = 11
	alias mjTIMER_POS_PROJECT: Int = 12
	alias mjTIMER_COL_BROAD: Int = 13
	alias mjTIMER_COL_NARROW: Int = 14
	alias mjNTIMER: Int = 15


alias mjtTimer = mjtTimer_
@register_passable("trivial")
struct mjContact_(Copyable & Movable):
	var dist: mjtNum
	var pos: StaticTuple[mjtNum, 3]
	var frame: StaticTuple[mjtNum, 9]
	var includemargin: mjtNum
	var friction: StaticTuple[mjtNum, 5]
	var solref: StaticTuple[mjtNum, 2]
	var solreffriction: StaticTuple[mjtNum, 2]
	var solimp: StaticTuple[mjtNum, 5]
	var mu: mjtNum
	var H: StaticTuple[mjtNum, 36]
	var dim: Int32
	var geom1: Int32
	var geom2: Int32
	var geom: StaticTuple[Int32, 2]
	var flex: StaticTuple[Int32, 2]
	var elem: StaticTuple[Int32, 2]
	var vert: StaticTuple[Int32, 2]
	var exclude: Int32
	var efc_address: Int32


alias mjContact = mjContact_
@register_passable("trivial")
struct mjWarningStat_(Copyable & Movable):
	var lastinfo: Int32
	var number: Int32


alias mjWarningStat = mjWarningStat_
@register_passable("trivial")
struct mjTimerStat_(Copyable & Movable):
	var duration: mjtNum
	var number: Int32


alias mjTimerStat = mjTimerStat_
@register_passable("trivial")
struct mjSolverStat_(Copyable & Movable):
	var improvement: mjtNum
	var gradient: mjtNum
	var lineslope: mjtNum
	var nactive: Int32
	var nchange: Int32
	var neval: Int32
	var nupdate: Int32


alias mjSolverStat = mjSolverStat_
@register_passable("trivial")
struct mjData_(Copyable & Movable):
	var narena: size_t
	var nbuffer: size_t
	var nplugin: Int32
	var pstack: size_t
	var pbase: size_t
	var parena: size_t
	var maxuse_stack: size_t
	var maxuse_threadstack: StaticTuple[size_t, 128]
	var maxuse_arena: size_t
	var maxuse_con: Int32
	var maxuse_efc: Int32
	var solver: StaticTuple[mjSolverStat, 4000]
	var solver_niter: StaticTuple[Int32, 20]
	var solver_nnz: StaticTuple[Int32, 20]
	var solver_fwdinv: StaticTuple[mjtNum, 2]
	var warning: StaticTuple[mjWarningStat, 8]
	var timer: StaticTuple[mjTimerStat, 15]
	var ncon: Int32
	var ne: Int32
	var nf: Int32
	var nl: Int32
	var nefc: Int32
	var nJ: Int32
	var nA: Int32
	var nisland: Int32
	var nidof: Int32
	var time: mjtNum
	var energy: StaticTuple[mjtNum, 2]
	var buffer: OpaquePointer
	var arena: OpaquePointer
	var qpos: UnsafePointer[mjtNum]
	var qvel: UnsafePointer[mjtNum]
	var act: UnsafePointer[mjtNum]
	var qacc_warmstart: UnsafePointer[mjtNum]
	var plugin_state: UnsafePointer[mjtNum]
	var ctrl: UnsafePointer[mjtNum]
	var qfrc_applied: UnsafePointer[mjtNum]
	var xfrc_applied: UnsafePointer[mjtNum]
	var eq_active: UnsafePointer[mjtByte]
	var mocap_pos: UnsafePointer[mjtNum]
	var mocap_quat: UnsafePointer[mjtNum]
	var qacc: UnsafePointer[mjtNum]
	var act_dot: UnsafePointer[mjtNum]
	var userdata: UnsafePointer[mjtNum]
	var sensordata: UnsafePointer[mjtNum]
	var plugin: UnsafePointer[Int32]
	var plugin_data: UnsafePointer[uintptr_t]
	var xpos: UnsafePointer[mjtNum]
	var xquat: UnsafePointer[mjtNum]
	var xmat: UnsafePointer[mjtNum]
	var xipos: UnsafePointer[mjtNum]
	var ximat: UnsafePointer[mjtNum]
	var xanchor: UnsafePointer[mjtNum]
	var xaxis: UnsafePointer[mjtNum]
	var geom_xpos: UnsafePointer[mjtNum]
	var geom_xmat: UnsafePointer[mjtNum]
	var site_xpos: UnsafePointer[mjtNum]
	var site_xmat: UnsafePointer[mjtNum]
	var cam_xpos: UnsafePointer[mjtNum]
	var cam_xmat: UnsafePointer[mjtNum]
	var light_xpos: UnsafePointer[mjtNum]
	var light_xdir: UnsafePointer[mjtNum]
	var subtree_com: UnsafePointer[mjtNum]
	var cdof: UnsafePointer[mjtNum]
	var cinert: UnsafePointer[mjtNum]
	var flexvert_xpos: UnsafePointer[mjtNum]
	var flexelem_aabb: UnsafePointer[mjtNum]
	var flexedge_J_rownnz: UnsafePointer[Int32]
	var flexedge_J_rowadr: UnsafePointer[Int32]
	var flexedge_J_colind: UnsafePointer[Int32]
	var flexedge_J: UnsafePointer[mjtNum]
	var flexedge_length: UnsafePointer[mjtNum]
	var ten_wrapadr: UnsafePointer[Int32]
	var ten_wrapnum: UnsafePointer[Int32]
	var ten_J_rownnz: UnsafePointer[Int32]
	var ten_J_rowadr: UnsafePointer[Int32]
	var ten_J_colind: UnsafePointer[Int32]
	var ten_J: UnsafePointer[mjtNum]
	var ten_length: UnsafePointer[mjtNum]
	var wrap_obj: UnsafePointer[Int32]
	var wrap_xpos: UnsafePointer[mjtNum]
	var actuator_length: UnsafePointer[mjtNum]
	var moment_rownnz: UnsafePointer[Int32]
	var moment_rowadr: UnsafePointer[Int32]
	var moment_colind: UnsafePointer[Int32]
	var actuator_moment: UnsafePointer[mjtNum]
	var crb: UnsafePointer[mjtNum]
	var qM: UnsafePointer[mjtNum]
	var M: UnsafePointer[mjtNum]
	var qLD: UnsafePointer[mjtNum]
	var qLDiagInv: UnsafePointer[mjtNum]
	var bvh_aabb_dyn: UnsafePointer[mjtNum]
	var bvh_active: UnsafePointer[mjtByte]
	var flexedge_velocity: UnsafePointer[mjtNum]
	var ten_velocity: UnsafePointer[mjtNum]
	var actuator_velocity: UnsafePointer[mjtNum]
	var cvel: UnsafePointer[mjtNum]
	var cdof_dot: UnsafePointer[mjtNum]
	var qfrc_bias: UnsafePointer[mjtNum]
	var qfrc_spring: UnsafePointer[mjtNum]
	var qfrc_damper: UnsafePointer[mjtNum]
	var qfrc_gravcomp: UnsafePointer[mjtNum]
	var qfrc_fluid: UnsafePointer[mjtNum]
	var qfrc_passive: UnsafePointer[mjtNum]
	var subtree_linvel: UnsafePointer[mjtNum]
	var subtree_angmom: UnsafePointer[mjtNum]
	var qH: UnsafePointer[mjtNum]
	var qHDiagInv: UnsafePointer[mjtNum]
	var B_rownnz: UnsafePointer[Int32]
	var B_rowadr: UnsafePointer[Int32]
	var B_colind: UnsafePointer[Int32]
	var M_rownnz: UnsafePointer[Int32]
	var M_rowadr: UnsafePointer[Int32]
	var M_colind: UnsafePointer[Int32]
	var mapM2M: UnsafePointer[Int32]
	var D_rownnz: UnsafePointer[Int32]
	var D_rowadr: UnsafePointer[Int32]
	var D_diag: UnsafePointer[Int32]
	var D_colind: UnsafePointer[Int32]
	var mapM2D: UnsafePointer[Int32]
	var mapD2M: UnsafePointer[Int32]
	var qDeriv: UnsafePointer[mjtNum]
	var qLU: UnsafePointer[mjtNum]
	var actuator_force: UnsafePointer[mjtNum]
	var qfrc_actuator: UnsafePointer[mjtNum]
	var qfrc_smooth: UnsafePointer[mjtNum]
	var qacc_smooth: UnsafePointer[mjtNum]
	var qfrc_constraint: UnsafePointer[mjtNum]
	var qfrc_inverse: UnsafePointer[mjtNum]
	var cacc: UnsafePointer[mjtNum]
	var cfrc_int: UnsafePointer[mjtNum]
	var cfrc_ext: UnsafePointer[mjtNum]
	var contact: UnsafePointer[mjContact]
	var efc_type: UnsafePointer[Int32]
	var efc_id: UnsafePointer[Int32]
	var efc_J_rownnz: UnsafePointer[Int32]
	var efc_J_rowadr: UnsafePointer[Int32]
	var efc_J_rowsuper: UnsafePointer[Int32]
	var efc_J_colind: UnsafePointer[Int32]
	var efc_JT_rownnz: UnsafePointer[Int32]
	var efc_JT_rowadr: UnsafePointer[Int32]
	var efc_JT_rowsuper: UnsafePointer[Int32]
	var efc_JT_colind: UnsafePointer[Int32]
	var efc_J: UnsafePointer[mjtNum]
	var efc_JT: UnsafePointer[mjtNum]
	var efc_pos: UnsafePointer[mjtNum]
	var efc_margin: UnsafePointer[mjtNum]
	var efc_frictionloss: UnsafePointer[mjtNum]
	var efc_diagApprox: UnsafePointer[mjtNum]
	var efc_KBIP: UnsafePointer[mjtNum]
	var efc_D: UnsafePointer[mjtNum]
	var efc_R: UnsafePointer[mjtNum]
	var tendon_efcadr: UnsafePointer[Int32]
	var dof_island: UnsafePointer[Int32]
	var island_nv: UnsafePointer[Int32]
	var island_idofadr: UnsafePointer[Int32]
	var island_dofadr: UnsafePointer[Int32]
	var map_dof2idof: UnsafePointer[Int32]
	var map_idof2dof: UnsafePointer[Int32]
	var ifrc_smooth: UnsafePointer[mjtNum]
	var iacc_smooth: UnsafePointer[mjtNum]
	var iM_rownnz: UnsafePointer[Int32]
	var iM_rowadr: UnsafePointer[Int32]
	var iM_colind: UnsafePointer[Int32]
	var iM: UnsafePointer[mjtNum]
	var iLD: UnsafePointer[mjtNum]
	var iLDiagInv: UnsafePointer[mjtNum]
	var iacc: UnsafePointer[mjtNum]
	var efc_island: UnsafePointer[Int32]
	var island_ne: UnsafePointer[Int32]
	var island_nf: UnsafePointer[Int32]
	var island_nefc: UnsafePointer[Int32]
	var island_iefcadr: UnsafePointer[Int32]
	var map_efc2iefc: UnsafePointer[Int32]
	var map_iefc2efc: UnsafePointer[Int32]
	var iefc_type: UnsafePointer[Int32]
	var iefc_id: UnsafePointer[Int32]
	var iefc_J_rownnz: UnsafePointer[Int32]
	var iefc_J_rowadr: UnsafePointer[Int32]
	var iefc_J_rowsuper: UnsafePointer[Int32]
	var iefc_J_colind: UnsafePointer[Int32]
	var iefc_JT_rownnz: UnsafePointer[Int32]
	var iefc_JT_rowadr: UnsafePointer[Int32]
	var iefc_JT_rowsuper: UnsafePointer[Int32]
	var iefc_JT_colind: UnsafePointer[Int32]
	var iefc_J: UnsafePointer[mjtNum]
	var iefc_JT: UnsafePointer[mjtNum]
	var iefc_frictionloss: UnsafePointer[mjtNum]
	var iefc_D: UnsafePointer[mjtNum]
	var iefc_R: UnsafePointer[mjtNum]
	var efc_AR_rownnz: UnsafePointer[Int32]
	var efc_AR_rowadr: UnsafePointer[Int32]
	var efc_AR_colind: UnsafePointer[Int32]
	var efc_AR: UnsafePointer[mjtNum]
	var efc_vel: UnsafePointer[mjtNum]
	var efc_aref: UnsafePointer[mjtNum]
	var efc_b: UnsafePointer[mjtNum]
	var iefc_aref: UnsafePointer[mjtNum]
	var iefc_state: UnsafePointer[Int32]
	var iefc_force: UnsafePointer[mjtNum]
	var efc_state: UnsafePointer[Int32]
	var efc_force: UnsafePointer[mjtNum]
	var ifrc_constraint: UnsafePointer[mjtNum]
	var threadpool: uintptr_t
	var signature: UInt64


alias mjData = mjData_

alias mjfGeneric = fn(UnsafePointer[mjModel],UnsafePointer[mjData]) -> NoneType
# generic MuJoCo function


alias mjfConFilt = fn(UnsafePointer[mjModel],UnsafePointer[mjData],Int32,Int32) -> Int32
# contact filter: 1- discard, 0- collide


alias mjfSensor = fn(UnsafePointer[mjModel],UnsafePointer[mjData],Int32) -> NoneType
# sensor simulation


alias mjfTime = fn() -> Float64
# timer


alias mjfAct = fn(UnsafePointer[mjModel],UnsafePointer[mjData],Int32) -> Float64
# actuator dynamics, gain, bias


alias mjfCollision = fn(UnsafePointer[mjModel],UnsafePointer[mjData],UnsafePointer[mjContact],Int32,Int32,Float64) -> Int32
# collision detection

@register_passable("trivial")
struct mjtCatBit_(Copyable & Movable): # Enum

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjCAT_STATIC: Int = 1
	alias mjCAT_DYNAMIC: Int = 2
	alias mjCAT_DECOR: Int = 4
	alias mjCAT_ALL: Int = 7


alias mjtCatBit = mjtCatBit_
#---------------------------------- primitive types (mjt) -----------------------------------------

@register_passable("trivial")
struct mjtMouse_(Copyable & Movable): # Enum
	alias mjMOUSE_NONE: Int = 0
	alias mjMOUSE_ROTATE_V: Int = 1
	alias mjMOUSE_ROTATE_H: Int = 2
	alias mjMOUSE_MOVE_V: Int = 3
	alias mjMOUSE_MOVE_H: Int = 4
	alias mjMOUSE_ZOOM: Int = 5
	alias mjMOUSE_SELECT: Int = 6


alias mjtMouse = mjtMouse_
@register_passable("trivial")
struct mjtPertBit_(Copyable & Movable): # Enum
	alias mjPERT_TRANSLATE: Int = 1
	alias mjPERT_ROTATE: Int = 2


alias mjtPertBit = mjtPertBit_
@register_passable("trivial")
struct mjtCamera_(Copyable & Movable): # Enum
	alias mjCAMERA_FREE: Int = 0
	alias mjCAMERA_TRACKING: Int = 1
	alias mjCAMERA_FIXED: Int = 2
	alias mjCAMERA_USER: Int = 3


alias mjtCamera = mjtCamera_
@register_passable("trivial")
struct mjtLabel_(Copyable & Movable): # Enum
	alias mjLABEL_NONE: Int = 0
	alias mjLABEL_BODY: Int = 1
	alias mjLABEL_JOINT: Int = 2
	alias mjLABEL_GEOM: Int = 3
	alias mjLABEL_SITE: Int = 4
	alias mjLABEL_CAMERA: Int = 5
	alias mjLABEL_LIGHT: Int = 6
	alias mjLABEL_TENDON: Int = 7
	alias mjLABEL_ACTUATOR: Int = 8
	alias mjLABEL_CONSTRAINT: Int = 9
	alias mjLABEL_FLEX: Int = 10
	alias mjLABEL_SKIN: Int = 11
	alias mjLABEL_SELECTION: Int = 12
	alias mjLABEL_SELPNT: Int = 13
	alias mjLABEL_CONTACTPOINT: Int = 14
	alias mjLABEL_CONTACTFORCE: Int = 15
	alias mjLABEL_ISLAND: Int = 16
	alias mjNLABEL: Int = 17


alias mjtLabel = mjtLabel_
@register_passable("trivial")
struct mjtFrame_(Copyable & Movable): # Enum
	alias mjFRAME_NONE: Int = 0
	alias mjFRAME_BODY: Int = 1
	alias mjFRAME_GEOM: Int = 2
	alias mjFRAME_SITE: Int = 3
	alias mjFRAME_CAMERA: Int = 4
	alias mjFRAME_LIGHT: Int = 5
	alias mjFRAME_CONTACT: Int = 6
	alias mjFRAME_WORLD: Int = 7
	alias mjNFRAME: Int = 8


alias mjtFrame = mjtFrame_
@register_passable("trivial")
struct mjtVisFlag_(Copyable & Movable): # Enum
	alias mjVIS_CONVEXHULL: Int = 0
	alias mjVIS_TEXTURE: Int = 1
	alias mjVIS_JOINT: Int = 2
	alias mjVIS_CAMERA: Int = 3
	alias mjVIS_ACTUATOR: Int = 4
	alias mjVIS_ACTIVATION: Int = 5
	alias mjVIS_LIGHT: Int = 6
	alias mjVIS_TENDON: Int = 7
	alias mjVIS_RANGEFINDER: Int = 8
	alias mjVIS_CONSTRAINT: Int = 9
	alias mjVIS_INERTIA: Int = 10
	alias mjVIS_SCLINERTIA: Int = 11
	alias mjVIS_PERTFORCE: Int = 12
	alias mjVIS_PERTOBJ: Int = 13
	alias mjVIS_CONTACTPOINT: Int = 14
	alias mjVIS_ISLAND: Int = 15
	alias mjVIS_CONTACTFORCE: Int = 16
	alias mjVIS_CONTACTSPLIT: Int = 17
	alias mjVIS_TRANSPARENT: Int = 18
	alias mjVIS_AUTOCONNECT: Int = 19
	alias mjVIS_COM: Int = 20
	alias mjVIS_SELECT: Int = 21
	alias mjVIS_STATIC: Int = 22
	alias mjVIS_SKIN: Int = 23
	alias mjVIS_FLEXVERT: Int = 24
	alias mjVIS_FLEXEDGE: Int = 25
	alias mjVIS_FLEXFACE: Int = 26
	alias mjVIS_FLEXSKIN: Int = 27
	alias mjVIS_BODYBVH: Int = 28
	alias mjVIS_MESHBVH: Int = 29
	alias mjVIS_SDFITER: Int = 30
	alias mjNVISFLAG: Int = 31


alias mjtVisFlag = mjtVisFlag_
@register_passable("trivial")
struct mjtRndFlag_(Copyable & Movable): # Enum
	alias mjRND_SHADOW: Int = 0
	alias mjRND_WIREFRAME: Int = 1
	alias mjRND_REFLECTION: Int = 2
	alias mjRND_ADDITIVE: Int = 3
	alias mjRND_SKYBOX: Int = 4
	alias mjRND_FOG: Int = 5
	alias mjRND_HAZE: Int = 6
	alias mjRND_SEGMENT: Int = 7
	alias mjRND_IDCOLOR: Int = 8
	alias mjRND_CULL_FACE: Int = 9
	alias mjNRNDFLAG: Int = 10


alias mjtRndFlag = mjtRndFlag_
@register_passable("trivial")
struct mjtStereo_(Copyable & Movable): # Enum
	alias mjSTEREO_NONE: Int = 0
	alias mjSTEREO_QUADBUFFERED: Int = 1
	alias mjSTEREO_SIDEBYSIDE: Int = 2


alias mjtStereo = mjtStereo_
@register_passable("trivial")
struct mjvPerturb_(Copyable & Movable):
	var select: Int32
	var flexselect: Int32
	var skinselect: Int32
	var active: Int32
	var active2: Int32
	var refpos: StaticTuple[mjtNum, 3]
	var refquat: StaticTuple[mjtNum, 4]
	var refselpos: StaticTuple[mjtNum, 3]
	var localpos: StaticTuple[mjtNum, 3]
	var localmass: mjtNum
	var scale: mjtNum


alias mjvPerturb = mjvPerturb_
@register_passable("trivial")
struct mjvCamera_(Copyable & Movable):
	var type: Int32
	var fixedcamid: Int32
	var trackbodyid: Int32
	var lookat: StaticTuple[mjtNum, 3]
	var distance: mjtNum
	var azimuth: mjtNum
	var elevation: mjtNum
	var orthographic: Int32


alias mjvCamera = mjvCamera_
@register_passable("trivial")
struct mjvGLCamera_(Copyable & Movable):
	var pos: StaticTuple[Float32, 3]
	var forward: StaticTuple[Float32, 3]
	var up: StaticTuple[Float32, 3]
	var frustum_center: Float32
	var frustum_width: Float32
	var frustum_bottom: Float32
	var frustum_top: Float32
	var frustum_near: Float32
	var frustum_far: Float32
	var orthographic: Int32


alias mjvGLCamera = mjvGLCamera_
@register_passable("trivial")
struct mjvGeom_(Copyable & Movable):
	var type: Int32
	var dataid: Int32
	var objtype: Int32
	var objid: Int32
	var category: Int32
	var matid: Int32
	var texcoord: Int32
	var segid: Int32
	var size: StaticTuple[Float32, 3]
	var pos: StaticTuple[Float32, 3]
	var mat: StaticTuple[Float32, 9]
	var rgba: StaticTuple[Float32, 4]
	var emission: Float32
	var specular: Float32
	var shininess: Float32
	var reflectance: Float32
	var label: StaticTuple[Int8, 100]
	var camdist: Float32
	var modelrbound: Float32
	var transparent: mjtByte


alias mjvGeom = mjvGeom_
@register_passable("trivial")
struct mjvLight_(Copyable & Movable):
	var pos: StaticTuple[Float32, 3]
	var dir: StaticTuple[Float32, 3]
	var type: Int32
	var texid: Int32
	var attenuation: StaticTuple[Float32, 3]
	var cutoff: Float32
	var exponent: Float32
	var ambient: StaticTuple[Float32, 3]
	var diffuse: StaticTuple[Float32, 3]
	var specular: StaticTuple[Float32, 3]
	var headlight: mjtByte
	var castshadow: mjtByte
	var bulbradius: Float32
	var intensity: Float32
	var range: Float32


alias mjvLight = mjvLight_
@register_passable("trivial")
struct mjvOption_(Copyable & Movable):
	var label: Int32
	var frame: Int32
	var geomgroup: StaticTuple[mjtByte, 6]
	var sitegroup: StaticTuple[mjtByte, 6]
	var jointgroup: StaticTuple[mjtByte, 6]
	var tendongroup: StaticTuple[mjtByte, 6]
	var actuatorgroup: StaticTuple[mjtByte, 6]
	var flexgroup: StaticTuple[mjtByte, 6]
	var skingroup: StaticTuple[mjtByte, 6]
	var flags: StaticTuple[mjtByte, 31]
	var bvh_depth: Int32
	var flex_layer: Int32


alias mjvOption = mjvOption_
@register_passable("trivial")
struct mjvScene_(Copyable & Movable):
	var maxgeom: Int32
	var ngeom: Int32
	var geoms: UnsafePointer[mjvGeom]
	var geomorder: UnsafePointer[Int32]
	var nflex: Int32
	var flexedgeadr: UnsafePointer[Int32]
	var flexedgenum: UnsafePointer[Int32]
	var flexvertadr: UnsafePointer[Int32]
	var flexvertnum: UnsafePointer[Int32]
	var flexfaceadr: UnsafePointer[Int32]
	var flexfacenum: UnsafePointer[Int32]
	var flexfaceused: UnsafePointer[Int32]
	var flexedge: UnsafePointer[Int32]
	var flexvert: UnsafePointer[Float32]
	var flexface: UnsafePointer[Float32]
	var flexnormal: UnsafePointer[Float32]
	var flextexcoord: UnsafePointer[Float32]
	var flexvertopt: mjtByte
	var flexedgeopt: mjtByte
	var flexfaceopt: mjtByte
	var flexskinopt: mjtByte
	var nskin: Int32
	var skinfacenum: UnsafePointer[Int32]
	var skinvertadr: UnsafePointer[Int32]
	var skinvertnum: UnsafePointer[Int32]
	var skinvert: UnsafePointer[Float32]
	var skinnormal: UnsafePointer[Float32]
	var nlight: Int32
	var lights: StaticTuple[mjvLight, 100]
	var camera: StaticTuple[mjvGLCamera, 2]
	var enabletransform: mjtByte
	var translate: StaticTuple[Float32, 3]
	var rotate: StaticTuple[Float32, 4]
	var scale: Float32
	var stereo: Int32
	var flags: StaticTuple[mjtByte, 10]
	var framewidth: Int32
	var framergb: StaticTuple[Float32, 3]


alias mjvScene = mjvScene_
@register_passable("trivial")
struct mjvFigure_(Copyable & Movable):
	var flg_legend: Int32
	var flg_ticklabel: StaticTuple[Int32, 2]
	var flg_extend: Int32
	var flg_barplot: Int32
	var flg_selection: Int32
	var flg_symmetric: Int32
	var linewidth: Float32
	var gridwidth: Float32
	var gridsize: StaticTuple[Int32, 2]
	var gridrgb: StaticTuple[Float32, 3]
	var figurergba: StaticTuple[Float32, 4]
	var panergba: StaticTuple[Float32, 4]
	var legendrgba: StaticTuple[Float32, 4]
	var textrgb: StaticTuple[Float32, 3]
	var linergb: StaticTuple[Float32, 100]
	var range: StaticTuple[Float32, 2]
	var xformat: StaticTuple[Int8, 20]
	var yformat: StaticTuple[Int8, 20]
	var minwidth: StaticTuple[Int8, 20]
	var title: StaticTuple[Int8, 1000]
	var xlabel: StaticTuple[Int8, 100]
	var linename: StaticTuple[Int8, 100]
	var legendoffset: Int32
	var subplot: Int32
	var highlight: StaticTuple[Int32, 2]
	var highlightid: Int32
	var selection: Float32
	var linepnt: StaticTuple[Int32, 100]
	var linedata: StaticTuple[Float32, 100]
	var xaxispixel: StaticTuple[Int32, 2]
	var yaxispixel: StaticTuple[Int32, 2]
	var xaxisdata: StaticTuple[Float32, 2]
	var yaxisdata: StaticTuple[Float32, 2]


alias mjvFigure = mjvFigure_
@register_passable("trivial")
struct _mjResource__mjpResourceProvider(Copyable & Movable):
	pass


@register_passable("trivial")
struct mjResource_(Copyable & Movable):
	var name: UnsafePointer[Int8]
	var data: OpaquePointer
	var timestamp: StaticTuple[Int8, 512]
	var provider: UnsafePointer[mjpResourceProvider] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.


alias mjResource = mjResource_

alias mjfOpenResource = fn(UnsafePointer[mjResource]) -> Int32
# callback for opening a resource, returns zero on failure


alias mjfReadResource = fn(UnsafePointer[mjResource],UnsafePointer[UnsafePointer[NoneType]]) -> Int32
# callback for reading a resource
# return number of bytes stored in buffer, return -1 if error


alias mjfCloseResource = fn(UnsafePointer[mjResource]) -> NoneType
# callback for closing a resource (responsible for freeing any allocated memory)


alias mjfGetResourceDir = fn(UnsafePointer[mjResource],UnsafePointer[UnsafePointer[Int8]],UnsafePointer[Int32]) -> NoneType
# callback for returning the directory of a resource
# sets dir to directory string with ndir being size of directory string


alias mjfResourceModified = fn(UnsafePointer[mjResource],UnsafePointer[Int8]) -> Int32
# callback for checking if the current resource was modified from the time
# specified by the timestamp
# returns 0 if the resource ' s timestamp matches the provided timestamp
# returns > 0 if the resource is younger than the given timestamp
# returns 
#<
# 0 if the resource is older than the given timestamp

@register_passable("trivial")
struct mjpResourceProvider(Copyable & Movable):
	var prefix: UnsafePointer[Int8] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var open: mjfOpenResource
	var read: mjfReadResource
	var close: mjfCloseResource
	var getdir: mjfGetResourceDir
	var modified: mjfResourceModified
	var data: OpaquePointer

# Disabled since this is already declared
# alias mjpResourceProvider = mjpResourceProvider
@register_passable("trivial")
struct mjtPluginCapabilityBit_(Copyable & Movable): # Enum

	#---------------------------------- Plugins -------------------------------------------------------
	alias mjPLUGIN_ACTUATOR: Int = 1
	alias mjPLUGIN_SENSOR: Int = 2
	alias mjPLUGIN_PASSIVE: Int = 4
	alias mjPLUGIN_SDF: Int = 8


alias mjtPluginCapabilityBit = mjtPluginCapabilityBit_
#---------------------------------- Plugins -------------------------------------------------------

@register_passable("trivial")
struct mjpPlugin_(Copyable & Movable):
	var name: UnsafePointer[Int8] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var nattribute: Int32
	var attributes: UnsafePointer[UnsafePointer[Int8]] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var capabilityflags: Int32
	var needstage: Int32
	var nstate: fn(read UnsafePointer[mjModel], Int32) -> Int32
	var nsensordata: fn(read UnsafePointer[mjModel], Int32, Int32) -> Int32
	var init: fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> Int32
	var destroy: fn(UnsafePointer[mjData], Int32) -> NoneType
	var copy: fn(UnsafePointer[mjData], UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var reset: fn(read UnsafePointer[mjModel], UnsafePointer[mjtNum], OpaquePointer, Int32) -> NoneType
	var compute: fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32, Int32) -> NoneType
	var advance: fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType
	var visualize: fn(read UnsafePointer[mjModel], UnsafePointer[mjData], UnsafePointer[mjvOption], UnsafePointer[mjvScene], Int32) -> NoneType # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var actuator_act_dot: fn(read UnsafePointer[mjModel], UnsafePointer[mjData], Int32) -> NoneType
	var sdf_distance: fn(read UnsafePointer[mjtNum], UnsafePointer[mjData], Int32) -> mjtNum # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var sdf_gradient: fn(UnsafePointer[mjtNum], UnsafePointer[mjtNum], UnsafePointer[mjData], Int32) -> NoneType # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var sdf_staticdistance: fn(read UnsafePointer[mjtNum], UnsafePointer[mjtNum]) -> mjtNum # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var sdf_attribute: fn(UnsafePointer[mjtNum], UnsafePointer[UnsafePointer[Int8]], UnsafePointer[UnsafePointer[Int8]]) -> NoneType # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var sdf_aabb: fn(UnsafePointer[mjtNum], UnsafePointer[mjtNum]) -> NoneType # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.


alias mjpPlugin = mjpPlugin_
@register_passable("trivial")
struct mjSDF_(Copyable & Movable):
	var plugin: UnsafePointer[UnsafePointer[mjpPlugin]] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var id: UnsafePointer[Int32]
	var type: mjtSDFType
	var relpos: UnsafePointer[mjtNum]
	var relmat: UnsafePointer[mjtNum]
	var geomtype: UnsafePointer[mjtGeom]


alias mjSDF = mjSDF_

alias mjfPluginLibraryLoadCallback = fn(UnsafePointer[Int8],Int32,Int32) -> NoneType
# function pointer type for mj_loadAllPluginLibraries callback

@register_passable("trivial")
struct mjtGridPos_(Copyable & Movable): # Enum

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjGRID_TOPLEFT: Int = 0
	alias mjGRID_TOPRIGHT: Int = 1
	alias mjGRID_BOTTOMLEFT: Int = 2
	alias mjGRID_BOTTOMRIGHT: Int = 3
	alias mjGRID_TOP: Int = 4
	alias mjGRID_BOTTOM: Int = 5
	alias mjGRID_LEFT: Int = 6
	alias mjGRID_RIGHT: Int = 7


alias mjtGridPos = mjtGridPos_
#---------------------------------- primitive types (mjt) -----------------------------------------

@register_passable("trivial")
struct mjtFramebuffer_(Copyable & Movable): # Enum
	alias mjFB_WINDOW: Int = 0
	alias mjFB_OFFSCREEN: Int = 1


alias mjtFramebuffer = mjtFramebuffer_
@register_passable("trivial")
struct mjtDepthMap_(Copyable & Movable): # Enum
	alias mjDEPTH_ZERONEAR: Int = 0
	alias mjDEPTH_ZEROFAR: Int = 1


alias mjtDepthMap = mjtDepthMap_
@register_passable("trivial")
struct mjtFontScale_(Copyable & Movable): # Enum
	alias mjFONTSCALE_50: Int = 50
	alias mjFONTSCALE_100: Int = 100
	alias mjFONTSCALE_150: Int = 150
	alias mjFONTSCALE_200: Int = 200
	alias mjFONTSCALE_250: Int = 250
	alias mjFONTSCALE_300: Int = 300


alias mjtFontScale = mjtFontScale_
@register_passable("trivial")
struct mjtFont_(Copyable & Movable): # Enum
	alias mjFONT_NORMAL: Int = 0
	alias mjFONT_SHADOW: Int = 1
	alias mjFONT_BIG: Int = 2


alias mjtFont = mjtFont_
@register_passable("trivial")
struct mjrRect_(Copyable & Movable):
	var left: Int32
	var bottom: Int32
	var width: Int32
	var height: Int32


alias mjrRect = mjrRect_
@register_passable("trivial")
struct mjrContext_(Copyable & Movable):
	var lineWidth: Float32
	var shadowClip: Float32
	var shadowScale: Float32
	var fogStart: Float32
	var fogEnd: Float32
	var fogRGBA: StaticTuple[Float32, 4]
	var shadowSize: Int32
	var offWidth: Int32
	var offHeight: Int32
	var offSamples: Int32
	var fontScale: Int32
	var auxWidth: StaticTuple[Int32, 10]
	var auxHeight: StaticTuple[Int32, 10]
	var auxSamples: StaticTuple[Int32, 10]
	var offFBO: UInt32
	var offFBO_r: UInt32
	var offColor: UInt32
	var offColor_r: UInt32
	var offDepthStencil: UInt32
	var offDepthStencil_r: UInt32
	var shadowFBO: UInt32
	var shadowTex: UInt32
	var auxFBO: StaticTuple[UInt32, 10]
	var auxFBO_r: StaticTuple[UInt32, 10]
	var auxColor: StaticTuple[UInt32, 10]
	var auxColor_r: StaticTuple[UInt32, 10]
	var mat_texid: StaticTuple[Int32, 10000]
	var mat_texuniform: StaticTuple[Int32, 1000]
	var mat_texrepeat: StaticTuple[Float32, 2000]
	var ntexture: Int32
	var textureType: StaticTuple[Int32, 1000]
	var texture: StaticTuple[UInt32, 1000]
	var basePlane: UInt32
	var baseMesh: UInt32
	var baseHField: UInt32
	var baseBuiltin: UInt32
	var baseFontNormal: UInt32
	var baseFontShadow: UInt32
	var baseFontBig: UInt32
	var rangePlane: Int32
	var rangeMesh: Int32
	var rangeHField: Int32
	var rangeBuiltin: Int32
	var rangeFont: Int32
	var nskin: Int32
	var skinvertVBO: UnsafePointer[UInt32]
	var skinnormalVBO: UnsafePointer[UInt32]
	var skintexcoordVBO: UnsafePointer[UInt32]
	var skinfaceVBO: UnsafePointer[UInt32]
	var charWidth: StaticTuple[Int32, 127]
	var charWidthBig: StaticTuple[Int32, 127]
	var charHeight: Int32
	var charHeightBig: Int32
	var glInitialized: Int32
	var windowAvailable: Int32
	var windowSamples: Int32
	var windowStereo: Int32
	var windowDoublebuffer: Int32
	var currentBuffer: Int32
	var readPixelFormat: Int32
	var readDepthMap: Int32


alias mjrContext = mjrContext_

alias mjString = NoneType
# C: opaque types


alias mjStringVec = NoneType

alias mjIntVec = NoneType

alias mjIntVecVec = NoneType

alias mjFloatVec = NoneType

alias mjFloatVecVec = NoneType

alias mjDoubleVec = NoneType

alias mjByteVec = NoneType
@register_passable("trivial")
struct mjtGeomInertia_(Copyable & Movable): # Enum

	#-------------------------------- enum types (mjt) ------------------------------------------------
	alias mjINERTIA_VOLUME: Int = 0
	alias mjINERTIA_SHELL: Int = 1


alias mjtGeomInertia = mjtGeomInertia_
#-------------------------------- enum types (mjt) ------------------------------------------------

@register_passable("trivial")
struct mjtMeshInertia_(Copyable & Movable): # Enum
	alias mjMESH_INERTIA_CONVEX: Int = 0
	alias mjMESH_INERTIA_EXACT: Int = 1
	alias mjMESH_INERTIA_LEGACY: Int = 2
	alias mjMESH_INERTIA_SHELL: Int = 3


alias mjtMeshInertia = mjtMeshInertia_
@register_passable("trivial")
struct mjtBuiltin_(Copyable & Movable): # Enum
	alias mjBUILTIN_NONE: Int = 0
	alias mjBUILTIN_GRADIENT: Int = 1
	alias mjBUILTIN_CHECKER: Int = 2
	alias mjBUILTIN_FLAT: Int = 3


alias mjtBuiltin = mjtBuiltin_
@register_passable("trivial")
struct mjtMark_(Copyable & Movable): # Enum
	alias mjMARK_NONE: Int = 0
	alias mjMARK_EDGE: Int = 1
	alias mjMARK_CROSS: Int = 2
	alias mjMARK_RANDOM: Int = 3


alias mjtMark = mjtMark_
@register_passable("trivial")
struct mjtLimited_(Copyable & Movable): # Enum
	alias mjLIMITED_FALSE: Int = 0
	alias mjLIMITED_TRUE: Int = 1
	alias mjLIMITED_AUTO: Int = 2


alias mjtLimited = mjtLimited_
@register_passable("trivial")
struct mjtAlignFree_(Copyable & Movable): # Enum
	alias mjALIGNFREE_FALSE: Int = 0
	alias mjALIGNFREE_TRUE: Int = 1
	alias mjALIGNFREE_AUTO: Int = 2


alias mjtAlignFree = mjtAlignFree_
@register_passable("trivial")
struct mjtInertiaFromGeom_(Copyable & Movable): # Enum
	alias mjINERTIAFROMGEOM_FALSE: Int = 0
	alias mjINERTIAFROMGEOM_TRUE: Int = 1
	alias mjINERTIAFROMGEOM_AUTO: Int = 2


alias mjtInertiaFromGeom = mjtInertiaFromGeom_
@register_passable("trivial")
struct mjtOrientation_(Copyable & Movable): # Enum
	alias mjORIENTATION_QUAT: Int = 0
	alias mjORIENTATION_AXISANGLE: Int = 1
	alias mjORIENTATION_XYAXES: Int = 2
	alias mjORIENTATION_ZAXIS: Int = 3
	alias mjORIENTATION_EULER: Int = 4


alias mjtOrientation = mjtOrientation_
@register_passable("trivial")
struct mjsElement_(Copyable & Movable):
	var elemtype: mjtObj
	var signature: UInt64


alias mjsElement = mjsElement_
#-------------------------------- attribute structs (mjs) -----------------------------------------

@register_passable("trivial")
struct mjsCompiler_(Copyable & Movable):
	var autolimits: mjtByte
	var boundmass: Float64
	var boundinertia: Float64
	var settotalmass: Float64
	var balanceinertia: mjtByte
	var fitaabb: mjtByte
	var degree: mjtByte
	var eulerseq: StaticTuple[Int8, 3]
	var discardvisual: mjtByte
	var usethread: mjtByte
	var fusestatic: mjtByte
	var inertiafromgeom: Int32
	var inertiagrouprange: StaticTuple[Int32, 2]
	var saveinertial: mjtByte
	var alignfree: Int32
	var LRopt: mjLROpt


alias mjsCompiler = mjsCompiler_
@register_passable("trivial")
struct mjSpec_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var modelname: UnsafePointer[mjString]
	var compiler: mjsCompiler
	var strippath: mjtByte
	var meshdir: UnsafePointer[mjString]
	var texturedir: UnsafePointer[mjString]
	var option: mjOption
	var visual: mjVisual
	var stat: mjStatistic
	var memory: size_t
	var nemax: Int32
	var nuserdata: Int32
	var nuser_body: Int32
	var nuser_jnt: Int32
	var nuser_geom: Int32
	var nuser_site: Int32
	var nuser_cam: Int32
	var nuser_tendon: Int32
	var nuser_actuator: Int32
	var nuser_sensor: Int32
	var nkey: Int32
	var njmax: Int32
	var nconmax: Int32
	var nstack: size_t
	var comment: UnsafePointer[mjString]
	var modelfiledir: UnsafePointer[mjString]
	var hasImplicitPluginElem: mjtByte


alias mjSpec = mjSpec_
@register_passable("trivial")
struct mjsOrientation_(Copyable & Movable):
	var type: mjtOrientation
	var axisangle: StaticTuple[Float64, 4]
	var xyaxes: StaticTuple[Float64, 6]
	var zaxis: StaticTuple[Float64, 3]
	var euler: StaticTuple[Float64, 3]


alias mjsOrientation = mjsOrientation_
@register_passable("trivial")
struct mjsPlugin_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var plugin_name: UnsafePointer[mjString]
	var active: mjtByte
	var info: UnsafePointer[mjString]


alias mjsPlugin = mjsPlugin_
@register_passable("trivial")
struct mjsBody_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var childclass: UnsafePointer[mjString]
	var pos: StaticTuple[Float64, 3]
	var quat: StaticTuple[Float64, 4]
	var alt: mjsOrientation
	var mass: Float64
	var ipos: StaticTuple[Float64, 3]
	var iquat: StaticTuple[Float64, 4]
	var inertia: StaticTuple[Float64, 3]
	var ialt: mjsOrientation
	var fullinertia: StaticTuple[Float64, 6]
	var mocap: mjtByte
	var gravcomp: Float64
	var userdata: UnsafePointer[mjDoubleVec]
	var explicitinertial: mjtByte
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsBody = mjsBody_
@register_passable("trivial")
struct mjsFrame_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var childclass: UnsafePointer[mjString]
	var pos: StaticTuple[Float64, 3]
	var quat: StaticTuple[Float64, 4]
	var alt: mjsOrientation
	var info: UnsafePointer[mjString]


alias mjsFrame = mjsFrame_
@register_passable("trivial")
struct mjsJoint_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var type: mjtJoint
	var pos: StaticTuple[Float64, 3]
	var axis: StaticTuple[Float64, 3]
	var `ref`: Float64
	var align: Int32
	var stiffness: Float64
	var springref: Float64
	var springdamper: StaticTuple[Float64, 2]
	var limited: Int32
	var range: StaticTuple[Float64, 2]
	var margin: Float64
	var solref_limit: StaticTuple[mjtNum, 2]
	var solimp_limit: StaticTuple[mjtNum, 5]
	var actfrclimited: Int32
	var actfrcrange: StaticTuple[Float64, 2]
	var armature: Float64
	var damping: Float64
	var frictionloss: Float64
	var solref_friction: StaticTuple[mjtNum, 2]
	var solimp_friction: StaticTuple[mjtNum, 5]
	var group: Int32
	var actgravcomp: mjtByte
	var userdata: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsJoint = mjsJoint_
@register_passable("trivial")
struct mjsGeom_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var type: mjtGeom
	var pos: StaticTuple[Float64, 3]
	var quat: StaticTuple[Float64, 4]
	var alt: mjsOrientation
	var fromto: StaticTuple[Float64, 6]
	var size: StaticTuple[Float64, 3]
	var contype: Int32
	var conaffinity: Int32
	var condim: Int32
	var priority: Int32
	var friction: StaticTuple[Float64, 3]
	var solmix: Float64
	var solref: StaticTuple[mjtNum, 2]
	var solimp: StaticTuple[mjtNum, 5]
	var margin: Float64
	var gap: Float64
	var mass: Float64
	var density: Float64
	var typeinertia: mjtGeomInertia
	var fluid_ellipsoid: mjtNum
	var fluid_coefs: StaticTuple[mjtNum, 5]
	var material: UnsafePointer[mjString]
	var rgba: StaticTuple[Float32, 4]
	var group: Int32
	var hfieldname: UnsafePointer[mjString]
	var meshname: UnsafePointer[mjString]
	var fitscale: Float64
	var userdata: UnsafePointer[mjDoubleVec]
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsGeom = mjsGeom_
@register_passable("trivial")
struct mjsSite_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var pos: StaticTuple[Float64, 3]
	var quat: StaticTuple[Float64, 4]
	var alt: mjsOrientation
	var fromto: StaticTuple[Float64, 6]
	var size: StaticTuple[Float64, 3]
	var type: mjtGeom
	var material: UnsafePointer[mjString]
	var group: Int32
	var rgba: StaticTuple[Float32, 4]
	var userdata: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsSite = mjsSite_
@register_passable("trivial")
struct mjsCamera_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var pos: StaticTuple[Float64, 3]
	var quat: StaticTuple[Float64, 4]
	var alt: mjsOrientation
	var mode: mjtCamLight
	var targetbody: UnsafePointer[mjString]
	var orthographic: Int32
	var fovy: Float64
	var ipd: Float64
	var intrinsic: StaticTuple[Float32, 4]
	var sensor_size: StaticTuple[Float32, 2]
	var resolution: StaticTuple[Float32, 2]
	var focal_length: StaticTuple[Float32, 2]
	var focal_pixel: StaticTuple[Float32, 2]
	var principal_length: StaticTuple[Float32, 2]
	var principal_pixel: StaticTuple[Float32, 2]
	var userdata: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsCamera = mjsCamera_
@register_passable("trivial")
struct mjsLight_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var pos: StaticTuple[Float64, 3]
	var dir: StaticTuple[Float64, 3]
	var mode: mjtCamLight
	var targetbody: UnsafePointer[mjString]
	var active: mjtByte
	var type: mjtLightType
	var texture: UnsafePointer[mjString]
	var castshadow: mjtByte
	var bulbradius: Float32
	var intensity: Float32
	var range: Float32
	var attenuation: StaticTuple[Float32, 3]
	var cutoff: Float32
	var exponent: Float32
	var ambient: StaticTuple[Float32, 3]
	var diffuse: StaticTuple[Float32, 3]
	var specular: StaticTuple[Float32, 3]
	var info: UnsafePointer[mjString]


alias mjsLight = mjsLight_
@register_passable("trivial")
struct mjsFlex_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var contype: Int32
	var conaffinity: Int32
	var condim: Int32
	var priority: Int32
	var friction: StaticTuple[Float64, 3]
	var solmix: Float64
	var solref: StaticTuple[mjtNum, 2]
	var solimp: StaticTuple[mjtNum, 5]
	var margin: Float64
	var gap: Float64
	var dim: Int32
	var radius: Float64
	var internal: mjtByte
	var flatskin: mjtByte
	var selfcollide: Int32
	var vertcollide: Int32
	var activelayers: Int32
	var group: Int32
	var edgestiffness: Float64
	var edgedamping: Float64
	var rgba: StaticTuple[Float32, 4]
	var material: UnsafePointer[mjString]
	var young: Float64
	var poisson: Float64
	var damping: Float64
	var thickness: Float64
	var elastic2d: Int32
	var nodebody: UnsafePointer[mjStringVec]
	var vertbody: UnsafePointer[mjStringVec]
	var node: UnsafePointer[mjDoubleVec]
	var vert: UnsafePointer[mjDoubleVec]
	var elem: UnsafePointer[mjIntVec]
	var texcoord: UnsafePointer[mjFloatVec]
	var elemtexcoord: UnsafePointer[mjIntVec]
	var info: UnsafePointer[mjString]


alias mjsFlex = mjsFlex_
@register_passable("trivial")
struct mjsMesh_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var content_type: UnsafePointer[mjString]
	var file: UnsafePointer[mjString]
	var refpos: StaticTuple[Float64, 3]
	var refquat: StaticTuple[Float64, 4]
	var scale: StaticTuple[Float64, 3]
	var inertia: mjtMeshInertia
	var smoothnormal: mjtByte
	var needsdf: mjtByte
	var maxhullvert: Int32
	var uservert: UnsafePointer[mjFloatVec]
	var usernormal: UnsafePointer[mjFloatVec]
	var usertexcoord: UnsafePointer[mjFloatVec]
	var userface: UnsafePointer[mjIntVec]
	var userfacetexcoord: UnsafePointer[mjIntVec]
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsMesh = mjsMesh_
@register_passable("trivial")
struct mjsHField_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var content_type: UnsafePointer[mjString]
	var file: UnsafePointer[mjString]
	var size: StaticTuple[Float64, 4]
	var nrow: Int32
	var ncol: Int32
	var userdata: UnsafePointer[mjFloatVec]
	var info: UnsafePointer[mjString]


alias mjsHField = mjsHField_
@register_passable("trivial")
struct mjsSkin_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var file: UnsafePointer[mjString]
	var material: UnsafePointer[mjString]
	var rgba: StaticTuple[Float32, 4]
	var inflate: Float32
	var group: Int32
	var vert: UnsafePointer[mjFloatVec]
	var texcoord: UnsafePointer[mjFloatVec]
	var face: UnsafePointer[mjIntVec]
	var bodyname: UnsafePointer[mjStringVec]
	var bindpos: UnsafePointer[mjFloatVec]
	var bindquat: UnsafePointer[mjFloatVec]
	var vertid: UnsafePointer[mjIntVecVec]
	var vertweight: UnsafePointer[mjFloatVecVec]
	var info: UnsafePointer[mjString]


alias mjsSkin = mjsSkin_
@register_passable("trivial")
struct mjsTexture_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var type: mjtTexture
	var colorspace: mjtColorSpace
	var builtin: Int32
	var mark: Int32
	var rgb1: StaticTuple[Float64, 3]
	var rgb2: StaticTuple[Float64, 3]
	var markrgb: StaticTuple[Float64, 3]
	var random: Float64
	var height: Int32
	var width: Int32
	var nchannel: Int32
	var content_type: UnsafePointer[mjString]
	var file: UnsafePointer[mjString]
	var gridsize: StaticTuple[Int32, 2]
	var gridlayout: StaticTuple[Int8, 13]
	var cubefiles: UnsafePointer[mjStringVec]
	var data: UnsafePointer[mjByteVec]
	var hflip: mjtByte
	var vflip: mjtByte
	var info: UnsafePointer[mjString]


alias mjsTexture = mjsTexture_
@register_passable("trivial")
struct mjsMaterial_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var textures: UnsafePointer[mjStringVec]
	var texuniform: mjtByte
	var texrepeat: StaticTuple[Float32, 2]
	var emission: Float32
	var specular: Float32
	var shininess: Float32
	var reflectance: Float32
	var metallic: Float32
	var roughness: Float32
	var rgba: StaticTuple[Float32, 4]
	var info: UnsafePointer[mjString]


alias mjsMaterial = mjsMaterial_
@register_passable("trivial")
struct mjsPair_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var geomname1: UnsafePointer[mjString]
	var geomname2: UnsafePointer[mjString]
	var condim: Int32
	var solref: StaticTuple[mjtNum, 2]
	var solreffriction: StaticTuple[mjtNum, 2]
	var solimp: StaticTuple[mjtNum, 5]
	var margin: Float64
	var gap: Float64
	var friction: StaticTuple[Float64, 5]
	var info: UnsafePointer[mjString]


alias mjsPair = mjsPair_
@register_passable("trivial")
struct mjsExclude_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var bodyname1: UnsafePointer[mjString]
	var bodyname2: UnsafePointer[mjString]
	var info: UnsafePointer[mjString]


alias mjsExclude = mjsExclude_
@register_passable("trivial")
struct mjsEquality_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var type: mjtEq
	var data: StaticTuple[Float64, 11]
	var active: mjtByte
	var name1: UnsafePointer[mjString]
	var name2: UnsafePointer[mjString]
	var objtype: mjtObj
	var solref: StaticTuple[mjtNum, 2]
	var solimp: StaticTuple[mjtNum, 5]
	var info: UnsafePointer[mjString]


alias mjsEquality = mjsEquality_
@register_passable("trivial")
struct mjsTendon_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var stiffness: Float64
	var springlength: StaticTuple[Float64, 2]
	var damping: Float64
	var frictionloss: Float64
	var solref_friction: StaticTuple[mjtNum, 2]
	var solimp_friction: StaticTuple[mjtNum, 5]
	var armature: Float64
	var limited: Int32
	var actfrclimited: Int32
	var range: StaticTuple[Float64, 2]
	var actfrcrange: StaticTuple[Float64, 2]
	var margin: Float64
	var solref_limit: StaticTuple[mjtNum, 2]
	var solimp_limit: StaticTuple[mjtNum, 5]
	var material: UnsafePointer[mjString]
	var width: Float64
	var rgba: StaticTuple[Float32, 4]
	var group: Int32
	var userdata: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsTendon = mjsTendon_
@register_passable("trivial")
struct mjsWrap_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var info: UnsafePointer[mjString]


alias mjsWrap = mjsWrap_
@register_passable("trivial")
struct mjsActuator_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var gaintype: mjtGain
	var gainprm: StaticTuple[Float64, 10]
	var biastype: mjtBias
	var biasprm: StaticTuple[Float64, 10]
	var dyntype: mjtDyn
	var dynprm: StaticTuple[Float64, 10]
	var actdim: Int32
	var actearly: mjtByte
	var trntype: mjtTrn
	var gear: StaticTuple[Float64, 6]
	var target: UnsafePointer[mjString]
	var refsite: UnsafePointer[mjString]
	var slidersite: UnsafePointer[mjString]
	var cranklength: Float64
	var lengthrange: StaticTuple[Float64, 2]
	var inheritrange: Float64
	var ctrllimited: Int32
	var ctrlrange: StaticTuple[Float64, 2]
	var forcelimited: Int32
	var forcerange: StaticTuple[Float64, 2]
	var actlimited: Int32
	var actrange: StaticTuple[Float64, 2]
	var group: Int32
	var userdata: UnsafePointer[mjDoubleVec]
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsActuator = mjsActuator_
@register_passable("trivial")
struct mjsSensor_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var type: mjtSensor
	var objtype: mjtObj
	var objname: UnsafePointer[mjString]
	var reftype: mjtObj
	var refname: UnsafePointer[mjString]
	var intprm: StaticTuple[Int32, 2]
	var datatype: mjtDataType
	var needstage: mjtStage
	var dim: Int32
	var cutoff: Float64
	var noise: Float64
	var userdata: UnsafePointer[mjDoubleVec]
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsSensor = mjsSensor_
@register_passable("trivial")
struct mjsNumeric_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var data: UnsafePointer[mjDoubleVec]
	var size: Int32
	var info: UnsafePointer[mjString]


alias mjsNumeric = mjsNumeric_
@register_passable("trivial")
struct mjsText_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var data: UnsafePointer[mjString]
	var info: UnsafePointer[mjString]


alias mjsText = mjsText_
@register_passable("trivial")
struct mjsTuple_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var objtype: UnsafePointer[mjIntVec]
	var objname: UnsafePointer[mjStringVec]
	var objprm: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsTuple = mjsTuple_
@register_passable("trivial")
struct mjsKey_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var time: Float64
	var qpos: UnsafePointer[mjDoubleVec]
	var qvel: UnsafePointer[mjDoubleVec]
	var act: UnsafePointer[mjDoubleVec]
	var mpos: UnsafePointer[mjDoubleVec]
	var mquat: UnsafePointer[mjDoubleVec]
	var ctrl: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsKey = mjsKey_
@register_passable("trivial")
struct mjsDefault_(Copyable & Movable):
	var element: UnsafePointer[mjsElement]
	var joint: UnsafePointer[mjsJoint]
	var geom: UnsafePointer[mjsGeom]
	var site: UnsafePointer[mjsSite]
	var camera: UnsafePointer[mjsCamera]
	var light: UnsafePointer[mjsLight]
	var flex: UnsafePointer[mjsFlex]
	var mesh: UnsafePointer[mjsMesh]
	var material: UnsafePointer[mjsMaterial]
	var pair: UnsafePointer[mjsPair]
	var equality: UnsafePointer[mjsEquality]
	var tendon: UnsafePointer[mjsTendon]
	var actuator: UnsafePointer[mjsActuator]


alias mjsDefault = mjsDefault_
@register_passable("trivial")
struct mjtButton_(Copyable & Movable): # Enum

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjBUTTON_NONE: Int = 0
	alias mjBUTTON_LEFT: Int = 1
	alias mjBUTTON_RIGHT: Int = 2
	alias mjBUTTON_MIDDLE: Int = 3


alias mjtButton = mjtButton_
#---------------------------------- primitive types (mjt) -----------------------------------------

@register_passable("trivial")
struct mjtEvent_(Copyable & Movable): # Enum
	alias mjEVENT_NONE: Int = 0
	alias mjEVENT_MOVE: Int = 1
	alias mjEVENT_PRESS: Int = 2
	alias mjEVENT_RELEASE: Int = 3
	alias mjEVENT_SCROLL: Int = 4
	alias mjEVENT_KEY: Int = 5
	alias mjEVENT_RESIZE: Int = 6
	alias mjEVENT_REDRAW: Int = 7
	alias mjEVENT_FILESDROP: Int = 8


alias mjtEvent = mjtEvent_
@register_passable("trivial")
struct mjtItem_(Copyable & Movable): # Enum
	alias mjITEM_END: Int = -2
	alias mjITEM_SECTION: Int = -1
	alias mjITEM_SEPARATOR: Int = 0
	alias mjITEM_STATIC: Int = 1
	alias mjITEM_BUTTON: Int = 2
	alias mjITEM_CHECKINT: Int = 3
	alias mjITEM_CHECKBYTE: Int = 4
	alias mjITEM_RADIO: Int = 5
	alias mjITEM_RADIOLINE: Int = 6
	alias mjITEM_SELECT: Int = 7
	alias mjITEM_SLIDERINT: Int = 8
	alias mjITEM_SLIDERNUM: Int = 9
	alias mjITEM_EDITINT: Int = 10
	alias mjITEM_EDITNUM: Int = 11
	alias mjITEM_EDITFLOAT: Int = 12
	alias mjITEM_EDITTXT: Int = 13
	alias mjNITEM: Int = 14


alias mjtItem = mjtItem_
@register_passable("trivial")
struct mjtSection_(Copyable & Movable): # Enum
	alias mjSECT_CLOSED: Int = 0
	alias mjSECT_OPEN: Int = 1
	alias mjSECT_FIXED: Int = 2


alias mjtSection = mjtSection_

alias mjfItemEnable = fn(Int32,UnsafePointer[NoneType]) -> Int32
# predicate function: set enable/disable based on item category

@register_passable("trivial")
struct mjuiState_(Copyable & Movable):
	var nrect: Int32
	var rect: StaticTuple[mjrRect, 25]
	var userdata: OpaquePointer
	var type: Int32
	var left: Int32
	var right: Int32
	var middle: Int32
	var doubleclick: Int32
	var button: Int32
	var buttontime: Float64
	var x: Float64
	var y: Float64
	var dx: Float64
	var dy: Float64
	var sx: Float64
	var sy: Float64
	var control: Int32
	var shift: Int32
	var alt: Int32
	var key: Int32
	var keytime: Float64
	var mouserect: Int32
	var dragrect: Int32
	var dragbutton: Int32
	var dropcount: Int32
	var droppaths: UnsafePointer[UnsafePointer[Int8]] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.


alias mjuiState = mjuiState_
@register_passable("trivial")
struct mjuiThemeSpacing_(Copyable & Movable):
	var total: Int32
	var scroll: Int32
	var label: Int32
	var section: Int32
	var cornersect: Int32
	var cornersep: Int32
	var itemside: Int32
	var itemmid: Int32
	var itemver: Int32
	var texthor: Int32
	var textver: Int32
	var linescroll: Int32
	var samples: Int32


alias mjuiThemeSpacing = mjuiThemeSpacing_
@register_passable("trivial")
struct mjuiThemeColor_(Copyable & Movable):
	var master: StaticTuple[Float32, 3]
	var thumb: StaticTuple[Float32, 3]
	var secttitle: StaticTuple[Float32, 3]
	var secttitle2: StaticTuple[Float32, 3]
	var secttitleuncheck: StaticTuple[Float32, 3]
	var secttitleuncheck2: StaticTuple[Float32, 3]
	var secttitlecheck: StaticTuple[Float32, 3]
	var secttitlecheck2: StaticTuple[Float32, 3]
	var sectfont: StaticTuple[Float32, 3]
	var sectsymbol: StaticTuple[Float32, 3]
	var sectpane: StaticTuple[Float32, 3]
	var separator: StaticTuple[Float32, 3]
	var separator2: StaticTuple[Float32, 3]
	var shortcut: StaticTuple[Float32, 3]
	var fontactive: StaticTuple[Float32, 3]
	var fontinactive: StaticTuple[Float32, 3]
	var decorinactive: StaticTuple[Float32, 3]
	var decorinactive2: StaticTuple[Float32, 3]
	var button: StaticTuple[Float32, 3]
	var check: StaticTuple[Float32, 3]
	var radio: StaticTuple[Float32, 3]
	var select: StaticTuple[Float32, 3]
	var select2: StaticTuple[Float32, 3]
	var slider: StaticTuple[Float32, 3]
	var slider2: StaticTuple[Float32, 3]
	var edit: StaticTuple[Float32, 3]
	var edit2: StaticTuple[Float32, 3]
	var cursor: StaticTuple[Float32, 3]


alias mjuiThemeColor = mjuiThemeColor_
@register_passable("trivial")
struct mjuiItemSingle_(Copyable & Movable):
	var modifier: Int32
	var shortcut: Int32

@register_passable("trivial")
struct mjuiItemMulti_(Copyable & Movable):
	var nelem: Int32
	var name: StaticTuple[Int8, 35]

@register_passable("trivial")
struct mjuiItemSlider_(Copyable & Movable):
	var range: StaticTuple[Float64, 2]
	var divisions: Float64

@register_passable("trivial")
struct mjuiItemEdit_(Copyable & Movable):
	var nelem: Int32
	var range: StaticTuple[Float64, 7]

@register_passable("trivial")
struct _mjuiItem__Anonymous__line_259_3__line_264_3_(Copyable & Movable):
	var single: mjuiItemSingle_
	var multi: mjuiItemMulti_
	var slider: mjuiItemSlider_
	var edit: mjuiItemEdit_


@register_passable("trivial")
struct mjuiItem_(Copyable & Movable):
	var type: Int32
	var name: StaticTuple[Int8, 40]
	var state: Int32
	var pdata: OpaquePointer
	var sectionid: Int32
	var itemid: Int32
	var userid: Int32
	var implicit: _mjuiItem__Anonymous__line_259_3__line_264_3_
	var rect: mjrRect
	var skip: Int32


alias mjuiItem = mjuiItem_
@register_passable("trivial")
struct mjuiSection_(Copyable & Movable):
	var name: StaticTuple[Int8, 40]
	var state: Int32
	var modifier: Int32
	var shortcut: Int32
	var checkbox: Int32
	var nitem: Int32
	var item: StaticTuple[mjuiItem, 200]
	var rtitle: mjrRect
	var rcontent: mjrRect
	var lastclick: Int32


alias mjuiSection = mjuiSection_
@register_passable("trivial")
struct mjUI_(Copyable & Movable):
	var spacing: mjuiThemeSpacing
	var color: mjuiThemeColor
	var predicate: mjfItemEnable
	var userdata: OpaquePointer
	var rectid: Int32
	var auxid: Int32
	var radiocol: Int32
	var width: Int32
	var height: Int32
	var maxheight: Int32
	var scroll: Int32
	var mousesect: Int32
	var mouseitem: Int32
	var mousehelp: Int32
	var mouseclicks: Int32
	var mousesectcheck: Int32
	var editsect: Int32
	var edititem: Int32
	var editcursor: Int32
	var editscroll: Int32
	var edittext: StaticTuple[Int8, 300]
	var editchanged: UnsafePointer[mjuiItem]
	var nsect: Int32
	var sect: StaticTuple[mjuiSection, 10]


alias mjUI = mjUI_
@register_passable("trivial")
struct mjuiDef_(Copyable & Movable):
	var type: Int32
	var name: StaticTuple[Int8, 40]
	var state: Int32
	var pdata: OpaquePointer
	var other: StaticTuple[Int8, 300]
	var otherint: Int32


alias mjuiDef = mjuiDef_

alias mju_user_error = NoneType # extern # VisibilityAttrNode: Default

# user error and memory handlers


alias mju_user_warning = NoneType # extern # VisibilityAttrNode: Default


alias mju_user_malloc = NoneType # extern # VisibilityAttrNode: Default


alias mju_user_free = NoneType # extern # VisibilityAttrNode: Default


alias mjcb_passive = mjfGeneric # extern # VisibilityAttrNode: Default

# callbacks extending computation pipeline


alias mjcb_control = mjfGeneric # extern # VisibilityAttrNode: Default


alias mjcb_contactfilter = mjfConFilt # extern # VisibilityAttrNode: Default


alias mjcb_sensor = mjfSensor # extern # VisibilityAttrNode: Default


alias mjcb_time = mjfTime # extern # VisibilityAttrNode: Default


alias mjcb_act_dyn = mjfAct # extern # VisibilityAttrNode: Default


alias mjcb_act_gain = mjfAct # extern # VisibilityAttrNode: Default


alias mjcb_act_bias = mjfAct # extern # VisibilityAttrNode: Default


alias mjCOLLISIONFUNC = StaticTuple[mjfCollision, 9] # extern # VisibilityAttrNode: Default

# collision function table


alias mjDISABLESTRING = Int8 # extern # VisibilityAttrNode: Default

# string names


alias mjENABLESTRING = Int8 # extern # VisibilityAttrNode: Default


alias mjTIMERSTRING = Int8 # extern # VisibilityAttrNode: Default


alias mjLABELSTRING = Int8 # extern # VisibilityAttrNode: Default


alias mjFRAMESTRING = Int8 # extern # VisibilityAttrNode: Default


alias mjVISSTRING = Int8 # extern # VisibilityAttrNode: Default


alias mjRNDSTRING = Int8 # extern # VisibilityAttrNode: Default

alias mj_defaultVFS = fn(vfs: UnsafePointer[mjVFS]) -> NoneType
alias mj_addFileVFS = fn(vfs: UnsafePointer[mjVFS], read directory: UnsafePointer[Int8], read filename: UnsafePointer[Int8]) -> Int32
alias mj_addBufferVFS = fn(vfs: UnsafePointer[mjVFS], read name: UnsafePointer[Int8], read buffer: OpaquePointer, nbuffer: Int32) -> Int32
alias mj_deleteFileVFS = fn(vfs: UnsafePointer[mjVFS], read filename: UnsafePointer[Int8]) -> Int32
alias mj_deleteVFS = fn(vfs: UnsafePointer[mjVFS]) -> NoneType
alias mj_loadXML = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> UnsafePointer[mjModel]
alias mj_parseXML = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> UnsafePointer[mjSpec]
alias mj_parseXMLString = fn(read xml: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> UnsafePointer[mjSpec]
alias mj_compile = fn(s: UnsafePointer[mjSpec], read vfs: UnsafePointer[mjVFS]) -> UnsafePointer[mjModel]
alias mj_copyBack = fn(s: UnsafePointer[mjSpec], read m: UnsafePointer[mjModel]) -> Int32
alias mj_recompile = fn(s: UnsafePointer[mjSpec], read vfs: UnsafePointer[mjVFS], m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> Int32
alias mj_saveLastXML = fn(read filename: UnsafePointer[Int8], read m: UnsafePointer[mjModel], error: UnsafePointer[Int8], error_sz: Int32) -> Int32
alias mj_freeLastXML = fn() -> NoneType
alias mj_saveXMLString = fn(read s: UnsafePointer[mjSpec], xml: UnsafePointer[Int8], xml_sz: Int32, error: UnsafePointer[Int8], error_sz: Int32) -> Int32
alias mj_saveXML = fn(read s: UnsafePointer[mjSpec], read filename: UnsafePointer[Int8], error: UnsafePointer[Int8], error_sz: Int32) -> Int32
alias mj_step = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_step1 = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_step2 = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_forward = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_inverse = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_forwardSkip = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], skipstage: Int32, skipsensor: Int32) -> NoneType
alias mj_inverseSkip = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], skipstage: Int32, skipsensor: Int32) -> NoneType
alias mj_defaultLROpt = fn(opt: UnsafePointer[mjLROpt]) -> NoneType
alias mj_defaultSolRefImp = fn(solref: UnsafePointer[mjtNum], solimp: UnsafePointer[mjtNum]) -> NoneType
alias mj_defaultOption = fn(opt: UnsafePointer[mjOption]) -> NoneType
alias mj_defaultVisual = fn(vis: UnsafePointer[mjVisual]) -> NoneType
alias mj_copyModel = fn(dest: UnsafePointer[mjModel], read src: UnsafePointer[mjModel]) -> UnsafePointer[mjModel]
alias mj_saveModel = fn(read m: UnsafePointer[mjModel], read filename: UnsafePointer[Int8], buffer: OpaquePointer, buffer_sz: Int32) -> NoneType
alias mj_loadModel = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS]) -> UnsafePointer[mjModel]
alias mj_deleteModel = fn(m: UnsafePointer[mjModel]) -> NoneType
alias mj_sizeModel = fn(read m: UnsafePointer[mjModel]) -> Int32
alias mj_makeData = fn(read m: UnsafePointer[mjModel]) -> UnsafePointer[mjData]
alias mj_copyData = fn(dest: UnsafePointer[mjData], read m: UnsafePointer[mjModel], read src: UnsafePointer[mjData]) -> UnsafePointer[mjData]
alias mjv_copyData = fn(dest: UnsafePointer[mjData], read m: UnsafePointer[mjModel], read src: UnsafePointer[mjData]) -> UnsafePointer[mjData]
alias mj_resetData = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_resetDataDebug = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], debug_value: UInt8) -> NoneType
alias mj_resetDataKeyframe = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], key: Int32) -> NoneType
alias mj_markStack = fn(d: UnsafePointer[mjData]) -> NoneType
alias mj_freeStack = fn(d: UnsafePointer[mjData]) -> NoneType
alias mj_stackAllocByte = fn(d: UnsafePointer[mjData], bytes: size_t, alignment: size_t) -> OpaquePointer
alias mj_stackAllocNum = fn(d: UnsafePointer[mjData], size: size_t) -> UnsafePointer[mjtNum]
alias mj_stackAllocInt = fn(d: UnsafePointer[mjData], size: size_t) -> UnsafePointer[Int32]
alias mj_deleteData = fn(d: UnsafePointer[mjData]) -> NoneType
alias mj_resetCallbacks = fn() -> NoneType
alias mj_setConst = fn(m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_setLengthRange = fn(m: UnsafePointer[mjModel], d: UnsafePointer[mjData], index: Int32, read opt: UnsafePointer[mjLROpt], error: UnsafePointer[Int8], error_sz: Int32) -> Int32
alias mj_makeSpec = fn() -> UnsafePointer[mjSpec]
alias mj_copySpec = fn(read s: UnsafePointer[mjSpec]) -> UnsafePointer[mjSpec]
alias mj_deleteSpec = fn(s: UnsafePointer[mjSpec]) -> NoneType
alias mjs_activatePlugin = fn(s: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> Int32
alias mjs_setDeepCopy = fn(s: UnsafePointer[mjSpec], deepcopy: Int32) -> Int32
alias mj_printFormattedModel = fn(read m: UnsafePointer[mjModel], read filename: UnsafePointer[Int8], read float_format: UnsafePointer[Int8]) -> NoneType
alias mj_printModel = fn(read m: UnsafePointer[mjModel], read filename: UnsafePointer[Int8]) -> NoneType
alias mj_printFormattedData = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read filename: UnsafePointer[Int8], read float_format: UnsafePointer[Int8]) -> NoneType
alias mj_printData = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read filename: UnsafePointer[Int8]) -> NoneType
alias mju_printMat = fn(read mat: UnsafePointer[mjtNum], nr: Int32, nc: Int32) -> NoneType
alias mju_printMatSparse = fn(read mat: UnsafePointer[mjtNum], nr: Int32, read rownnz: UnsafePointer[Int32], read rowadr: UnsafePointer[Int32], read colind: UnsafePointer[Int32]) -> NoneType
alias mj_printSchema = fn(read filename: UnsafePointer[Int8], buffer: UnsafePointer[Int8], buffer_sz: Int32, flg_html: Int32, flg_pad: Int32) -> Int32
alias mj_fwdPosition = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_fwdVelocity = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_fwdActuation = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_fwdAcceleration = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_fwdConstraint = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_Euler = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_RungeKutta = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], N: Int32) -> NoneType
alias mj_implicit = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_invPosition = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_invVelocity = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_invConstraint = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_compareFwdInv = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_sensorPos = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_sensorVel = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_sensorAcc = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_energyPos = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_energyVel = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_checkPos = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_checkVel = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_checkAcc = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_kinematics = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_comPos = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_camlight = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_flex = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_tendon = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_transmission = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_crb = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_makeM = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_factorM = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_solveM = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], x: UnsafePointer[mjtNum], read y: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mj_solveM2 = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], x: UnsafePointer[mjtNum], read y: UnsafePointer[mjtNum], read sqrtInvD: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mj_comVel = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_passive = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_subtreeVel = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_rne = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], flg_acc: Int32, result: UnsafePointer[mjtNum]) -> NoneType
alias mj_rnePostConstraint = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_collision = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_makeConstraint = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_island = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_projectConstraint = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_referenceConstraint = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_constraintUpdate = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read jar: UnsafePointer[mjtNum], cost: UnsafePointer[mjtNum], flg_coneHessian: Int32) -> NoneType
alias mj_stateSize = fn(read m: UnsafePointer[mjModel], spec: UInt32) -> Int32
alias mj_getState = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], state: UnsafePointer[mjtNum], spec: UInt32) -> NoneType
alias mj_setState = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read state: UnsafePointer[mjtNum], spec: UInt32) -> NoneType
alias mj_setKeyframe = fn(m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], k: Int32) -> NoneType
alias mj_addContact = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read con: UnsafePointer[mjContact]) -> Int32
alias mj_isPyramidal = fn(read m: UnsafePointer[mjModel]) -> Int32
alias mj_isSparse = fn(read m: UnsafePointer[mjModel]) -> Int32
alias mj_isDual = fn(read m: UnsafePointer[mjModel]) -> Int32
alias mj_mulJacVec = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mj_mulJacTVec = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mj_jac = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], read point: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_jacBody = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_jacBodyCom = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_jacSubtreeCom = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_jacGeom = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], geom: Int32) -> NoneType
alias mj_jacSite = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], site: Int32) -> NoneType
alias mj_jacPointAxis = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], jacPoint: UnsafePointer[mjtNum], jacAxis: UnsafePointer[mjtNum], read point: UnsafePointer[mjtNum], read axis: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_jacDot = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], read point: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_angmomMat = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], mat: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_name2id = fn(read m: UnsafePointer[mjModel], type_: Int32, read name: UnsafePointer[Int8]) -> Int32
alias mj_id2name = fn(read m: UnsafePointer[mjModel], type_: Int32, id_: Int32) -> UnsafePointer[Int8]
alias mj_fullM = fn(read m: UnsafePointer[mjModel], dst: UnsafePointer[mjtNum], read M: UnsafePointer[mjtNum]) -> NoneType
alias mj_mulM = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mj_mulM2 = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mj_addM = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], dst: UnsafePointer[mjtNum], rownnz: UnsafePointer[Int32], rowadr: UnsafePointer[Int32], colind: UnsafePointer[Int32]) -> NoneType
alias mj_applyFT = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read force: UnsafePointer[mjtNum], read torque: UnsafePointer[mjtNum], read point: UnsafePointer[mjtNum], body: Int32, qfrc_target: UnsafePointer[mjtNum]) -> NoneType
alias mj_objectVelocity = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], objtype: Int32, objid: Int32, res: UnsafePointer[mjtNum], flg_local: Int32) -> NoneType
alias mj_objectAcceleration = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], objtype: Int32, objid: Int32, res: UnsafePointer[mjtNum], flg_local: Int32) -> NoneType
alias mj_geomDistance = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], geom1: Int32, geom2: Int32, distmax: mjtNum, fromto: UnsafePointer[mjtNum]) -> mjtNum
alias mj_contactForce = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], id_: Int32, result: UnsafePointer[mjtNum]) -> NoneType
alias mj_differentiatePos = fn(read m: UnsafePointer[mjModel], qvel: UnsafePointer[mjtNum], dt: mjtNum, read qpos1: UnsafePointer[mjtNum], read qpos2: UnsafePointer[mjtNum]) -> NoneType
alias mj_integratePos = fn(read m: UnsafePointer[mjModel], qpos: UnsafePointer[mjtNum], read qvel: UnsafePointer[mjtNum], dt: mjtNum) -> NoneType
alias mj_normalizeQuat = fn(read m: UnsafePointer[mjModel], qpos: UnsafePointer[mjtNum]) -> NoneType
alias mj_local2Global = fn(d: UnsafePointer[mjData], xpos: UnsafePointer[mjtNum], xmat: UnsafePointer[mjtNum], read pos: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum], body: Int32, sameframe: mjtByte) -> NoneType
alias mj_getTotalmass = fn(read m: UnsafePointer[mjModel]) -> mjtNum
alias mj_setTotalmass = fn(m: UnsafePointer[mjModel], newmass: mjtNum) -> NoneType
alias mj_getPluginConfig = fn(read m: UnsafePointer[mjModel], plugin_id: Int32, read attrib: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias mj_loadPluginLibrary = fn(read path: UnsafePointer[Int8]) -> NoneType
alias mj_loadAllPluginLibraries = fn(read directory: UnsafePointer[Int8], callback: mjfPluginLibraryLoadCallback) -> NoneType
alias mj_version = fn() -> Int32
alias mj_versionString = fn() -> UnsafePointer[Int8]
alias mj_multiRay = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read pnt: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], read geomgroup: UnsafePointer[mjtByte], flg_static: mjtByte, bodyexclude: Int32, geomid: UnsafePointer[Int32], dist: UnsafePointer[mjtNum], nray: Int32, cutoff: mjtNum) -> NoneType
alias mj_ray = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read pnt: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], read geomgroup: UnsafePointer[mjtByte], flg_static: mjtByte, bodyexclude: Int32, geomid: UnsafePointer[Int32]) -> mjtNum
alias mj_rayHfield = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], geomid: Int32, read pnt: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> mjtNum
alias mj_rayMesh = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], geomid: Int32, read pnt: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> mjtNum
alias mju_rayGeom = fn(read pos: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read size: UnsafePointer[mjtNum], read pnt: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], geomtype: Int32) -> mjtNum
alias mju_rayFlex = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], flex_layer: Int32, flg_vert: mjtByte, flg_edge: mjtByte, flg_face: mjtByte, flg_skin: mjtByte, flexid: Int32, read pnt: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], vertid: UnsafePointer[Int32]) -> mjtNum
alias mju_raySkin = fn(nface: Int32, nvert: Int32, read face: UnsafePointer[Int32], read vert: UnsafePointer[Float32], read pnt: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], vertid: UnsafePointer[Int32]) -> mjtNum
alias mjv_defaultCamera = fn(cam: UnsafePointer[mjvCamera]) -> NoneType
alias mjv_defaultFreeCamera = fn(read m: UnsafePointer[mjModel], cam: UnsafePointer[mjvCamera]) -> NoneType
alias mjv_defaultPerturb = fn(pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_room2model = fn(modelpos: UnsafePointer[mjtNum], modelquat: UnsafePointer[mjtNum], read roompos: UnsafePointer[mjtNum], read roomquat: UnsafePointer[mjtNum], read scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_model2room = fn(roompos: UnsafePointer[mjtNum], roomquat: UnsafePointer[mjtNum], read modelpos: UnsafePointer[mjtNum], read modelquat: UnsafePointer[mjtNum], read scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_cameraInModel = fn(headpos: UnsafePointer[mjtNum], forward: UnsafePointer[mjtNum], up: UnsafePointer[mjtNum], read scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_cameraInRoom = fn(headpos: UnsafePointer[mjtNum], forward: UnsafePointer[mjtNum], up: UnsafePointer[mjtNum], read scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_frustumHeight = fn(read scn: UnsafePointer[mjvScene]) -> mjtNum
alias mjv_alignToCamera = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], read forward: UnsafePointer[mjtNum]) -> NoneType
alias mjv_moveCamera = fn(read m: UnsafePointer[mjModel], action: Int32, reldx: mjtNum, reldy: mjtNum, read scn: UnsafePointer[mjvScene], cam: UnsafePointer[mjvCamera]) -> NoneType
alias mjv_movePerturb = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], action: Int32, reldx: mjtNum, reldy: mjtNum, read scn: UnsafePointer[mjvScene], pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_moveModel = fn(read m: UnsafePointer[mjModel], action: Int32, reldx: mjtNum, reldy: mjtNum, read roomup: UnsafePointer[mjtNum], scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_initPerturb = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read scn: UnsafePointer[mjvScene], pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_applyPerturbPose = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read pert: UnsafePointer[mjvPerturb], flg_paused: Int32) -> NoneType
alias mjv_applyPerturbForce = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_averageCamera = fn(read cam1: UnsafePointer[mjvGLCamera], read cam2: UnsafePointer[mjvGLCamera]) -> mjvGLCamera
alias mjv_select = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read vopt: UnsafePointer[mjvOption], aspectratio: mjtNum, relx: mjtNum, rely: mjtNum, read scn: UnsafePointer[mjvScene], selpnt: UnsafePointer[mjtNum], geomid: UnsafePointer[Int32], flexid: UnsafePointer[Int32], skinid: UnsafePointer[Int32]) -> Int32
alias mjv_defaultOption = fn(opt: UnsafePointer[mjvOption]) -> NoneType
alias mjv_defaultFigure = fn(fig: UnsafePointer[mjvFigure]) -> NoneType
alias mjv_initGeom = fn(geom: UnsafePointer[mjvGeom], type_: Int32, read size: UnsafePointer[mjtNum], read pos: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read rgba: UnsafePointer[Float32]) -> NoneType
alias mjv_connector = fn(geom: UnsafePointer[mjvGeom], type_: Int32, width: mjtNum, read from_: UnsafePointer[mjtNum], read to: UnsafePointer[mjtNum]) -> NoneType
alias mjv_defaultScene = fn(scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_makeScene = fn(read m: UnsafePointer[mjModel], scn: UnsafePointer[mjvScene], maxgeom: Int32) -> NoneType
alias mjv_freeScene = fn(scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_updateScene = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read opt: UnsafePointer[mjvOption], read pert: UnsafePointer[mjvPerturb], cam: UnsafePointer[mjvCamera], catmask: Int32, scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_copyModel = fn(dest: UnsafePointer[mjModel], read src: UnsafePointer[mjModel]) -> NoneType
alias mjv_addGeoms = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read opt: UnsafePointer[mjvOption], read pert: UnsafePointer[mjvPerturb], catmask: Int32, scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_makeLights = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_updateCamera = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], cam: UnsafePointer[mjvCamera], scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_updateSkin = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], scn: UnsafePointer[mjvScene]) -> NoneType
alias mjr_defaultContext = fn(con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_makeContext = fn(read m: UnsafePointer[mjModel], con: UnsafePointer[mjrContext], fontscale: Int32) -> NoneType
alias mjr_changeFont = fn(fontscale: Int32, con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_addAux = fn(index: Int32, width: Int32, height: Int32, samples: Int32, con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_freeContext = fn(con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_resizeOffscreen = fn(width: Int32, height: Int32, con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_uploadTexture = fn(read m: UnsafePointer[mjModel], read con: UnsafePointer[mjrContext], texid: Int32) -> NoneType
alias mjr_uploadMesh = fn(read m: UnsafePointer[mjModel], read con: UnsafePointer[mjrContext], meshid: Int32) -> NoneType
alias mjr_uploadHField = fn(read m: UnsafePointer[mjModel], read con: UnsafePointer[mjrContext], hfieldid: Int32) -> NoneType
alias mjr_restoreBuffer = fn(read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_setBuffer = fn(framebuffer: Int32, con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_readPixels = fn(rgb: UnsafePointer[UInt8], depth: UnsafePointer[Float32], viewport: mjrRect, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_drawPixels = fn(read rgb: UnsafePointer[UInt8], read depth: UnsafePointer[Float32], viewport: mjrRect, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_blitBuffer = fn(src: mjrRect, dst: mjrRect, flg_color: Int32, flg_depth: Int32, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_setAux = fn(index: Int32, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_blitAux = fn(index: Int32, src: mjrRect, left: Int32, bottom: Int32, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_text = fn(font: Int32, read txt: UnsafePointer[Int8], read con: UnsafePointer[mjrContext], x: Float32, y: Float32, r: Float32, g: Float32, b: Float32) -> NoneType
alias mjr_overlay = fn(font: Int32, gridpos: Int32, viewport: mjrRect, read overlay: UnsafePointer[Int8], read overlay2: UnsafePointer[Int8], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_maxViewport = fn(read con: UnsafePointer[mjrContext]) -> mjrRect
alias mjr_rectangle = fn(viewport: mjrRect, r: Float32, g: Float32, b: Float32, a: Float32) -> NoneType
alias mjr_label = fn(viewport: mjrRect, font: Int32, read txt: UnsafePointer[Int8], r: Float32, g: Float32, b: Float32, a: Float32, rt: Float32, gt: Float32, bt: Float32, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_figure = fn(viewport: mjrRect, fig: UnsafePointer[mjvFigure], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_render = fn(viewport: mjrRect, scn: UnsafePointer[mjvScene], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_finish = fn() -> NoneType
alias mjr_getError = fn() -> Int32
alias mjr_findRect = fn(x: Int32, y: Int32, nrect: Int32, read rect: UnsafePointer[mjrRect]) -> Int32
alias mjui_themeSpacing = fn(ind: Int32) -> mjuiThemeSpacing
alias mjui_themeColor = fn(ind: Int32) -> mjuiThemeColor
alias mjui_add = fn(ui: UnsafePointer[mjUI], read def_: UnsafePointer[mjuiDef]) -> NoneType
alias mjui_addToSection = fn(ui: UnsafePointer[mjUI], sect: Int32, read def_: UnsafePointer[mjuiDef]) -> NoneType
alias mjui_resize = fn(ui: UnsafePointer[mjUI], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjui_update = fn(section: Int32, item: Int32, read ui: UnsafePointer[mjUI], read state: UnsafePointer[mjuiState], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjui_event = fn(ui: UnsafePointer[mjUI], state: UnsafePointer[mjuiState], read con: UnsafePointer[mjrContext]) -> UnsafePointer[mjuiItem]
alias mjui_render = fn(ui: UnsafePointer[mjUI], read state: UnsafePointer[mjuiState], read con: UnsafePointer[mjrContext]) -> NoneType
alias mju_error = fn(read msg: UnsafePointer[Int8]) -> NoneType
alias mju_error_i = fn(read msg: UnsafePointer[Int8], i: Int32) -> NoneType
alias mju_error_s = fn(read msg: UnsafePointer[Int8], read text: UnsafePointer[Int8]) -> NoneType
alias mju_warning = fn(read msg: UnsafePointer[Int8]) -> NoneType
alias mju_warning_i = fn(read msg: UnsafePointer[Int8], i: Int32) -> NoneType
alias mju_warning_s = fn(read msg: UnsafePointer[Int8], read text: UnsafePointer[Int8]) -> NoneType
alias mju_clearHandlers = fn() -> NoneType
alias mju_malloc = fn(size: size_t) -> OpaquePointer
alias mju_free = fn(ptr: OpaquePointer) -> NoneType
alias mj_warning = fn(d: UnsafePointer[mjData], warning: Int32, info: Int32) -> NoneType
alias mju_writeLog = fn(read type_: UnsafePointer[Int8], read msg: UnsafePointer[Int8]) -> NoneType
alias mjs_getError = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[Int8]
alias mjs_isWarning = fn(s: UnsafePointer[mjSpec]) -> Int32
alias mju_zero3 = fn(res: UnsafePointer[mjtNum]) -> NoneType
alias mju_copy3 = fn(res: UnsafePointer[mjtNum], read data: UnsafePointer[mjtNum]) -> NoneType
alias mju_scl3 = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], scl: mjtNum) -> NoneType
alias mju_add3 = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum]) -> NoneType
alias mju_sub3 = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum]) -> NoneType
alias mju_addTo3 = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mju_subFrom3 = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mju_addToScl3 = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], scl: mjtNum) -> NoneType
alias mju_addScl3 = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], scl: mjtNum) -> NoneType
alias mju_normalize3 = fn(vec: UnsafePointer[mjtNum]) -> mjtNum
alias mju_norm3 = fn(read vec: UnsafePointer[mjtNum]) -> mjtNum
alias mju_dot3 = fn(read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum]) -> mjtNum
alias mju_dist3 = fn(read pos1: UnsafePointer[mjtNum], read pos2: UnsafePointer[mjtNum]) -> mjtNum
alias mju_mulMatVec3 = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mju_mulMatTVec3 = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mju_cross = fn(res: UnsafePointer[mjtNum], read a: UnsafePointer[mjtNum], read b: UnsafePointer[mjtNum]) -> NoneType
alias mju_zero4 = fn(res: UnsafePointer[mjtNum]) -> NoneType
alias mju_unit4 = fn(res: UnsafePointer[mjtNum]) -> NoneType
alias mju_copy4 = fn(res: UnsafePointer[mjtNum], read data: UnsafePointer[mjtNum]) -> NoneType
alias mju_normalize4 = fn(vec: UnsafePointer[mjtNum]) -> mjtNum
alias mju_zero = fn(res: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_fill = fn(res: UnsafePointer[mjtNum], val: mjtNum, n: Int32) -> NoneType
alias mju_copy = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_sum = fn(read vec: UnsafePointer[mjtNum], n: Int32) -> mjtNum
alias mju_L1 = fn(read vec: UnsafePointer[mjtNum], n: Int32) -> mjtNum
alias mju_scl = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], scl: mjtNum, n: Int32) -> NoneType
alias mju_add = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_sub = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_addTo = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_subFrom = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_addToScl = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], scl: mjtNum, n: Int32) -> NoneType
alias mju_addScl = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], scl: mjtNum, n: Int32) -> NoneType
alias mju_normalize = fn(res: UnsafePointer[mjtNum], n: Int32) -> mjtNum
alias mju_norm = fn(read res: UnsafePointer[mjtNum], n: Int32) -> mjtNum
alias mju_dot = fn(read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], n: Int32) -> mjtNum
alias mju_mulMatVec = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], nr: Int32, nc: Int32) -> NoneType
alias mju_mulMatTVec = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], nr: Int32, nc: Int32) -> NoneType
alias mju_mulVecMatVec = fn(read vec1: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], n: Int32) -> mjtNum
alias mju_transpose = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], nr: Int32, nc: Int32) -> NoneType
alias mju_symmetrize = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_eye = fn(mat: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_mulMatMat = fn(res: UnsafePointer[mjtNum], read mat1: UnsafePointer[mjtNum], read mat2: UnsafePointer[mjtNum], r1: Int32, c1: Int32, c2: Int32) -> NoneType
alias mju_mulMatMatT = fn(res: UnsafePointer[mjtNum], read mat1: UnsafePointer[mjtNum], read mat2: UnsafePointer[mjtNum], r1: Int32, c1: Int32, r2: Int32) -> NoneType
alias mju_mulMatTMat = fn(res: UnsafePointer[mjtNum], read mat1: UnsafePointer[mjtNum], read mat2: UnsafePointer[mjtNum], r1: Int32, c1: Int32, c2: Int32) -> NoneType
alias mju_sqrMatTD = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read diag: UnsafePointer[mjtNum], nr: Int32, nc: Int32) -> NoneType
alias mju_transformSpatial = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], flg_force: Int32, read newpos: UnsafePointer[mjtNum], read oldpos: UnsafePointer[mjtNum], read rotnew2old: UnsafePointer[mjtNum]) -> NoneType
alias mju_dense2sparse = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], nr: Int32, nc: Int32, rownnz: UnsafePointer[Int32], rowadr: UnsafePointer[Int32], colind: UnsafePointer[Int32], nnz: Int32) -> Int32
alias mju_sparse2dense = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], nr: Int32, nc: Int32, read rownnz: UnsafePointer[Int32], read rowadr: UnsafePointer[Int32], read colind: UnsafePointer[Int32]) -> NoneType
alias mju_rotVecQuat = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum]) -> NoneType
alias mju_negQuat = fn(res: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum]) -> NoneType
alias mju_mulQuat = fn(res: UnsafePointer[mjtNum], read quat1: UnsafePointer[mjtNum], read quat2: UnsafePointer[mjtNum]) -> NoneType
alias mju_mulQuatAxis = fn(res: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum], read axis: UnsafePointer[mjtNum]) -> NoneType
alias mju_axisAngle2Quat = fn(res: UnsafePointer[mjtNum], read axis: UnsafePointer[mjtNum], angle: mjtNum) -> NoneType
alias mju_quat2Vel = fn(res: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum], dt: mjtNum) -> NoneType
alias mju_subQuat = fn(res: UnsafePointer[mjtNum], read qa: UnsafePointer[mjtNum], read qb: UnsafePointer[mjtNum]) -> NoneType
alias mju_quat2Mat = fn(res: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum]) -> NoneType
alias mju_mat2Quat = fn(quat: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum]) -> NoneType
alias mju_derivQuat = fn(res: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum], read vel: UnsafePointer[mjtNum]) -> NoneType
alias mju_quatIntegrate = fn(quat: UnsafePointer[mjtNum], read vel: UnsafePointer[mjtNum], scale: mjtNum) -> NoneType
alias mju_quatZ2Vec = fn(quat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mju_mat2Rot = fn(quat: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum]) -> Int32
alias mju_euler2Quat = fn(quat: UnsafePointer[mjtNum], read euler: UnsafePointer[mjtNum], read seq: UnsafePointer[Int8]) -> NoneType
alias mju_mulPose = fn(posres: UnsafePointer[mjtNum], quatres: UnsafePointer[mjtNum], read pos1: UnsafePointer[mjtNum], read quat1: UnsafePointer[mjtNum], read pos2: UnsafePointer[mjtNum], read quat2: UnsafePointer[mjtNum]) -> NoneType
alias mju_negPose = fn(posres: UnsafePointer[mjtNum], quatres: UnsafePointer[mjtNum], read pos: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum]) -> NoneType
alias mju_trnVecPose = fn(res: UnsafePointer[mjtNum], read pos: UnsafePointer[mjtNum], read quat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mju_cholFactor = fn(mat: UnsafePointer[mjtNum], n: Int32, mindiag: mjtNum) -> Int32
alias mju_cholSolve = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_cholUpdate = fn(mat: UnsafePointer[mjtNum], x: UnsafePointer[mjtNum], n: Int32, flg_plus: Int32) -> Int32
alias mju_cholFactorBand = fn(mat: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32, diagadd: mjtNum, diagmul: mjtNum) -> mjtNum
alias mju_cholSolveBand = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32) -> NoneType
alias mju_band2Dense = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32, flg_sym: mjtByte) -> NoneType
alias mju_dense2Band = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32) -> NoneType
alias mju_bandMulMatVec = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32, nvec: Int32, flg_sym: mjtByte) -> NoneType
alias mju_bandDiag = fn(i: Int32, ntotal: Int32, nband: Int32, ndense: Int32) -> Int32
alias mju_eig3 = fn(eigval: UnsafePointer[mjtNum], eigvec: UnsafePointer[mjtNum], quat: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum]) -> Int32
alias mju_boxQP = fn(res: UnsafePointer[mjtNum], R: UnsafePointer[mjtNum], index: UnsafePointer[Int32], read H: UnsafePointer[mjtNum], read g: UnsafePointer[mjtNum], n: Int32, read lower: UnsafePointer[mjtNum], read upper: UnsafePointer[mjtNum]) -> Int32
alias mju_boxQPmalloc = fn(res: UnsafePointer[UnsafePointer[mjtNum]], R: UnsafePointer[UnsafePointer[mjtNum]], index: UnsafePointer[UnsafePointer[Int32]], H: UnsafePointer[UnsafePointer[mjtNum]], g: UnsafePointer[UnsafePointer[mjtNum]], n: Int32, lower: UnsafePointer[UnsafePointer[mjtNum]], upper: UnsafePointer[UnsafePointer[mjtNum]]) -> NoneType
alias mju_muscleGain = fn(len_: mjtNum, vel: mjtNum, read lengthrange: UnsafePointer[mjtNum], acc0: mjtNum, read prm: UnsafePointer[mjtNum]) -> mjtNum
alias mju_muscleBias = fn(len_: mjtNum, read lengthrange: UnsafePointer[mjtNum], acc0: mjtNum, read prm: UnsafePointer[mjtNum]) -> mjtNum
alias mju_muscleDynamics = fn(ctrl: mjtNum, act: mjtNum, read prm: UnsafePointer[mjtNum]) -> mjtNum
alias mju_encodePyramid = fn(pyramid: UnsafePointer[mjtNum], read force: UnsafePointer[mjtNum], read mu: UnsafePointer[mjtNum], dim: Int32) -> NoneType
alias mju_decodePyramid = fn(force: UnsafePointer[mjtNum], read pyramid: UnsafePointer[mjtNum], read mu: UnsafePointer[mjtNum], dim: Int32) -> NoneType
alias mju_springDamper = fn(pos0: mjtNum, vel0: mjtNum, Kp: mjtNum, Kv: mjtNum, dt: mjtNum) -> mjtNum
alias mju_min = fn(a: mjtNum, b: mjtNum) -> mjtNum
alias mju_max = fn(a: mjtNum, b: mjtNum) -> mjtNum
alias mju_clip = fn(x: mjtNum, min: mjtNum, max: mjtNum) -> mjtNum
alias mju_sign = fn(x: mjtNum) -> mjtNum
alias mju_round = fn(x: mjtNum) -> Int32
alias mju_type2Str = fn(type_: Int32) -> UnsafePointer[Int8]
alias mju_str2Type = fn(read str: UnsafePointer[Int8]) -> Int32
alias mju_writeNumBytes = fn(nbytes: size_t) -> UnsafePointer[Int8]
alias mju_warningText = fn(warning: Int32, info: size_t) -> UnsafePointer[Int8]
alias mju_isBad = fn(x: mjtNum) -> Int32
alias mju_isZero = fn(vec: UnsafePointer[mjtNum], n: Int32) -> Int32
alias mju_standardNormal = fn(num2: UnsafePointer[mjtNum]) -> mjtNum
alias mju_f2n = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[Float32], n: Int32) -> NoneType
alias mju_n2f = fn(res: UnsafePointer[Float32], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_d2n = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[Float64], n: Int32) -> NoneType
alias mju_n2d = fn(res: UnsafePointer[Float64], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_insertionSort = fn(list: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_insertionSortInt = fn(list: UnsafePointer[Int32], n: Int32) -> NoneType
alias mju_Halton = fn(index: Int32, base: Int32) -> mjtNum
alias mju_strncpy = fn(dst: UnsafePointer[Int8], read src: UnsafePointer[Int8], n: Int32) -> UnsafePointer[Int8]
alias mju_sigmoid = fn(x: mjtNum) -> mjtNum
alias mjc_getSDF = fn(read m: UnsafePointer[mjModel], id_: Int32) -> UnsafePointer[mjpPlugin]
alias mjc_distance = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read s: UnsafePointer[mjSDF], read x: UnsafePointer[mjtNum]) -> mjtNum
alias mjc_gradient = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read s: UnsafePointer[mjSDF], gradient: UnsafePointer[mjtNum], read x: UnsafePointer[mjtNum]) -> NoneType
alias mjd_transitionFD = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], eps: mjtNum, flg_centered: mjtByte, A: UnsafePointer[mjtNum], B: UnsafePointer[mjtNum], C: UnsafePointer[mjtNum], D: UnsafePointer[mjtNum]) -> NoneType
alias mjd_inverseFD = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], eps: mjtNum, flg_actuation: mjtByte, DfDq: UnsafePointer[mjtNum], DfDv: UnsafePointer[mjtNum], DfDa: UnsafePointer[mjtNum], DsDq: UnsafePointer[mjtNum], DsDv: UnsafePointer[mjtNum], DsDa: UnsafePointer[mjtNum], DmDq: UnsafePointer[mjtNum]) -> NoneType
alias mjd_subQuat = fn(read qa: UnsafePointer[mjtNum], read qb: UnsafePointer[mjtNum], Da: UnsafePointer[mjtNum], Db: UnsafePointer[mjtNum]) -> NoneType
alias mjd_quatIntegrate = fn(read vel: UnsafePointer[mjtNum], scale: mjtNum, Dquat: UnsafePointer[mjtNum], Dvel: UnsafePointer[mjtNum], Dscale: UnsafePointer[mjtNum]) -> NoneType
alias mjp_defaultPlugin = fn(plugin: UnsafePointer[mjpPlugin]) -> NoneType
alias mjp_registerPlugin = fn(read plugin: UnsafePointer[mjpPlugin]) -> Int32
alias mjp_pluginCount = fn() -> Int32
alias mjp_getPlugin = fn(read name: UnsafePointer[Int8], slot: UnsafePointer[Int32]) -> UnsafePointer[mjpPlugin]
alias mjp_getPluginAtSlot = fn(slot: Int32) -> UnsafePointer[mjpPlugin]
alias mjp_defaultResourceProvider = fn(provider: UnsafePointer[mjpResourceProvider]) -> NoneType
alias mjp_registerResourceProvider = fn(read provider: UnsafePointer[mjpResourceProvider]) -> Int32
alias mjp_resourceProviderCount = fn() -> Int32
alias mjp_getResourceProvider = fn(read resource_name: UnsafePointer[Int8]) -> UnsafePointer[mjpResourceProvider]
alias mjp_getResourceProviderAtSlot = fn(slot: Int32) -> UnsafePointer[mjpResourceProvider]
alias mju_threadPoolCreate = fn(number_of_threads: size_t) -> UnsafePointer[mjThreadPool]
alias mju_bindThreadPool = fn(d: UnsafePointer[mjData], thread_pool: OpaquePointer) -> NoneType
alias mju_threadPoolEnqueue = fn(thread_pool: UnsafePointer[mjThreadPool], task: UnsafePointer[mjTask]) -> NoneType
alias mju_threadPoolDestroy = fn(thread_pool: UnsafePointer[mjThreadPool]) -> NoneType
alias mju_defaultTask = fn(task: UnsafePointer[mjTask]) -> NoneType
alias mju_taskJoin = fn(task: UnsafePointer[mjTask]) -> NoneType
alias mjs_attach = fn(parent: UnsafePointer[mjsElement], read child: UnsafePointer[mjsElement], read prefix: UnsafePointer[Int8], read suffix: UnsafePointer[Int8]) -> UnsafePointer[mjsElement]
alias mjs_addBody = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsBody]
alias mjs_addSite = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsSite]
alias mjs_addJoint = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsJoint]
alias mjs_addFreeJoint = fn(body: UnsafePointer[mjsBody]) -> UnsafePointer[mjsJoint]
alias mjs_addGeom = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsGeom]
alias mjs_addCamera = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsCamera]
alias mjs_addLight = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsLight]
alias mjs_addFrame = fn(body: UnsafePointer[mjsBody], parentframe: UnsafePointer[mjsFrame]) -> UnsafePointer[mjsFrame]
alias mjs_delete = fn(spec: UnsafePointer[mjSpec], element: UnsafePointer[mjsElement]) -> Int32
alias mjs_addActuator = fn(s: UnsafePointer[mjSpec], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsActuator]
alias mjs_addSensor = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsSensor]
alias mjs_addFlex = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsFlex]
alias mjs_addPair = fn(s: UnsafePointer[mjSpec], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsPair]
alias mjs_addExclude = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsExclude]
alias mjs_addEquality = fn(s: UnsafePointer[mjSpec], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsEquality]
alias mjs_addTendon = fn(s: UnsafePointer[mjSpec], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsTendon]
alias mjs_wrapSite = fn(tendon: UnsafePointer[mjsTendon], read name: UnsafePointer[Int8]) -> UnsafePointer[mjsWrap]
alias mjs_wrapGeom = fn(tendon: UnsafePointer[mjsTendon], read name: UnsafePointer[Int8], read sidesite: UnsafePointer[Int8]) -> UnsafePointer[mjsWrap]
alias mjs_wrapJoint = fn(tendon: UnsafePointer[mjsTendon], read name: UnsafePointer[Int8], coef: Float64) -> UnsafePointer[mjsWrap]
alias mjs_wrapPulley = fn(tendon: UnsafePointer[mjsTendon], divisor: Float64) -> UnsafePointer[mjsWrap]
alias mjs_addNumeric = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsNumeric]
alias mjs_addText = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsText]
alias mjs_addTuple = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsTuple]
alias mjs_addKey = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsKey]
alias mjs_addPlugin = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsPlugin]
alias mjs_addDefault = fn(s: UnsafePointer[mjSpec], read classname: UnsafePointer[Int8], read parent: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsDefault]
alias mjs_setToMotor = fn(actuator: UnsafePointer[mjsActuator]) -> UnsafePointer[Int8]
alias mjs_setToPosition = fn(actuator: UnsafePointer[mjsActuator], kp: Float64, kv: UnsafePointer[Float64], dampratio: UnsafePointer[Float64], timeconst: UnsafePointer[Float64], inheritrange: Float64) -> UnsafePointer[Int8]
alias mjs_setToIntVelocity = fn(actuator: UnsafePointer[mjsActuator], kp: Float64, kv: UnsafePointer[Float64], dampratio: UnsafePointer[Float64], timeconst: UnsafePointer[Float64], inheritrange: Float64) -> UnsafePointer[Int8]
alias mjs_setToVelocity = fn(actuator: UnsafePointer[mjsActuator], kv: Float64) -> UnsafePointer[Int8]
alias mjs_setToDamper = fn(actuator: UnsafePointer[mjsActuator], kv: Float64) -> UnsafePointer[Int8]
alias mjs_setToCylinder = fn(actuator: UnsafePointer[mjsActuator], timeconst: Float64, bias: Float64, area: Float64, diameter: Float64) -> UnsafePointer[Int8]
alias mjs_setToMuscle = fn(actuator: UnsafePointer[mjsActuator], timeconst: UnsafePointer[Float64], tausmooth: Float64, range: UnsafePointer[Float64], force: Float64, scale: Float64, lmin: Float64, lmax: Float64, vmax: Float64, fpmax: Float64, fvmax: Float64) -> UnsafePointer[Int8]
alias mjs_setToAdhesion = fn(actuator: UnsafePointer[mjsActuator], gain: Float64) -> UnsafePointer[Int8]
alias mjs_addMesh = fn(s: UnsafePointer[mjSpec], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsMesh]
alias mjs_addHField = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsHField]
alias mjs_addSkin = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsSkin]
alias mjs_addTexture = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsTexture]
alias mjs_addMaterial = fn(s: UnsafePointer[mjSpec], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsMaterial]
alias mjs_getSpec = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjSpec]
alias mjs_findSpec = fn(spec: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> UnsafePointer[mjSpec]
alias mjs_findBody = fn(s: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> UnsafePointer[mjsBody]
alias mjs_findElement = fn(s: UnsafePointer[mjSpec], type_: mjtObj, read name: UnsafePointer[Int8]) -> UnsafePointer[mjsElement]
alias mjs_findChild = fn(body: UnsafePointer[mjsBody], read name: UnsafePointer[Int8]) -> UnsafePointer[mjsBody]
alias mjs_getParent = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsBody]
alias mjs_getFrame = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsFrame]
alias mjs_findFrame = fn(s: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> UnsafePointer[mjsFrame]
alias mjs_getDefault = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsDefault]
alias mjs_findDefault = fn(s: UnsafePointer[mjSpec], read classname: UnsafePointer[Int8]) -> UnsafePointer[mjsDefault]
alias mjs_getSpecDefault = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsDefault]
alias mjs_getId = fn(element: UnsafePointer[mjsElement]) -> Int32
alias mjs_firstChild = fn(body: UnsafePointer[mjsBody], type_: mjtObj, recurse: Int32) -> UnsafePointer[mjsElement]
alias mjs_nextChild = fn(body: UnsafePointer[mjsBody], child: UnsafePointer[mjsElement], recurse: Int32) -> UnsafePointer[mjsElement]
alias mjs_firstElement = fn(s: UnsafePointer[mjSpec], type_: mjtObj) -> UnsafePointer[mjsElement]
alias mjs_nextElement = fn(s: UnsafePointer[mjSpec], element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsElement]
alias mjs_setName = fn(element: UnsafePointer[mjsElement], read name: UnsafePointer[Int8]) -> Int32
alias mjs_setBuffer = fn(dest: UnsafePointer[mjByteVec], read array: OpaquePointer, size: Int32) -> NoneType
alias mjs_setString = fn(dest: UnsafePointer[mjString], read text: UnsafePointer[Int8]) -> NoneType
alias mjs_setStringVec = fn(dest: UnsafePointer[mjStringVec], read text: UnsafePointer[Int8]) -> NoneType
alias mjs_setInStringVec = fn(dest: UnsafePointer[mjStringVec], i: Int32, read text: UnsafePointer[Int8]) -> mjtByte
alias mjs_appendString = fn(dest: UnsafePointer[mjStringVec], read text: UnsafePointer[Int8]) -> NoneType
alias mjs_setInt = fn(dest: UnsafePointer[mjIntVec], read array: UnsafePointer[Int32], size: Int32) -> NoneType
alias mjs_appendIntVec = fn(dest: UnsafePointer[mjIntVecVec], read array: UnsafePointer[Int32], size: Int32) -> NoneType
alias mjs_setFloat = fn(dest: UnsafePointer[mjFloatVec], read array: UnsafePointer[Float32], size: Int32) -> NoneType
alias mjs_appendFloatVec = fn(dest: UnsafePointer[mjFloatVecVec], read array: UnsafePointer[Float32], size: Int32) -> NoneType
alias mjs_setDouble = fn(dest: UnsafePointer[mjDoubleVec], read array: UnsafePointer[Float64], size: Int32) -> NoneType
alias mjs_setPluginAttributes = fn(plugin: UnsafePointer[mjsPlugin], attributes: OpaquePointer) -> NoneType
alias mjs_getName = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjString]
alias mjs_getString = fn(read source: UnsafePointer[mjString]) -> UnsafePointer[Int8]
alias mjs_getDouble = fn(read source: UnsafePointer[mjDoubleVec], size: UnsafePointer[Int32]) -> UnsafePointer[Float64]
alias mjs_getPluginAttributes = fn(read plugin: UnsafePointer[mjsPlugin]) -> OpaquePointer
alias mjs_setDefault = fn(element: UnsafePointer[mjsElement], read def_: UnsafePointer[mjsDefault]) -> NoneType
alias mjs_setFrame = fn(dest: UnsafePointer[mjsElement], frame: UnsafePointer[mjsFrame]) -> Int32
alias mjs_resolveOrientation = fn(quat: UnsafePointer[Float64], degree: mjtByte, read sequence: UnsafePointer[Int8], read orientation: UnsafePointer[mjsOrientation]) -> UnsafePointer[Int8]
alias mjs_bodyToFrame = fn(body: UnsafePointer[UnsafePointer[mjsBody]]) -> UnsafePointer[mjsFrame]
alias mjs_setUserValue = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8], read data: OpaquePointer) -> NoneType
alias mjs_setUserValueWithCleanup = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8], read data: OpaquePointer, cleanup: fn(read OpaquePointer) -> NoneType) -> NoneType
alias mjs_getUserValue = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8]) -> OpaquePointer
alias mjs_deleteUserValue = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8]) -> NoneType
alias mjs_defaultSpec = fn(spec: UnsafePointer[mjSpec]) -> NoneType
alias mjs_defaultOrientation = fn(orient: UnsafePointer[mjsOrientation]) -> NoneType
alias mjs_defaultBody = fn(body: UnsafePointer[mjsBody]) -> NoneType
alias mjs_defaultFrame = fn(frame: UnsafePointer[mjsFrame]) -> NoneType
alias mjs_defaultJoint = fn(joint: UnsafePointer[mjsJoint]) -> NoneType
alias mjs_defaultGeom = fn(geom: UnsafePointer[mjsGeom]) -> NoneType
alias mjs_defaultSite = fn(site: UnsafePointer[mjsSite]) -> NoneType
alias mjs_defaultCamera = fn(camera: UnsafePointer[mjsCamera]) -> NoneType
alias mjs_defaultLight = fn(light: UnsafePointer[mjsLight]) -> NoneType
alias mjs_defaultFlex = fn(flex: UnsafePointer[mjsFlex]) -> NoneType
alias mjs_defaultMesh = fn(mesh: UnsafePointer[mjsMesh]) -> NoneType
alias mjs_defaultHField = fn(hfield: UnsafePointer[mjsHField]) -> NoneType
alias mjs_defaultSkin = fn(skin: UnsafePointer[mjsSkin]) -> NoneType
alias mjs_defaultTexture = fn(texture: UnsafePointer[mjsTexture]) -> NoneType
alias mjs_defaultMaterial = fn(material: UnsafePointer[mjsMaterial]) -> NoneType
alias mjs_defaultPair = fn(pair: UnsafePointer[mjsPair]) -> NoneType
alias mjs_defaultEquality = fn(equality: UnsafePointer[mjsEquality]) -> NoneType
alias mjs_defaultTendon = fn(tendon: UnsafePointer[mjsTendon]) -> NoneType
alias mjs_defaultActuator = fn(actuator: UnsafePointer[mjsActuator]) -> NoneType
alias mjs_defaultSensor = fn(sensor: UnsafePointer[mjsSensor]) -> NoneType
alias mjs_defaultNumeric = fn(numeric: UnsafePointer[mjsNumeric]) -> NoneType
alias mjs_defaultText = fn(text: UnsafePointer[mjsText]) -> NoneType
alias mjs_defaultTuple = fn(tuple: UnsafePointer[mjsTuple]) -> NoneType
alias mjs_defaultKey = fn(key: UnsafePointer[mjsKey]) -> NoneType
alias mjs_defaultPlugin = fn(plugin: UnsafePointer[mjsPlugin]) -> NoneType
alias mjs_asBody = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsBody]
alias mjs_asGeom = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsGeom]
alias mjs_asJoint = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsJoint]
alias mjs_asSite = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsSite]
alias mjs_asCamera = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsCamera]
alias mjs_asLight = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsLight]
alias mjs_asFrame = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsFrame]
alias mjs_asActuator = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsActuator]
alias mjs_asSensor = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsSensor]
alias mjs_asFlex = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsFlex]
alias mjs_asPair = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsPair]
alias mjs_asEquality = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsEquality]
alias mjs_asExclude = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsExclude]
alias mjs_asTendon = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsTendon]
alias mjs_asNumeric = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsNumeric]
alias mjs_asText = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsText]
alias mjs_asTuple = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsTuple]
alias mjs_asKey = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsKey]
alias mjs_asMesh = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsMesh]
alias mjs_asHField = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsHField]
alias mjs_asSkin = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsSkin]
alias mjs_asTexture = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsTexture]
alias mjs_asMaterial = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsMaterial]
alias mjs_asPlugin = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsPlugin]



alias LibMuJoCo_mj_defaultVFS = ExternalFunction['mj_defaultVFS', mj_defaultVFS]
alias LibMuJoCo_mj_addFileVFS = ExternalFunction['mj_addFileVFS', mj_addFileVFS]
alias LibMuJoCo_mj_addBufferVFS = ExternalFunction['mj_addBufferVFS', mj_addBufferVFS]
alias LibMuJoCo_mj_deleteFileVFS = ExternalFunction['mj_deleteFileVFS', mj_deleteFileVFS]
alias LibMuJoCo_mj_deleteVFS = ExternalFunction['mj_deleteVFS', mj_deleteVFS]
alias LibMuJoCo_mj_loadXML = ExternalFunction['mj_loadXML', mj_loadXML]
alias LibMuJoCo_mj_parseXML = ExternalFunction['mj_parseXML', mj_parseXML]
alias LibMuJoCo_mj_parseXMLString = ExternalFunction['mj_parseXMLString', mj_parseXMLString]
alias LibMuJoCo_mj_compile = ExternalFunction['mj_compile', mj_compile]
alias LibMuJoCo_mj_copyBack = ExternalFunction['mj_copyBack', mj_copyBack]
alias LibMuJoCo_mj_recompile = ExternalFunction['mj_recompile', mj_recompile]
alias LibMuJoCo_mj_saveLastXML = ExternalFunction['mj_saveLastXML', mj_saveLastXML]
alias LibMuJoCo_mj_freeLastXML = ExternalFunction['mj_freeLastXML', mj_freeLastXML]
alias LibMuJoCo_mj_saveXMLString = ExternalFunction['mj_saveXMLString', mj_saveXMLString]
alias LibMuJoCo_mj_saveXML = ExternalFunction['mj_saveXML', mj_saveXML]
alias LibMuJoCo_mj_step = ExternalFunction['mj_step', mj_step]
alias LibMuJoCo_mj_step1 = ExternalFunction['mj_step1', mj_step1]
alias LibMuJoCo_mj_step2 = ExternalFunction['mj_step2', mj_step2]
alias LibMuJoCo_mj_forward = ExternalFunction['mj_forward', mj_forward]
alias LibMuJoCo_mj_inverse = ExternalFunction['mj_inverse', mj_inverse]
alias LibMuJoCo_mj_forwardSkip = ExternalFunction['mj_forwardSkip', mj_forwardSkip]
alias LibMuJoCo_mj_inverseSkip = ExternalFunction['mj_inverseSkip', mj_inverseSkip]
alias LibMuJoCo_mj_defaultLROpt = ExternalFunction['mj_defaultLROpt', mj_defaultLROpt]
alias LibMuJoCo_mj_defaultSolRefImp = ExternalFunction['mj_defaultSolRefImp', mj_defaultSolRefImp]
alias LibMuJoCo_mj_defaultOption = ExternalFunction['mj_defaultOption', mj_defaultOption]
alias LibMuJoCo_mj_defaultVisual = ExternalFunction['mj_defaultVisual', mj_defaultVisual]
alias LibMuJoCo_mj_copyModel = ExternalFunction['mj_copyModel', mj_copyModel]
alias LibMuJoCo_mj_saveModel = ExternalFunction['mj_saveModel', mj_saveModel]
alias LibMuJoCo_mj_loadModel = ExternalFunction['mj_loadModel', mj_loadModel]
alias LibMuJoCo_mj_deleteModel = ExternalFunction['mj_deleteModel', mj_deleteModel]
alias LibMuJoCo_mj_sizeModel = ExternalFunction['mj_sizeModel', mj_sizeModel]
alias LibMuJoCo_mj_makeData = ExternalFunction['mj_makeData', mj_makeData]
alias LibMuJoCo_mj_copyData = ExternalFunction['mj_copyData', mj_copyData]
alias LibMuJoCo_mjv_copyData = ExternalFunction['mjv_copyData', mjv_copyData]
alias LibMuJoCo_mj_resetData = ExternalFunction['mj_resetData', mj_resetData]
alias LibMuJoCo_mj_resetDataDebug = ExternalFunction['mj_resetDataDebug', mj_resetDataDebug]
alias LibMuJoCo_mj_resetDataKeyframe = ExternalFunction['mj_resetDataKeyframe', mj_resetDataKeyframe]
alias LibMuJoCo_mj_markStack = ExternalFunction['mj_markStack', mj_markStack]
alias LibMuJoCo_mj_freeStack = ExternalFunction['mj_freeStack', mj_freeStack]
alias LibMuJoCo_mj_stackAllocByte = ExternalFunction['mj_stackAllocByte', mj_stackAllocByte]
alias LibMuJoCo_mj_stackAllocNum = ExternalFunction['mj_stackAllocNum', mj_stackAllocNum]
alias LibMuJoCo_mj_stackAllocInt = ExternalFunction['mj_stackAllocInt', mj_stackAllocInt]
alias LibMuJoCo_mj_deleteData = ExternalFunction['mj_deleteData', mj_deleteData]
alias LibMuJoCo_mj_resetCallbacks = ExternalFunction['mj_resetCallbacks', mj_resetCallbacks]
alias LibMuJoCo_mj_setConst = ExternalFunction['mj_setConst', mj_setConst]
alias LibMuJoCo_mj_setLengthRange = ExternalFunction['mj_setLengthRange', mj_setLengthRange]
alias LibMuJoCo_mj_makeSpec = ExternalFunction['mj_makeSpec', mj_makeSpec]
alias LibMuJoCo_mj_copySpec = ExternalFunction['mj_copySpec', mj_copySpec]
alias LibMuJoCo_mj_deleteSpec = ExternalFunction['mj_deleteSpec', mj_deleteSpec]
alias LibMuJoCo_mjs_activatePlugin = ExternalFunction['mjs_activatePlugin', mjs_activatePlugin]
alias LibMuJoCo_mjs_setDeepCopy = ExternalFunction['mjs_setDeepCopy', mjs_setDeepCopy]
alias LibMuJoCo_mj_printFormattedModel = ExternalFunction['mj_printFormattedModel', mj_printFormattedModel]
alias LibMuJoCo_mj_printModel = ExternalFunction['mj_printModel', mj_printModel]
alias LibMuJoCo_mj_printFormattedData = ExternalFunction['mj_printFormattedData', mj_printFormattedData]
alias LibMuJoCo_mj_printData = ExternalFunction['mj_printData', mj_printData]
alias LibMuJoCo_mju_printMat = ExternalFunction['mju_printMat', mju_printMat]
alias LibMuJoCo_mju_printMatSparse = ExternalFunction['mju_printMatSparse', mju_printMatSparse]
alias LibMuJoCo_mj_printSchema = ExternalFunction['mj_printSchema', mj_printSchema]
alias LibMuJoCo_mj_fwdPosition = ExternalFunction['mj_fwdPosition', mj_fwdPosition]
alias LibMuJoCo_mj_fwdVelocity = ExternalFunction['mj_fwdVelocity', mj_fwdVelocity]
alias LibMuJoCo_mj_fwdActuation = ExternalFunction['mj_fwdActuation', mj_fwdActuation]
alias LibMuJoCo_mj_fwdAcceleration = ExternalFunction['mj_fwdAcceleration', mj_fwdAcceleration]
alias LibMuJoCo_mj_fwdConstraint = ExternalFunction['mj_fwdConstraint', mj_fwdConstraint]
alias LibMuJoCo_mj_Euler = ExternalFunction['mj_Euler', mj_Euler]
alias LibMuJoCo_mj_RungeKutta = ExternalFunction['mj_RungeKutta', mj_RungeKutta]
alias LibMuJoCo_mj_implicit = ExternalFunction['mj_implicit', mj_implicit]
alias LibMuJoCo_mj_invPosition = ExternalFunction['mj_invPosition', mj_invPosition]
alias LibMuJoCo_mj_invVelocity = ExternalFunction['mj_invVelocity', mj_invVelocity]
alias LibMuJoCo_mj_invConstraint = ExternalFunction['mj_invConstraint', mj_invConstraint]
alias LibMuJoCo_mj_compareFwdInv = ExternalFunction['mj_compareFwdInv', mj_compareFwdInv]
alias LibMuJoCo_mj_sensorPos = ExternalFunction['mj_sensorPos', mj_sensorPos]
alias LibMuJoCo_mj_sensorVel = ExternalFunction['mj_sensorVel', mj_sensorVel]
alias LibMuJoCo_mj_sensorAcc = ExternalFunction['mj_sensorAcc', mj_sensorAcc]
alias LibMuJoCo_mj_energyPos = ExternalFunction['mj_energyPos', mj_energyPos]
alias LibMuJoCo_mj_energyVel = ExternalFunction['mj_energyVel', mj_energyVel]
alias LibMuJoCo_mj_checkPos = ExternalFunction['mj_checkPos', mj_checkPos]
alias LibMuJoCo_mj_checkVel = ExternalFunction['mj_checkVel', mj_checkVel]
alias LibMuJoCo_mj_checkAcc = ExternalFunction['mj_checkAcc', mj_checkAcc]
alias LibMuJoCo_mj_kinematics = ExternalFunction['mj_kinematics', mj_kinematics]
alias LibMuJoCo_mj_comPos = ExternalFunction['mj_comPos', mj_comPos]
alias LibMuJoCo_mj_camlight = ExternalFunction['mj_camlight', mj_camlight]
alias LibMuJoCo_mj_flex = ExternalFunction['mj_flex', mj_flex]
alias LibMuJoCo_mj_tendon = ExternalFunction['mj_tendon', mj_tendon]
alias LibMuJoCo_mj_transmission = ExternalFunction['mj_transmission', mj_transmission]
alias LibMuJoCo_mj_crb = ExternalFunction['mj_crb', mj_crb]
alias LibMuJoCo_mj_makeM = ExternalFunction['mj_makeM', mj_makeM]
alias LibMuJoCo_mj_factorM = ExternalFunction['mj_factorM', mj_factorM]
alias LibMuJoCo_mj_solveM = ExternalFunction['mj_solveM', mj_solveM]
alias LibMuJoCo_mj_solveM2 = ExternalFunction['mj_solveM2', mj_solveM2]
alias LibMuJoCo_mj_comVel = ExternalFunction['mj_comVel', mj_comVel]
alias LibMuJoCo_mj_passive = ExternalFunction['mj_passive', mj_passive]
alias LibMuJoCo_mj_subtreeVel = ExternalFunction['mj_subtreeVel', mj_subtreeVel]
alias LibMuJoCo_mj_rne = ExternalFunction['mj_rne', mj_rne]
alias LibMuJoCo_mj_rnePostConstraint = ExternalFunction['mj_rnePostConstraint', mj_rnePostConstraint]
alias LibMuJoCo_mj_collision = ExternalFunction['mj_collision', mj_collision]
alias LibMuJoCo_mj_makeConstraint = ExternalFunction['mj_makeConstraint', mj_makeConstraint]
alias LibMuJoCo_mj_island = ExternalFunction['mj_island', mj_island]
alias LibMuJoCo_mj_projectConstraint = ExternalFunction['mj_projectConstraint', mj_projectConstraint]
alias LibMuJoCo_mj_referenceConstraint = ExternalFunction['mj_referenceConstraint', mj_referenceConstraint]
alias LibMuJoCo_mj_constraintUpdate = ExternalFunction['mj_constraintUpdate', mj_constraintUpdate]
alias LibMuJoCo_mj_stateSize = ExternalFunction['mj_stateSize', mj_stateSize]
alias LibMuJoCo_mj_getState = ExternalFunction['mj_getState', mj_getState]
alias LibMuJoCo_mj_setState = ExternalFunction['mj_setState', mj_setState]
alias LibMuJoCo_mj_setKeyframe = ExternalFunction['mj_setKeyframe', mj_setKeyframe]
alias LibMuJoCo_mj_addContact = ExternalFunction['mj_addContact', mj_addContact]
alias LibMuJoCo_mj_isPyramidal = ExternalFunction['mj_isPyramidal', mj_isPyramidal]
alias LibMuJoCo_mj_isSparse = ExternalFunction['mj_isSparse', mj_isSparse]
alias LibMuJoCo_mj_isDual = ExternalFunction['mj_isDual', mj_isDual]
alias LibMuJoCo_mj_mulJacVec = ExternalFunction['mj_mulJacVec', mj_mulJacVec]
alias LibMuJoCo_mj_mulJacTVec = ExternalFunction['mj_mulJacTVec', mj_mulJacTVec]
alias LibMuJoCo_mj_jac = ExternalFunction['mj_jac', mj_jac]
alias LibMuJoCo_mj_jacBody = ExternalFunction['mj_jacBody', mj_jacBody]
alias LibMuJoCo_mj_jacBodyCom = ExternalFunction['mj_jacBodyCom', mj_jacBodyCom]
alias LibMuJoCo_mj_jacSubtreeCom = ExternalFunction['mj_jacSubtreeCom', mj_jacSubtreeCom]
alias LibMuJoCo_mj_jacGeom = ExternalFunction['mj_jacGeom', mj_jacGeom]
alias LibMuJoCo_mj_jacSite = ExternalFunction['mj_jacSite', mj_jacSite]
alias LibMuJoCo_mj_jacPointAxis = ExternalFunction['mj_jacPointAxis', mj_jacPointAxis]
alias LibMuJoCo_mj_jacDot = ExternalFunction['mj_jacDot', mj_jacDot]
alias LibMuJoCo_mj_angmomMat = ExternalFunction['mj_angmomMat', mj_angmomMat]
alias LibMuJoCo_mj_name2id = ExternalFunction['mj_name2id', mj_name2id]
alias LibMuJoCo_mj_id2name = ExternalFunction['mj_id2name', mj_id2name]
alias LibMuJoCo_mj_fullM = ExternalFunction['mj_fullM', mj_fullM]
alias LibMuJoCo_mj_mulM = ExternalFunction['mj_mulM', mj_mulM]
alias LibMuJoCo_mj_mulM2 = ExternalFunction['mj_mulM2', mj_mulM2]
alias LibMuJoCo_mj_addM = ExternalFunction['mj_addM', mj_addM]
alias LibMuJoCo_mj_applyFT = ExternalFunction['mj_applyFT', mj_applyFT]
alias LibMuJoCo_mj_objectVelocity = ExternalFunction['mj_objectVelocity', mj_objectVelocity]
alias LibMuJoCo_mj_objectAcceleration = ExternalFunction['mj_objectAcceleration', mj_objectAcceleration]
alias LibMuJoCo_mj_geomDistance = ExternalFunction['mj_geomDistance', mj_geomDistance]
alias LibMuJoCo_mj_contactForce = ExternalFunction['mj_contactForce', mj_contactForce]
alias LibMuJoCo_mj_differentiatePos = ExternalFunction['mj_differentiatePos', mj_differentiatePos]
alias LibMuJoCo_mj_integratePos = ExternalFunction['mj_integratePos', mj_integratePos]
alias LibMuJoCo_mj_normalizeQuat = ExternalFunction['mj_normalizeQuat', mj_normalizeQuat]
alias LibMuJoCo_mj_local2Global = ExternalFunction['mj_local2Global', mj_local2Global]
alias LibMuJoCo_mj_getTotalmass = ExternalFunction['mj_getTotalmass', mj_getTotalmass]
alias LibMuJoCo_mj_setTotalmass = ExternalFunction['mj_setTotalmass', mj_setTotalmass]
alias LibMuJoCo_mj_getPluginConfig = ExternalFunction['mj_getPluginConfig', mj_getPluginConfig]
alias LibMuJoCo_mj_loadPluginLibrary = ExternalFunction['mj_loadPluginLibrary', mj_loadPluginLibrary]
alias LibMuJoCo_mj_loadAllPluginLibraries = ExternalFunction['mj_loadAllPluginLibraries', mj_loadAllPluginLibraries]
alias LibMuJoCo_mj_version = ExternalFunction['mj_version', mj_version]
alias LibMuJoCo_mj_versionString = ExternalFunction['mj_versionString', mj_versionString]
alias LibMuJoCo_mj_multiRay = ExternalFunction['mj_multiRay', mj_multiRay]
alias LibMuJoCo_mj_ray = ExternalFunction['mj_ray', mj_ray]
alias LibMuJoCo_mj_rayHfield = ExternalFunction['mj_rayHfield', mj_rayHfield]
alias LibMuJoCo_mj_rayMesh = ExternalFunction['mj_rayMesh', mj_rayMesh]
alias LibMuJoCo_mju_rayGeom = ExternalFunction['mju_rayGeom', mju_rayGeom]
alias LibMuJoCo_mju_rayFlex = ExternalFunction['mju_rayFlex', mju_rayFlex]
alias LibMuJoCo_mju_raySkin = ExternalFunction['mju_raySkin', mju_raySkin]
alias LibMuJoCo_mjv_defaultCamera = ExternalFunction['mjv_defaultCamera', mjv_defaultCamera]
alias LibMuJoCo_mjv_defaultFreeCamera = ExternalFunction['mjv_defaultFreeCamera', mjv_defaultFreeCamera]
alias LibMuJoCo_mjv_defaultPerturb = ExternalFunction['mjv_defaultPerturb', mjv_defaultPerturb]
alias LibMuJoCo_mjv_room2model = ExternalFunction['mjv_room2model', mjv_room2model]
alias LibMuJoCo_mjv_model2room = ExternalFunction['mjv_model2room', mjv_model2room]
alias LibMuJoCo_mjv_cameraInModel = ExternalFunction['mjv_cameraInModel', mjv_cameraInModel]
alias LibMuJoCo_mjv_cameraInRoom = ExternalFunction['mjv_cameraInRoom', mjv_cameraInRoom]
alias LibMuJoCo_mjv_frustumHeight = ExternalFunction['mjv_frustumHeight', mjv_frustumHeight]
alias LibMuJoCo_mjv_alignToCamera = ExternalFunction['mjv_alignToCamera', mjv_alignToCamera]
alias LibMuJoCo_mjv_moveCamera = ExternalFunction['mjv_moveCamera', mjv_moveCamera]
alias LibMuJoCo_mjv_movePerturb = ExternalFunction['mjv_movePerturb', mjv_movePerturb]
alias LibMuJoCo_mjv_moveModel = ExternalFunction['mjv_moveModel', mjv_moveModel]
alias LibMuJoCo_mjv_initPerturb = ExternalFunction['mjv_initPerturb', mjv_initPerturb]
alias LibMuJoCo_mjv_applyPerturbPose = ExternalFunction['mjv_applyPerturbPose', mjv_applyPerturbPose]
alias LibMuJoCo_mjv_applyPerturbForce = ExternalFunction['mjv_applyPerturbForce', mjv_applyPerturbForce]
alias LibMuJoCo_mjv_averageCamera = ExternalFunction['mjv_averageCamera', mjv_averageCamera]
alias LibMuJoCo_mjv_select = ExternalFunction['mjv_select', mjv_select]
alias LibMuJoCo_mjv_defaultOption = ExternalFunction['mjv_defaultOption', mjv_defaultOption]
alias LibMuJoCo_mjv_defaultFigure = ExternalFunction['mjv_defaultFigure', mjv_defaultFigure]
alias LibMuJoCo_mjv_initGeom = ExternalFunction['mjv_initGeom', mjv_initGeom]
alias LibMuJoCo_mjv_connector = ExternalFunction['mjv_connector', mjv_connector]
alias LibMuJoCo_mjv_defaultScene = ExternalFunction['mjv_defaultScene', mjv_defaultScene]
alias LibMuJoCo_mjv_makeScene = ExternalFunction['mjv_makeScene', mjv_makeScene]
alias LibMuJoCo_mjv_freeScene = ExternalFunction['mjv_freeScene', mjv_freeScene]
alias LibMuJoCo_mjv_updateScene = ExternalFunction['mjv_updateScene', mjv_updateScene]
alias LibMuJoCo_mjv_copyModel = ExternalFunction['mjv_copyModel', mjv_copyModel]
alias LibMuJoCo_mjv_addGeoms = ExternalFunction['mjv_addGeoms', mjv_addGeoms]
alias LibMuJoCo_mjv_makeLights = ExternalFunction['mjv_makeLights', mjv_makeLights]
alias LibMuJoCo_mjv_updateCamera = ExternalFunction['mjv_updateCamera', mjv_updateCamera]
alias LibMuJoCo_mjv_updateSkin = ExternalFunction['mjv_updateSkin', mjv_updateSkin]
alias LibMuJoCo_mjr_defaultContext = ExternalFunction['mjr_defaultContext', mjr_defaultContext]
alias LibMuJoCo_mjr_makeContext = ExternalFunction['mjr_makeContext', mjr_makeContext]
alias LibMuJoCo_mjr_changeFont = ExternalFunction['mjr_changeFont', mjr_changeFont]
alias LibMuJoCo_mjr_addAux = ExternalFunction['mjr_addAux', mjr_addAux]
alias LibMuJoCo_mjr_freeContext = ExternalFunction['mjr_freeContext', mjr_freeContext]
alias LibMuJoCo_mjr_resizeOffscreen = ExternalFunction['mjr_resizeOffscreen', mjr_resizeOffscreen]
alias LibMuJoCo_mjr_uploadTexture = ExternalFunction['mjr_uploadTexture', mjr_uploadTexture]
alias LibMuJoCo_mjr_uploadMesh = ExternalFunction['mjr_uploadMesh', mjr_uploadMesh]
alias LibMuJoCo_mjr_uploadHField = ExternalFunction['mjr_uploadHField', mjr_uploadHField]
alias LibMuJoCo_mjr_restoreBuffer = ExternalFunction['mjr_restoreBuffer', mjr_restoreBuffer]
alias LibMuJoCo_mjr_setBuffer = ExternalFunction['mjr_setBuffer', mjr_setBuffer]
alias LibMuJoCo_mjr_readPixels = ExternalFunction['mjr_readPixels', mjr_readPixels]
alias LibMuJoCo_mjr_drawPixels = ExternalFunction['mjr_drawPixels', mjr_drawPixels]
alias LibMuJoCo_mjr_blitBuffer = ExternalFunction['mjr_blitBuffer', mjr_blitBuffer]
alias LibMuJoCo_mjr_setAux = ExternalFunction['mjr_setAux', mjr_setAux]
alias LibMuJoCo_mjr_blitAux = ExternalFunction['mjr_blitAux', mjr_blitAux]
alias LibMuJoCo_mjr_text = ExternalFunction['mjr_text', mjr_text]
alias LibMuJoCo_mjr_overlay = ExternalFunction['mjr_overlay', mjr_overlay]
alias LibMuJoCo_mjr_maxViewport = ExternalFunction['mjr_maxViewport', mjr_maxViewport]
alias LibMuJoCo_mjr_rectangle = ExternalFunction['mjr_rectangle', mjr_rectangle]
alias LibMuJoCo_mjr_label = ExternalFunction['mjr_label', mjr_label]
alias LibMuJoCo_mjr_figure = ExternalFunction['mjr_figure', mjr_figure]
alias LibMuJoCo_mjr_render = ExternalFunction['mjr_render', mjr_render]
alias LibMuJoCo_mjr_finish = ExternalFunction['mjr_finish', mjr_finish]
alias LibMuJoCo_mjr_getError = ExternalFunction['mjr_getError', mjr_getError]
alias LibMuJoCo_mjr_findRect = ExternalFunction['mjr_findRect', mjr_findRect]
alias LibMuJoCo_mjui_themeSpacing = ExternalFunction['mjui_themeSpacing', mjui_themeSpacing]
alias LibMuJoCo_mjui_themeColor = ExternalFunction['mjui_themeColor', mjui_themeColor]
alias LibMuJoCo_mjui_add = ExternalFunction['mjui_add', mjui_add]
alias LibMuJoCo_mjui_addToSection = ExternalFunction['mjui_addToSection', mjui_addToSection]
alias LibMuJoCo_mjui_resize = ExternalFunction['mjui_resize', mjui_resize]
alias LibMuJoCo_mjui_update = ExternalFunction['mjui_update', mjui_update]
alias LibMuJoCo_mjui_event = ExternalFunction['mjui_event', mjui_event]
alias LibMuJoCo_mjui_render = ExternalFunction['mjui_render', mjui_render]
alias LibMuJoCo_mju_error = ExternalFunction['mju_error', mju_error]
alias LibMuJoCo_mju_error_i = ExternalFunction['mju_error_i', mju_error_i]
alias LibMuJoCo_mju_error_s = ExternalFunction['mju_error_s', mju_error_s]
alias LibMuJoCo_mju_warning = ExternalFunction['mju_warning', mju_warning]
alias LibMuJoCo_mju_warning_i = ExternalFunction['mju_warning_i', mju_warning_i]
alias LibMuJoCo_mju_warning_s = ExternalFunction['mju_warning_s', mju_warning_s]
alias LibMuJoCo_mju_clearHandlers = ExternalFunction['mju_clearHandlers', mju_clearHandlers]
alias LibMuJoCo_mju_malloc = ExternalFunction['mju_malloc', mju_malloc]
alias LibMuJoCo_mju_free = ExternalFunction['mju_free', mju_free]
alias LibMuJoCo_mj_warning = ExternalFunction['mj_warning', mj_warning]
alias LibMuJoCo_mju_writeLog = ExternalFunction['mju_writeLog', mju_writeLog]
alias LibMuJoCo_mjs_getError = ExternalFunction['mjs_getError', mjs_getError]
alias LibMuJoCo_mjs_isWarning = ExternalFunction['mjs_isWarning', mjs_isWarning]
alias LibMuJoCo_mju_zero3 = ExternalFunction['mju_zero3', mju_zero3]
alias LibMuJoCo_mju_copy3 = ExternalFunction['mju_copy3', mju_copy3]
alias LibMuJoCo_mju_scl3 = ExternalFunction['mju_scl3', mju_scl3]
alias LibMuJoCo_mju_add3 = ExternalFunction['mju_add3', mju_add3]
alias LibMuJoCo_mju_sub3 = ExternalFunction['mju_sub3', mju_sub3]
alias LibMuJoCo_mju_addTo3 = ExternalFunction['mju_addTo3', mju_addTo3]
alias LibMuJoCo_mju_subFrom3 = ExternalFunction['mju_subFrom3', mju_subFrom3]
alias LibMuJoCo_mju_addToScl3 = ExternalFunction['mju_addToScl3', mju_addToScl3]
alias LibMuJoCo_mju_addScl3 = ExternalFunction['mju_addScl3', mju_addScl3]
alias LibMuJoCo_mju_normalize3 = ExternalFunction['mju_normalize3', mju_normalize3]
alias LibMuJoCo_mju_norm3 = ExternalFunction['mju_norm3', mju_norm3]
alias LibMuJoCo_mju_dot3 = ExternalFunction['mju_dot3', mju_dot3]
alias LibMuJoCo_mju_dist3 = ExternalFunction['mju_dist3', mju_dist3]
alias LibMuJoCo_mju_mulMatVec3 = ExternalFunction['mju_mulMatVec3', mju_mulMatVec3]
alias LibMuJoCo_mju_mulMatTVec3 = ExternalFunction['mju_mulMatTVec3', mju_mulMatTVec3]
alias LibMuJoCo_mju_cross = ExternalFunction['mju_cross', mju_cross]
alias LibMuJoCo_mju_zero4 = ExternalFunction['mju_zero4', mju_zero4]
alias LibMuJoCo_mju_unit4 = ExternalFunction['mju_unit4', mju_unit4]
alias LibMuJoCo_mju_copy4 = ExternalFunction['mju_copy4', mju_copy4]
alias LibMuJoCo_mju_normalize4 = ExternalFunction['mju_normalize4', mju_normalize4]
alias LibMuJoCo_mju_zero = ExternalFunction['mju_zero', mju_zero]
alias LibMuJoCo_mju_fill = ExternalFunction['mju_fill', mju_fill]
alias LibMuJoCo_mju_copy = ExternalFunction['mju_copy', mju_copy]
alias LibMuJoCo_mju_sum = ExternalFunction['mju_sum', mju_sum]
alias LibMuJoCo_mju_L1 = ExternalFunction['mju_L1', mju_L1]
alias LibMuJoCo_mju_scl = ExternalFunction['mju_scl', mju_scl]
alias LibMuJoCo_mju_add = ExternalFunction['mju_add', mju_add]
alias LibMuJoCo_mju_sub = ExternalFunction['mju_sub', mju_sub]
alias LibMuJoCo_mju_addTo = ExternalFunction['mju_addTo', mju_addTo]
alias LibMuJoCo_mju_subFrom = ExternalFunction['mju_subFrom', mju_subFrom]
alias LibMuJoCo_mju_addToScl = ExternalFunction['mju_addToScl', mju_addToScl]
alias LibMuJoCo_mju_addScl = ExternalFunction['mju_addScl', mju_addScl]
alias LibMuJoCo_mju_normalize = ExternalFunction['mju_normalize', mju_normalize]
alias LibMuJoCo_mju_norm = ExternalFunction['mju_norm', mju_norm]
alias LibMuJoCo_mju_dot = ExternalFunction['mju_dot', mju_dot]
alias LibMuJoCo_mju_mulMatVec = ExternalFunction['mju_mulMatVec', mju_mulMatVec]
alias LibMuJoCo_mju_mulMatTVec = ExternalFunction['mju_mulMatTVec', mju_mulMatTVec]
alias LibMuJoCo_mju_mulVecMatVec = ExternalFunction['mju_mulVecMatVec', mju_mulVecMatVec]
alias LibMuJoCo_mju_transpose = ExternalFunction['mju_transpose', mju_transpose]
alias LibMuJoCo_mju_symmetrize = ExternalFunction['mju_symmetrize', mju_symmetrize]
alias LibMuJoCo_mju_eye = ExternalFunction['mju_eye', mju_eye]
alias LibMuJoCo_mju_mulMatMat = ExternalFunction['mju_mulMatMat', mju_mulMatMat]
alias LibMuJoCo_mju_mulMatMatT = ExternalFunction['mju_mulMatMatT', mju_mulMatMatT]
alias LibMuJoCo_mju_mulMatTMat = ExternalFunction['mju_mulMatTMat', mju_mulMatTMat]
alias LibMuJoCo_mju_sqrMatTD = ExternalFunction['mju_sqrMatTD', mju_sqrMatTD]
alias LibMuJoCo_mju_transformSpatial = ExternalFunction['mju_transformSpatial', mju_transformSpatial]
alias LibMuJoCo_mju_dense2sparse = ExternalFunction['mju_dense2sparse', mju_dense2sparse]
alias LibMuJoCo_mju_sparse2dense = ExternalFunction['mju_sparse2dense', mju_sparse2dense]
alias LibMuJoCo_mju_rotVecQuat = ExternalFunction['mju_rotVecQuat', mju_rotVecQuat]
alias LibMuJoCo_mju_negQuat = ExternalFunction['mju_negQuat', mju_negQuat]
alias LibMuJoCo_mju_mulQuat = ExternalFunction['mju_mulQuat', mju_mulQuat]
alias LibMuJoCo_mju_mulQuatAxis = ExternalFunction['mju_mulQuatAxis', mju_mulQuatAxis]
alias LibMuJoCo_mju_axisAngle2Quat = ExternalFunction['mju_axisAngle2Quat', mju_axisAngle2Quat]
alias LibMuJoCo_mju_quat2Vel = ExternalFunction['mju_quat2Vel', mju_quat2Vel]
alias LibMuJoCo_mju_subQuat = ExternalFunction['mju_subQuat', mju_subQuat]
alias LibMuJoCo_mju_quat2Mat = ExternalFunction['mju_quat2Mat', mju_quat2Mat]
alias LibMuJoCo_mju_mat2Quat = ExternalFunction['mju_mat2Quat', mju_mat2Quat]
alias LibMuJoCo_mju_derivQuat = ExternalFunction['mju_derivQuat', mju_derivQuat]
alias LibMuJoCo_mju_quatIntegrate = ExternalFunction['mju_quatIntegrate', mju_quatIntegrate]
alias LibMuJoCo_mju_quatZ2Vec = ExternalFunction['mju_quatZ2Vec', mju_quatZ2Vec]
alias LibMuJoCo_mju_mat2Rot = ExternalFunction['mju_mat2Rot', mju_mat2Rot]
alias LibMuJoCo_mju_euler2Quat = ExternalFunction['mju_euler2Quat', mju_euler2Quat]
alias LibMuJoCo_mju_mulPose = ExternalFunction['mju_mulPose', mju_mulPose]
alias LibMuJoCo_mju_negPose = ExternalFunction['mju_negPose', mju_negPose]
alias LibMuJoCo_mju_trnVecPose = ExternalFunction['mju_trnVecPose', mju_trnVecPose]
alias LibMuJoCo_mju_cholFactor = ExternalFunction['mju_cholFactor', mju_cholFactor]
alias LibMuJoCo_mju_cholSolve = ExternalFunction['mju_cholSolve', mju_cholSolve]
alias LibMuJoCo_mju_cholUpdate = ExternalFunction['mju_cholUpdate', mju_cholUpdate]
alias LibMuJoCo_mju_cholFactorBand = ExternalFunction['mju_cholFactorBand', mju_cholFactorBand]
alias LibMuJoCo_mju_cholSolveBand = ExternalFunction['mju_cholSolveBand', mju_cholSolveBand]
alias LibMuJoCo_mju_band2Dense = ExternalFunction['mju_band2Dense', mju_band2Dense]
alias LibMuJoCo_mju_dense2Band = ExternalFunction['mju_dense2Band', mju_dense2Band]
alias LibMuJoCo_mju_bandMulMatVec = ExternalFunction['mju_bandMulMatVec', mju_bandMulMatVec]
alias LibMuJoCo_mju_bandDiag = ExternalFunction['mju_bandDiag', mju_bandDiag]
alias LibMuJoCo_mju_eig3 = ExternalFunction['mju_eig3', mju_eig3]
alias LibMuJoCo_mju_boxQP = ExternalFunction['mju_boxQP', mju_boxQP]
alias LibMuJoCo_mju_boxQPmalloc = ExternalFunction['mju_boxQPmalloc', mju_boxQPmalloc]
alias LibMuJoCo_mju_muscleGain = ExternalFunction['mju_muscleGain', mju_muscleGain]
alias LibMuJoCo_mju_muscleBias = ExternalFunction['mju_muscleBias', mju_muscleBias]
alias LibMuJoCo_mju_muscleDynamics = ExternalFunction['mju_muscleDynamics', mju_muscleDynamics]
alias LibMuJoCo_mju_encodePyramid = ExternalFunction['mju_encodePyramid', mju_encodePyramid]
alias LibMuJoCo_mju_decodePyramid = ExternalFunction['mju_decodePyramid', mju_decodePyramid]
alias LibMuJoCo_mju_springDamper = ExternalFunction['mju_springDamper', mju_springDamper]
alias LibMuJoCo_mju_min = ExternalFunction['mju_min', mju_min]
alias LibMuJoCo_mju_max = ExternalFunction['mju_max', mju_max]
alias LibMuJoCo_mju_clip = ExternalFunction['mju_clip', mju_clip]
alias LibMuJoCo_mju_sign = ExternalFunction['mju_sign', mju_sign]
alias LibMuJoCo_mju_round = ExternalFunction['mju_round', mju_round]
alias LibMuJoCo_mju_type2Str = ExternalFunction['mju_type2Str', mju_type2Str]
alias LibMuJoCo_mju_str2Type = ExternalFunction['mju_str2Type', mju_str2Type]
alias LibMuJoCo_mju_writeNumBytes = ExternalFunction['mju_writeNumBytes', mju_writeNumBytes]
alias LibMuJoCo_mju_warningText = ExternalFunction['mju_warningText', mju_warningText]
alias LibMuJoCo_mju_isBad = ExternalFunction['mju_isBad', mju_isBad]
alias LibMuJoCo_mju_isZero = ExternalFunction['mju_isZero', mju_isZero]
alias LibMuJoCo_mju_standardNormal = ExternalFunction['mju_standardNormal', mju_standardNormal]
alias LibMuJoCo_mju_f2n = ExternalFunction['mju_f2n', mju_f2n]
alias LibMuJoCo_mju_n2f = ExternalFunction['mju_n2f', mju_n2f]
alias LibMuJoCo_mju_d2n = ExternalFunction['mju_d2n', mju_d2n]
alias LibMuJoCo_mju_n2d = ExternalFunction['mju_n2d', mju_n2d]
alias LibMuJoCo_mju_insertionSort = ExternalFunction['mju_insertionSort', mju_insertionSort]
alias LibMuJoCo_mju_insertionSortInt = ExternalFunction['mju_insertionSortInt', mju_insertionSortInt]
alias LibMuJoCo_mju_Halton = ExternalFunction['mju_Halton', mju_Halton]
alias LibMuJoCo_mju_strncpy = ExternalFunction['mju_strncpy', mju_strncpy]
alias LibMuJoCo_mju_sigmoid = ExternalFunction['mju_sigmoid', mju_sigmoid]
alias LibMuJoCo_mjc_getSDF = ExternalFunction['mjc_getSDF', mjc_getSDF]
alias LibMuJoCo_mjc_distance = ExternalFunction['mjc_distance', mjc_distance]
alias LibMuJoCo_mjc_gradient = ExternalFunction['mjc_gradient', mjc_gradient]
alias LibMuJoCo_mjd_transitionFD = ExternalFunction['mjd_transitionFD', mjd_transitionFD]
alias LibMuJoCo_mjd_inverseFD = ExternalFunction['mjd_inverseFD', mjd_inverseFD]
alias LibMuJoCo_mjd_subQuat = ExternalFunction['mjd_subQuat', mjd_subQuat]
alias LibMuJoCo_mjd_quatIntegrate = ExternalFunction['mjd_quatIntegrate', mjd_quatIntegrate]
alias LibMuJoCo_mjp_defaultPlugin = ExternalFunction['mjp_defaultPlugin', mjp_defaultPlugin]
alias LibMuJoCo_mjp_registerPlugin = ExternalFunction['mjp_registerPlugin', mjp_registerPlugin]
alias LibMuJoCo_mjp_pluginCount = ExternalFunction['mjp_pluginCount', mjp_pluginCount]
alias LibMuJoCo_mjp_getPlugin = ExternalFunction['mjp_getPlugin', mjp_getPlugin]
alias LibMuJoCo_mjp_getPluginAtSlot = ExternalFunction['mjp_getPluginAtSlot', mjp_getPluginAtSlot]
alias LibMuJoCo_mjp_defaultResourceProvider = ExternalFunction['mjp_defaultResourceProvider', mjp_defaultResourceProvider]
alias LibMuJoCo_mjp_registerResourceProvider = ExternalFunction['mjp_registerResourceProvider', mjp_registerResourceProvider]
alias LibMuJoCo_mjp_resourceProviderCount = ExternalFunction['mjp_resourceProviderCount', mjp_resourceProviderCount]
alias LibMuJoCo_mjp_getResourceProvider = ExternalFunction['mjp_getResourceProvider', mjp_getResourceProvider]
alias LibMuJoCo_mjp_getResourceProviderAtSlot = ExternalFunction['mjp_getResourceProviderAtSlot', mjp_getResourceProviderAtSlot]
alias LibMuJoCo_mju_threadPoolCreate = ExternalFunction['mju_threadPoolCreate', mju_threadPoolCreate]
alias LibMuJoCo_mju_bindThreadPool = ExternalFunction['mju_bindThreadPool', mju_bindThreadPool]
alias LibMuJoCo_mju_threadPoolEnqueue = ExternalFunction['mju_threadPoolEnqueue', mju_threadPoolEnqueue]
alias LibMuJoCo_mju_threadPoolDestroy = ExternalFunction['mju_threadPoolDestroy', mju_threadPoolDestroy]
alias LibMuJoCo_mju_defaultTask = ExternalFunction['mju_defaultTask', mju_defaultTask]
alias LibMuJoCo_mju_taskJoin = ExternalFunction['mju_taskJoin', mju_taskJoin]
alias LibMuJoCo_mjs_attach = ExternalFunction['mjs_attach', mjs_attach]
alias LibMuJoCo_mjs_addBody = ExternalFunction['mjs_addBody', mjs_addBody]
alias LibMuJoCo_mjs_addSite = ExternalFunction['mjs_addSite', mjs_addSite]
alias LibMuJoCo_mjs_addJoint = ExternalFunction['mjs_addJoint', mjs_addJoint]
alias LibMuJoCo_mjs_addFreeJoint = ExternalFunction['mjs_addFreeJoint', mjs_addFreeJoint]
alias LibMuJoCo_mjs_addGeom = ExternalFunction['mjs_addGeom', mjs_addGeom]
alias LibMuJoCo_mjs_addCamera = ExternalFunction['mjs_addCamera', mjs_addCamera]
alias LibMuJoCo_mjs_addLight = ExternalFunction['mjs_addLight', mjs_addLight]
alias LibMuJoCo_mjs_addFrame = ExternalFunction['mjs_addFrame', mjs_addFrame]
alias LibMuJoCo_mjs_delete = ExternalFunction['mjs_delete', mjs_delete]
alias LibMuJoCo_mjs_addActuator = ExternalFunction['mjs_addActuator', mjs_addActuator]
alias LibMuJoCo_mjs_addSensor = ExternalFunction['mjs_addSensor', mjs_addSensor]
alias LibMuJoCo_mjs_addFlex = ExternalFunction['mjs_addFlex', mjs_addFlex]
alias LibMuJoCo_mjs_addPair = ExternalFunction['mjs_addPair', mjs_addPair]
alias LibMuJoCo_mjs_addExclude = ExternalFunction['mjs_addExclude', mjs_addExclude]
alias LibMuJoCo_mjs_addEquality = ExternalFunction['mjs_addEquality', mjs_addEquality]
alias LibMuJoCo_mjs_addTendon = ExternalFunction['mjs_addTendon', mjs_addTendon]
alias LibMuJoCo_mjs_wrapSite = ExternalFunction['mjs_wrapSite', mjs_wrapSite]
alias LibMuJoCo_mjs_wrapGeom = ExternalFunction['mjs_wrapGeom', mjs_wrapGeom]
alias LibMuJoCo_mjs_wrapJoint = ExternalFunction['mjs_wrapJoint', mjs_wrapJoint]
alias LibMuJoCo_mjs_wrapPulley = ExternalFunction['mjs_wrapPulley', mjs_wrapPulley]
alias LibMuJoCo_mjs_addNumeric = ExternalFunction['mjs_addNumeric', mjs_addNumeric]
alias LibMuJoCo_mjs_addText = ExternalFunction['mjs_addText', mjs_addText]
alias LibMuJoCo_mjs_addTuple = ExternalFunction['mjs_addTuple', mjs_addTuple]
alias LibMuJoCo_mjs_addKey = ExternalFunction['mjs_addKey', mjs_addKey]
alias LibMuJoCo_mjs_addPlugin = ExternalFunction['mjs_addPlugin', mjs_addPlugin]
alias LibMuJoCo_mjs_addDefault = ExternalFunction['mjs_addDefault', mjs_addDefault]
alias LibMuJoCo_mjs_setToMotor = ExternalFunction['mjs_setToMotor', mjs_setToMotor]
alias LibMuJoCo_mjs_setToPosition = ExternalFunction['mjs_setToPosition', mjs_setToPosition]
alias LibMuJoCo_mjs_setToIntVelocity = ExternalFunction['mjs_setToIntVelocity', mjs_setToIntVelocity]
alias LibMuJoCo_mjs_setToVelocity = ExternalFunction['mjs_setToVelocity', mjs_setToVelocity]
alias LibMuJoCo_mjs_setToDamper = ExternalFunction['mjs_setToDamper', mjs_setToDamper]
alias LibMuJoCo_mjs_setToCylinder = ExternalFunction['mjs_setToCylinder', mjs_setToCylinder]
alias LibMuJoCo_mjs_setToMuscle = ExternalFunction['mjs_setToMuscle', mjs_setToMuscle]
alias LibMuJoCo_mjs_setToAdhesion = ExternalFunction['mjs_setToAdhesion', mjs_setToAdhesion]
alias LibMuJoCo_mjs_addMesh = ExternalFunction['mjs_addMesh', mjs_addMesh]
alias LibMuJoCo_mjs_addHField = ExternalFunction['mjs_addHField', mjs_addHField]
alias LibMuJoCo_mjs_addSkin = ExternalFunction['mjs_addSkin', mjs_addSkin]
alias LibMuJoCo_mjs_addTexture = ExternalFunction['mjs_addTexture', mjs_addTexture]
alias LibMuJoCo_mjs_addMaterial = ExternalFunction['mjs_addMaterial', mjs_addMaterial]
alias LibMuJoCo_mjs_getSpec = ExternalFunction['mjs_getSpec', mjs_getSpec]
alias LibMuJoCo_mjs_findSpec = ExternalFunction['mjs_findSpec', mjs_findSpec]
alias LibMuJoCo_mjs_findBody = ExternalFunction['mjs_findBody', mjs_findBody]
alias LibMuJoCo_mjs_findElement = ExternalFunction['mjs_findElement', mjs_findElement]
alias LibMuJoCo_mjs_findChild = ExternalFunction['mjs_findChild', mjs_findChild]
alias LibMuJoCo_mjs_getParent = ExternalFunction['mjs_getParent', mjs_getParent]
alias LibMuJoCo_mjs_getFrame = ExternalFunction['mjs_getFrame', mjs_getFrame]
alias LibMuJoCo_mjs_findFrame = ExternalFunction['mjs_findFrame', mjs_findFrame]
alias LibMuJoCo_mjs_getDefault = ExternalFunction['mjs_getDefault', mjs_getDefault]
alias LibMuJoCo_mjs_findDefault = ExternalFunction['mjs_findDefault', mjs_findDefault]
alias LibMuJoCo_mjs_getSpecDefault = ExternalFunction['mjs_getSpecDefault', mjs_getSpecDefault]
alias LibMuJoCo_mjs_getId = ExternalFunction['mjs_getId', mjs_getId]
alias LibMuJoCo_mjs_firstChild = ExternalFunction['mjs_firstChild', mjs_firstChild]
alias LibMuJoCo_mjs_nextChild = ExternalFunction['mjs_nextChild', mjs_nextChild]
alias LibMuJoCo_mjs_firstElement = ExternalFunction['mjs_firstElement', mjs_firstElement]
alias LibMuJoCo_mjs_nextElement = ExternalFunction['mjs_nextElement', mjs_nextElement]
alias LibMuJoCo_mjs_setName = ExternalFunction['mjs_setName', mjs_setName]
alias LibMuJoCo_mjs_setBuffer = ExternalFunction['mjs_setBuffer', mjs_setBuffer]
alias LibMuJoCo_mjs_setString = ExternalFunction['mjs_setString', mjs_setString]
alias LibMuJoCo_mjs_setStringVec = ExternalFunction['mjs_setStringVec', mjs_setStringVec]
alias LibMuJoCo_mjs_setInStringVec = ExternalFunction['mjs_setInStringVec', mjs_setInStringVec]
alias LibMuJoCo_mjs_appendString = ExternalFunction['mjs_appendString', mjs_appendString]
alias LibMuJoCo_mjs_setInt = ExternalFunction['mjs_setInt', mjs_setInt]
alias LibMuJoCo_mjs_appendIntVec = ExternalFunction['mjs_appendIntVec', mjs_appendIntVec]
alias LibMuJoCo_mjs_setFloat = ExternalFunction['mjs_setFloat', mjs_setFloat]
alias LibMuJoCo_mjs_appendFloatVec = ExternalFunction['mjs_appendFloatVec', mjs_appendFloatVec]
alias LibMuJoCo_mjs_setDouble = ExternalFunction['mjs_setDouble', mjs_setDouble]
alias LibMuJoCo_mjs_setPluginAttributes = ExternalFunction['mjs_setPluginAttributes', mjs_setPluginAttributes]
alias LibMuJoCo_mjs_getName = ExternalFunction['mjs_getName', mjs_getName]
alias LibMuJoCo_mjs_getString = ExternalFunction['mjs_getString', mjs_getString]
alias LibMuJoCo_mjs_getDouble = ExternalFunction['mjs_getDouble', mjs_getDouble]
alias LibMuJoCo_mjs_getPluginAttributes = ExternalFunction['mjs_getPluginAttributes', mjs_getPluginAttributes]
alias LibMuJoCo_mjs_setDefault = ExternalFunction['mjs_setDefault', mjs_setDefault]
alias LibMuJoCo_mjs_setFrame = ExternalFunction['mjs_setFrame', mjs_setFrame]
alias LibMuJoCo_mjs_resolveOrientation = ExternalFunction['mjs_resolveOrientation', mjs_resolveOrientation]
alias LibMuJoCo_mjs_bodyToFrame = ExternalFunction['mjs_bodyToFrame', mjs_bodyToFrame]
alias LibMuJoCo_mjs_setUserValue = ExternalFunction['mjs_setUserValue', mjs_setUserValue]
alias LibMuJoCo_mjs_setUserValueWithCleanup = ExternalFunction['mjs_setUserValueWithCleanup', mjs_setUserValueWithCleanup]
alias LibMuJoCo_mjs_getUserValue = ExternalFunction['mjs_getUserValue', mjs_getUserValue]
alias LibMuJoCo_mjs_deleteUserValue = ExternalFunction['mjs_deleteUserValue', mjs_deleteUserValue]
alias LibMuJoCo_mjs_defaultSpec = ExternalFunction['mjs_defaultSpec', mjs_defaultSpec]
alias LibMuJoCo_mjs_defaultOrientation = ExternalFunction['mjs_defaultOrientation', mjs_defaultOrientation]
alias LibMuJoCo_mjs_defaultBody = ExternalFunction['mjs_defaultBody', mjs_defaultBody]
alias LibMuJoCo_mjs_defaultFrame = ExternalFunction['mjs_defaultFrame', mjs_defaultFrame]
alias LibMuJoCo_mjs_defaultJoint = ExternalFunction['mjs_defaultJoint', mjs_defaultJoint]
alias LibMuJoCo_mjs_defaultGeom = ExternalFunction['mjs_defaultGeom', mjs_defaultGeom]
alias LibMuJoCo_mjs_defaultSite = ExternalFunction['mjs_defaultSite', mjs_defaultSite]
alias LibMuJoCo_mjs_defaultCamera = ExternalFunction['mjs_defaultCamera', mjs_defaultCamera]
alias LibMuJoCo_mjs_defaultLight = ExternalFunction['mjs_defaultLight', mjs_defaultLight]
alias LibMuJoCo_mjs_defaultFlex = ExternalFunction['mjs_defaultFlex', mjs_defaultFlex]
alias LibMuJoCo_mjs_defaultMesh = ExternalFunction['mjs_defaultMesh', mjs_defaultMesh]
alias LibMuJoCo_mjs_defaultHField = ExternalFunction['mjs_defaultHField', mjs_defaultHField]
alias LibMuJoCo_mjs_defaultSkin = ExternalFunction['mjs_defaultSkin', mjs_defaultSkin]
alias LibMuJoCo_mjs_defaultTexture = ExternalFunction['mjs_defaultTexture', mjs_defaultTexture]
alias LibMuJoCo_mjs_defaultMaterial = ExternalFunction['mjs_defaultMaterial', mjs_defaultMaterial]
alias LibMuJoCo_mjs_defaultPair = ExternalFunction['mjs_defaultPair', mjs_defaultPair]
alias LibMuJoCo_mjs_defaultEquality = ExternalFunction['mjs_defaultEquality', mjs_defaultEquality]
alias LibMuJoCo_mjs_defaultTendon = ExternalFunction['mjs_defaultTendon', mjs_defaultTendon]
alias LibMuJoCo_mjs_defaultActuator = ExternalFunction['mjs_defaultActuator', mjs_defaultActuator]
alias LibMuJoCo_mjs_defaultSensor = ExternalFunction['mjs_defaultSensor', mjs_defaultSensor]
alias LibMuJoCo_mjs_defaultNumeric = ExternalFunction['mjs_defaultNumeric', mjs_defaultNumeric]
alias LibMuJoCo_mjs_defaultText = ExternalFunction['mjs_defaultText', mjs_defaultText]
alias LibMuJoCo_mjs_defaultTuple = ExternalFunction['mjs_defaultTuple', mjs_defaultTuple]
alias LibMuJoCo_mjs_defaultKey = ExternalFunction['mjs_defaultKey', mjs_defaultKey]
alias LibMuJoCo_mjs_defaultPlugin = ExternalFunction['mjs_defaultPlugin', mjs_defaultPlugin]
alias LibMuJoCo_mjs_asBody = ExternalFunction['mjs_asBody', mjs_asBody]
alias LibMuJoCo_mjs_asGeom = ExternalFunction['mjs_asGeom', mjs_asGeom]
alias LibMuJoCo_mjs_asJoint = ExternalFunction['mjs_asJoint', mjs_asJoint]
alias LibMuJoCo_mjs_asSite = ExternalFunction['mjs_asSite', mjs_asSite]
alias LibMuJoCo_mjs_asCamera = ExternalFunction['mjs_asCamera', mjs_asCamera]
alias LibMuJoCo_mjs_asLight = ExternalFunction['mjs_asLight', mjs_asLight]
alias LibMuJoCo_mjs_asFrame = ExternalFunction['mjs_asFrame', mjs_asFrame]
alias LibMuJoCo_mjs_asActuator = ExternalFunction['mjs_asActuator', mjs_asActuator]
alias LibMuJoCo_mjs_asSensor = ExternalFunction['mjs_asSensor', mjs_asSensor]
alias LibMuJoCo_mjs_asFlex = ExternalFunction['mjs_asFlex', mjs_asFlex]
alias LibMuJoCo_mjs_asPair = ExternalFunction['mjs_asPair', mjs_asPair]
alias LibMuJoCo_mjs_asEquality = ExternalFunction['mjs_asEquality', mjs_asEquality]
alias LibMuJoCo_mjs_asExclude = ExternalFunction['mjs_asExclude', mjs_asExclude]
alias LibMuJoCo_mjs_asTendon = ExternalFunction['mjs_asTendon', mjs_asTendon]
alias LibMuJoCo_mjs_asNumeric = ExternalFunction['mjs_asNumeric', mjs_asNumeric]
alias LibMuJoCo_mjs_asText = ExternalFunction['mjs_asText', mjs_asText]
alias LibMuJoCo_mjs_asTuple = ExternalFunction['mjs_asTuple', mjs_asTuple]
alias LibMuJoCo_mjs_asKey = ExternalFunction['mjs_asKey', mjs_asKey]
alias LibMuJoCo_mjs_asMesh = ExternalFunction['mjs_asMesh', mjs_asMesh]
alias LibMuJoCo_mjs_asHField = ExternalFunction['mjs_asHField', mjs_asHField]
alias LibMuJoCo_mjs_asSkin = ExternalFunction['mjs_asSkin', mjs_asSkin]
alias LibMuJoCo_mjs_asTexture = ExternalFunction['mjs_asTexture', mjs_asTexture]
alias LibMuJoCo_mjs_asMaterial = ExternalFunction['mjs_asMaterial', mjs_asMaterial]
alias LibMuJoCo_mjs_asPlugin = ExternalFunction['mjs_asPlugin', mjs_asPlugin]

@fieldwise_init
struct LibMuJoCo(Copyable, Movable):
    """Handle to the CPython interpreter present in the current process."""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var lib: DLHandle
    
    var mj_defaultVFS: LibMuJoCo_mj_defaultVFS.type
    var mj_addFileVFS: LibMuJoCo_mj_addFileVFS.type
    var mj_addBufferVFS: LibMuJoCo_mj_addBufferVFS.type
    var mj_deleteFileVFS: LibMuJoCo_mj_deleteFileVFS.type
    var mj_deleteVFS: LibMuJoCo_mj_deleteVFS.type
    var mj_loadXML: LibMuJoCo_mj_loadXML.type
    var mj_parseXML: LibMuJoCo_mj_parseXML.type
    var mj_parseXMLString: LibMuJoCo_mj_parseXMLString.type
    var mj_compile: LibMuJoCo_mj_compile.type
    var mj_copyBack: LibMuJoCo_mj_copyBack.type
    var mj_recompile: LibMuJoCo_mj_recompile.type
    var mj_saveLastXML: LibMuJoCo_mj_saveLastXML.type
    var mj_freeLastXML: LibMuJoCo_mj_freeLastXML.type
    var mj_saveXMLString: LibMuJoCo_mj_saveXMLString.type
    var mj_saveXML: LibMuJoCo_mj_saveXML.type
    var mj_step: LibMuJoCo_mj_step.type
    var mj_step1: LibMuJoCo_mj_step1.type
    var mj_step2: LibMuJoCo_mj_step2.type
    var mj_forward: LibMuJoCo_mj_forward.type
    var mj_inverse: LibMuJoCo_mj_inverse.type
    var mj_forwardSkip: LibMuJoCo_mj_forwardSkip.type
    var mj_inverseSkip: LibMuJoCo_mj_inverseSkip.type
    var mj_defaultLROpt: LibMuJoCo_mj_defaultLROpt.type
    var mj_defaultSolRefImp: LibMuJoCo_mj_defaultSolRefImp.type
    var mj_defaultOption: LibMuJoCo_mj_defaultOption.type
    var mj_defaultVisual: LibMuJoCo_mj_defaultVisual.type
    var mj_copyModel: LibMuJoCo_mj_copyModel.type
    var mj_saveModel: LibMuJoCo_mj_saveModel.type
    var mj_loadModel: LibMuJoCo_mj_loadModel.type
    var mj_deleteModel: LibMuJoCo_mj_deleteModel.type
    var mj_sizeModel: LibMuJoCo_mj_sizeModel.type
    var mj_makeData: LibMuJoCo_mj_makeData.type
    var mj_copyData: LibMuJoCo_mj_copyData.type
    var mjv_copyData: LibMuJoCo_mjv_copyData.type
    var mj_resetData: LibMuJoCo_mj_resetData.type
    var mj_resetDataDebug: LibMuJoCo_mj_resetDataDebug.type
    var mj_resetDataKeyframe: LibMuJoCo_mj_resetDataKeyframe.type
    var mj_markStack: LibMuJoCo_mj_markStack.type
    var mj_freeStack: LibMuJoCo_mj_freeStack.type
    var mj_stackAllocByte: LibMuJoCo_mj_stackAllocByte.type
    var mj_stackAllocNum: LibMuJoCo_mj_stackAllocNum.type
    var mj_stackAllocInt: LibMuJoCo_mj_stackAllocInt.type
    var mj_deleteData: LibMuJoCo_mj_deleteData.type
    var mj_resetCallbacks: LibMuJoCo_mj_resetCallbacks.type
    var mj_setConst: LibMuJoCo_mj_setConst.type
    var mj_setLengthRange: LibMuJoCo_mj_setLengthRange.type
    var mj_makeSpec: LibMuJoCo_mj_makeSpec.type
    var mj_copySpec: LibMuJoCo_mj_copySpec.type
    var mj_deleteSpec: LibMuJoCo_mj_deleteSpec.type
    var mjs_activatePlugin: LibMuJoCo_mjs_activatePlugin.type
    var mjs_setDeepCopy: LibMuJoCo_mjs_setDeepCopy.type
    var mj_printFormattedModel: LibMuJoCo_mj_printFormattedModel.type
    var mj_printModel: LibMuJoCo_mj_printModel.type
    var mj_printFormattedData: LibMuJoCo_mj_printFormattedData.type
    var mj_printData: LibMuJoCo_mj_printData.type
    var mju_printMat: LibMuJoCo_mju_printMat.type
    var mju_printMatSparse: LibMuJoCo_mju_printMatSparse.type
    var mj_printSchema: LibMuJoCo_mj_printSchema.type
    var mj_fwdPosition: LibMuJoCo_mj_fwdPosition.type
    var mj_fwdVelocity: LibMuJoCo_mj_fwdVelocity.type
    var mj_fwdActuation: LibMuJoCo_mj_fwdActuation.type
    var mj_fwdAcceleration: LibMuJoCo_mj_fwdAcceleration.type
    var mj_fwdConstraint: LibMuJoCo_mj_fwdConstraint.type
    var mj_Euler: LibMuJoCo_mj_Euler.type
    var mj_RungeKutta: LibMuJoCo_mj_RungeKutta.type
    var mj_implicit: LibMuJoCo_mj_implicit.type
    var mj_invPosition: LibMuJoCo_mj_invPosition.type
    var mj_invVelocity: LibMuJoCo_mj_invVelocity.type
    var mj_invConstraint: LibMuJoCo_mj_invConstraint.type
    var mj_compareFwdInv: LibMuJoCo_mj_compareFwdInv.type
    var mj_sensorPos: LibMuJoCo_mj_sensorPos.type
    var mj_sensorVel: LibMuJoCo_mj_sensorVel.type
    var mj_sensorAcc: LibMuJoCo_mj_sensorAcc.type
    var mj_energyPos: LibMuJoCo_mj_energyPos.type
    var mj_energyVel: LibMuJoCo_mj_energyVel.type
    var mj_checkPos: LibMuJoCo_mj_checkPos.type
    var mj_checkVel: LibMuJoCo_mj_checkVel.type
    var mj_checkAcc: LibMuJoCo_mj_checkAcc.type
    var mj_kinematics: LibMuJoCo_mj_kinematics.type
    var mj_comPos: LibMuJoCo_mj_comPos.type
    var mj_camlight: LibMuJoCo_mj_camlight.type
    var mj_flex: LibMuJoCo_mj_flex.type
    var mj_tendon: LibMuJoCo_mj_tendon.type
    var mj_transmission: LibMuJoCo_mj_transmission.type
    var mj_crb: LibMuJoCo_mj_crb.type
    var mj_makeM: LibMuJoCo_mj_makeM.type
    var mj_factorM: LibMuJoCo_mj_factorM.type
    var mj_solveM: LibMuJoCo_mj_solveM.type
    var mj_solveM2: LibMuJoCo_mj_solveM2.type
    var mj_comVel: LibMuJoCo_mj_comVel.type
    var mj_passive: LibMuJoCo_mj_passive.type
    var mj_subtreeVel: LibMuJoCo_mj_subtreeVel.type
    var mj_rne: LibMuJoCo_mj_rne.type
    var mj_rnePostConstraint: LibMuJoCo_mj_rnePostConstraint.type
    var mj_collision: LibMuJoCo_mj_collision.type
    var mj_makeConstraint: LibMuJoCo_mj_makeConstraint.type
    var mj_island: LibMuJoCo_mj_island.type
    var mj_projectConstraint: LibMuJoCo_mj_projectConstraint.type
    var mj_referenceConstraint: LibMuJoCo_mj_referenceConstraint.type
    var mj_constraintUpdate: LibMuJoCo_mj_constraintUpdate.type
    var mj_stateSize: LibMuJoCo_mj_stateSize.type
    var mj_getState: LibMuJoCo_mj_getState.type
    var mj_setState: LibMuJoCo_mj_setState.type
    var mj_setKeyframe: LibMuJoCo_mj_setKeyframe.type
    var mj_addContact: LibMuJoCo_mj_addContact.type
    var mj_isPyramidal: LibMuJoCo_mj_isPyramidal.type
    var mj_isSparse: LibMuJoCo_mj_isSparse.type
    var mj_isDual: LibMuJoCo_mj_isDual.type
    var mj_mulJacVec: LibMuJoCo_mj_mulJacVec.type
    var mj_mulJacTVec: LibMuJoCo_mj_mulJacTVec.type
    var mj_jac: LibMuJoCo_mj_jac.type
    var mj_jacBody: LibMuJoCo_mj_jacBody.type
    var mj_jacBodyCom: LibMuJoCo_mj_jacBodyCom.type
    var mj_jacSubtreeCom: LibMuJoCo_mj_jacSubtreeCom.type
    var mj_jacGeom: LibMuJoCo_mj_jacGeom.type
    var mj_jacSite: LibMuJoCo_mj_jacSite.type
    var mj_jacPointAxis: LibMuJoCo_mj_jacPointAxis.type
    var mj_jacDot: LibMuJoCo_mj_jacDot.type
    var mj_angmomMat: LibMuJoCo_mj_angmomMat.type
    var mj_name2id: LibMuJoCo_mj_name2id.type
    var mj_id2name: LibMuJoCo_mj_id2name.type
    var mj_fullM: LibMuJoCo_mj_fullM.type
    var mj_mulM: LibMuJoCo_mj_mulM.type
    var mj_mulM2: LibMuJoCo_mj_mulM2.type
    var mj_addM: LibMuJoCo_mj_addM.type
    var mj_applyFT: LibMuJoCo_mj_applyFT.type
    var mj_objectVelocity: LibMuJoCo_mj_objectVelocity.type
    var mj_objectAcceleration: LibMuJoCo_mj_objectAcceleration.type
    var mj_geomDistance: LibMuJoCo_mj_geomDistance.type
    var mj_contactForce: LibMuJoCo_mj_contactForce.type
    var mj_differentiatePos: LibMuJoCo_mj_differentiatePos.type
    var mj_integratePos: LibMuJoCo_mj_integratePos.type
    var mj_normalizeQuat: LibMuJoCo_mj_normalizeQuat.type
    var mj_local2Global: LibMuJoCo_mj_local2Global.type
    var mj_getTotalmass: LibMuJoCo_mj_getTotalmass.type
    var mj_setTotalmass: LibMuJoCo_mj_setTotalmass.type
    var mj_getPluginConfig: LibMuJoCo_mj_getPluginConfig.type
    var mj_loadPluginLibrary: LibMuJoCo_mj_loadPluginLibrary.type
    var mj_loadAllPluginLibraries: LibMuJoCo_mj_loadAllPluginLibraries.type
    var mj_version: LibMuJoCo_mj_version.type
    var mj_versionString: LibMuJoCo_mj_versionString.type
    var mj_multiRay: LibMuJoCo_mj_multiRay.type
    var mj_ray: LibMuJoCo_mj_ray.type
    var mj_rayHfield: LibMuJoCo_mj_rayHfield.type
    var mj_rayMesh: LibMuJoCo_mj_rayMesh.type
    var mju_rayGeom: LibMuJoCo_mju_rayGeom.type
    var mju_rayFlex: LibMuJoCo_mju_rayFlex.type
    var mju_raySkin: LibMuJoCo_mju_raySkin.type
    var mjv_defaultCamera: LibMuJoCo_mjv_defaultCamera.type
    var mjv_defaultFreeCamera: LibMuJoCo_mjv_defaultFreeCamera.type
    var mjv_defaultPerturb: LibMuJoCo_mjv_defaultPerturb.type
    var mjv_room2model: LibMuJoCo_mjv_room2model.type
    var mjv_model2room: LibMuJoCo_mjv_model2room.type
    var mjv_cameraInModel: LibMuJoCo_mjv_cameraInModel.type
    var mjv_cameraInRoom: LibMuJoCo_mjv_cameraInRoom.type
    var mjv_frustumHeight: LibMuJoCo_mjv_frustumHeight.type
    var mjv_alignToCamera: LibMuJoCo_mjv_alignToCamera.type
    var mjv_moveCamera: LibMuJoCo_mjv_moveCamera.type
    var mjv_movePerturb: LibMuJoCo_mjv_movePerturb.type
    var mjv_moveModel: LibMuJoCo_mjv_moveModel.type
    var mjv_initPerturb: LibMuJoCo_mjv_initPerturb.type
    var mjv_applyPerturbPose: LibMuJoCo_mjv_applyPerturbPose.type
    var mjv_applyPerturbForce: LibMuJoCo_mjv_applyPerturbForce.type
    var mjv_averageCamera: LibMuJoCo_mjv_averageCamera.type
    var mjv_select: LibMuJoCo_mjv_select.type
    var mjv_defaultOption: LibMuJoCo_mjv_defaultOption.type
    var mjv_defaultFigure: LibMuJoCo_mjv_defaultFigure.type
    var mjv_initGeom: LibMuJoCo_mjv_initGeom.type
    var mjv_connector: LibMuJoCo_mjv_connector.type
    var mjv_defaultScene: LibMuJoCo_mjv_defaultScene.type
    var mjv_makeScene: LibMuJoCo_mjv_makeScene.type
    var mjv_freeScene: LibMuJoCo_mjv_freeScene.type
    var mjv_updateScene: LibMuJoCo_mjv_updateScene.type
    var mjv_copyModel: LibMuJoCo_mjv_copyModel.type
    var mjv_addGeoms: LibMuJoCo_mjv_addGeoms.type
    var mjv_makeLights: LibMuJoCo_mjv_makeLights.type
    var mjv_updateCamera: LibMuJoCo_mjv_updateCamera.type
    var mjv_updateSkin: LibMuJoCo_mjv_updateSkin.type
    var mjr_defaultContext: LibMuJoCo_mjr_defaultContext.type
    var mjr_makeContext: LibMuJoCo_mjr_makeContext.type
    var mjr_changeFont: LibMuJoCo_mjr_changeFont.type
    var mjr_addAux: LibMuJoCo_mjr_addAux.type
    var mjr_freeContext: LibMuJoCo_mjr_freeContext.type
    var mjr_resizeOffscreen: LibMuJoCo_mjr_resizeOffscreen.type
    var mjr_uploadTexture: LibMuJoCo_mjr_uploadTexture.type
    var mjr_uploadMesh: LibMuJoCo_mjr_uploadMesh.type
    var mjr_uploadHField: LibMuJoCo_mjr_uploadHField.type
    var mjr_restoreBuffer: LibMuJoCo_mjr_restoreBuffer.type
    var mjr_setBuffer: LibMuJoCo_mjr_setBuffer.type
    var mjr_readPixels: LibMuJoCo_mjr_readPixels.type
    var mjr_drawPixels: LibMuJoCo_mjr_drawPixels.type
    var mjr_blitBuffer: LibMuJoCo_mjr_blitBuffer.type
    var mjr_setAux: LibMuJoCo_mjr_setAux.type
    var mjr_blitAux: LibMuJoCo_mjr_blitAux.type
    var mjr_text: LibMuJoCo_mjr_text.type
    var mjr_overlay: LibMuJoCo_mjr_overlay.type
    var mjr_maxViewport: LibMuJoCo_mjr_maxViewport.type
    var mjr_rectangle: LibMuJoCo_mjr_rectangle.type
    var mjr_label: LibMuJoCo_mjr_label.type
    var mjr_figure: LibMuJoCo_mjr_figure.type
    var mjr_render: LibMuJoCo_mjr_render.type
    var mjr_finish: LibMuJoCo_mjr_finish.type
    var mjr_getError: LibMuJoCo_mjr_getError.type
    var mjr_findRect: LibMuJoCo_mjr_findRect.type
    var mjui_themeSpacing: LibMuJoCo_mjui_themeSpacing.type
    var mjui_themeColor: LibMuJoCo_mjui_themeColor.type
    var mjui_add: LibMuJoCo_mjui_add.type
    var mjui_addToSection: LibMuJoCo_mjui_addToSection.type
    var mjui_resize: LibMuJoCo_mjui_resize.type
    var mjui_update: LibMuJoCo_mjui_update.type
    var mjui_event: LibMuJoCo_mjui_event.type
    var mjui_render: LibMuJoCo_mjui_render.type
    var mju_error: LibMuJoCo_mju_error.type
    var mju_error_i: LibMuJoCo_mju_error_i.type
    var mju_error_s: LibMuJoCo_mju_error_s.type
    var mju_warning: LibMuJoCo_mju_warning.type
    var mju_warning_i: LibMuJoCo_mju_warning_i.type
    var mju_warning_s: LibMuJoCo_mju_warning_s.type
    var mju_clearHandlers: LibMuJoCo_mju_clearHandlers.type
    var mju_malloc: LibMuJoCo_mju_malloc.type
    var mju_free: LibMuJoCo_mju_free.type
    var mj_warning: LibMuJoCo_mj_warning.type
    var mju_writeLog: LibMuJoCo_mju_writeLog.type
    var mjs_getError: LibMuJoCo_mjs_getError.type
    var mjs_isWarning: LibMuJoCo_mjs_isWarning.type
    var mju_zero3: LibMuJoCo_mju_zero3.type
    var mju_copy3: LibMuJoCo_mju_copy3.type
    var mju_scl3: LibMuJoCo_mju_scl3.type
    var mju_add3: LibMuJoCo_mju_add3.type
    var mju_sub3: LibMuJoCo_mju_sub3.type
    var mju_addTo3: LibMuJoCo_mju_addTo3.type
    var mju_subFrom3: LibMuJoCo_mju_subFrom3.type
    var mju_addToScl3: LibMuJoCo_mju_addToScl3.type
    var mju_addScl3: LibMuJoCo_mju_addScl3.type
    var mju_normalize3: LibMuJoCo_mju_normalize3.type
    var mju_norm3: LibMuJoCo_mju_norm3.type
    var mju_dot3: LibMuJoCo_mju_dot3.type
    var mju_dist3: LibMuJoCo_mju_dist3.type
    var mju_mulMatVec3: LibMuJoCo_mju_mulMatVec3.type
    var mju_mulMatTVec3: LibMuJoCo_mju_mulMatTVec3.type
    var mju_cross: LibMuJoCo_mju_cross.type
    var mju_zero4: LibMuJoCo_mju_zero4.type
    var mju_unit4: LibMuJoCo_mju_unit4.type
    var mju_copy4: LibMuJoCo_mju_copy4.type
    var mju_normalize4: LibMuJoCo_mju_normalize4.type
    var mju_zero: LibMuJoCo_mju_zero.type
    var mju_fill: LibMuJoCo_mju_fill.type
    var mju_copy: LibMuJoCo_mju_copy.type
    var mju_sum: LibMuJoCo_mju_sum.type
    var mju_L1: LibMuJoCo_mju_L1.type
    var mju_scl: LibMuJoCo_mju_scl.type
    var mju_add: LibMuJoCo_mju_add.type
    var mju_sub: LibMuJoCo_mju_sub.type
    var mju_addTo: LibMuJoCo_mju_addTo.type
    var mju_subFrom: LibMuJoCo_mju_subFrom.type
    var mju_addToScl: LibMuJoCo_mju_addToScl.type
    var mju_addScl: LibMuJoCo_mju_addScl.type
    var mju_normalize: LibMuJoCo_mju_normalize.type
    var mju_norm: LibMuJoCo_mju_norm.type
    var mju_dot: LibMuJoCo_mju_dot.type
    var mju_mulMatVec: LibMuJoCo_mju_mulMatVec.type
    var mju_mulMatTVec: LibMuJoCo_mju_mulMatTVec.type
    var mju_mulVecMatVec: LibMuJoCo_mju_mulVecMatVec.type
    var mju_transpose: LibMuJoCo_mju_transpose.type
    var mju_symmetrize: LibMuJoCo_mju_symmetrize.type
    var mju_eye: LibMuJoCo_mju_eye.type
    var mju_mulMatMat: LibMuJoCo_mju_mulMatMat.type
    var mju_mulMatMatT: LibMuJoCo_mju_mulMatMatT.type
    var mju_mulMatTMat: LibMuJoCo_mju_mulMatTMat.type
    var mju_sqrMatTD: LibMuJoCo_mju_sqrMatTD.type
    var mju_transformSpatial: LibMuJoCo_mju_transformSpatial.type
    var mju_dense2sparse: LibMuJoCo_mju_dense2sparse.type
    var mju_sparse2dense: LibMuJoCo_mju_sparse2dense.type
    var mju_rotVecQuat: LibMuJoCo_mju_rotVecQuat.type
    var mju_negQuat: LibMuJoCo_mju_negQuat.type
    var mju_mulQuat: LibMuJoCo_mju_mulQuat.type
    var mju_mulQuatAxis: LibMuJoCo_mju_mulQuatAxis.type
    var mju_axisAngle2Quat: LibMuJoCo_mju_axisAngle2Quat.type
    var mju_quat2Vel: LibMuJoCo_mju_quat2Vel.type
    var mju_subQuat: LibMuJoCo_mju_subQuat.type
    var mju_quat2Mat: LibMuJoCo_mju_quat2Mat.type
    var mju_mat2Quat: LibMuJoCo_mju_mat2Quat.type
    var mju_derivQuat: LibMuJoCo_mju_derivQuat.type
    var mju_quatIntegrate: LibMuJoCo_mju_quatIntegrate.type
    var mju_quatZ2Vec: LibMuJoCo_mju_quatZ2Vec.type
    var mju_mat2Rot: LibMuJoCo_mju_mat2Rot.type
    var mju_euler2Quat: LibMuJoCo_mju_euler2Quat.type
    var mju_mulPose: LibMuJoCo_mju_mulPose.type
    var mju_negPose: LibMuJoCo_mju_negPose.type
    var mju_trnVecPose: LibMuJoCo_mju_trnVecPose.type
    var mju_cholFactor: LibMuJoCo_mju_cholFactor.type
    var mju_cholSolve: LibMuJoCo_mju_cholSolve.type
    var mju_cholUpdate: LibMuJoCo_mju_cholUpdate.type
    var mju_cholFactorBand: LibMuJoCo_mju_cholFactorBand.type
    var mju_cholSolveBand: LibMuJoCo_mju_cholSolveBand.type
    var mju_band2Dense: LibMuJoCo_mju_band2Dense.type
    var mju_dense2Band: LibMuJoCo_mju_dense2Band.type
    var mju_bandMulMatVec: LibMuJoCo_mju_bandMulMatVec.type
    var mju_bandDiag: LibMuJoCo_mju_bandDiag.type
    var mju_eig3: LibMuJoCo_mju_eig3.type
    var mju_boxQP: LibMuJoCo_mju_boxQP.type
    var mju_boxQPmalloc: LibMuJoCo_mju_boxQPmalloc.type
    var mju_muscleGain: LibMuJoCo_mju_muscleGain.type
    var mju_muscleBias: LibMuJoCo_mju_muscleBias.type
    var mju_muscleDynamics: LibMuJoCo_mju_muscleDynamics.type
    var mju_encodePyramid: LibMuJoCo_mju_encodePyramid.type
    var mju_decodePyramid: LibMuJoCo_mju_decodePyramid.type
    var mju_springDamper: LibMuJoCo_mju_springDamper.type
    var mju_min: LibMuJoCo_mju_min.type
    var mju_max: LibMuJoCo_mju_max.type
    var mju_clip: LibMuJoCo_mju_clip.type
    var mju_sign: LibMuJoCo_mju_sign.type
    var mju_round: LibMuJoCo_mju_round.type
    var mju_type2Str: LibMuJoCo_mju_type2Str.type
    var mju_str2Type: LibMuJoCo_mju_str2Type.type
    var mju_writeNumBytes: LibMuJoCo_mju_writeNumBytes.type
    var mju_warningText: LibMuJoCo_mju_warningText.type
    var mju_isBad: LibMuJoCo_mju_isBad.type
    var mju_isZero: LibMuJoCo_mju_isZero.type
    var mju_standardNormal: LibMuJoCo_mju_standardNormal.type
    var mju_f2n: LibMuJoCo_mju_f2n.type
    var mju_n2f: LibMuJoCo_mju_n2f.type
    var mju_d2n: LibMuJoCo_mju_d2n.type
    var mju_n2d: LibMuJoCo_mju_n2d.type
    var mju_insertionSort: LibMuJoCo_mju_insertionSort.type
    var mju_insertionSortInt: LibMuJoCo_mju_insertionSortInt.type
    var mju_Halton: LibMuJoCo_mju_Halton.type
    var mju_strncpy: LibMuJoCo_mju_strncpy.type
    var mju_sigmoid: LibMuJoCo_mju_sigmoid.type
    var mjc_getSDF: LibMuJoCo_mjc_getSDF.type
    var mjc_distance: LibMuJoCo_mjc_distance.type
    var mjc_gradient: LibMuJoCo_mjc_gradient.type
    var mjd_transitionFD: LibMuJoCo_mjd_transitionFD.type
    var mjd_inverseFD: LibMuJoCo_mjd_inverseFD.type
    var mjd_subQuat: LibMuJoCo_mjd_subQuat.type
    var mjd_quatIntegrate: LibMuJoCo_mjd_quatIntegrate.type
    var mjp_defaultPlugin: LibMuJoCo_mjp_defaultPlugin.type
    var mjp_registerPlugin: LibMuJoCo_mjp_registerPlugin.type
    var mjp_pluginCount: LibMuJoCo_mjp_pluginCount.type
    var mjp_getPlugin: LibMuJoCo_mjp_getPlugin.type
    var mjp_getPluginAtSlot: LibMuJoCo_mjp_getPluginAtSlot.type
    var mjp_defaultResourceProvider: LibMuJoCo_mjp_defaultResourceProvider.type
    var mjp_registerResourceProvider: LibMuJoCo_mjp_registerResourceProvider.type
    var mjp_resourceProviderCount: LibMuJoCo_mjp_resourceProviderCount.type
    var mjp_getResourceProvider: LibMuJoCo_mjp_getResourceProvider.type
    var mjp_getResourceProviderAtSlot: LibMuJoCo_mjp_getResourceProviderAtSlot.type
    var mju_threadPoolCreate: LibMuJoCo_mju_threadPoolCreate.type
    var mju_bindThreadPool: LibMuJoCo_mju_bindThreadPool.type
    var mju_threadPoolEnqueue: LibMuJoCo_mju_threadPoolEnqueue.type
    var mju_threadPoolDestroy: LibMuJoCo_mju_threadPoolDestroy.type
    var mju_defaultTask: LibMuJoCo_mju_defaultTask.type
    var mju_taskJoin: LibMuJoCo_mju_taskJoin.type
    var mjs_attach: LibMuJoCo_mjs_attach.type
    var mjs_addBody: LibMuJoCo_mjs_addBody.type
    var mjs_addSite: LibMuJoCo_mjs_addSite.type
    var mjs_addJoint: LibMuJoCo_mjs_addJoint.type
    var mjs_addFreeJoint: LibMuJoCo_mjs_addFreeJoint.type
    var mjs_addGeom: LibMuJoCo_mjs_addGeom.type
    var mjs_addCamera: LibMuJoCo_mjs_addCamera.type
    var mjs_addLight: LibMuJoCo_mjs_addLight.type
    var mjs_addFrame: LibMuJoCo_mjs_addFrame.type
    var mjs_delete: LibMuJoCo_mjs_delete.type
    var mjs_addActuator: LibMuJoCo_mjs_addActuator.type
    var mjs_addSensor: LibMuJoCo_mjs_addSensor.type
    var mjs_addFlex: LibMuJoCo_mjs_addFlex.type
    var mjs_addPair: LibMuJoCo_mjs_addPair.type
    var mjs_addExclude: LibMuJoCo_mjs_addExclude.type
    var mjs_addEquality: LibMuJoCo_mjs_addEquality.type
    var mjs_addTendon: LibMuJoCo_mjs_addTendon.type
    var mjs_wrapSite: LibMuJoCo_mjs_wrapSite.type
    var mjs_wrapGeom: LibMuJoCo_mjs_wrapGeom.type
    var mjs_wrapJoint: LibMuJoCo_mjs_wrapJoint.type
    var mjs_wrapPulley: LibMuJoCo_mjs_wrapPulley.type
    var mjs_addNumeric: LibMuJoCo_mjs_addNumeric.type
    var mjs_addText: LibMuJoCo_mjs_addText.type
    var mjs_addTuple: LibMuJoCo_mjs_addTuple.type
    var mjs_addKey: LibMuJoCo_mjs_addKey.type
    var mjs_addPlugin: LibMuJoCo_mjs_addPlugin.type
    var mjs_addDefault: LibMuJoCo_mjs_addDefault.type
    var mjs_setToMotor: LibMuJoCo_mjs_setToMotor.type
    var mjs_setToPosition: LibMuJoCo_mjs_setToPosition.type
    var mjs_setToIntVelocity: LibMuJoCo_mjs_setToIntVelocity.type
    var mjs_setToVelocity: LibMuJoCo_mjs_setToVelocity.type
    var mjs_setToDamper: LibMuJoCo_mjs_setToDamper.type
    var mjs_setToCylinder: LibMuJoCo_mjs_setToCylinder.type
    var mjs_setToMuscle: LibMuJoCo_mjs_setToMuscle.type
    var mjs_setToAdhesion: LibMuJoCo_mjs_setToAdhesion.type
    var mjs_addMesh: LibMuJoCo_mjs_addMesh.type
    var mjs_addHField: LibMuJoCo_mjs_addHField.type
    var mjs_addSkin: LibMuJoCo_mjs_addSkin.type
    var mjs_addTexture: LibMuJoCo_mjs_addTexture.type
    var mjs_addMaterial: LibMuJoCo_mjs_addMaterial.type
    var mjs_getSpec: LibMuJoCo_mjs_getSpec.type
    var mjs_findSpec: LibMuJoCo_mjs_findSpec.type
    var mjs_findBody: LibMuJoCo_mjs_findBody.type
    var mjs_findElement: LibMuJoCo_mjs_findElement.type
    var mjs_findChild: LibMuJoCo_mjs_findChild.type
    var mjs_getParent: LibMuJoCo_mjs_getParent.type
    var mjs_getFrame: LibMuJoCo_mjs_getFrame.type
    var mjs_findFrame: LibMuJoCo_mjs_findFrame.type
    var mjs_getDefault: LibMuJoCo_mjs_getDefault.type
    var mjs_findDefault: LibMuJoCo_mjs_findDefault.type
    var mjs_getSpecDefault: LibMuJoCo_mjs_getSpecDefault.type
    var mjs_getId: LibMuJoCo_mjs_getId.type
    var mjs_firstChild: LibMuJoCo_mjs_firstChild.type
    var mjs_nextChild: LibMuJoCo_mjs_nextChild.type
    var mjs_firstElement: LibMuJoCo_mjs_firstElement.type
    var mjs_nextElement: LibMuJoCo_mjs_nextElement.type
    var mjs_setName: LibMuJoCo_mjs_setName.type
    var mjs_setBuffer: LibMuJoCo_mjs_setBuffer.type
    var mjs_setString: LibMuJoCo_mjs_setString.type
    var mjs_setStringVec: LibMuJoCo_mjs_setStringVec.type
    var mjs_setInStringVec: LibMuJoCo_mjs_setInStringVec.type
    var mjs_appendString: LibMuJoCo_mjs_appendString.type
    var mjs_setInt: LibMuJoCo_mjs_setInt.type
    var mjs_appendIntVec: LibMuJoCo_mjs_appendIntVec.type
    var mjs_setFloat: LibMuJoCo_mjs_setFloat.type
    var mjs_appendFloatVec: LibMuJoCo_mjs_appendFloatVec.type
    var mjs_setDouble: LibMuJoCo_mjs_setDouble.type
    var mjs_setPluginAttributes: LibMuJoCo_mjs_setPluginAttributes.type
    var mjs_getName: LibMuJoCo_mjs_getName.type
    var mjs_getString: LibMuJoCo_mjs_getString.type
    var mjs_getDouble: LibMuJoCo_mjs_getDouble.type
    var mjs_getPluginAttributes: LibMuJoCo_mjs_getPluginAttributes.type
    var mjs_setDefault: LibMuJoCo_mjs_setDefault.type
    var mjs_setFrame: LibMuJoCo_mjs_setFrame.type
    var mjs_resolveOrientation: LibMuJoCo_mjs_resolveOrientation.type
    var mjs_bodyToFrame: LibMuJoCo_mjs_bodyToFrame.type
    var mjs_setUserValue: LibMuJoCo_mjs_setUserValue.type
    var mjs_setUserValueWithCleanup: LibMuJoCo_mjs_setUserValueWithCleanup.type
    var mjs_getUserValue: LibMuJoCo_mjs_getUserValue.type
    var mjs_deleteUserValue: LibMuJoCo_mjs_deleteUserValue.type
    var mjs_defaultSpec: LibMuJoCo_mjs_defaultSpec.type
    var mjs_defaultOrientation: LibMuJoCo_mjs_defaultOrientation.type
    var mjs_defaultBody: LibMuJoCo_mjs_defaultBody.type
    var mjs_defaultFrame: LibMuJoCo_mjs_defaultFrame.type
    var mjs_defaultJoint: LibMuJoCo_mjs_defaultJoint.type
    var mjs_defaultGeom: LibMuJoCo_mjs_defaultGeom.type
    var mjs_defaultSite: LibMuJoCo_mjs_defaultSite.type
    var mjs_defaultCamera: LibMuJoCo_mjs_defaultCamera.type
    var mjs_defaultLight: LibMuJoCo_mjs_defaultLight.type
    var mjs_defaultFlex: LibMuJoCo_mjs_defaultFlex.type
    var mjs_defaultMesh: LibMuJoCo_mjs_defaultMesh.type
    var mjs_defaultHField: LibMuJoCo_mjs_defaultHField.type
    var mjs_defaultSkin: LibMuJoCo_mjs_defaultSkin.type
    var mjs_defaultTexture: LibMuJoCo_mjs_defaultTexture.type
    var mjs_defaultMaterial: LibMuJoCo_mjs_defaultMaterial.type
    var mjs_defaultPair: LibMuJoCo_mjs_defaultPair.type
    var mjs_defaultEquality: LibMuJoCo_mjs_defaultEquality.type
    var mjs_defaultTendon: LibMuJoCo_mjs_defaultTendon.type
    var mjs_defaultActuator: LibMuJoCo_mjs_defaultActuator.type
    var mjs_defaultSensor: LibMuJoCo_mjs_defaultSensor.type
    var mjs_defaultNumeric: LibMuJoCo_mjs_defaultNumeric.type
    var mjs_defaultText: LibMuJoCo_mjs_defaultText.type
    var mjs_defaultTuple: LibMuJoCo_mjs_defaultTuple.type
    var mjs_defaultKey: LibMuJoCo_mjs_defaultKey.type
    var mjs_defaultPlugin: LibMuJoCo_mjs_defaultPlugin.type
    var mjs_asBody: LibMuJoCo_mjs_asBody.type
    var mjs_asGeom: LibMuJoCo_mjs_asGeom.type
    var mjs_asJoint: LibMuJoCo_mjs_asJoint.type
    var mjs_asSite: LibMuJoCo_mjs_asSite.type
    var mjs_asCamera: LibMuJoCo_mjs_asCamera.type
    var mjs_asLight: LibMuJoCo_mjs_asLight.type
    var mjs_asFrame: LibMuJoCo_mjs_asFrame.type
    var mjs_asActuator: LibMuJoCo_mjs_asActuator.type
    var mjs_asSensor: LibMuJoCo_mjs_asSensor.type
    var mjs_asFlex: LibMuJoCo_mjs_asFlex.type
    var mjs_asPair: LibMuJoCo_mjs_asPair.type
    var mjs_asEquality: LibMuJoCo_mjs_asEquality.type
    var mjs_asExclude: LibMuJoCo_mjs_asExclude.type
    var mjs_asTendon: LibMuJoCo_mjs_asTendon.type
    var mjs_asNumeric: LibMuJoCo_mjs_asNumeric.type
    var mjs_asText: LibMuJoCo_mjs_asText.type
    var mjs_asTuple: LibMuJoCo_mjs_asTuple.type
    var mjs_asKey: LibMuJoCo_mjs_asKey.type
    var mjs_asMesh: LibMuJoCo_mjs_asMesh.type
    var mjs_asHField: LibMuJoCo_mjs_asHField.type
    var mjs_asSkin: LibMuJoCo_mjs_asSkin.type
    var mjs_asTexture: LibMuJoCo_mjs_asTexture.type
    var mjs_asMaterial: LibMuJoCo_mjs_asMaterial.type
    var mjs_asPlugin: LibMuJoCo_mjs_asPlugin.type

    fn __init__(out self):
        try:
            self.lib = DLHandle('/home/c_binder_mojo_user/c_binder_mojo/mujoco/build/lib/libmujoco.so')
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load LibMuJoCo from", '/home/c_binder_mojo_user/c_binder_mojo/mujoco/build/lib/libmujoco.so', ":\n", e)
            )

    
        self.mj_defaultVFS = LibMuJoCo_mj_defaultVFS.load(self.lib)
        self.mj_addFileVFS = LibMuJoCo_mj_addFileVFS.load(self.lib)
        self.mj_addBufferVFS = LibMuJoCo_mj_addBufferVFS.load(self.lib)
        self.mj_deleteFileVFS = LibMuJoCo_mj_deleteFileVFS.load(self.lib)
        self.mj_deleteVFS = LibMuJoCo_mj_deleteVFS.load(self.lib)
        self.mj_loadXML = LibMuJoCo_mj_loadXML.load(self.lib)
        self.mj_parseXML = LibMuJoCo_mj_parseXML.load(self.lib)
        self.mj_parseXMLString = LibMuJoCo_mj_parseXMLString.load(self.lib)
        self.mj_compile = LibMuJoCo_mj_compile.load(self.lib)
        self.mj_copyBack = LibMuJoCo_mj_copyBack.load(self.lib)
        self.mj_recompile = LibMuJoCo_mj_recompile.load(self.lib)
        self.mj_saveLastXML = LibMuJoCo_mj_saveLastXML.load(self.lib)
        self.mj_freeLastXML = LibMuJoCo_mj_freeLastXML.load(self.lib)
        self.mj_saveXMLString = LibMuJoCo_mj_saveXMLString.load(self.lib)
        self.mj_saveXML = LibMuJoCo_mj_saveXML.load(self.lib)
        self.mj_step = LibMuJoCo_mj_step.load(self.lib)
        self.mj_step1 = LibMuJoCo_mj_step1.load(self.lib)
        self.mj_step2 = LibMuJoCo_mj_step2.load(self.lib)
        self.mj_forward = LibMuJoCo_mj_forward.load(self.lib)
        self.mj_inverse = LibMuJoCo_mj_inverse.load(self.lib)
        self.mj_forwardSkip = LibMuJoCo_mj_forwardSkip.load(self.lib)
        self.mj_inverseSkip = LibMuJoCo_mj_inverseSkip.load(self.lib)
        self.mj_defaultLROpt = LibMuJoCo_mj_defaultLROpt.load(self.lib)
        self.mj_defaultSolRefImp = LibMuJoCo_mj_defaultSolRefImp.load(self.lib)
        self.mj_defaultOption = LibMuJoCo_mj_defaultOption.load(self.lib)
        self.mj_defaultVisual = LibMuJoCo_mj_defaultVisual.load(self.lib)
        self.mj_copyModel = LibMuJoCo_mj_copyModel.load(self.lib)
        self.mj_saveModel = LibMuJoCo_mj_saveModel.load(self.lib)
        self.mj_loadModel = LibMuJoCo_mj_loadModel.load(self.lib)
        self.mj_deleteModel = LibMuJoCo_mj_deleteModel.load(self.lib)
        self.mj_sizeModel = LibMuJoCo_mj_sizeModel.load(self.lib)
        self.mj_makeData = LibMuJoCo_mj_makeData.load(self.lib)
        self.mj_copyData = LibMuJoCo_mj_copyData.load(self.lib)
        self.mjv_copyData = LibMuJoCo_mjv_copyData.load(self.lib)
        self.mj_resetData = LibMuJoCo_mj_resetData.load(self.lib)
        self.mj_resetDataDebug = LibMuJoCo_mj_resetDataDebug.load(self.lib)
        self.mj_resetDataKeyframe = LibMuJoCo_mj_resetDataKeyframe.load(self.lib)
        self.mj_markStack = LibMuJoCo_mj_markStack.load(self.lib)
        self.mj_freeStack = LibMuJoCo_mj_freeStack.load(self.lib)
        self.mj_stackAllocByte = LibMuJoCo_mj_stackAllocByte.load(self.lib)
        self.mj_stackAllocNum = LibMuJoCo_mj_stackAllocNum.load(self.lib)
        self.mj_stackAllocInt = LibMuJoCo_mj_stackAllocInt.load(self.lib)
        self.mj_deleteData = LibMuJoCo_mj_deleteData.load(self.lib)
        self.mj_resetCallbacks = LibMuJoCo_mj_resetCallbacks.load(self.lib)
        self.mj_setConst = LibMuJoCo_mj_setConst.load(self.lib)
        self.mj_setLengthRange = LibMuJoCo_mj_setLengthRange.load(self.lib)
        self.mj_makeSpec = LibMuJoCo_mj_makeSpec.load(self.lib)
        self.mj_copySpec = LibMuJoCo_mj_copySpec.load(self.lib)
        self.mj_deleteSpec = LibMuJoCo_mj_deleteSpec.load(self.lib)
        self.mjs_activatePlugin = LibMuJoCo_mjs_activatePlugin.load(self.lib)
        self.mjs_setDeepCopy = LibMuJoCo_mjs_setDeepCopy.load(self.lib)
        self.mj_printFormattedModel = LibMuJoCo_mj_printFormattedModel.load(self.lib)
        self.mj_printModel = LibMuJoCo_mj_printModel.load(self.lib)
        self.mj_printFormattedData = LibMuJoCo_mj_printFormattedData.load(self.lib)
        self.mj_printData = LibMuJoCo_mj_printData.load(self.lib)
        self.mju_printMat = LibMuJoCo_mju_printMat.load(self.lib)
        self.mju_printMatSparse = LibMuJoCo_mju_printMatSparse.load(self.lib)
        self.mj_printSchema = LibMuJoCo_mj_printSchema.load(self.lib)
        self.mj_fwdPosition = LibMuJoCo_mj_fwdPosition.load(self.lib)
        self.mj_fwdVelocity = LibMuJoCo_mj_fwdVelocity.load(self.lib)
        self.mj_fwdActuation = LibMuJoCo_mj_fwdActuation.load(self.lib)
        self.mj_fwdAcceleration = LibMuJoCo_mj_fwdAcceleration.load(self.lib)
        self.mj_fwdConstraint = LibMuJoCo_mj_fwdConstraint.load(self.lib)
        self.mj_Euler = LibMuJoCo_mj_Euler.load(self.lib)
        self.mj_RungeKutta = LibMuJoCo_mj_RungeKutta.load(self.lib)
        self.mj_implicit = LibMuJoCo_mj_implicit.load(self.lib)
        self.mj_invPosition = LibMuJoCo_mj_invPosition.load(self.lib)
        self.mj_invVelocity = LibMuJoCo_mj_invVelocity.load(self.lib)
        self.mj_invConstraint = LibMuJoCo_mj_invConstraint.load(self.lib)
        self.mj_compareFwdInv = LibMuJoCo_mj_compareFwdInv.load(self.lib)
        self.mj_sensorPos = LibMuJoCo_mj_sensorPos.load(self.lib)
        self.mj_sensorVel = LibMuJoCo_mj_sensorVel.load(self.lib)
        self.mj_sensorAcc = LibMuJoCo_mj_sensorAcc.load(self.lib)
        self.mj_energyPos = LibMuJoCo_mj_energyPos.load(self.lib)
        self.mj_energyVel = LibMuJoCo_mj_energyVel.load(self.lib)
        self.mj_checkPos = LibMuJoCo_mj_checkPos.load(self.lib)
        self.mj_checkVel = LibMuJoCo_mj_checkVel.load(self.lib)
        self.mj_checkAcc = LibMuJoCo_mj_checkAcc.load(self.lib)
        self.mj_kinematics = LibMuJoCo_mj_kinematics.load(self.lib)
        self.mj_comPos = LibMuJoCo_mj_comPos.load(self.lib)
        self.mj_camlight = LibMuJoCo_mj_camlight.load(self.lib)
        self.mj_flex = LibMuJoCo_mj_flex.load(self.lib)
        self.mj_tendon = LibMuJoCo_mj_tendon.load(self.lib)
        self.mj_transmission = LibMuJoCo_mj_transmission.load(self.lib)
        self.mj_crb = LibMuJoCo_mj_crb.load(self.lib)
        self.mj_makeM = LibMuJoCo_mj_makeM.load(self.lib)
        self.mj_factorM = LibMuJoCo_mj_factorM.load(self.lib)
        self.mj_solveM = LibMuJoCo_mj_solveM.load(self.lib)
        self.mj_solveM2 = LibMuJoCo_mj_solveM2.load(self.lib)
        self.mj_comVel = LibMuJoCo_mj_comVel.load(self.lib)
        self.mj_passive = LibMuJoCo_mj_passive.load(self.lib)
        self.mj_subtreeVel = LibMuJoCo_mj_subtreeVel.load(self.lib)
        self.mj_rne = LibMuJoCo_mj_rne.load(self.lib)
        self.mj_rnePostConstraint = LibMuJoCo_mj_rnePostConstraint.load(self.lib)
        self.mj_collision = LibMuJoCo_mj_collision.load(self.lib)
        self.mj_makeConstraint = LibMuJoCo_mj_makeConstraint.load(self.lib)
        self.mj_island = LibMuJoCo_mj_island.load(self.lib)
        self.mj_projectConstraint = LibMuJoCo_mj_projectConstraint.load(self.lib)
        self.mj_referenceConstraint = LibMuJoCo_mj_referenceConstraint.load(self.lib)
        self.mj_constraintUpdate = LibMuJoCo_mj_constraintUpdate.load(self.lib)
        self.mj_stateSize = LibMuJoCo_mj_stateSize.load(self.lib)
        self.mj_getState = LibMuJoCo_mj_getState.load(self.lib)
        self.mj_setState = LibMuJoCo_mj_setState.load(self.lib)
        self.mj_setKeyframe = LibMuJoCo_mj_setKeyframe.load(self.lib)
        self.mj_addContact = LibMuJoCo_mj_addContact.load(self.lib)
        self.mj_isPyramidal = LibMuJoCo_mj_isPyramidal.load(self.lib)
        self.mj_isSparse = LibMuJoCo_mj_isSparse.load(self.lib)
        self.mj_isDual = LibMuJoCo_mj_isDual.load(self.lib)
        self.mj_mulJacVec = LibMuJoCo_mj_mulJacVec.load(self.lib)
        self.mj_mulJacTVec = LibMuJoCo_mj_mulJacTVec.load(self.lib)
        self.mj_jac = LibMuJoCo_mj_jac.load(self.lib)
        self.mj_jacBody = LibMuJoCo_mj_jacBody.load(self.lib)
        self.mj_jacBodyCom = LibMuJoCo_mj_jacBodyCom.load(self.lib)
        self.mj_jacSubtreeCom = LibMuJoCo_mj_jacSubtreeCom.load(self.lib)
        self.mj_jacGeom = LibMuJoCo_mj_jacGeom.load(self.lib)
        self.mj_jacSite = LibMuJoCo_mj_jacSite.load(self.lib)
        self.mj_jacPointAxis = LibMuJoCo_mj_jacPointAxis.load(self.lib)
        self.mj_jacDot = LibMuJoCo_mj_jacDot.load(self.lib)
        self.mj_angmomMat = LibMuJoCo_mj_angmomMat.load(self.lib)
        self.mj_name2id = LibMuJoCo_mj_name2id.load(self.lib)
        self.mj_id2name = LibMuJoCo_mj_id2name.load(self.lib)
        self.mj_fullM = LibMuJoCo_mj_fullM.load(self.lib)
        self.mj_mulM = LibMuJoCo_mj_mulM.load(self.lib)
        self.mj_mulM2 = LibMuJoCo_mj_mulM2.load(self.lib)
        self.mj_addM = LibMuJoCo_mj_addM.load(self.lib)
        self.mj_applyFT = LibMuJoCo_mj_applyFT.load(self.lib)
        self.mj_objectVelocity = LibMuJoCo_mj_objectVelocity.load(self.lib)
        self.mj_objectAcceleration = LibMuJoCo_mj_objectAcceleration.load(self.lib)
        self.mj_geomDistance = LibMuJoCo_mj_geomDistance.load(self.lib)
        self.mj_contactForce = LibMuJoCo_mj_contactForce.load(self.lib)
        self.mj_differentiatePos = LibMuJoCo_mj_differentiatePos.load(self.lib)
        self.mj_integratePos = LibMuJoCo_mj_integratePos.load(self.lib)
        self.mj_normalizeQuat = LibMuJoCo_mj_normalizeQuat.load(self.lib)
        self.mj_local2Global = LibMuJoCo_mj_local2Global.load(self.lib)
        self.mj_getTotalmass = LibMuJoCo_mj_getTotalmass.load(self.lib)
        self.mj_setTotalmass = LibMuJoCo_mj_setTotalmass.load(self.lib)
        self.mj_getPluginConfig = LibMuJoCo_mj_getPluginConfig.load(self.lib)
        self.mj_loadPluginLibrary = LibMuJoCo_mj_loadPluginLibrary.load(self.lib)
        self.mj_loadAllPluginLibraries = LibMuJoCo_mj_loadAllPluginLibraries.load(self.lib)
        self.mj_version = LibMuJoCo_mj_version.load(self.lib)
        self.mj_versionString = LibMuJoCo_mj_versionString.load(self.lib)
        self.mj_multiRay = LibMuJoCo_mj_multiRay.load(self.lib)
        self.mj_ray = LibMuJoCo_mj_ray.load(self.lib)
        self.mj_rayHfield = LibMuJoCo_mj_rayHfield.load(self.lib)
        self.mj_rayMesh = LibMuJoCo_mj_rayMesh.load(self.lib)
        self.mju_rayGeom = LibMuJoCo_mju_rayGeom.load(self.lib)
        self.mju_rayFlex = LibMuJoCo_mju_rayFlex.load(self.lib)
        self.mju_raySkin = LibMuJoCo_mju_raySkin.load(self.lib)
        self.mjv_defaultCamera = LibMuJoCo_mjv_defaultCamera.load(self.lib)
        self.mjv_defaultFreeCamera = LibMuJoCo_mjv_defaultFreeCamera.load(self.lib)
        self.mjv_defaultPerturb = LibMuJoCo_mjv_defaultPerturb.load(self.lib)
        self.mjv_room2model = LibMuJoCo_mjv_room2model.load(self.lib)
        self.mjv_model2room = LibMuJoCo_mjv_model2room.load(self.lib)
        self.mjv_cameraInModel = LibMuJoCo_mjv_cameraInModel.load(self.lib)
        self.mjv_cameraInRoom = LibMuJoCo_mjv_cameraInRoom.load(self.lib)
        self.mjv_frustumHeight = LibMuJoCo_mjv_frustumHeight.load(self.lib)
        self.mjv_alignToCamera = LibMuJoCo_mjv_alignToCamera.load(self.lib)
        self.mjv_moveCamera = LibMuJoCo_mjv_moveCamera.load(self.lib)
        self.mjv_movePerturb = LibMuJoCo_mjv_movePerturb.load(self.lib)
        self.mjv_moveModel = LibMuJoCo_mjv_moveModel.load(self.lib)
        self.mjv_initPerturb = LibMuJoCo_mjv_initPerturb.load(self.lib)
        self.mjv_applyPerturbPose = LibMuJoCo_mjv_applyPerturbPose.load(self.lib)
        self.mjv_applyPerturbForce = LibMuJoCo_mjv_applyPerturbForce.load(self.lib)
        self.mjv_averageCamera = LibMuJoCo_mjv_averageCamera.load(self.lib)
        self.mjv_select = LibMuJoCo_mjv_select.load(self.lib)
        self.mjv_defaultOption = LibMuJoCo_mjv_defaultOption.load(self.lib)
        self.mjv_defaultFigure = LibMuJoCo_mjv_defaultFigure.load(self.lib)
        self.mjv_initGeom = LibMuJoCo_mjv_initGeom.load(self.lib)
        self.mjv_connector = LibMuJoCo_mjv_connector.load(self.lib)
        self.mjv_defaultScene = LibMuJoCo_mjv_defaultScene.load(self.lib)
        self.mjv_makeScene = LibMuJoCo_mjv_makeScene.load(self.lib)
        self.mjv_freeScene = LibMuJoCo_mjv_freeScene.load(self.lib)
        self.mjv_updateScene = LibMuJoCo_mjv_updateScene.load(self.lib)
        self.mjv_copyModel = LibMuJoCo_mjv_copyModel.load(self.lib)
        self.mjv_addGeoms = LibMuJoCo_mjv_addGeoms.load(self.lib)
        self.mjv_makeLights = LibMuJoCo_mjv_makeLights.load(self.lib)
        self.mjv_updateCamera = LibMuJoCo_mjv_updateCamera.load(self.lib)
        self.mjv_updateSkin = LibMuJoCo_mjv_updateSkin.load(self.lib)
        self.mjr_defaultContext = LibMuJoCo_mjr_defaultContext.load(self.lib)
        self.mjr_makeContext = LibMuJoCo_mjr_makeContext.load(self.lib)
        self.mjr_changeFont = LibMuJoCo_mjr_changeFont.load(self.lib)
        self.mjr_addAux = LibMuJoCo_mjr_addAux.load(self.lib)
        self.mjr_freeContext = LibMuJoCo_mjr_freeContext.load(self.lib)
        self.mjr_resizeOffscreen = LibMuJoCo_mjr_resizeOffscreen.load(self.lib)
        self.mjr_uploadTexture = LibMuJoCo_mjr_uploadTexture.load(self.lib)
        self.mjr_uploadMesh = LibMuJoCo_mjr_uploadMesh.load(self.lib)
        self.mjr_uploadHField = LibMuJoCo_mjr_uploadHField.load(self.lib)
        self.mjr_restoreBuffer = LibMuJoCo_mjr_restoreBuffer.load(self.lib)
        self.mjr_setBuffer = LibMuJoCo_mjr_setBuffer.load(self.lib)
        self.mjr_readPixels = LibMuJoCo_mjr_readPixels.load(self.lib)
        self.mjr_drawPixels = LibMuJoCo_mjr_drawPixels.load(self.lib)
        self.mjr_blitBuffer = LibMuJoCo_mjr_blitBuffer.load(self.lib)
        self.mjr_setAux = LibMuJoCo_mjr_setAux.load(self.lib)
        self.mjr_blitAux = LibMuJoCo_mjr_blitAux.load(self.lib)
        self.mjr_text = LibMuJoCo_mjr_text.load(self.lib)
        self.mjr_overlay = LibMuJoCo_mjr_overlay.load(self.lib)
        self.mjr_maxViewport = LibMuJoCo_mjr_maxViewport.load(self.lib)
        self.mjr_rectangle = LibMuJoCo_mjr_rectangle.load(self.lib)
        self.mjr_label = LibMuJoCo_mjr_label.load(self.lib)
        self.mjr_figure = LibMuJoCo_mjr_figure.load(self.lib)
        self.mjr_render = LibMuJoCo_mjr_render.load(self.lib)
        self.mjr_finish = LibMuJoCo_mjr_finish.load(self.lib)
        self.mjr_getError = LibMuJoCo_mjr_getError.load(self.lib)
        self.mjr_findRect = LibMuJoCo_mjr_findRect.load(self.lib)
        self.mjui_themeSpacing = LibMuJoCo_mjui_themeSpacing.load(self.lib)
        self.mjui_themeColor = LibMuJoCo_mjui_themeColor.load(self.lib)
        self.mjui_add = LibMuJoCo_mjui_add.load(self.lib)
        self.mjui_addToSection = LibMuJoCo_mjui_addToSection.load(self.lib)
        self.mjui_resize = LibMuJoCo_mjui_resize.load(self.lib)
        self.mjui_update = LibMuJoCo_mjui_update.load(self.lib)
        self.mjui_event = LibMuJoCo_mjui_event.load(self.lib)
        self.mjui_render = LibMuJoCo_mjui_render.load(self.lib)
        self.mju_error = LibMuJoCo_mju_error.load(self.lib)
        self.mju_error_i = LibMuJoCo_mju_error_i.load(self.lib)
        self.mju_error_s = LibMuJoCo_mju_error_s.load(self.lib)
        self.mju_warning = LibMuJoCo_mju_warning.load(self.lib)
        self.mju_warning_i = LibMuJoCo_mju_warning_i.load(self.lib)
        self.mju_warning_s = LibMuJoCo_mju_warning_s.load(self.lib)
        self.mju_clearHandlers = LibMuJoCo_mju_clearHandlers.load(self.lib)
        self.mju_malloc = LibMuJoCo_mju_malloc.load(self.lib)
        self.mju_free = LibMuJoCo_mju_free.load(self.lib)
        self.mj_warning = LibMuJoCo_mj_warning.load(self.lib)
        self.mju_writeLog = LibMuJoCo_mju_writeLog.load(self.lib)
        self.mjs_getError = LibMuJoCo_mjs_getError.load(self.lib)
        self.mjs_isWarning = LibMuJoCo_mjs_isWarning.load(self.lib)
        self.mju_zero3 = LibMuJoCo_mju_zero3.load(self.lib)
        self.mju_copy3 = LibMuJoCo_mju_copy3.load(self.lib)
        self.mju_scl3 = LibMuJoCo_mju_scl3.load(self.lib)
        self.mju_add3 = LibMuJoCo_mju_add3.load(self.lib)
        self.mju_sub3 = LibMuJoCo_mju_sub3.load(self.lib)
        self.mju_addTo3 = LibMuJoCo_mju_addTo3.load(self.lib)
        self.mju_subFrom3 = LibMuJoCo_mju_subFrom3.load(self.lib)
        self.mju_addToScl3 = LibMuJoCo_mju_addToScl3.load(self.lib)
        self.mju_addScl3 = LibMuJoCo_mju_addScl3.load(self.lib)
        self.mju_normalize3 = LibMuJoCo_mju_normalize3.load(self.lib)
        self.mju_norm3 = LibMuJoCo_mju_norm3.load(self.lib)
        self.mju_dot3 = LibMuJoCo_mju_dot3.load(self.lib)
        self.mju_dist3 = LibMuJoCo_mju_dist3.load(self.lib)
        self.mju_mulMatVec3 = LibMuJoCo_mju_mulMatVec3.load(self.lib)
        self.mju_mulMatTVec3 = LibMuJoCo_mju_mulMatTVec3.load(self.lib)
        self.mju_cross = LibMuJoCo_mju_cross.load(self.lib)
        self.mju_zero4 = LibMuJoCo_mju_zero4.load(self.lib)
        self.mju_unit4 = LibMuJoCo_mju_unit4.load(self.lib)
        self.mju_copy4 = LibMuJoCo_mju_copy4.load(self.lib)
        self.mju_normalize4 = LibMuJoCo_mju_normalize4.load(self.lib)
        self.mju_zero = LibMuJoCo_mju_zero.load(self.lib)
        self.mju_fill = LibMuJoCo_mju_fill.load(self.lib)
        self.mju_copy = LibMuJoCo_mju_copy.load(self.lib)
        self.mju_sum = LibMuJoCo_mju_sum.load(self.lib)
        self.mju_L1 = LibMuJoCo_mju_L1.load(self.lib)
        self.mju_scl = LibMuJoCo_mju_scl.load(self.lib)
        self.mju_add = LibMuJoCo_mju_add.load(self.lib)
        self.mju_sub = LibMuJoCo_mju_sub.load(self.lib)
        self.mju_addTo = LibMuJoCo_mju_addTo.load(self.lib)
        self.mju_subFrom = LibMuJoCo_mju_subFrom.load(self.lib)
        self.mju_addToScl = LibMuJoCo_mju_addToScl.load(self.lib)
        self.mju_addScl = LibMuJoCo_mju_addScl.load(self.lib)
        self.mju_normalize = LibMuJoCo_mju_normalize.load(self.lib)
        self.mju_norm = LibMuJoCo_mju_norm.load(self.lib)
        self.mju_dot = LibMuJoCo_mju_dot.load(self.lib)
        self.mju_mulMatVec = LibMuJoCo_mju_mulMatVec.load(self.lib)
        self.mju_mulMatTVec = LibMuJoCo_mju_mulMatTVec.load(self.lib)
        self.mju_mulVecMatVec = LibMuJoCo_mju_mulVecMatVec.load(self.lib)
        self.mju_transpose = LibMuJoCo_mju_transpose.load(self.lib)
        self.mju_symmetrize = LibMuJoCo_mju_symmetrize.load(self.lib)
        self.mju_eye = LibMuJoCo_mju_eye.load(self.lib)
        self.mju_mulMatMat = LibMuJoCo_mju_mulMatMat.load(self.lib)
        self.mju_mulMatMatT = LibMuJoCo_mju_mulMatMatT.load(self.lib)
        self.mju_mulMatTMat = LibMuJoCo_mju_mulMatTMat.load(self.lib)
        self.mju_sqrMatTD = LibMuJoCo_mju_sqrMatTD.load(self.lib)
        self.mju_transformSpatial = LibMuJoCo_mju_transformSpatial.load(self.lib)
        self.mju_dense2sparse = LibMuJoCo_mju_dense2sparse.load(self.lib)
        self.mju_sparse2dense = LibMuJoCo_mju_sparse2dense.load(self.lib)
        self.mju_rotVecQuat = LibMuJoCo_mju_rotVecQuat.load(self.lib)
        self.mju_negQuat = LibMuJoCo_mju_negQuat.load(self.lib)
        self.mju_mulQuat = LibMuJoCo_mju_mulQuat.load(self.lib)
        self.mju_mulQuatAxis = LibMuJoCo_mju_mulQuatAxis.load(self.lib)
        self.mju_axisAngle2Quat = LibMuJoCo_mju_axisAngle2Quat.load(self.lib)
        self.mju_quat2Vel = LibMuJoCo_mju_quat2Vel.load(self.lib)
        self.mju_subQuat = LibMuJoCo_mju_subQuat.load(self.lib)
        self.mju_quat2Mat = LibMuJoCo_mju_quat2Mat.load(self.lib)
        self.mju_mat2Quat = LibMuJoCo_mju_mat2Quat.load(self.lib)
        self.mju_derivQuat = LibMuJoCo_mju_derivQuat.load(self.lib)
        self.mju_quatIntegrate = LibMuJoCo_mju_quatIntegrate.load(self.lib)
        self.mju_quatZ2Vec = LibMuJoCo_mju_quatZ2Vec.load(self.lib)
        self.mju_mat2Rot = LibMuJoCo_mju_mat2Rot.load(self.lib)
        self.mju_euler2Quat = LibMuJoCo_mju_euler2Quat.load(self.lib)
        self.mju_mulPose = LibMuJoCo_mju_mulPose.load(self.lib)
        self.mju_negPose = LibMuJoCo_mju_negPose.load(self.lib)
        self.mju_trnVecPose = LibMuJoCo_mju_trnVecPose.load(self.lib)
        self.mju_cholFactor = LibMuJoCo_mju_cholFactor.load(self.lib)
        self.mju_cholSolve = LibMuJoCo_mju_cholSolve.load(self.lib)
        self.mju_cholUpdate = LibMuJoCo_mju_cholUpdate.load(self.lib)
        self.mju_cholFactorBand = LibMuJoCo_mju_cholFactorBand.load(self.lib)
        self.mju_cholSolveBand = LibMuJoCo_mju_cholSolveBand.load(self.lib)
        self.mju_band2Dense = LibMuJoCo_mju_band2Dense.load(self.lib)
        self.mju_dense2Band = LibMuJoCo_mju_dense2Band.load(self.lib)
        self.mju_bandMulMatVec = LibMuJoCo_mju_bandMulMatVec.load(self.lib)
        self.mju_bandDiag = LibMuJoCo_mju_bandDiag.load(self.lib)
        self.mju_eig3 = LibMuJoCo_mju_eig3.load(self.lib)
        self.mju_boxQP = LibMuJoCo_mju_boxQP.load(self.lib)
        self.mju_boxQPmalloc = LibMuJoCo_mju_boxQPmalloc.load(self.lib)
        self.mju_muscleGain = LibMuJoCo_mju_muscleGain.load(self.lib)
        self.mju_muscleBias = LibMuJoCo_mju_muscleBias.load(self.lib)
        self.mju_muscleDynamics = LibMuJoCo_mju_muscleDynamics.load(self.lib)
        self.mju_encodePyramid = LibMuJoCo_mju_encodePyramid.load(self.lib)
        self.mju_decodePyramid = LibMuJoCo_mju_decodePyramid.load(self.lib)
        self.mju_springDamper = LibMuJoCo_mju_springDamper.load(self.lib)
        self.mju_min = LibMuJoCo_mju_min.load(self.lib)
        self.mju_max = LibMuJoCo_mju_max.load(self.lib)
        self.mju_clip = LibMuJoCo_mju_clip.load(self.lib)
        self.mju_sign = LibMuJoCo_mju_sign.load(self.lib)
        self.mju_round = LibMuJoCo_mju_round.load(self.lib)
        self.mju_type2Str = LibMuJoCo_mju_type2Str.load(self.lib)
        self.mju_str2Type = LibMuJoCo_mju_str2Type.load(self.lib)
        self.mju_writeNumBytes = LibMuJoCo_mju_writeNumBytes.load(self.lib)
        self.mju_warningText = LibMuJoCo_mju_warningText.load(self.lib)
        self.mju_isBad = LibMuJoCo_mju_isBad.load(self.lib)
        self.mju_isZero = LibMuJoCo_mju_isZero.load(self.lib)
        self.mju_standardNormal = LibMuJoCo_mju_standardNormal.load(self.lib)
        self.mju_f2n = LibMuJoCo_mju_f2n.load(self.lib)
        self.mju_n2f = LibMuJoCo_mju_n2f.load(self.lib)
        self.mju_d2n = LibMuJoCo_mju_d2n.load(self.lib)
        self.mju_n2d = LibMuJoCo_mju_n2d.load(self.lib)
        self.mju_insertionSort = LibMuJoCo_mju_insertionSort.load(self.lib)
        self.mju_insertionSortInt = LibMuJoCo_mju_insertionSortInt.load(self.lib)
        self.mju_Halton = LibMuJoCo_mju_Halton.load(self.lib)
        self.mju_strncpy = LibMuJoCo_mju_strncpy.load(self.lib)
        self.mju_sigmoid = LibMuJoCo_mju_sigmoid.load(self.lib)
        self.mjc_getSDF = LibMuJoCo_mjc_getSDF.load(self.lib)
        self.mjc_distance = LibMuJoCo_mjc_distance.load(self.lib)
        self.mjc_gradient = LibMuJoCo_mjc_gradient.load(self.lib)
        self.mjd_transitionFD = LibMuJoCo_mjd_transitionFD.load(self.lib)
        self.mjd_inverseFD = LibMuJoCo_mjd_inverseFD.load(self.lib)
        self.mjd_subQuat = LibMuJoCo_mjd_subQuat.load(self.lib)
        self.mjd_quatIntegrate = LibMuJoCo_mjd_quatIntegrate.load(self.lib)
        self.mjp_defaultPlugin = LibMuJoCo_mjp_defaultPlugin.load(self.lib)
        self.mjp_registerPlugin = LibMuJoCo_mjp_registerPlugin.load(self.lib)
        self.mjp_pluginCount = LibMuJoCo_mjp_pluginCount.load(self.lib)
        self.mjp_getPlugin = LibMuJoCo_mjp_getPlugin.load(self.lib)
        self.mjp_getPluginAtSlot = LibMuJoCo_mjp_getPluginAtSlot.load(self.lib)
        self.mjp_defaultResourceProvider = LibMuJoCo_mjp_defaultResourceProvider.load(self.lib)
        self.mjp_registerResourceProvider = LibMuJoCo_mjp_registerResourceProvider.load(self.lib)
        self.mjp_resourceProviderCount = LibMuJoCo_mjp_resourceProviderCount.load(self.lib)
        self.mjp_getResourceProvider = LibMuJoCo_mjp_getResourceProvider.load(self.lib)
        self.mjp_getResourceProviderAtSlot = LibMuJoCo_mjp_getResourceProviderAtSlot.load(self.lib)
        self.mju_threadPoolCreate = LibMuJoCo_mju_threadPoolCreate.load(self.lib)
        self.mju_bindThreadPool = LibMuJoCo_mju_bindThreadPool.load(self.lib)
        self.mju_threadPoolEnqueue = LibMuJoCo_mju_threadPoolEnqueue.load(self.lib)
        self.mju_threadPoolDestroy = LibMuJoCo_mju_threadPoolDestroy.load(self.lib)
        self.mju_defaultTask = LibMuJoCo_mju_defaultTask.load(self.lib)
        self.mju_taskJoin = LibMuJoCo_mju_taskJoin.load(self.lib)
        self.mjs_attach = LibMuJoCo_mjs_attach.load(self.lib)
        self.mjs_addBody = LibMuJoCo_mjs_addBody.load(self.lib)
        self.mjs_addSite = LibMuJoCo_mjs_addSite.load(self.lib)
        self.mjs_addJoint = LibMuJoCo_mjs_addJoint.load(self.lib)
        self.mjs_addFreeJoint = LibMuJoCo_mjs_addFreeJoint.load(self.lib)
        self.mjs_addGeom = LibMuJoCo_mjs_addGeom.load(self.lib)
        self.mjs_addCamera = LibMuJoCo_mjs_addCamera.load(self.lib)
        self.mjs_addLight = LibMuJoCo_mjs_addLight.load(self.lib)
        self.mjs_addFrame = LibMuJoCo_mjs_addFrame.load(self.lib)
        self.mjs_delete = LibMuJoCo_mjs_delete.load(self.lib)
        self.mjs_addActuator = LibMuJoCo_mjs_addActuator.load(self.lib)
        self.mjs_addSensor = LibMuJoCo_mjs_addSensor.load(self.lib)
        self.mjs_addFlex = LibMuJoCo_mjs_addFlex.load(self.lib)
        self.mjs_addPair = LibMuJoCo_mjs_addPair.load(self.lib)
        self.mjs_addExclude = LibMuJoCo_mjs_addExclude.load(self.lib)
        self.mjs_addEquality = LibMuJoCo_mjs_addEquality.load(self.lib)
        self.mjs_addTendon = LibMuJoCo_mjs_addTendon.load(self.lib)
        self.mjs_wrapSite = LibMuJoCo_mjs_wrapSite.load(self.lib)
        self.mjs_wrapGeom = LibMuJoCo_mjs_wrapGeom.load(self.lib)
        self.mjs_wrapJoint = LibMuJoCo_mjs_wrapJoint.load(self.lib)
        self.mjs_wrapPulley = LibMuJoCo_mjs_wrapPulley.load(self.lib)
        self.mjs_addNumeric = LibMuJoCo_mjs_addNumeric.load(self.lib)
        self.mjs_addText = LibMuJoCo_mjs_addText.load(self.lib)
        self.mjs_addTuple = LibMuJoCo_mjs_addTuple.load(self.lib)
        self.mjs_addKey = LibMuJoCo_mjs_addKey.load(self.lib)
        self.mjs_addPlugin = LibMuJoCo_mjs_addPlugin.load(self.lib)
        self.mjs_addDefault = LibMuJoCo_mjs_addDefault.load(self.lib)
        self.mjs_setToMotor = LibMuJoCo_mjs_setToMotor.load(self.lib)
        self.mjs_setToPosition = LibMuJoCo_mjs_setToPosition.load(self.lib)
        self.mjs_setToIntVelocity = LibMuJoCo_mjs_setToIntVelocity.load(self.lib)
        self.mjs_setToVelocity = LibMuJoCo_mjs_setToVelocity.load(self.lib)
        self.mjs_setToDamper = LibMuJoCo_mjs_setToDamper.load(self.lib)
        self.mjs_setToCylinder = LibMuJoCo_mjs_setToCylinder.load(self.lib)
        self.mjs_setToMuscle = LibMuJoCo_mjs_setToMuscle.load(self.lib)
        self.mjs_setToAdhesion = LibMuJoCo_mjs_setToAdhesion.load(self.lib)
        self.mjs_addMesh = LibMuJoCo_mjs_addMesh.load(self.lib)
        self.mjs_addHField = LibMuJoCo_mjs_addHField.load(self.lib)
        self.mjs_addSkin = LibMuJoCo_mjs_addSkin.load(self.lib)
        self.mjs_addTexture = LibMuJoCo_mjs_addTexture.load(self.lib)
        self.mjs_addMaterial = LibMuJoCo_mjs_addMaterial.load(self.lib)
        self.mjs_getSpec = LibMuJoCo_mjs_getSpec.load(self.lib)
        self.mjs_findSpec = LibMuJoCo_mjs_findSpec.load(self.lib)
        self.mjs_findBody = LibMuJoCo_mjs_findBody.load(self.lib)
        self.mjs_findElement = LibMuJoCo_mjs_findElement.load(self.lib)
        self.mjs_findChild = LibMuJoCo_mjs_findChild.load(self.lib)
        self.mjs_getParent = LibMuJoCo_mjs_getParent.load(self.lib)
        self.mjs_getFrame = LibMuJoCo_mjs_getFrame.load(self.lib)
        self.mjs_findFrame = LibMuJoCo_mjs_findFrame.load(self.lib)
        self.mjs_getDefault = LibMuJoCo_mjs_getDefault.load(self.lib)
        self.mjs_findDefault = LibMuJoCo_mjs_findDefault.load(self.lib)
        self.mjs_getSpecDefault = LibMuJoCo_mjs_getSpecDefault.load(self.lib)
        self.mjs_getId = LibMuJoCo_mjs_getId.load(self.lib)
        self.mjs_firstChild = LibMuJoCo_mjs_firstChild.load(self.lib)
        self.mjs_nextChild = LibMuJoCo_mjs_nextChild.load(self.lib)
        self.mjs_firstElement = LibMuJoCo_mjs_firstElement.load(self.lib)
        self.mjs_nextElement = LibMuJoCo_mjs_nextElement.load(self.lib)
        self.mjs_setName = LibMuJoCo_mjs_setName.load(self.lib)
        self.mjs_setBuffer = LibMuJoCo_mjs_setBuffer.load(self.lib)
        self.mjs_setString = LibMuJoCo_mjs_setString.load(self.lib)
        self.mjs_setStringVec = LibMuJoCo_mjs_setStringVec.load(self.lib)
        self.mjs_setInStringVec = LibMuJoCo_mjs_setInStringVec.load(self.lib)
        self.mjs_appendString = LibMuJoCo_mjs_appendString.load(self.lib)
        self.mjs_setInt = LibMuJoCo_mjs_setInt.load(self.lib)
        self.mjs_appendIntVec = LibMuJoCo_mjs_appendIntVec.load(self.lib)
        self.mjs_setFloat = LibMuJoCo_mjs_setFloat.load(self.lib)
        self.mjs_appendFloatVec = LibMuJoCo_mjs_appendFloatVec.load(self.lib)
        self.mjs_setDouble = LibMuJoCo_mjs_setDouble.load(self.lib)
        self.mjs_setPluginAttributes = LibMuJoCo_mjs_setPluginAttributes.load(self.lib)
        self.mjs_getName = LibMuJoCo_mjs_getName.load(self.lib)
        self.mjs_getString = LibMuJoCo_mjs_getString.load(self.lib)
        self.mjs_getDouble = LibMuJoCo_mjs_getDouble.load(self.lib)
        self.mjs_getPluginAttributes = LibMuJoCo_mjs_getPluginAttributes.load(self.lib)
        self.mjs_setDefault = LibMuJoCo_mjs_setDefault.load(self.lib)
        self.mjs_setFrame = LibMuJoCo_mjs_setFrame.load(self.lib)
        self.mjs_resolveOrientation = LibMuJoCo_mjs_resolveOrientation.load(self.lib)
        self.mjs_bodyToFrame = LibMuJoCo_mjs_bodyToFrame.load(self.lib)
        self.mjs_setUserValue = LibMuJoCo_mjs_setUserValue.load(self.lib)
        self.mjs_setUserValueWithCleanup = LibMuJoCo_mjs_setUserValueWithCleanup.load(self.lib)
        self.mjs_getUserValue = LibMuJoCo_mjs_getUserValue.load(self.lib)
        self.mjs_deleteUserValue = LibMuJoCo_mjs_deleteUserValue.load(self.lib)
        self.mjs_defaultSpec = LibMuJoCo_mjs_defaultSpec.load(self.lib)
        self.mjs_defaultOrientation = LibMuJoCo_mjs_defaultOrientation.load(self.lib)
        self.mjs_defaultBody = LibMuJoCo_mjs_defaultBody.load(self.lib)
        self.mjs_defaultFrame = LibMuJoCo_mjs_defaultFrame.load(self.lib)
        self.mjs_defaultJoint = LibMuJoCo_mjs_defaultJoint.load(self.lib)
        self.mjs_defaultGeom = LibMuJoCo_mjs_defaultGeom.load(self.lib)
        self.mjs_defaultSite = LibMuJoCo_mjs_defaultSite.load(self.lib)
        self.mjs_defaultCamera = LibMuJoCo_mjs_defaultCamera.load(self.lib)
        self.mjs_defaultLight = LibMuJoCo_mjs_defaultLight.load(self.lib)
        self.mjs_defaultFlex = LibMuJoCo_mjs_defaultFlex.load(self.lib)
        self.mjs_defaultMesh = LibMuJoCo_mjs_defaultMesh.load(self.lib)
        self.mjs_defaultHField = LibMuJoCo_mjs_defaultHField.load(self.lib)
        self.mjs_defaultSkin = LibMuJoCo_mjs_defaultSkin.load(self.lib)
        self.mjs_defaultTexture = LibMuJoCo_mjs_defaultTexture.load(self.lib)
        self.mjs_defaultMaterial = LibMuJoCo_mjs_defaultMaterial.load(self.lib)
        self.mjs_defaultPair = LibMuJoCo_mjs_defaultPair.load(self.lib)
        self.mjs_defaultEquality = LibMuJoCo_mjs_defaultEquality.load(self.lib)
        self.mjs_defaultTendon = LibMuJoCo_mjs_defaultTendon.load(self.lib)
        self.mjs_defaultActuator = LibMuJoCo_mjs_defaultActuator.load(self.lib)
        self.mjs_defaultSensor = LibMuJoCo_mjs_defaultSensor.load(self.lib)
        self.mjs_defaultNumeric = LibMuJoCo_mjs_defaultNumeric.load(self.lib)
        self.mjs_defaultText = LibMuJoCo_mjs_defaultText.load(self.lib)
        self.mjs_defaultTuple = LibMuJoCo_mjs_defaultTuple.load(self.lib)
        self.mjs_defaultKey = LibMuJoCo_mjs_defaultKey.load(self.lib)
        self.mjs_defaultPlugin = LibMuJoCo_mjs_defaultPlugin.load(self.lib)
        self.mjs_asBody = LibMuJoCo_mjs_asBody.load(self.lib)
        self.mjs_asGeom = LibMuJoCo_mjs_asGeom.load(self.lib)
        self.mjs_asJoint = LibMuJoCo_mjs_asJoint.load(self.lib)
        self.mjs_asSite = LibMuJoCo_mjs_asSite.load(self.lib)
        self.mjs_asCamera = LibMuJoCo_mjs_asCamera.load(self.lib)
        self.mjs_asLight = LibMuJoCo_mjs_asLight.load(self.lib)
        self.mjs_asFrame = LibMuJoCo_mjs_asFrame.load(self.lib)
        self.mjs_asActuator = LibMuJoCo_mjs_asActuator.load(self.lib)
        self.mjs_asSensor = LibMuJoCo_mjs_asSensor.load(self.lib)
        self.mjs_asFlex = LibMuJoCo_mjs_asFlex.load(self.lib)
        self.mjs_asPair = LibMuJoCo_mjs_asPair.load(self.lib)
        self.mjs_asEquality = LibMuJoCo_mjs_asEquality.load(self.lib)
        self.mjs_asExclude = LibMuJoCo_mjs_asExclude.load(self.lib)
        self.mjs_asTendon = LibMuJoCo_mjs_asTendon.load(self.lib)
        self.mjs_asNumeric = LibMuJoCo_mjs_asNumeric.load(self.lib)
        self.mjs_asText = LibMuJoCo_mjs_asText.load(self.lib)
        self.mjs_asTuple = LibMuJoCo_mjs_asTuple.load(self.lib)
        self.mjs_asKey = LibMuJoCo_mjs_asKey.load(self.lib)
        self.mjs_asMesh = LibMuJoCo_mjs_asMesh.load(self.lib)
        self.mjs_asHField = LibMuJoCo_mjs_asHField.load(self.lib)
        self.mjs_asSkin = LibMuJoCo_mjs_asSkin.load(self.lib)
        self.mjs_asTexture = LibMuJoCo_mjs_asTexture.load(self.lib)
        self.mjs_asMaterial = LibMuJoCo_mjs_asMaterial.load(self.lib)
        self.mjs_asPlugin = LibMuJoCo_mjs_asPlugin.load(self.lib)

