from sys.ffi import _Global
from sys import ffi


alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = __NSConstantString_tag
struct __NSConstantString_tag:
	pass


alias __builtin_ms_va_list = UnsafePointer[Int8]


alias __builtin_va_list = OpaquePointer # __va_list_tag[1]
struct __va_list_tag:
	pass


alias size_t = UInt64

alias wchar_t = Int32

alias _Float32 = Float32

alias _Float64 = Float64

alias _Float32x = Float64

alias _Float64x = Float64
struct Anonymous___usr_include_stdlib_h_59_9__line_63_3_:

	var quot: Int32
	

	var rem: Int32
	


alias div_t = Anonymous___usr_include_stdlib_h_59_9__line_63_3_
struct Anonymous__line_67_9__line_71_3_:

	var quot: Int64
	

	var rem: Int64
	


alias ldiv_t = Anonymous__line_67_9__line_71_3_
struct Anonymous__line_77_23__line_81_3_:

	var quot: Int128
	

	var rem: Int128
	


alias lldiv_t = Anonymous__line_77_23__line_81_3_
alias __ctype_get_mb_cur_max = fn() -> size_t
alias atof = fn(read __nptr: UnsafePointer[Int8]) -> Float64
alias atoi = fn(read __nptr: UnsafePointer[Int8]) -> Int32
alias atol = fn(read __nptr: UnsafePointer[Int8]) -> Int64
alias atoll = fn(read __nptr: UnsafePointer[Int8]) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias strtod = fn(read : UnsafePointer[Int8], : UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtod = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias strtof = fn(read : UnsafePointer[Int8], : UnsafePointer[UnsafePointer[Int8]]) -> Float32
alias strtof = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias strtold = fn(read : UnsafePointer[Int8], : UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtold = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias strtol = fn(read : UnsafePointer[Int8], : UnsafePointer[UnsafePointer[Int8]], : Int32) -> Int64
alias strtol = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias strtoul = fn(read : UnsafePointer[Int8], : UnsafePointer[UnsafePointer[Int8]], : Int32) -> UInt64
alias strtoul = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> UInt64
alias strtoq = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int128
alias strtouq = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> UInt128
 # Disabled either due to a redefinition or a previous declaration: alias strtoll = fn(read : UnsafePointer[Int8], : UnsafePointer[UnsafePointer[Int8]], : Int32) -> Int128
alias strtoll = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias strtoull = fn(read : UnsafePointer[Int8], : UnsafePointer[UnsafePointer[Int8]], : Int32) -> UInt128
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

alias __nlink_t = UInt64

alias __off_t = Int64

alias __off64_t = Int64

alias __pid_t = Int32
struct Anonymous___usr_include_x86_64_linux_gnu_bits_typesizes_h_73_24__col_47_:

	var __val: SIMD[Int32.dtype, 2]
	


alias __fsid_t = Anonymous___usr_include_x86_64_linux_gnu_bits_typesizes_h_73_24__col_47_

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


alias __blksize_t = Int64

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

alias nlink_t = UInt64

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
struct Anonymous___usr_include_x86_64_linux_gnu_bits_types___sigset_t_h_5_9__line_8_1_:

	var __val: SIMD[UInt64.dtype, 16]
	


alias __sigset_t = Anonymous___usr_include_x86_64_linux_gnu_bits_types___sigset_t_h_5_9__line_8_1_

alias sigset_t = __sigset_t
struct timeval:

	var tv_sec: __time_t
	# Unhandled tokens: long
	

	var tv_usec: __suseconds_t
	# Unhandled tokens: long
	

struct timespec:

	var tv_sec: __time_t
	# Unhandled tokens: long
	

	var tv_nsec: __syscall_slong_t
	# Unhandled tokens: long
	


alias suseconds_t = Int64

alias __fd_mask = Int64
struct Anonymous__line_59_9__line_70_3_:

	var __fds_bits: SIMD[__fd_mask.dtype, 16]
	


alias fd_set = Anonymous__line_59_9__line_70_3_

alias fd_mask = Int64
alias select = fn(__nfds: Int32, __readfds: UnsafePointer[fd_set], __writefds: UnsafePointer[fd_set], __exceptfds: UnsafePointer[fd_set], __timeout: UnsafePointer[timeval]) -> Int32
alias pselect = fn(__nfds: Int32, __readfds: UnsafePointer[fd_set], __writefds: UnsafePointer[fd_set], __exceptfds: UnsafePointer[fd_set], read __timeout: UnsafePointer[timespec], read __sigmask: UnsafePointer[__sigset_t]) -> Int32

alias blksize_t = Int64

alias blkcnt_t = Int64

alias fsblkcnt_t = UInt64

alias fsfilcnt_t = UInt64
struct _Anonymous___usr_include_x86_64_linux_gnu_bits_atomic_wide_counter_h_25_9__line_33_1__Anonymous__line_28_3__line_32_3_:

	var __low: UInt32
	

	var __high: UInt32
	


struct Anonymous___usr_include_x86_64_linux_gnu_bits_atomic_wide_counter_h_25_9__line_33_1_:

	var __value64: UInt128
	

	var __value32: _Anonymous___usr_include_x86_64_linux_gnu_bits_atomic_wide_counter_h_25_9__line_33_1__Anonymous__line_28_3__line_32_3_
	


alias __atomic_wide_counter = Anonymous___usr_include_x86_64_linux_gnu_bits_atomic_wide_counter_h_25_9__line_33_1_
struct __pthread_internal_list:

	var __prev: UnsafePointer[__pthread_internal_list]
	

	var __next: UnsafePointer[__pthread_internal_list]
	


alias __pthread_list_t = __pthread_internal_list
struct __pthread_internal_slist:

	var __next: UnsafePointer[__pthread_internal_slist]
	


alias __pthread_slist_t = __pthread_internal_slist
struct __pthread_mutex_s:

	var __lock: Int32
	

	var __count: UInt32
	

	var __owner: Int32
	

	var __nusers: UInt32
	

	var __kind: Int32
	

	var __spins: Int16
	

	var __elision: Int16
	

	var __list: __pthread_list_t
	# Unhandled tokens: struct __pthread_internal_list
	

struct __pthread_rwlock_arch_t:

	var __readers: UInt32
	

	var __writers: UInt32
	

	var __wrphase_futex: UInt32
	

	var __writers_futex: UInt32
	

	var __pad3: UInt32
	

	var __pad4: UInt32
	

	var __cur_writer: Int32
	

	var __shared: Int32
	

	var __rwelision: Int8
	

	var __pad1: SIMD[UInt8.dtype, 7]
	

	var __pad2: UInt64
	

	var __flags: UInt32
	

struct __pthread_cond_s:

	var __wseq: __atomic_wide_counter
	# Unhandled tokens: __atomic_wide_counter
	

	var __g1_start: __atomic_wide_counter
	# Unhandled tokens: __atomic_wide_counter
	

	var __g_refs: SIMD[UInt32.dtype, 2]
	

	var __g_size: SIMD[UInt32.dtype, 2]
	

	var __g1_orig_size: UInt32
	

	var __wrefs: UInt32
	

	var __g_signals: SIMD[UInt32.dtype, 2]
	


alias __tss_t = UInt32

alias __thrd_t = UInt64
struct Anonymous__line_108_9__line_111_1_:

	var __data: Int32
	


alias __once_flag = Anonymous__line_108_9__line_111_1_

alias pthread_t = UInt64
struct Anonymous__line_32_9__line_36_1_:

	var __size: SIMD[Int8.dtype, 4]
	

	var __align: Int32
	


alias pthread_mutexattr_t = Anonymous__line_32_9__line_36_1_
struct Anonymous__line_41_9__line_45_1_:

	var __size: SIMD[Int8.dtype, 4]
	

	var __align: Int32
	


alias pthread_condattr_t = Anonymous__line_41_9__line_45_1_

alias pthread_key_t = UInt32

alias pthread_once_t = Int32
struct pthread_attr_t:

	var __size: SIMD[Int8.dtype, 56]
	

	var __align: Int64
	


alias pthread_attr_t = pthread_attr_t
struct Anonymous__line_67_9__line_72_1_:

	var __data: __pthread_mutex_s
	# Unhandled tokens: struct __pthread_mutex_s
	

	var __size: SIMD[Int8.dtype, 40]
	

	var __align: Int64
	


alias pthread_mutex_t = Anonymous__line_67_9__line_72_1_
struct Anonymous__line_75_9__line_80_1_:

	var __data: __pthread_cond_s
	# Unhandled tokens: struct __pthread_cond_s
	

	var __size: SIMD[Int8.dtype, 48]
	

	var __align: Int128
	


alias pthread_cond_t = Anonymous__line_75_9__line_80_1_
struct Anonymous__line_86_9__line_91_1_:

	var __data: __pthread_rwlock_arch_t
	# Unhandled tokens: struct __pthread_rwlock_arch_t
	

	var __size: SIMD[Int8.dtype, 56]
	

	var __align: Int64
	


alias pthread_rwlock_t = Anonymous__line_86_9__line_91_1_
struct Anonymous__line_93_9__line_97_1_:

	var __size: SIMD[Int8.dtype, 8]
	

	var __align: Int64
	


alias pthread_rwlockattr_t = Anonymous__line_93_9__line_97_1_

alias pthread_spinlock_t = 
# (placeholder) | `-QualType 0x4e34a4 'volatile int' volatile
Int32
struct Anonymous__line_108_9__line_112_1_:

	var __size: SIMD[Int8.dtype, 32]
	

	var __align: Int64
	


alias pthread_barrier_t = Anonymous__line_108_9__line_112_1_
struct Anonymous__line_114_9__line_118_1_:

	var __size: SIMD[Int8.dtype, 4]
	

	var __align: Int32
	


alias pthread_barrierattr_t = Anonymous__line_114_9__line_118_1_
alias random = fn() -> Int64
alias srandom = fn(__seed: Int32) -> NoneType
alias initstate = fn(__seed: Int32, __statebuf: UnsafePointer[Int8], __statelen: size_t) -> UnsafePointer[Int8]
alias setstate = fn(__statebuf: UnsafePointer[Int8]) -> UnsafePointer[Int8]
struct random_data:

	var fptr: UnsafePointer[Int32]
	

	var rptr: UnsafePointer[Int32]
	

	var state: UnsafePointer[Int32]
	

	var rand_type: Int32
	

	var rand_deg: Int32
	

	var rand_sep: Int32
	

	var end_ptr: UnsafePointer[Int32]
	

alias random_r = fn(__buf: UnsafePointer[random_data], __result: UnsafePointer[Int32]) -> Int32
alias srandom_r = fn(__seed: Int32, __buf: UnsafePointer[random_data]) -> Int32
alias initstate_r = fn(__seed: Int32, __statebuf: UnsafePointer[Int8], __statelen: size_t, __buf: UnsafePointer[random_data]) -> Int32
alias setstate_r = fn(__statebuf: UnsafePointer[Int8], __buf: UnsafePointer[random_data]) -> Int32
alias rand = fn() -> Int32
alias srand = fn(__seed: Int32) -> NoneType
alias rand_r = fn(__seed: UnsafePointer[Int32]) -> Int32
alias drand48 = fn() -> Float64
alias erand48 = fn(__xsubi: UnsafePointer[Int16]) -> Float64
alias lrand48 = fn() -> Int64
alias nrand48 = fn(__xsubi: UnsafePointer[Int16]) -> Int64
alias mrand48 = fn() -> Int64
alias jrand48 = fn(__xsubi: UnsafePointer[Int16]) -> Int64
alias srand48 = fn(__seedval: Int64) -> NoneType
alias seed48 = fn(__seed16v: UnsafePointer[Int16]) -> UnsafePointer[UInt16]
alias lcong48 = fn(__param: UnsafePointer[Int16]) -> NoneType
struct drand48_data:

	var __x: SIMD[UInt16.dtype, 3]
	

	var __old_x: SIMD[UInt16.dtype, 3]
	

	var __c: UInt16
	

	var __init: UInt16
	

	var __a: UInt128
	

alias drand48_r = fn(__buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Float64]) -> Int32
alias erand48_r = fn(__xsubi: UnsafePointer[Int16], __buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Float64]) -> Int32
alias lrand48_r = fn(__buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias nrand48_r = fn(__xsubi: UnsafePointer[Int16], __buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias mrand48_r = fn(__buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias jrand48_r = fn(__xsubi: UnsafePointer[Int16], __buffer: UnsafePointer[drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias srand48_r = fn(__seedval: Int64, __buffer: UnsafePointer[drand48_data]) -> Int32
alias seed48_r = fn(__seed16v: UnsafePointer[Int16], __buffer: UnsafePointer[drand48_data]) -> Int32
alias lcong48_r = fn(__param: UnsafePointer[Int16], __buffer: UnsafePointer[drand48_data]) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias malloc = fn(: Int64) -> UnsafePointer[NoneType]
alias malloc = fn(__size: size_t) -> UnsafePointer[NoneType]
 # Disabled either due to a redefinition or a previous declaration: alias calloc = fn(: Int64, : Int64) -> UnsafePointer[NoneType]
alias calloc = fn(__nmemb: size_t, __size: size_t) -> UnsafePointer[NoneType]
 # Disabled either due to a redefinition or a previous declaration: alias realloc = fn(: UnsafePointer[NoneType], : Int64) -> UnsafePointer[NoneType]
alias realloc = fn(__ptr: UnsafePointer[NoneType], __size: size_t) -> UnsafePointer[NoneType]
 # Disabled either due to a redefinition or a previous declaration: alias free = fn(: UnsafePointer[NoneType]) -> NoneType
alias free = fn(__ptr: UnsafePointer[NoneType]) -> NoneType
alias reallocarray = fn(__ptr: UnsafePointer[NoneType], __nmemb: size_t, __size: size_t) -> UnsafePointer[NoneType]
alias reallocarray = fn(__ptr: UnsafePointer[NoneType], __nmemb: size_t, __size: size_t) -> UnsafePointer[NoneType]
 # Disabled either due to a redefinition or a previous declaration: alias alloca = fn(: Int64) -> UnsafePointer[NoneType]
alias alloca = fn(__size: size_t) -> UnsafePointer[NoneType]
alias valloc = fn(__size: size_t) -> UnsafePointer[NoneType]
alias posix_memalign = fn(__memptr: UnsafePointer[UnsafePointer[NoneType]], __alignment: size_t, __size: size_t) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias aligned_alloc = fn(: Int64, : Int64) -> UnsafePointer[NoneType]
alias aligned_alloc = fn(__alignment: size_t, __size: size_t) -> UnsafePointer[NoneType]
 # Disabled either due to a redefinition or a previous declaration: alias abort = fn() -> NoneType
alias abort = fn() -> NoneType
alias atexit = fn(__func: UnsafePointer[void (*)(void)]) -> Int32
alias at_quick_exit = fn(__func: UnsafePointer[void (*)(void)]) -> Int32
alias on_exit = fn(__func: UnsafePointer[void (*)(int, void )], __arg: UnsafePointer[NoneType]) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias exit = fn(: Int32) -> NoneType
alias exit = fn(__status: Int32) -> NoneType
alias quick_exit = fn(__status: Int32) -> NoneType
 # Disabled either due to a redefinition or a previous declaration: alias _Exit = fn(: Int32) -> NoneType
alias _Exit = fn(__status: Int32) -> NoneType
alias getenv = fn(read __name: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias putenv = fn(__string: UnsafePointer[Int8]) -> Int32
alias setenv = fn(read __name: UnsafePointer[Int8], read __value: UnsafePointer[Int8], __replace: Int32) -> Int32
alias unsetenv = fn(read __name: UnsafePointer[Int8]) -> Int32
alias clearenv = fn() -> Int32
alias mktemp = fn(__template: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias mkstemp = fn(__template: UnsafePointer[Int8]) -> Int32
alias mkstemps = fn(__template: UnsafePointer[Int8], __suffixlen: Int32) -> Int32
alias mkdtemp = fn(__template: UnsafePointer[Int8]) -> UnsafePointer[Int8]
alias system = fn(read __command: UnsafePointer[Int8]) -> Int32
alias realpath = fn(read __name: UnsafePointer[Int8], __resolved: UnsafePointer[Int8]) -> UnsafePointer[Int8]

alias __compar_fn_t = UnsafePointer[
# (placeholder) |   `-ParenType 0x5d5e60 'int (const void *, const void *)' sugar

# (placeholder) |     `-FunctionProtoType 0x5d5e20 'int (const void *, const void *)' cdecl
Int32UnsafePointer[
# (placeholder) |       | `-QualType 0x4e3401 'const void' const
NoneType]
UnsafePointer[
# (placeholder) |         `-QualType 0x4e3401 'const void' const
NoneType]
]

alias bsearch = fn(read __key: UnsafePointer[NoneType], read __base: UnsafePointer[NoneType], __nmemb: size_t, __size: size_t, __compar: __compar_fn_t) -> UnsafePointer[NoneType]
alias qsort = fn(__base: UnsafePointer[NoneType], __nmemb: size_t, __size: size_t, __compar: __compar_fn_t) -> NoneType
 # Disabled either due to a redefinition or a previous declaration: alias abs = fn(: Int32) -> Int32
alias abs = fn(__x: Int32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias labs = fn(: Int64) -> Int64
alias labs = fn(__x: Int64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llabs = fn(: Int128) -> Int128
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
alias getsubopt = fn(__optionp: UnsafePointer[UnsafePointer[Int8]], read __tokens: UnsafePointer[Int8], __valuep: UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias getloadavg = fn(__loadavg: UnsafePointer[Float64], __nelem: Int32) -> Int32

alias float_t = Float32

alias double_t = Float64
alias __fpclassify = fn(__value: Float64) -> Int32
alias __signbit = fn(__value: Float64) -> Int32
alias __isinf = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias __finite = fn(: Float64) -> Int32
alias __finite = fn(__value: Float64) -> Int32
alias __isnan = fn(__value: Float64) -> Int32
alias __iseqsig = fn(__x: Float64, __y: Float64) -> Int32
alias __issignaling = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias acos = fn(: Float64) -> Float64
alias acos = fn(__x: Float64) -> Float64
alias __acos = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias asin = fn(: Float64) -> Float64
alias asin = fn(__x: Float64) -> Float64
alias __asin = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atan = fn(: Float64) -> Float64
alias atan = fn(__x: Float64) -> Float64
alias __atan = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atan2 = fn(: Float64, : Float64) -> Float64
alias atan2 = fn(__y: Float64, __x: Float64) -> Float64
alias __atan2 = fn(__y: Float64, __x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cos = fn(: Float64) -> Float64
alias cos = fn(__x: Float64) -> Float64
alias __cos = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sin = fn(: Float64) -> Float64
alias sin = fn(__x: Float64) -> Float64
alias __sin = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tan = fn(: Float64) -> Float64
alias tan = fn(__x: Float64) -> Float64
alias __tan = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cosh = fn(: Float64) -> Float64
alias cosh = fn(__x: Float64) -> Float64
alias __cosh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sinh = fn(: Float64) -> Float64
alias sinh = fn(__x: Float64) -> Float64
alias __sinh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tanh = fn(: Float64) -> Float64
alias tanh = fn(__x: Float64) -> Float64
alias __tanh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias acosh = fn(: Float64) -> Float64
alias acosh = fn(__x: Float64) -> Float64
alias __acosh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias asinh = fn(: Float64) -> Float64
alias asinh = fn(__x: Float64) -> Float64
alias __asinh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atanh = fn(: Float64) -> Float64
alias atanh = fn(__x: Float64) -> Float64
alias __atanh = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias exp = fn(: Float64) -> Float64
alias exp = fn(__x: Float64) -> Float64
alias __exp = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias frexp = fn(: Float64, : UnsafePointer[Int32]) -> Float64
alias frexp = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
alias __frexp = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ldexp = fn(: Float64, : Int32) -> Float64
alias ldexp = fn(__x: Float64, __exponent: Int32) -> Float64
alias __ldexp = fn(__x: Float64, __exponent: Int32) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log = fn(: Float64) -> Float64
alias log = fn(__x: Float64) -> Float64
alias __log = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log10 = fn(: Float64) -> Float64
alias log10 = fn(__x: Float64) -> Float64
alias __log10 = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias modf = fn(: Float64, : UnsafePointer[Float64]) -> Float64
alias modf = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
alias __modf = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias expm1 = fn(: Float64) -> Float64
alias expm1 = fn(__x: Float64) -> Float64
alias __expm1 = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log1p = fn(: Float64) -> Float64
alias log1p = fn(__x: Float64) -> Float64
alias __log1p = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias logb = fn(: Float64) -> Float64
alias logb = fn(__x: Float64) -> Float64
alias __logb = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias exp2 = fn(: Float64) -> Float64
alias exp2 = fn(__x: Float64) -> Float64
alias __exp2 = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log2 = fn(: Float64) -> Float64
alias log2 = fn(__x: Float64) -> Float64
alias __log2 = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias pow = fn(: Float64, : Float64) -> Float64
alias pow = fn(__x: Float64, __y: Float64) -> Float64
alias __pow = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sqrt = fn(: Float64) -> Float64
alias sqrt = fn(__x: Float64) -> Float64
alias __sqrt = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias hypot = fn(: Float64, : Float64) -> Float64
alias hypot = fn(__x: Float64, __y: Float64) -> Float64
alias __hypot = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cbrt = fn(: Float64) -> Float64
alias cbrt = fn(__x: Float64) -> Float64
alias __cbrt = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ceil = fn(: Float64) -> Float64
alias ceil = fn(__x: Float64) -> Float64
alias __ceil = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fabs = fn(: Float64) -> Float64
alias fabs = fn(__x: Float64) -> Float64
alias __fabs = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias floor = fn(: Float64) -> Float64
alias floor = fn(__x: Float64) -> Float64
alias __floor = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmod = fn(: Float64, : Float64) -> Float64
alias fmod = fn(__x: Float64, __y: Float64) -> Float64
alias __fmod = fn(__x: Float64, __y: Float64) -> Float64
alias isinf = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias finite = fn(: Float64) -> Int32
alias finite = fn(__value: Float64) -> Int32
alias drem = fn(__x: Float64, __y: Float64) -> Float64
alias __drem = fn(__x: Float64, __y: Float64) -> Float64
alias significand = fn(__x: Float64) -> Float64
alias __significand = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias copysign = fn(: Float64, : Float64) -> Float64
alias copysign = fn(__x: Float64, __y: Float64) -> Float64
alias __copysign = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nan = fn(read : UnsafePointer[Int8]) -> Float64
alias nan = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias __nan = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias isnan = fn(__value: Float64) -> Int32
alias j0 = fn(: Float64) -> Float64
alias __j0 = fn(: Float64) -> Float64
alias j1 = fn(: Float64) -> Float64
alias __j1 = fn(: Float64) -> Float64
alias jn = fn(: Int32, : Float64) -> Float64
alias __jn = fn(: Int32, : Float64) -> Float64
alias y0 = fn(: Float64) -> Float64
alias __y0 = fn(: Float64) -> Float64
alias y1 = fn(: Float64) -> Float64
alias __y1 = fn(: Float64) -> Float64
alias yn = fn(: Int32, : Float64) -> Float64
alias __yn = fn(: Int32, : Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias erf = fn(: Float64) -> Float64
alias erf = fn(: Float64) -> Float64
alias __erf = fn(: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias erfc = fn(: Float64) -> Float64
alias erfc = fn(: Float64) -> Float64
alias __erfc = fn(: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias lgamma = fn(: Float64) -> Float64
alias lgamma = fn(: Float64) -> Float64
alias __lgamma = fn(: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tgamma = fn(: Float64) -> Float64
alias tgamma = fn(: Float64) -> Float64
alias __tgamma = fn(: Float64) -> Float64
alias gamma = fn(: Float64) -> Float64
alias __gamma = fn(: Float64) -> Float64
alias lgamma_r = fn(: Float64, __signgamp: UnsafePointer[Int32]) -> Float64
alias __lgamma_r = fn(: Float64, __signgamp: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias rint = fn(: Float64) -> Float64
alias rint = fn(__x: Float64) -> Float64
alias __rint = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nextafter = fn(: Float64, : Float64) -> Float64
alias nextafter = fn(__x: Float64, __y: Float64) -> Float64
alias __nextafter = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nexttoward = fn(: Float64, : Float64) -> Float64
alias nexttoward = fn(__x: Float64, __y: Float64) -> Float64
alias __nexttoward = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias remainder = fn(: Float64, : Float64) -> Float64
alias remainder = fn(__x: Float64, __y: Float64) -> Float64
alias __remainder = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias scalbn = fn(: Float64, : Int32) -> Float64
alias scalbn = fn(__x: Float64, __n: Int32) -> Float64
alias __scalbn = fn(__x: Float64, __n: Int32) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ilogb = fn(: Float64) -> Int32
alias ilogb = fn(__x: Float64) -> Int32
alias __ilogb = fn(__x: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias scalbln = fn(: Float64, : Int64) -> Float64
alias scalbln = fn(__x: Float64, __n: Int64) -> Float64
alias __scalbln = fn(__x: Float64, __n: Int64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nearbyint = fn(: Float64) -> Float64
alias nearbyint = fn(__x: Float64) -> Float64
alias __nearbyint = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias round = fn(: Float64) -> Float64
alias round = fn(__x: Float64) -> Float64
alias __round = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias trunc = fn(: Float64) -> Float64
alias trunc = fn(__x: Float64) -> Float64
alias __trunc = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias remquo = fn(: Float64, : Float64, : UnsafePointer[Int32]) -> Float64
alias remquo = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
alias __remquo = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias lrint = fn(: Float64) -> Int64
alias lrint = fn(__x: Float64) -> Int64
alias __lrint = fn(__x: Float64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llrint = fn(: Float64) -> Int128
alias llrint = fn(__x: Float64) -> Int128
alias __llrint = fn(__x: Float64) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias lround = fn(: Float64) -> Int64
alias lround = fn(__x: Float64) -> Int64
alias __lround = fn(__x: Float64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llround = fn(: Float64) -> Int128
alias llround = fn(__x: Float64) -> Int128
alias __llround = fn(__x: Float64) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias fdim = fn(: Float64, : Float64) -> Float64
alias fdim = fn(__x: Float64, __y: Float64) -> Float64
alias __fdim = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmax = fn(: Float64, : Float64) -> Float64
alias fmax = fn(__x: Float64, __y: Float64) -> Float64
alias __fmax = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmin = fn(: Float64, : Float64) -> Float64
alias fmin = fn(__x: Float64, __y: Float64) -> Float64
alias __fmin = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fma = fn(: Float64, : Float64, : Float64) -> Float64
alias fma = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias __fma = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias scalb = fn(__x: Float64, __n: Float64) -> Float64
alias __scalb = fn(__x: Float64, __n: Float64) -> Float64
alias __fpclassifyf = fn(__value: Float32) -> Int32
alias __signbitf = fn(__value: Float32) -> Int32
alias __isinff = fn(__value: Float32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias __finitef = fn(: Float32) -> Int32
alias __finitef = fn(__value: Float32) -> Int32
alias __isnanf = fn(__value: Float32) -> Int32
alias __iseqsigf = fn(__x: Float32, __y: Float32) -> Int32
alias __issignalingf = fn(__value: Float32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias acosf = fn(: Float32) -> Float32
alias acosf = fn(__x: Float32) -> Float32
alias __acosf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias asinf = fn(: Float32) -> Float32
alias asinf = fn(__x: Float32) -> Float32
alias __asinf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias atanf = fn(: Float32) -> Float32
alias atanf = fn(__x: Float32) -> Float32
alias __atanf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias atan2f = fn(: Float32, : Float32) -> Float32
alias atan2f = fn(__y: Float32, __x: Float32) -> Float32
alias __atan2f = fn(__y: Float32, __x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias cosf = fn(: Float32) -> Float32
alias cosf = fn(__x: Float32) -> Float32
alias __cosf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias sinf = fn(: Float32) -> Float32
alias sinf = fn(__x: Float32) -> Float32
alias __sinf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias tanf = fn(: Float32) -> Float32
alias tanf = fn(__x: Float32) -> Float32
alias __tanf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias coshf = fn(: Float32) -> Float32
alias coshf = fn(__x: Float32) -> Float32
alias __coshf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias sinhf = fn(: Float32) -> Float32
alias sinhf = fn(__x: Float32) -> Float32
alias __sinhf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias tanhf = fn(: Float32) -> Float32
alias tanhf = fn(__x: Float32) -> Float32
alias __tanhf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias acoshf = fn(: Float32) -> Float32
alias acoshf = fn(__x: Float32) -> Float32
alias __acoshf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias asinhf = fn(: Float32) -> Float32
alias asinhf = fn(__x: Float32) -> Float32
alias __asinhf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias atanhf = fn(: Float32) -> Float32
alias atanhf = fn(__x: Float32) -> Float32
alias __atanhf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias expf = fn(: Float32) -> Float32
alias expf = fn(__x: Float32) -> Float32
alias __expf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias frexpf = fn(: Float32, : UnsafePointer[Int32]) -> Float32
alias frexpf = fn(__x: Float32, __exponent: UnsafePointer[Int32]) -> Float32
alias __frexpf = fn(__x: Float32, __exponent: UnsafePointer[Int32]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias ldexpf = fn(: Float32, : Int32) -> Float32
alias ldexpf = fn(__x: Float32, __exponent: Int32) -> Float32
alias __ldexpf = fn(__x: Float32, __exponent: Int32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias logf = fn(: Float32) -> Float32
alias logf = fn(__x: Float32) -> Float32
alias __logf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias log10f = fn(: Float32) -> Float32
alias log10f = fn(__x: Float32) -> Float32
alias __log10f = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias modff = fn(: Float32, : UnsafePointer[Float32]) -> Float32
alias modff = fn(__x: Float32, __iptr: UnsafePointer[Float32]) -> Float32
alias __modff = fn(__x: Float32, __iptr: UnsafePointer[Float32]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias expm1f = fn(: Float32) -> Float32
alias expm1f = fn(__x: Float32) -> Float32
alias __expm1f = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias log1pf = fn(: Float32) -> Float32
alias log1pf = fn(__x: Float32) -> Float32
alias __log1pf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias logbf = fn(: Float32) -> Float32
alias logbf = fn(__x: Float32) -> Float32
alias __logbf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias exp2f = fn(: Float32) -> Float32
alias exp2f = fn(__x: Float32) -> Float32
alias __exp2f = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias log2f = fn(: Float32) -> Float32
alias log2f = fn(__x: Float32) -> Float32
alias __log2f = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias powf = fn(: Float32, : Float32) -> Float32
alias powf = fn(__x: Float32, __y: Float32) -> Float32
alias __powf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias sqrtf = fn(: Float32) -> Float32
alias sqrtf = fn(__x: Float32) -> Float32
alias __sqrtf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias hypotf = fn(: Float32, : Float32) -> Float32
alias hypotf = fn(__x: Float32, __y: Float32) -> Float32
alias __hypotf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias cbrtf = fn(: Float32) -> Float32
alias cbrtf = fn(__x: Float32) -> Float32
alias __cbrtf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias ceilf = fn(: Float32) -> Float32
alias ceilf = fn(__x: Float32) -> Float32
alias __ceilf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fabsf = fn(: Float32) -> Float32
alias fabsf = fn(__x: Float32) -> Float32
alias __fabsf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias floorf = fn(: Float32) -> Float32
alias floorf = fn(__x: Float32) -> Float32
alias __floorf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fmodf = fn(: Float32, : Float32) -> Float32
alias fmodf = fn(__x: Float32, __y: Float32) -> Float32
alias __fmodf = fn(__x: Float32, __y: Float32) -> Float32
alias isinff = fn(__value: Float32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias finitef = fn(: Float32) -> Int32
alias finitef = fn(__value: Float32) -> Int32
alias dremf = fn(__x: Float32, __y: Float32) -> Float32
alias __dremf = fn(__x: Float32, __y: Float32) -> Float32
alias significandf = fn(__x: Float32) -> Float32
alias __significandf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias copysignf = fn(: Float32, : Float32) -> Float32
alias copysignf = fn(__x: Float32, __y: Float32) -> Float32
alias __copysignf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias nanf = fn(read : UnsafePointer[Int8]) -> Float32
alias nanf = fn(read __tagb: UnsafePointer[Int8]) -> Float32
alias __nanf = fn(read __tagb: UnsafePointer[Int8]) -> Float32
alias isnanf = fn(__value: Float32) -> Int32
alias j0f = fn(: Float32) -> Float32
alias __j0f = fn(: Float32) -> Float32
alias j1f = fn(: Float32) -> Float32
alias __j1f = fn(: Float32) -> Float32
alias jnf = fn(: Int32, : Float32) -> Float32
alias __jnf = fn(: Int32, : Float32) -> Float32
alias y0f = fn(: Float32) -> Float32
alias __y0f = fn(: Float32) -> Float32
alias y1f = fn(: Float32) -> Float32
alias __y1f = fn(: Float32) -> Float32
alias ynf = fn(: Int32, : Float32) -> Float32
alias __ynf = fn(: Int32, : Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias erff = fn(: Float32) -> Float32
alias erff = fn(: Float32) -> Float32
alias __erff = fn(: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias erfcf = fn(: Float32) -> Float32
alias erfcf = fn(: Float32) -> Float32
alias __erfcf = fn(: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias lgammaf = fn(: Float32) -> Float32
alias lgammaf = fn(: Float32) -> Float32
alias __lgammaf = fn(: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias tgammaf = fn(: Float32) -> Float32
alias tgammaf = fn(: Float32) -> Float32
alias __tgammaf = fn(: Float32) -> Float32
alias gammaf = fn(: Float32) -> Float32
alias __gammaf = fn(: Float32) -> Float32
alias lgammaf_r = fn(: Float32, __signgamp: UnsafePointer[Int32]) -> Float32
alias __lgammaf_r = fn(: Float32, __signgamp: UnsafePointer[Int32]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias rintf = fn(: Float32) -> Float32
alias rintf = fn(__x: Float32) -> Float32
alias __rintf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias nextafterf = fn(: Float32, : Float32) -> Float32
alias nextafterf = fn(__x: Float32, __y: Float32) -> Float32
alias __nextafterf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias nexttowardf = fn(: Float32, : Float64) -> Float32
alias nexttowardf = fn(__x: Float32, __y: Float64) -> Float32
alias __nexttowardf = fn(__x: Float32, __y: Float64) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias remainderf = fn(: Float32, : Float32) -> Float32
alias remainderf = fn(__x: Float32, __y: Float32) -> Float32
alias __remainderf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias scalbnf = fn(: Float32, : Int32) -> Float32
alias scalbnf = fn(__x: Float32, __n: Int32) -> Float32
alias __scalbnf = fn(__x: Float32, __n: Int32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias ilogbf = fn(: Float32) -> Int32
alias ilogbf = fn(__x: Float32) -> Int32
alias __ilogbf = fn(__x: Float32) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias scalblnf = fn(: Float32, : Int64) -> Float32
alias scalblnf = fn(__x: Float32, __n: Int64) -> Float32
alias __scalblnf = fn(__x: Float32, __n: Int64) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias nearbyintf = fn(: Float32) -> Float32
alias nearbyintf = fn(__x: Float32) -> Float32
alias __nearbyintf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias roundf = fn(: Float32) -> Float32
alias roundf = fn(__x: Float32) -> Float32
alias __roundf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias truncf = fn(: Float32) -> Float32
alias truncf = fn(__x: Float32) -> Float32
alias __truncf = fn(__x: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias remquof = fn(: Float32, : Float32, : UnsafePointer[Int32]) -> Float32
alias remquof = fn(__x: Float32, __y: Float32, __quo: UnsafePointer[Int32]) -> Float32
alias __remquof = fn(__x: Float32, __y: Float32, __quo: UnsafePointer[Int32]) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias lrintf = fn(: Float32) -> Int64
alias lrintf = fn(__x: Float32) -> Int64
alias __lrintf = fn(__x: Float32) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llrintf = fn(: Float32) -> Int128
alias llrintf = fn(__x: Float32) -> Int128
alias __llrintf = fn(__x: Float32) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias lroundf = fn(: Float32) -> Int64
alias lroundf = fn(__x: Float32) -> Int64
alias __lroundf = fn(__x: Float32) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llroundf = fn(: Float32) -> Int128
alias llroundf = fn(__x: Float32) -> Int128
alias __llroundf = fn(__x: Float32) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias fdimf = fn(: Float32, : Float32) -> Float32
alias fdimf = fn(__x: Float32, __y: Float32) -> Float32
alias __fdimf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fmaxf = fn(: Float32, : Float32) -> Float32
alias fmaxf = fn(__x: Float32, __y: Float32) -> Float32
alias __fmaxf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fminf = fn(: Float32, : Float32) -> Float32
alias fminf = fn(__x: Float32, __y: Float32) -> Float32
alias __fminf = fn(__x: Float32, __y: Float32) -> Float32
 # Disabled either due to a redefinition or a previous declaration: alias fmaf = fn(: Float32, : Float32, : Float32) -> Float32
alias fmaf = fn(__x: Float32, __y: Float32, __z: Float32) -> Float32
alias __fmaf = fn(__x: Float32, __y: Float32, __z: Float32) -> Float32
alias scalbf = fn(__x: Float32, __n: Float32) -> Float32
alias __scalbf = fn(__x: Float32, __n: Float32) -> Float32
alias __fpclassifyl = fn(__value: Float64) -> Int32
alias __signbitl = fn(__value: Float64) -> Int32
alias __isinfl = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias __finitel = fn(: Float64) -> Int32
alias __finitel = fn(__value: Float64) -> Int32
alias __isnanl = fn(__value: Float64) -> Int32
alias __iseqsigl = fn(__x: Float64, __y: Float64) -> Int32
alias __issignalingl = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias acosl = fn(: Float64) -> Float64
alias acosl = fn(__x: Float64) -> Float64
alias __acosl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias asinl = fn(: Float64) -> Float64
alias asinl = fn(__x: Float64) -> Float64
alias __asinl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atanl = fn(: Float64) -> Float64
alias atanl = fn(__x: Float64) -> Float64
alias __atanl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atan2l = fn(: Float64, : Float64) -> Float64
alias atan2l = fn(__y: Float64, __x: Float64) -> Float64
alias __atan2l = fn(__y: Float64, __x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cosl = fn(: Float64) -> Float64
alias cosl = fn(__x: Float64) -> Float64
alias __cosl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sinl = fn(: Float64) -> Float64
alias sinl = fn(__x: Float64) -> Float64
alias __sinl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tanl = fn(: Float64) -> Float64
alias tanl = fn(__x: Float64) -> Float64
alias __tanl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias coshl = fn(: Float64) -> Float64
alias coshl = fn(__x: Float64) -> Float64
alias __coshl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sinhl = fn(: Float64) -> Float64
alias sinhl = fn(__x: Float64) -> Float64
alias __sinhl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tanhl = fn(: Float64) -> Float64
alias tanhl = fn(__x: Float64) -> Float64
alias __tanhl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias acoshl = fn(: Float64) -> Float64
alias acoshl = fn(__x: Float64) -> Float64
alias __acoshl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias asinhl = fn(: Float64) -> Float64
alias asinhl = fn(__x: Float64) -> Float64
alias __asinhl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias atanhl = fn(: Float64) -> Float64
alias atanhl = fn(__x: Float64) -> Float64
alias __atanhl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias expl = fn(: Float64) -> Float64
alias expl = fn(__x: Float64) -> Float64
alias __expl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias frexpl = fn(: Float64, : UnsafePointer[Int32]) -> Float64
alias frexpl = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
alias __frexpl = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ldexpl = fn(: Float64, : Int32) -> Float64
alias ldexpl = fn(__x: Float64, __exponent: Int32) -> Float64
alias __ldexpl = fn(__x: Float64, __exponent: Int32) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias logl = fn(: Float64) -> Float64
alias logl = fn(__x: Float64) -> Float64
alias __logl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log10l = fn(: Float64) -> Float64
alias log10l = fn(__x: Float64) -> Float64
alias __log10l = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias modfl = fn(: Float64, : UnsafePointer[Float64]) -> Float64
alias modfl = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
alias __modfl = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias expm1l = fn(: Float64) -> Float64
alias expm1l = fn(__x: Float64) -> Float64
alias __expm1l = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log1pl = fn(: Float64) -> Float64
alias log1pl = fn(__x: Float64) -> Float64
alias __log1pl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias logbl = fn(: Float64) -> Float64
alias logbl = fn(__x: Float64) -> Float64
alias __logbl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias exp2l = fn(: Float64) -> Float64
alias exp2l = fn(__x: Float64) -> Float64
alias __exp2l = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias log2l = fn(: Float64) -> Float64
alias log2l = fn(__x: Float64) -> Float64
alias __log2l = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias powl = fn(: Float64, : Float64) -> Float64
alias powl = fn(__x: Float64, __y: Float64) -> Float64
alias __powl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias sqrtl = fn(: Float64) -> Float64
alias sqrtl = fn(__x: Float64) -> Float64
alias __sqrtl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias hypotl = fn(: Float64, : Float64) -> Float64
alias hypotl = fn(__x: Float64, __y: Float64) -> Float64
alias __hypotl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias cbrtl = fn(: Float64) -> Float64
alias cbrtl = fn(__x: Float64) -> Float64
alias __cbrtl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ceill = fn(: Float64) -> Float64
alias ceill = fn(__x: Float64) -> Float64
alias __ceill = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fabsl = fn(: Float64) -> Float64
alias fabsl = fn(__x: Float64) -> Float64
alias __fabsl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias floorl = fn(: Float64) -> Float64
alias floorl = fn(__x: Float64) -> Float64
alias __floorl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmodl = fn(: Float64, : Float64) -> Float64
alias fmodl = fn(__x: Float64, __y: Float64) -> Float64
alias __fmodl = fn(__x: Float64, __y: Float64) -> Float64
alias isinfl = fn(__value: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias finitel = fn(: Float64) -> Int32
alias finitel = fn(__value: Float64) -> Int32
alias dreml = fn(__x: Float64, __y: Float64) -> Float64
alias __dreml = fn(__x: Float64, __y: Float64) -> Float64
alias significandl = fn(__x: Float64) -> Float64
alias __significandl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias copysignl = fn(: Float64, : Float64) -> Float64
alias copysignl = fn(__x: Float64, __y: Float64) -> Float64
alias __copysignl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nanl = fn(read : UnsafePointer[Int8]) -> Float64
alias nanl = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias __nanl = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias isnanl = fn(__value: Float64) -> Int32
alias j0l = fn(: Float64) -> Float64
alias __j0l = fn(: Float64) -> Float64
alias j1l = fn(: Float64) -> Float64
alias __j1l = fn(: Float64) -> Float64
alias jnl = fn(: Int32, : Float64) -> Float64
alias __jnl = fn(: Int32, : Float64) -> Float64
alias y0l = fn(: Float64) -> Float64
alias __y0l = fn(: Float64) -> Float64
alias y1l = fn(: Float64) -> Float64
alias __y1l = fn(: Float64) -> Float64
alias ynl = fn(: Int32, : Float64) -> Float64
alias __ynl = fn(: Int32, : Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias erfl = fn(: Float64) -> Float64
alias erfl = fn(: Float64) -> Float64
alias __erfl = fn(: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias erfcl = fn(: Float64) -> Float64
alias erfcl = fn(: Float64) -> Float64
alias __erfcl = fn(: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias lgammal = fn(: Float64) -> Float64
alias lgammal = fn(: Float64) -> Float64
alias __lgammal = fn(: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias tgammal = fn(: Float64) -> Float64
alias tgammal = fn(: Float64) -> Float64
alias __tgammal = fn(: Float64) -> Float64
alias gammal = fn(: Float64) -> Float64
alias __gammal = fn(: Float64) -> Float64
alias lgammal_r = fn(: Float64, __signgamp: UnsafePointer[Int32]) -> Float64
alias __lgammal_r = fn(: Float64, __signgamp: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias rintl = fn(: Float64) -> Float64
alias rintl = fn(__x: Float64) -> Float64
alias __rintl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nextafterl = fn(: Float64, : Float64) -> Float64
alias nextafterl = fn(__x: Float64, __y: Float64) -> Float64
alias __nextafterl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nexttowardl = fn(: Float64, : Float64) -> Float64
alias nexttowardl = fn(__x: Float64, __y: Float64) -> Float64
alias __nexttowardl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias remainderl = fn(: Float64, : Float64) -> Float64
alias remainderl = fn(__x: Float64, __y: Float64) -> Float64
alias __remainderl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias scalbnl = fn(: Float64, : Int32) -> Float64
alias scalbnl = fn(__x: Float64, __n: Int32) -> Float64
alias __scalbnl = fn(__x: Float64, __n: Int32) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias ilogbl = fn(: Float64) -> Int32
alias ilogbl = fn(__x: Float64) -> Int32
alias __ilogbl = fn(__x: Float64) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias scalblnl = fn(: Float64, : Int64) -> Float64
alias scalblnl = fn(__x: Float64, __n: Int64) -> Float64
alias __scalblnl = fn(__x: Float64, __n: Int64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias nearbyintl = fn(: Float64) -> Float64
alias nearbyintl = fn(__x: Float64) -> Float64
alias __nearbyintl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias roundl = fn(: Float64) -> Float64
alias roundl = fn(__x: Float64) -> Float64
alias __roundl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias truncl = fn(: Float64) -> Float64
alias truncl = fn(__x: Float64) -> Float64
alias __truncl = fn(__x: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias remquol = fn(: Float64, : Float64, : UnsafePointer[Int32]) -> Float64
alias remquol = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
alias __remquol = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias lrintl = fn(: Float64) -> Int64
alias lrintl = fn(__x: Float64) -> Int64
alias __lrintl = fn(__x: Float64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llrintl = fn(: Float64) -> Int128
alias llrintl = fn(__x: Float64) -> Int128
alias __llrintl = fn(__x: Float64) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias lroundl = fn(: Float64) -> Int64
alias lroundl = fn(__x: Float64) -> Int64
alias __lroundl = fn(__x: Float64) -> Int64
 # Disabled either due to a redefinition or a previous declaration: alias llroundl = fn(: Float64) -> Int128
alias llroundl = fn(__x: Float64) -> Int128
alias __llroundl = fn(__x: Float64) -> Int128
 # Disabled either due to a redefinition or a previous declaration: alias fdiml = fn(: Float64, : Float64) -> Float64
alias fdiml = fn(__x: Float64, __y: Float64) -> Float64
alias __fdiml = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmaxl = fn(: Float64, : Float64) -> Float64
alias fmaxl = fn(__x: Float64, __y: Float64) -> Float64
alias __fmaxl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fminl = fn(: Float64, : Float64) -> Float64
alias fminl = fn(__x: Float64, __y: Float64) -> Float64
alias __fminl = fn(__x: Float64, __y: Float64) -> Float64
 # Disabled either due to a redefinition or a previous declaration: alias fmal = fn(: Float64, : Float64, : Float64) -> Float64
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
struct Anonymous___usr_lib_llvm_14_lib_clang_14_0_0_include___stddef_max_align_t_h_19_9__line_24_1_:

	var __clang_max_align_nonce1: Int128
	
	# (placeholder) | | `-AlignedAttr 0x660f30 <line:21:22, col:56> aligned
Int = 8


	var __clang_max_align_nonce2: Float64
	
	# (placeholder) |   `-AlignedAttr 0x661050 <line:23:22, col:58> aligned
Int = 16



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

struct mjtDisableBit_:

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

	alias referenced: Int = 17



alias mjtDisableBit = 
#---------------------------------- enum types (mjt) ----------------------------------------------

struct mjtEnableBit_:
	alias mjENBL_OVERRIDE: Int = 1

	alias mjENBL_ENERGY: Int = 2

	alias mjENBL_FWDINV: Int = 4

	alias mjENBL_INVDISCRETE: Int = 8

	alias mjENBL_MULTICCD: Int = 16

	alias mjENBL_ISLAND: Int = 32

	alias referenced: Int = 6



alias mjtEnableBit = 
struct mjtJoint_:
	alias mjJNT_FREE: Int = 0

	alias mjJNT_BALL: 
	alias mjJNT_SLIDE: 
	alias mjJNT_HINGE: 


alias mjtJoint = 
struct mjtGeom_:
	alias mjGEOM_PLANE: Int = 0

	alias mjGEOM_HFIELD: 
	alias mjGEOM_SPHERE: 
	alias mjGEOM_CAPSULE: 
	alias mjGEOM_ELLIPSOID: 
	alias mjGEOM_CYLINDER: 
	alias mjGEOM_BOX: 
	alias mjGEOM_MESH: 
	alias mjGEOM_SDF: 
	alias referenced: 
	alias mjGEOM_ARROW: Int = 100

	alias mjGEOM_ARROW1: 
	alias mjGEOM_ARROW2: 
	alias mjGEOM_LINE: 
	alias mjGEOM_LINEBOX: 
	alias mjGEOM_FLEX: 
	alias mjGEOM_SKIN: 
	alias mjGEOM_LABEL: 
	alias mjGEOM_TRIANGLE: 
	alias mjGEOM_NONE: Int = 1001



alias mjtGeom = 
struct mjtCamLight_:
	alias mjCAMLIGHT_FIXED: Int = 0

	alias mjCAMLIGHT_TRACK: 
	alias mjCAMLIGHT_TRACKCOM: 
	alias mjCAMLIGHT_TARGETBODY: 
	alias mjCAMLIGHT_TARGETBODYCOM: 


alias mjtCamLight = 
struct mjtTexture_:
	alias mjTEXTURE_2D: Int = 0

	alias mjTEXTURE_CUBE: 
	alias mjTEXTURE_SKYBOX: 


alias mjtTexture = 
struct mjtTextureRole_:
	alias mjTEXROLE_USER: Int = 0

	alias mjTEXROLE_RGB: 
	alias mjTEXROLE_OCCLUSION: 
	alias mjTEXROLE_ROUGHNESS: 
	alias mjTEXROLE_METALLIC: 
	alias mjTEXROLE_NORMAL: 
	alias mjTEXROLE_OPACITY: 
	alias mjTEXROLE_EMISSIVE: 
	alias mjTEXROLE_RGBA: 
	alias mjTEXROLE_ORM: 
	alias referenced: 


alias mjtTextureRole = 
struct mjtIntegrator_:
	alias mjINT_EULER: Int = 0

	alias mjINT_RK4: 
	alias mjINT_IMPLICIT: 
	alias mjINT_IMPLICITFAST: 


alias mjtIntegrator = 
struct mjtCone_:
	alias mjCONE_PYRAMIDAL: Int = 0

	alias mjCONE_ELLIPTIC: 


alias mjtCone = 
struct mjtJacobian_:
	alias mjJAC_DENSE: Int = 0

	alias mjJAC_SPARSE: 
	alias mjJAC_AUTO: 


alias mjtJacobian = 
struct mjtSolver_:
	alias mjSOL_PGS: Int = 0

	alias mjSOL_CG: 
	alias mjSOL_NEWTON: 


alias mjtSolver = 
struct mjtEq_:
	alias mjEQ_CONNECT: Int = 0

	alias mjEQ_WELD: 
	alias mjEQ_JOINT: 
	alias mjEQ_TENDON: 
	alias mjEQ_FLEX: 
	alias mjEQ_DISTANCE: 


alias mjtEq = 
struct mjtWrap_:
	alias mjWRAP_NONE: Int = 0

	alias mjWRAP_JOINT: 
	alias mjWRAP_PULLEY: 
	alias mjWRAP_SITE: 
	alias mjWRAP_SPHERE: 
	alias mjWRAP_CYLINDER: 


alias mjtWrap = 
struct mjtTrn_:
	alias mjTRN_JOINT: Int = 0

	alias mjTRN_JOINTINPARENT: 
	alias mjTRN_SLIDERCRANK: 
	alias mjTRN_TENDON: 
	alias mjTRN_SITE: 
	alias mjTRN_BODY: 
	alias mjTRN_UNDEFINED: Int = 1000



alias mjtTrn = 
struct mjtDyn_:
	alias mjDYN_NONE: Int = 0

	alias mjDYN_INTEGRATOR: 
	alias mjDYN_FILTER: 
	alias mjDYN_FILTEREXACT: 
	alias mjDYN_MUSCLE: 
	alias mjDYN_USER: 


alias mjtDyn = 
struct mjtGain_:
	alias mjGAIN_FIXED: Int = 0

	alias mjGAIN_AFFINE: 
	alias mjGAIN_MUSCLE: 
	alias mjGAIN_USER: 


alias mjtGain = 
struct mjtBias_:
	alias mjBIAS_NONE: Int = 0

	alias mjBIAS_AFFINE: 
	alias mjBIAS_MUSCLE: 
	alias mjBIAS_USER: 


alias mjtBias = 
struct mjtObj_:
	alias mjOBJ_UNKNOWN: Int = 0

	alias mjOBJ_BODY: 
	alias mjOBJ_XBODY: 
	alias mjOBJ_JOINT: 
	alias mjOBJ_DOF: 
	alias mjOBJ_GEOM: 
	alias mjOBJ_SITE: 
	alias mjOBJ_CAMERA: 
	alias mjOBJ_LIGHT: 
	alias mjOBJ_FLEX: 
	alias mjOBJ_MESH: 
	alias mjOBJ_SKIN: 
	alias mjOBJ_HFIELD: 
	alias mjOBJ_TEXTURE: 
	alias mjOBJ_MATERIAL: 
	alias mjOBJ_PAIR: 
	alias mjOBJ_EXCLUDE: 
	alias mjOBJ_EQUALITY: 
	alias mjOBJ_TENDON: 
	alias mjOBJ_ACTUATOR: 
	alias mjOBJ_SENSOR: 
	alias mjOBJ_NUMERIC: 
	alias mjOBJ_TEXT: 
	alias mjOBJ_TUPLE: 
	alias mjOBJ_KEY: 
	alias mjOBJ_PLUGIN: 
	alias mjNOBJECT: 
	alias mjOBJ_FRAME: Int = 100

	alias mjOBJ_DEFAULT: 
	alias mjOBJ_MODEL: 


alias mjtObj = 
struct mjtConstraint_:
	alias mjCNSTR_EQUALITY: Int = 0

	alias mjCNSTR_FRICTION_DOF: 
	alias mjCNSTR_FRICTION_TENDON: 
	alias mjCNSTR_LIMIT_JOINT: 
	alias mjCNSTR_LIMIT_TENDON: 
	alias mjCNSTR_CONTACT_FRICTIONLESS: 
	alias mjCNSTR_CONTACT_PYRAMIDAL: 
	alias mjCNSTR_CONTACT_ELLIPTIC: 


alias mjtConstraint = 
struct mjtConstraintState_:
	alias mjCNSTRSTATE_SATISFIED: Int = 0

	alias mjCNSTRSTATE_QUADRATIC: 
	alias mjCNSTRSTATE_LINEARNEG: 
	alias mjCNSTRSTATE_LINEARPOS: 
	alias mjCNSTRSTATE_CONE: 


alias mjtConstraintState = 
struct mjtSensor_:
	alias mjSENS_TOUCH: Int = 0

	alias mjSENS_ACCELEROMETER: 
	alias mjSENS_VELOCIMETER: 
	alias mjSENS_GYRO: 
	alias mjSENS_FORCE: 
	alias mjSENS_TORQUE: 
	alias mjSENS_MAGNETOMETER: 
	alias mjSENS_RANGEFINDER: 
	alias mjSENS_CAMPROJECTION: 
	alias mjSENS_JOINTPOS: 
	alias mjSENS_JOINTVEL: 
	alias mjSENS_TENDONPOS: 
	alias mjSENS_TENDONVEL: 
	alias mjSENS_ACTUATORPOS: 
	alias mjSENS_ACTUATORVEL: 
	alias mjSENS_ACTUATORFRC: 
	alias mjSENS_JOINTACTFRC: 
	alias mjSENS_BALLQUAT: 
	alias mjSENS_BALLANGVEL: 
	alias mjSENS_JOINTLIMITPOS: 
	alias mjSENS_JOINTLIMITVEL: 
	alias mjSENS_JOINTLIMITFRC: 
	alias mjSENS_TENDONLIMITPOS: 
	alias mjSENS_TENDONLIMITVEL: 
	alias mjSENS_TENDONLIMITFRC: 
	alias mjSENS_FRAMEPOS: 
	alias mjSENS_FRAMEQUAT: 
	alias mjSENS_FRAMEXAXIS: 
	alias mjSENS_FRAMEYAXIS: 
	alias mjSENS_FRAMEZAXIS: 
	alias mjSENS_FRAMELINVEL: 
	alias mjSENS_FRAMEANGVEL: 
	alias mjSENS_FRAMELINACC: 
	alias mjSENS_FRAMEANGACC: 
	alias mjSENS_SUBTREECOM: 
	alias mjSENS_SUBTREELINVEL: 
	alias mjSENS_SUBTREEANGMOM: 
	alias mjSENS_GEOMDIST: 
	alias mjSENS_GEOMNORMAL: 
	alias mjSENS_GEOMFROMTO: 
	alias mjSENS_E_POTENTIAL: 
	alias mjSENS_E_KINETIC: 
	alias mjSENS_CLOCK: 
	alias mjSENS_PLUGIN: 
	alias mjSENS_USER: 


alias mjtSensor = 
struct mjtStage_:
	alias mjSTAGE_NONE: Int = 0

	alias mjSTAGE_POS: 
	alias mjSTAGE_VEL: 
	alias mjSTAGE_ACC: 


alias mjtStage = 
struct mjtDataType_:
	alias mjDATATYPE_REAL: Int = 0

	alias mjDATATYPE_POSITIVE: 
	alias mjDATATYPE_AXIS: 
	alias mjDATATYPE_QUATERNION: 


alias mjtDataType = 
struct mjtSameFrame_:
	alias mjSAMEFRAME_NONE: Int = 0

	alias mjSAMEFRAME_BODY: 
	alias mjSAMEFRAME_INERTIA: 
	alias mjSAMEFRAME_BODYROT: 
	alias mjSAMEFRAME_INERTIAROT: 


alias mjtSameFrame = 
struct mjtLRMode_:
	alias mjLRMODE_NONE: Int = 0

	alias mjLRMODE_MUSCLE: 
	alias mjLRMODE_MUSCLEUSER: 
	alias mjLRMODE_ALL: 


alias mjtLRMode = 
struct mjtFlexSelf_:
	alias mjFLEXSELF_NONE: Int = 0

	alias mjFLEXSELF_NARROW: 
	alias mjFLEXSELF_BVH: 
	alias mjFLEXSELF_SAP: 
	alias mjFLEXSELF_AUTO: 


alias mjtFlexSelf = 
struct mjLROpt_:

	var mode: Int32
	
	# which actuators to process (mjtLRMode)


	var useexisting: Int32
	
	# use existing length range if available


	var uselimit: Int32
	
	# use joint and tendon limits if available


	var accel: mjtNum
	# Unhandled tokens: double
	
	# target acceleration used to compute force


	var maxforce: mjtNum
	# Unhandled tokens: double
	
	# maximum force; 0: no limit


	var timeconst: mjtNum
	# Unhandled tokens: double
	
	# time constant for velocity reduction; min 0.01


	var timestep: mjtNum
	# Unhandled tokens: double
	
	# simulation timestep; 0: use mjOption.timestep


	var inttotal: mjtNum
	# Unhandled tokens: double
	
	# total simulation time interval


	var interval: mjtNum
	# Unhandled tokens: double
	
	# evaluation time interval (at the end)


	var tolrange: mjtNum
	# Unhandled tokens: double
	
	# convergence tolerance (relative to range)



alias mjLROpt = mjLROpt_
struct mjVFS_:

	var impl_: UnsafePointer[NoneType]
	
	# internal pointer to VFS memory



alias mjVFS = mjVFS_
struct mjOption_:

	var timestep: mjtNum
	# Unhandled tokens: double
	
	# timestep


	var apirate: mjtNum
	# Unhandled tokens: double
	
	# update rate for remote API (Hz)


	var impratio: mjtNum
	# Unhandled tokens: double
	
	# ratio of friction-to-normal contact impedance


	var tolerance: mjtNum
	# Unhandled tokens: double
	
	# main solver tolerance


	var ls_tolerance: mjtNum
	# Unhandled tokens: double
	
	# CG/Newton linesearch tolerance


	var noslip_tolerance: mjtNum
	# Unhandled tokens: double
	
	# noslip solver tolerance


	var ccd_tolerance: mjtNum
	# Unhandled tokens: double
	
	# convex collision solver tolerance


	var gravity: SIMD[mjtNum.dtype, 3]
	
	# gravitational acceleration


	var wind: SIMD[mjtNum.dtype, 3]
	
	# wind (for lift, drag and viscosity)


	var magnetic: SIMD[mjtNum.dtype, 3]
	
	# global magnetic flux


	var density: mjtNum
	# Unhandled tokens: double
	
	# density of medium


	var viscosity: mjtNum
	# Unhandled tokens: double
	
	# viscosity of medium


	var o_margin: mjtNum
	# Unhandled tokens: double
	
	# margin


	var o_solref: SIMD[mjtNum.dtype, 2]
	
	# solref


	var o_solimp: SIMD[mjtNum.dtype, 5]
	
	# solimp


	var o_friction: SIMD[mjtNum.dtype, 5]
	
	# friction


	var integrator: Int32
	
	# integration mode (mjtIntegrator)


	var cone: Int32
	
	# type of friction cone (mjtCone)


	var jacobian: Int32
	
	# type of Jacobian (mjtJacobian)


	var solver: Int32
	
	# solver algorithm (mjtSolver)


	var iterations: Int32
	
	# maximum number of main solver iterations


	var ls_iterations: Int32
	
	# maximum number of CG/Newton linesearch iterations


	var noslip_iterations: Int32
	
	# maximum number of noslip solver iterations


	var ccd_iterations: Int32
	
	# maximum number of convex collision solver iterations


	var disableflags: Int32
	
	# bit flags for disabling standard features


	var enableflags: Int32
	
	# bit flags for enabling optional features


	var disableactuator: Int32
	
	# bit flags for disabling actuators by group id


	var sdf_initpoints: Int32
	
	# number of starting points for gradient descent


	var sdf_iterations: Int32
	
	# max number of iterations for gradient descent



alias mjOption = mjOption_
struct _mjVisual__Anonymous__line_552_3__line_578_3_:

	var fog: SIMD[Float32.dtype, 4]
	
	# fog


	var haze: SIMD[Float32.dtype, 4]
	
	# haze


	var force: SIMD[Float32.dtype, 4]
	
	# external force


	var inertia: SIMD[Float32.dtype, 4]
	
	# inertia box


	var joint: SIMD[Float32.dtype, 4]
	
	# joint


	var actuator: SIMD[Float32.dtype, 4]
	
	# actuator, neutral


	var actuatornegative: SIMD[Float32.dtype, 4]
	
	# actuator, negative limit


	var actuatorpositive: SIMD[Float32.dtype, 4]
	
	# actuator, positive limit


	var com: SIMD[Float32.dtype, 4]
	
	# center of mass


	var camera: SIMD[Float32.dtype, 4]
	
	# camera object


	var light: SIMD[Float32.dtype, 4]
	
	# light object


	var selectpoint: SIMD[Float32.dtype, 4]
	
	# selection point


	var connect: SIMD[Float32.dtype, 4]
	
	# auto connect


	var contactpoint: SIMD[Float32.dtype, 4]
	
	# contact point


	var contactforce: SIMD[Float32.dtype, 4]
	
	# contact force


	var contactfriction: SIMD[Float32.dtype, 4]
	
	# contact friction force


	var contacttorque: SIMD[Float32.dtype, 4]
	
	# contact torque


	var contactgap: SIMD[Float32.dtype, 4]
	
	# contact point in gap


	var rangefinder: SIMD[Float32.dtype, 4]
	
	# rangefinder ray


	var constraint: SIMD[Float32.dtype, 4]
	
	# constraint


	var slidercrank: SIMD[Float32.dtype, 4]
	
	# slidercrank


	var crankbroken: SIMD[Float32.dtype, 4]
	
	# used when crank must be stretched/broken


	var frustum: SIMD[Float32.dtype, 4]
	
	# camera frustum


	var bv: SIMD[Float32.dtype, 4]
	
	# bounding volume


	var bvactive: SIMD[Float32.dtype, 4]
	
	# active bounding volume



struct _mjVisual__Anonymous__line_532_3__line_550_3_:

	var forcewidth: Float32
	
	# width of force arrow


	var contactwidth: Float32
	
	# contact width


	var contactheight: Float32
	
	# contact height


	var connect: Float32
	
	# autoconnect capsule width


	var com: Float32
	
	# com radius


	var camera: Float32
	
	# camera object


	var light: Float32
	
	# light object


	var selectpoint: Float32
	
	# selection point


	var jointlength: Float32
	
	# joint length


	var jointwidth: Float32
	
	# joint width


	var actuatorlength: Float32
	
	# actuator length


	var actuatorwidth: Float32
	
	# actuator width


	var framelength: Float32
	
	# bodyframe axis length


	var framewidth: Float32
	
	# bodyframe axis width


	var constraint: Float32
	
	# constraint width


	var slidercrank: Float32
	
	# slidercrank width


	var frustum: Float32
	
	# frustum zfar plane



struct _mjVisual__Anonymous__line_516_3__line_530_3_:

	var stiffness: Float32
	
	# mouse perturbation stiffness (space->force)


	var stiffnessrot: Float32
	
	# mouse perturbation stiffness (space->torque)


	var force: Float32
	
	# from force units to space units


	var torque: Float32
	
	# from torque units to space units


	var alpha: Float32
	
	# scale geom alphas when transparency is enabled


	var fogstart: Float32
	
	# OpenGL fog starts at fogstart * mjModel.stat.extent


	var fogend: Float32
	
	# OpenGL fog ends at fogend * mjModel.stat.extent


	var znear: Float32
	
	# near clipping plane = znear * mjModel.stat.extent


	var zfar: Float32
	
	# far clipping plane = zfar * mjModel.stat.extent


	var haze: Float32
	
	# haze ratio


	var shadowclip: Float32
	
	# directional light: shadowclip * mjModel.stat.extent


	var shadowscale: Float32
	
	# spot light: shadowscale * light.cutoff


	var actuatortendon: Float32
	
	# scale tendon width



struct _mjVisual__Anonymous__line_509_3__line_514_3_:

	var ambient: SIMD[Float32.dtype, 3]
	
	# ambient rgb (alpha=1)


	var diffuse: SIMD[Float32.dtype, 3]
	
	# diffuse rgb (alpha=1)


	var specular: SIMD[Float32.dtype, 3]
	
	# specular rgb (alpha=1)


	var active: Int32
	
	# is headlight active



struct _mjVisual__Anonymous__line_501_3__line_507_3_:

	var shadowsize: Int32
	
	# size of shadowmap texture


	var offsamples: Int32
	
	# number of multisamples for offscreen rendering


	var numslices: Int32
	
	# number of slices for builtin geom drawing


	var numstacks: Int32
	
	# number of stacks for builtin geom drawing


	var numquads: Int32
	
	# number of quads for box rendering



struct _mjVisual__Anonymous__line_486_3__line_499_3_:

	var orthographic: Int32
	
	# is the free camera orthographic (0: no, 1: yes)


	var fovy: Float32
	
	# y field-of-view of free camera (orthographic ? length : degree)


	var ipd: Float32
	
	# inter-pupilary distance for free camera


	var azimuth: Float32
	
	# initial azimuth of free camera (degrees)


	var elevation: Float32
	
	# initial elevation of free camera (degrees)


	var linewidth: Float32
	
	# line width for wireframe and ray rendering


	var glow: Float32
	
	# glow coefficient for selected body


	var realtime: Float32
	
	# initial real-time factor (1: real time)


	var offwidth: Int32
	
	# width of offscreen buffer


	var offheight: Int32
	
	# height of offscreen buffer


	var ellipsoidinertia: Int32
	
	# geom for inertia visualization (0: box, 1: ellipsoid)


	var bvactive: Int32
	
	# visualize active bounding volumes (0: no, 1: yes)



struct mjVisual_:

	var global: _mjVisual__Anonymous__line_486_3__line_499_3_
	

	var quality: _mjVisual__Anonymous__line_501_3__line_507_3_
	

	var headlight: _mjVisual__Anonymous__line_509_3__line_514_3_
	

	var map: _mjVisual__Anonymous__line_516_3__line_530_3_
	

	var scale: _mjVisual__Anonymous__line_532_3__line_550_3_
	

	var rgba: _mjVisual__Anonymous__line_552_3__line_578_3_
	


alias mjVisual = mjVisual_
struct mjStatistic_:

	var meaninertia: mjtNum
	# Unhandled tokens: double
	
	# mean diagonal inertia


	var meanmass: mjtNum
	# Unhandled tokens: double
	
	# mean body mass


	var meansize: mjtNum
	# Unhandled tokens: double
	
	# mean body size


	var extent: mjtNum
	# Unhandled tokens: double
	
	# spatial extent


	var center: SIMD[mjtNum.dtype, 3]
	
	# center of model



alias mjStatistic = mjStatistic_
struct mjModel_:

	var nq: Int32
	
	# number of generalized coordinates = dim(qpos)


	var nv: Int32
	
	# number of degrees of freedom = dim(qvel)


	var nu: Int32
	
	# number of actuators/controls = dim(ctrl)


	var na: Int32
	
	# number of activation states = dim(act)


	var nbody: Int32
	
	# number of bodies


	var nbvh: Int32
	
	# number of total bounding volumes in all bodies


	var nbvhstatic: Int32
	
	# number of static bounding volumes (aabb stored in mjModel)


	var nbvhdynamic: Int32
	
	# number of dynamic bounding volumes (aabb stored in mjData)


	var njnt: Int32
	
	# number of joints


	var ngeom: Int32
	
	# number of geoms


	var nsite: Int32
	
	# number of sites


	var ncam: Int32
	
	# number of cameras


	var nlight: Int32
	
	# number of lights


	var nflex: Int32
	
	# number of flexes


	var nflexnode: Int32
	
	# number of dofs in all flexes


	var nflexvert: Int32
	
	# number of vertices in all flexes


	var nflexedge: Int32
	
	# number of edges in all flexes


	var nflexelem: Int32
	
	# number of elements in all flexes


	var nflexelemdata: Int32
	
	# number of element vertex ids in all flexes


	var nflexelemedge: Int32
	
	# number of element edge ids in all flexes


	var nflexshelldata: Int32
	
	# number of shell fragment vertex ids in all flexes


	var nflexevpair: Int32
	
	# number of element-vertex pairs in all flexes


	var nflextexcoord: Int32
	
	# number of vertices with texture coordinates


	var nmesh: Int32
	
	# number of meshes


	var nmeshvert: Int32
	
	# number of vertices in all meshes


	var nmeshnormal: Int32
	
	# number of normals in all meshes


	var nmeshtexcoord: Int32
	
	# number of texcoords in all meshes


	var nmeshface: Int32
	
	# number of triangular faces in all meshes


	var nmeshgraph: Int32
	
	# number of ints in mesh auxiliary data


	var nmeshpoly: Int32
	
	# number of polygons in all meshes


	var nmeshpolyvert: Int32
	
	# number of vertices in all polygons


	var nmeshpolymap: Int32
	
	# number of polygons in vertex map


	var nskin: Int32
	
	# number of skins


	var nskinvert: Int32
	
	# number of vertices in all skins


	var nskintexvert: Int32
	
	# number of vertiex with texcoords in all skins


	var nskinface: Int32
	
	# number of triangular faces in all skins


	var nskinbone: Int32
	
	# number of bones in all skins


	var nskinbonevert: Int32
	
	# number of vertices in all skin bones


	var nhfield: Int32
	
	# number of heightfields


	var nhfielddata: Int32
	
	# number of data points in all heightfields


	var ntex: Int32
	
	# number of textures


	var ntexdata: Int32
	
	# number of bytes in texture rgb data


	var nmat: Int32
	
	# number of materials


	var npair: Int32
	
	# number of predefined geom pairs


	var nexclude: Int32
	
	# number of excluded geom pairs


	var neq: Int32
	
	# number of equality constraints


	var ntendon: Int32
	
	# number of tendons


	var nwrap: Int32
	
	# number of wrap objects in all tendon paths


	var nsensor: Int32
	
	# number of sensors


	var nnumeric: Int32
	
	# number of numeric custom fields


	var nnumericdata: Int32
	
	# number of mjtNums in all numeric fields


	var ntext: Int32
	
	# number of text custom fields


	var ntextdata: Int32
	
	# number of mjtBytes in all text fields


	var ntuple: Int32
	
	# number of tuple custom fields


	var ntupledata: Int32
	
	# number of objects in all tuple fields


	var nkey: Int32
	
	# number of keyframes


	var nmocap: Int32
	
	# number of mocap bodies


	var nplugin: Int32
	
	# number of plugin instances


	var npluginattr: Int32
	
	# number of chars in all plugin config attributes


	var nuser_body: Int32
	
	# number of mjtNums in body_user


	var nuser_jnt: Int32
	
	# number of mjtNums in jnt_user


	var nuser_geom: Int32
	
	# number of mjtNums in geom_user


	var nuser_site: Int32
	
	# number of mjtNums in site_user


	var nuser_cam: Int32
	
	# number of mjtNums in cam_user


	var nuser_tendon: Int32
	
	# number of mjtNums in tendon_user


	var nuser_actuator: Int32
	
	# number of mjtNums in actuator_user


	var nuser_sensor: Int32
	
	# number of mjtNums in sensor_user


	var nnames: Int32
	
	# number of chars in all names


	var npaths: Int32
	
	# number of chars in all paths


	var nnames_map: Int32
	
	# number of slots in the names hash map


	var nM: Int32
	
	# number of non-zeros in sparse inertia matrix


	var nB: Int32
	
	# number of non-zeros in sparse body-dof matrix


	var nC: Int32
	
	# number of non-zeros in sparse reduced dof-dof matrix


	var nD: Int32
	
	# number of non-zeros in sparse dof-dof matrix


	var nJmom: Int32
	
	# number of non-zeros in sparse actuator_moment matrix


	var ntree: Int32
	
	# number of kinematic trees under world body


	var ngravcomp: Int32
	
	# number of bodies with nonzero gravcomp


	var nemax: Int32
	
	# number of potential equality-constraint rows


	var njmax: Int32
	
	# number of available rows in constraint Jacobian (legacy)


	var nconmax: Int32
	
	# number of potential contacts in contact list (legacy)


	var nuserdata: Int32
	
	# number of mjtNums reserved for the user


	var nsensordata: Int32
	
	# number of mjtNums in sensor data vector


	var npluginstate: Int32
	
	# number of mjtNums in plugin state vector


	var narena: size_t
	# Unhandled tokens: unsigned long
	
	# number of bytes in the mjData arena (inclusive of stack)


	var nbuffer: size_t
	# Unhandled tokens: unsigned long
	
	# number of bytes in buffer


	var opt: mjOption
	# Unhandled tokens: struct mjOption_
	
	# physics options


	var vis: mjVisual
	# Unhandled tokens: struct mjVisual_
	
	# visualization options


	var stat: mjStatistic
	# Unhandled tokens: struct mjStatistic_
	
	# model statistics


	var buffer: UnsafePointer[NoneType]
	
	# main buffer; all pointers point in it    (nbuffer)


	var qpos0: UnsafePointer[mjtNum]
	
	# qpos values at default pose              (nq x 1)


	var qpos_spring: UnsafePointer[mjtNum]
	
	# reference pose for springs               (nq x 1)


	var body_parentid: UnsafePointer[Int32]
	
	# id of body ' s parent                      (nbody x 1)


	var body_rootid: UnsafePointer[Int32]
	
	# id of root above body                    (nbody x 1)


	var body_weldid: UnsafePointer[Int32]
	
	# id of body that this body is welded to   (nbody x 1)


	var body_mocapid: UnsafePointer[Int32]
	
	# id of mocap data; -1: none               (nbody x 1)


	var body_jntnum: UnsafePointer[Int32]
	
	# number of joints for this body           (nbody x 1)


	var body_jntadr: UnsafePointer[Int32]
	
	# start addr of joints; -1: no joints      (nbody x 1)


	var body_dofnum: UnsafePointer[Int32]
	
	# number of motion degrees of freedom      (nbody x 1)


	var body_dofadr: UnsafePointer[Int32]
	
	# start addr of dofs; -1: no dofs          (nbody x 1)


	var body_treeid: UnsafePointer[Int32]
	
	# id of body ' s kinematic tree; -1: static  (nbody x 1)


	var body_geomnum: UnsafePointer[Int32]
	
	# number of geoms                          (nbody x 1)


	var body_geomadr: UnsafePointer[Int32]
	
	# start addr of geoms; -1: no geoms        (nbody x 1)


	var body_simple: UnsafePointer[mjtByte]
	
	# 1: diag M; 2: diag M, sliders only       (nbody x 1)


	var body_sameframe: UnsafePointer[mjtByte]
	
	# same frame as inertia (mjtSameframe)     (nbody x 1)


	var body_pos: UnsafePointer[mjtNum]
	
	# position offset rel. to parent body      (nbody x 3)


	var body_quat: UnsafePointer[mjtNum]
	
	# orientation offset rel. to parent body   (nbody x 4)


	var body_ipos: UnsafePointer[mjtNum]
	
	# local position of center of mass         (nbody x 3)


	var body_iquat: UnsafePointer[mjtNum]
	
	# local orientation of inertia ellipsoid   (nbody x 4)


	var body_mass: UnsafePointer[mjtNum]
	
	# mass                                     (nbody x 1)


	var body_subtreemass: UnsafePointer[mjtNum]
	
	# mass of subtree starting at this body    (nbody x 1)


	var body_inertia: UnsafePointer[mjtNum]
	
	# diagonal inertia in ipos/iquat frame     (nbody x 3)


	var body_invweight0: UnsafePointer[mjtNum]
	
	# mean inv inert in qpos0 (trn, rot)       (nbody x 2)


	var body_gravcomp: UnsafePointer[mjtNum]
	
	# antigravity force, units of body weight  (nbody x 1)


	var body_margin: UnsafePointer[mjtNum]
	
	# MAX over all geom margins                (nbody x 1)


	var body_user: UnsafePointer[mjtNum]
	
	# user data                                (nbody x nuser_body)


	var body_plugin: UnsafePointer[Int32]
	
	# plugin instance id; -1: not in use       (nbody x 1)


	var body_contype: UnsafePointer[Int32]
	
	# OR over all geom contypes                (nbody x 1)


	var body_conaffinity: UnsafePointer[Int32]
	
	# OR over all geom conaffinities           (nbody x 1)


	var body_bvhadr: UnsafePointer[Int32]
	
	# address of bvh root                      (nbody x 1)


	var body_bvhnum: UnsafePointer[Int32]
	
	# number of bounding volumes               (nbody x 1)


	var bvh_depth: UnsafePointer[Int32]
	
	# depth in the bounding volume hierarchy   (nbvh x 1)


	var bvh_child: UnsafePointer[Int32]
	
	# left and right children in tree          (nbvh x 2)


	var bvh_nodeid: UnsafePointer[Int32]
	
	# geom or elem id of node; -1: non-leaf    (nbvh x 1)


	var bvh_aabb: UnsafePointer[mjtNum]
	
	# local bounding box (center, size)        (nbvhstatic x 6)


	var jnt_type: UnsafePointer[Int32]
	
	# type of joint (mjtJoint)                 (njnt x 1)


	var jnt_qposadr: UnsafePointer[Int32]
	
	# start addr in ' qpos ' for joint ' s data    (njnt x 1)


	var jnt_dofadr: UnsafePointer[Int32]
	
	# start addr in ' qvel ' for joint ' s data    (njnt x 1)


	var jnt_bodyid: UnsafePointer[Int32]
	
	# id of joint ' s body                       (njnt x 1)


	var jnt_group: UnsafePointer[Int32]
	
	# group for visibility                     (njnt x 1)


	var jnt_limited: UnsafePointer[mjtByte]
	
	# does joint have limits                   (njnt x 1)


	var jnt_actfrclimited: UnsafePointer[mjtByte]
	
	# does joint have actuator force limits    (njnt x 1)


	var jnt_actgravcomp: UnsafePointer[mjtByte]
	
	# is gravcomp force applied via actuators  (njnt x 1)


	var jnt_solref: UnsafePointer[mjtNum]
	
	# constraint solver reference: limit       (njnt x mjNREF)


	var jnt_solimp: UnsafePointer[mjtNum]
	
	# constraint solver impedance: limit       (njnt x mjNIMP)


	var jnt_pos: UnsafePointer[mjtNum]
	
	# local anchor position                    (njnt x 3)


	var jnt_axis: UnsafePointer[mjtNum]
	
	# local joint axis                         (njnt x 3)


	var jnt_stiffness: UnsafePointer[mjtNum]
	
	# stiffness coefficient                    (njnt x 1)


	var jnt_range: UnsafePointer[mjtNum]
	
	# joint limits                             (njnt x 2)


	var jnt_actfrcrange: UnsafePointer[mjtNum]
	
	# range of total actuator force            (njnt x 2)


	var jnt_margin: UnsafePointer[mjtNum]
	
	# min distance for limit detection         (njnt x 1)


	var jnt_user: UnsafePointer[mjtNum]
	
	# user data                                (njnt x nuser_jnt)


	var dof_bodyid: UnsafePointer[Int32]
	
	# id of dof ' s body                         (nv x 1)


	var dof_jntid: UnsafePointer[Int32]
	
	# id of dof ' s joint                        (nv x 1)


	var dof_parentid: UnsafePointer[Int32]
	
	# id of dof ' s parent; -1: none             (nv x 1)


	var dof_treeid: UnsafePointer[Int32]
	
	# id of dof ' s kinematic tree               (nv x 1)


	var dof_Madr: UnsafePointer[Int32]
	
	# dof address in M-diagonal                (nv x 1)


	var dof_simplenum: UnsafePointer[Int32]
	
	# number of consecutive simple dofs        (nv x 1)


	var dof_solref: UnsafePointer[mjtNum]
	
	# constraint solver reference:frictionloss (nv x mjNREF)


	var dof_solimp: UnsafePointer[mjtNum]
	
	# constraint solver impedance:frictionloss (nv x mjNIMP)


	var dof_frictionloss: UnsafePointer[mjtNum]
	
	# dof friction loss                        (nv x 1)


	var dof_armature: UnsafePointer[mjtNum]
	
	# dof armature inertia/mass                (nv x 1)


	var dof_damping: UnsafePointer[mjtNum]
	
	# damping coefficient                      (nv x 1)


	var dof_invweight0: UnsafePointer[mjtNum]
	
	# diag. inverse inertia in qpos0           (nv x 1)


	var dof_M0: UnsafePointer[mjtNum]
	
	# diag. inertia in qpos0                   (nv x 1)


	var geom_type: UnsafePointer[Int32]
	
	# geometric type (mjtGeom)                 (ngeom x 1)


	var geom_contype: UnsafePointer[Int32]
	
	# geom contact type                        (ngeom x 1)


	var geom_conaffinity: UnsafePointer[Int32]
	
	# geom contact affinity                    (ngeom x 1)


	var geom_condim: UnsafePointer[Int32]
	
	# contact dimensionality (1, 3, 4, 6)      (ngeom x 1)


	var geom_bodyid: UnsafePointer[Int32]
	
	# id of geom ' s body                        (ngeom x 1)


	var geom_dataid: UnsafePointer[Int32]
	
	# id of geom ' s mesh/hfield; -1: none       (ngeom x 1)


	var geom_matid: UnsafePointer[Int32]
	
	# material id for rendering; -1: none      (ngeom x 1)


	var geom_group: UnsafePointer[Int32]
	
	# group for visibility                     (ngeom x 1)


	var geom_priority: UnsafePointer[Int32]
	
	# geom contact priority                    (ngeom x 1)


	var geom_plugin: UnsafePointer[Int32]
	
	# plugin instance id; -1: not in use       (ngeom x 1)


	var geom_sameframe: UnsafePointer[mjtByte]
	
	# same frame as body (mjtSameframe)        (ngeom x 1)


	var geom_solmix: UnsafePointer[mjtNum]
	
	# mixing coef for solref/imp in geom pair  (ngeom x 1)


	var geom_solref: UnsafePointer[mjtNum]
	
	# constraint solver reference: contact     (ngeom x mjNREF)


	var geom_solimp: UnsafePointer[mjtNum]
	
	# constraint solver impedance: contact     (ngeom x mjNIMP)


	var geom_size: UnsafePointer[mjtNum]
	
	# geom-specific size parameters            (ngeom x 3)


	var geom_aabb: UnsafePointer[mjtNum]
	
	# bounding box, (center, size)             (ngeom x 6)


	var geom_rbound: UnsafePointer[mjtNum]
	
	# radius of bounding sphere                (ngeom x 1)


	var geom_pos: UnsafePointer[mjtNum]
	
	# local position offset rel. to body       (ngeom x 3)


	var geom_quat: UnsafePointer[mjtNum]
	
	# local orientation offset rel. to body    (ngeom x 4)


	var geom_friction: UnsafePointer[mjtNum]
	
	# friction for (slide, spin, roll)         (ngeom x 3)


	var geom_margin: UnsafePointer[mjtNum]
	
	# detect contact if dist
	#<margin
	#            (ngeom x 1)


	var geom_gap: UnsafePointer[mjtNum]
	
	# include in solver if dist
	#<margin
	#-gap     (ngeom x 1)


	var geom_fluid: UnsafePointer[mjtNum]
	
	# fluid interaction parameters             (ngeom x mjNFLUID)


	var geom_user: UnsafePointer[mjtNum]
	
	# user data                                (ngeom x nuser_geom)


	var geom_rgba: UnsafePointer[Float32]
	
	# rgba when material is omitted            (ngeom x 4)


	var site_type: UnsafePointer[Int32]
	
	# geom type for rendering (mjtGeom)        (nsite x 1)


	var site_bodyid: UnsafePointer[Int32]
	
	# id of site ' s body                        (nsite x 1)


	var site_matid: UnsafePointer[Int32]
	
	# material id for rendering; -1: none      (nsite x 1)


	var site_group: UnsafePointer[Int32]
	
	# group for visibility                     (nsite x 1)


	var site_sameframe: UnsafePointer[mjtByte]
	
	# same frame as body (mjtSameframe)        (nsite x 1)


	var site_size: UnsafePointer[mjtNum]
	
	# geom size for rendering                  (nsite x 3)


	var site_pos: UnsafePointer[mjtNum]
	
	# local position offset rel. to body       (nsite x 3)


	var site_quat: UnsafePointer[mjtNum]
	
	# local orientation offset rel. to body    (nsite x 4)


	var site_user: UnsafePointer[mjtNum]
	
	# user data                                (nsite x nuser_site)


	var site_rgba: UnsafePointer[Float32]
	
	# rgba when material is omitted            (nsite x 4)


	var cam_mode: UnsafePointer[Int32]
	
	# camera tracking mode (mjtCamLight)       (ncam x 1)


	var cam_bodyid: UnsafePointer[Int32]
	
	# id of camera ' s body                      (ncam x 1)


	var cam_targetbodyid: UnsafePointer[Int32]
	
	# id of targeted body; -1: none            (ncam x 1)


	var cam_pos: UnsafePointer[mjtNum]
	
	# position rel. to body frame              (ncam x 3)


	var cam_quat: UnsafePointer[mjtNum]
	
	# orientation rel. to body frame           (ncam x 4)


	var cam_poscom0: UnsafePointer[mjtNum]
	
	# global position rel. to sub-com in qpos0 (ncam x 3)


	var cam_pos0: UnsafePointer[mjtNum]
	
	# global position rel. to body in qpos0    (ncam x 3)


	var cam_mat0: UnsafePointer[mjtNum]
	
	# global orientation in qpos0              (ncam x 9)


	var cam_orthographic: UnsafePointer[Int32]
	
	# orthographic camera; 0: no, 1: yes       (ncam x 1)


	var cam_fovy: UnsafePointer[mjtNum]
	
	# y field-of-view (ortho ? len : deg)      (ncam x 1)


	var cam_ipd: UnsafePointer[mjtNum]
	
	# inter-pupilary distance                  (ncam x 1)


	var cam_resolution: UnsafePointer[Int32]
	
	# resolution: pixels [width, height]       (ncam x 2)


	var cam_sensorsize: UnsafePointer[Float32]
	
	# sensor size: length [width, height]      (ncam x 2)


	var cam_intrinsic: UnsafePointer[Float32]
	
	# [focal length; principal point]          (ncam x 4)


	var cam_user: UnsafePointer[mjtNum]
	
	# user data                                (ncam x nuser_cam)


	var light_mode: UnsafePointer[Int32]
	
	# light tracking mode (mjtCamLight)        (nlight x 1)


	var light_bodyid: UnsafePointer[Int32]
	
	# id of light ' s body                       (nlight x 1)


	var light_targetbodyid: UnsafePointer[Int32]
	
	# id of targeted body; -1: none            (nlight x 1)


	var light_directional: UnsafePointer[mjtByte]
	
	# directional light                        (nlight x 1)


	var light_castshadow: UnsafePointer[mjtByte]
	
	# does light cast shadows                  (nlight x 1)


	var light_bulbradius: UnsafePointer[Float32]
	
	# light radius for soft shadows            (nlight x 1)


	var light_active: UnsafePointer[mjtByte]
	
	# is light on                              (nlight x 1)


	var light_pos: UnsafePointer[mjtNum]
	
	# position rel. to body frame              (nlight x 3)


	var light_dir: UnsafePointer[mjtNum]
	
	# direction rel. to body frame             (nlight x 3)


	var light_poscom0: UnsafePointer[mjtNum]
	
	# global position rel. to sub-com in qpos0 (nlight x 3)


	var light_pos0: UnsafePointer[mjtNum]
	
	# global position rel. to body in qpos0    (nlight x 3)


	var light_dir0: UnsafePointer[mjtNum]
	
	# global direction in qpos0                (nlight x 3)


	var light_attenuation: UnsafePointer[Float32]
	
	# OpenGL attenuation (quadratic model)     (nlight x 3)


	var light_cutoff: UnsafePointer[Float32]
	
	# OpenGL cutoff                            (nlight x 1)


	var light_exponent: UnsafePointer[Float32]
	
	# OpenGL exponent                          (nlight x 1)


	var light_ambient: UnsafePointer[Float32]
	
	# ambient rgb (alpha=1)                    (nlight x 3)


	var light_diffuse: UnsafePointer[Float32]
	
	# diffuse rgb (alpha=1)                    (nlight x 3)


	var light_specular: UnsafePointer[Float32]
	
	# specular rgb (alpha=1)                   (nlight x 3)


	var flex_contype: UnsafePointer[Int32]
	
	# flex contact type                        (nflex x 1)


	var flex_conaffinity: UnsafePointer[Int32]
	
	# flex contact affinity                    (nflex x 1)


	var flex_condim: UnsafePointer[Int32]
	
	# contact dimensionality (1, 3, 4, 6)      (nflex x 1)


	var flex_priority: UnsafePointer[Int32]
	
	# flex contact priority                    (nflex x 1)


	var flex_solmix: UnsafePointer[mjtNum]
	
	# mix coef for solref/imp in contact pair  (nflex x 1)


	var flex_solref: UnsafePointer[mjtNum]
	
	# constraint solver reference: contact     (nflex x mjNREF)


	var flex_solimp: UnsafePointer[mjtNum]
	
	# constraint solver impedance: contact     (nflex x mjNIMP)


	var flex_friction: UnsafePointer[mjtNum]
	
	# friction for (slide, spin, roll)         (nflex x 3)


	var flex_margin: UnsafePointer[mjtNum]
	
	# detect contact if dist
	#<margin
	#            (nflex x 1)


	var flex_gap: UnsafePointer[mjtNum]
	
	# include in solver if dist
	#<margin
	#-gap     (nflex x 1)


	var flex_internal: UnsafePointer[mjtByte]
	
	# internal flex collision enabled          (nflex x 1)


	var flex_selfcollide: UnsafePointer[Int32]
	
	# self collision mode (mjtFlexSelf)        (nflex x 1)


	var flex_activelayers: UnsafePointer[Int32]
	
	# number of active element layers, 3D only (nflex x 1)


	var flex_dim: UnsafePointer[Int32]
	
	# 1: lines, 2: triangles, 3: tetrahedra    (nflex x 1)


	var flex_matid: UnsafePointer[Int32]
	
	# material id for rendering                (nflex x 1)


	var flex_group: UnsafePointer[Int32]
	
	# group for visibility                     (nflex x 1)


	var flex_interp: UnsafePointer[Int32]
	
	# interpolation (0: vertex, 1: nodes)      (nflex x 1)


	var flex_nodeadr: UnsafePointer[Int32]
	
	# first node address                       (nflex x 1)


	var flex_nodenum: UnsafePointer[Int32]
	
	# number of nodes                          (nflex x 1)


	var flex_vertadr: UnsafePointer[Int32]
	
	# first vertex address                     (nflex x 1)


	var flex_vertnum: UnsafePointer[Int32]
	
	# number of vertices                       (nflex x 1)


	var flex_edgeadr: UnsafePointer[Int32]
	
	# first edge address                       (nflex x 1)


	var flex_edgenum: UnsafePointer[Int32]
	
	# number of edges                          (nflex x 1)


	var flex_elemadr: UnsafePointer[Int32]
	
	# first element address                    (nflex x 1)


	var flex_elemnum: UnsafePointer[Int32]
	
	# number of elements                       (nflex x 1)


	var flex_elemdataadr: UnsafePointer[Int32]
	
	# first element vertex id address          (nflex x 1)


	var flex_elemedgeadr: UnsafePointer[Int32]
	
	# first element edge id address            (nflex x 1)


	var flex_shellnum: UnsafePointer[Int32]
	
	# number of shells                         (nflex x 1)


	var flex_shelldataadr: UnsafePointer[Int32]
	
	# first shell data address                 (nflex x 1)


	var flex_evpairadr: UnsafePointer[Int32]
	
	# first evpair address                     (nflex x 1)


	var flex_evpairnum: UnsafePointer[Int32]
	
	# number of evpairs                        (nflex x 1)


	var flex_texcoordadr: UnsafePointer[Int32]
	
	# address in flex_texcoord; -1: none       (nflex x 1)


	var flex_nodebodyid: UnsafePointer[Int32]
	
	# node body ids                            (nflexnode x 1)


	var flex_vertbodyid: UnsafePointer[Int32]
	
	# vertex body ids                          (nflexvert x 1)


	var flex_edge: UnsafePointer[Int32]
	
	# edge vertex ids (2 per edge)             (nflexedge x 2)


	var flex_elem: UnsafePointer[Int32]
	
	# element vertex ids (dim+1 per elem)      (nflexelemdata x 1)


	var flex_elemtexcoord: UnsafePointer[Int32]
	
	# element texture coordinates (dim+1)      (nflexelemdata x 1)


	var flex_elemedge: UnsafePointer[Int32]
	
	# element edge ids                         (nflexelemedge x 1)


	var flex_elemlayer: UnsafePointer[Int32]
	
	# element distance from surface, 3D only   (nflexelem x 1)


	var flex_shell: UnsafePointer[Int32]
	
	# shell fragment vertex ids (dim per frag) (nflexshelldata x 1)


	var flex_evpair: UnsafePointer[Int32]
	
	# (element, vertex) collision pairs        (nflexevpair x 2)


	var flex_vert: UnsafePointer[mjtNum]
	
	# vertex positions in local body frames    (nflexvert x 3)


	var flex_vert0: UnsafePointer[mjtNum]
	
	# vertex positions in qpos0 on [0, 1]^d    (nflexvert x 3)


	var flex_node: UnsafePointer[mjtNum]
	
	# node positions in local body frames      (nflexnode x 3)


	var flex_node0: UnsafePointer[mjtNum]
	
	# Cartesian node positions in qpos0        (nflexnode x 3)


	var flexedge_length0: UnsafePointer[mjtNum]
	
	# edge lengths in qpos0                    (nflexedge x 1)


	var flexedge_invweight0: UnsafePointer[mjtNum]
	
	# edge inv. weight in qpos0                (nflexedge x 1)


	var flex_radius: UnsafePointer[mjtNum]
	
	# radius around primitive element          (nflex x 1)


	var flex_stiffness: UnsafePointer[mjtNum]
	
	# finite element stiffness matrix          (nflexelem x 21)


	var flex_damping: UnsafePointer[mjtNum]
	
	# Rayleigh ' s damping coefficient           (nflex x 1)


	var flex_edgestiffness: UnsafePointer[mjtNum]
	
	# edge stiffness                           (nflex x 1)


	var flex_edgedamping: UnsafePointer[mjtNum]
	
	# edge damping                             (nflex x 1)


	var flex_edgeequality: UnsafePointer[mjtByte]
	
	# is edge equality constraint defined      (nflex x 1)


	var flex_rigid: UnsafePointer[mjtByte]
	
	# are all verices in the same body         (nflex x 1)


	var flexedge_rigid: UnsafePointer[mjtByte]
	
	# are both edge vertices in same body      (nflexedge x 1)


	var flex_centered: UnsafePointer[mjtByte]
	
	# are all vertex coordinates (0,0,0)       (nflex x 1)


	var flex_flatskin: UnsafePointer[mjtByte]
	
	# render flex skin with flat shading       (nflex x 1)


	var flex_bvhadr: UnsafePointer[Int32]
	
	# address of bvh root; -1: no bvh          (nflex x 1)


	var flex_bvhnum: UnsafePointer[Int32]
	
	# number of bounding volumes               (nflex x 1)


	var flex_rgba: UnsafePointer[Float32]
	
	# rgba when material is omitted            (nflex x 4)


	var flex_texcoord: UnsafePointer[Float32]
	
	# vertex texture coordinates               (nflextexcoord x 2)


	var mesh_vertadr: UnsafePointer[Int32]
	
	# first vertex address                     (nmesh x 1)


	var mesh_vertnum: UnsafePointer[Int32]
	
	# number of vertices                       (nmesh x 1)


	var mesh_faceadr: UnsafePointer[Int32]
	
	# first face address                       (nmesh x 1)


	var mesh_facenum: UnsafePointer[Int32]
	
	# number of faces                          (nmesh x 1)


	var mesh_bvhadr: UnsafePointer[Int32]
	
	# address of bvh root                      (nmesh x 1)


	var mesh_bvhnum: UnsafePointer[Int32]
	
	# number of bvh                            (nmesh x 1)


	var mesh_normaladr: UnsafePointer[Int32]
	
	# first normal address                     (nmesh x 1)


	var mesh_normalnum: UnsafePointer[Int32]
	
	# number of normals                        (nmesh x 1)


	var mesh_texcoordadr: UnsafePointer[Int32]
	
	# texcoord data address; -1: no texcoord   (nmesh x 1)


	var mesh_texcoordnum: UnsafePointer[Int32]
	
	# number of texcoord                       (nmesh x 1)


	var mesh_graphadr: UnsafePointer[Int32]
	
	# graph data address; -1: no graph         (nmesh x 1)


	var mesh_vert: UnsafePointer[Float32]
	
	# vertex positions for all meshes          (nmeshvert x 3)


	var mesh_normal: UnsafePointer[Float32]
	
	# normals for all meshes                   (nmeshnormal x 3)


	var mesh_texcoord: UnsafePointer[Float32]
	
	# vertex texcoords for all meshes          (nmeshtexcoord x 2)


	var mesh_face: UnsafePointer[Int32]
	
	# vertex face data                         (nmeshface x 3)


	var mesh_facenormal: UnsafePointer[Int32]
	
	# normal face data                         (nmeshface x 3)


	var mesh_facetexcoord: UnsafePointer[Int32]
	
	# texture face data                        (nmeshface x 3)


	var mesh_graph: UnsafePointer[Int32]
	
	# convex graph data                        (nmeshgraph x 1)


	var mesh_scale: UnsafePointer[mjtNum]
	
	# scaling applied to asset vertices        (nmesh x 3)


	var mesh_pos: UnsafePointer[mjtNum]
	
	# translation applied to asset vertices    (nmesh x 3)


	var mesh_quat: UnsafePointer[mjtNum]
	
	# rotation applied to asset vertices       (nmesh x 4)


	var mesh_pathadr: UnsafePointer[Int32]
	
	# address of asset path for mesh; -1: none (nmesh x 1)


	var mesh_polynum: UnsafePointer[Int32]
	
	# number of polygons per mesh              (nmesh x 1)


	var mesh_polyadr: UnsafePointer[Int32]
	
	# first polygon address per mesh           (nmesh x 1)


	var mesh_polynormal: UnsafePointer[mjtNum]
	
	# all polygon normals                      (nmeshpoly x 3)


	var mesh_polyvertadr: UnsafePointer[Int32]
	
	# polygon vertex start address             (nmeshpoly x 1)


	var mesh_polyvertnum: UnsafePointer[Int32]
	
	# number of vertices per polygon           (nmeshpoly x 1)


	var mesh_polyvert: UnsafePointer[Int32]
	
	# all polygon vertices                     (nmeshpolyvert x 1)


	var mesh_polymapadr: UnsafePointer[Int32]
	
	# first polygon address per vertex         (nmeshvert x 1)


	var mesh_polymapnum: UnsafePointer[Int32]
	
	# number of polygons per vertex            (nmeshvert x 1)


	var mesh_polymap: UnsafePointer[Int32]
	
	# vertex to polygon map                    (nmeshpolymap x 1)


	var skin_matid: UnsafePointer[Int32]
	
	# skin material id; -1: none               (nskin x 1)


	var skin_group: UnsafePointer[Int32]
	
	# group for visibility                     (nskin x 1)


	var skin_rgba: UnsafePointer[Float32]
	
	# skin rgba                                (nskin x 4)


	var skin_inflate: UnsafePointer[Float32]
	
	# inflate skin in normal direction         (nskin x 1)


	var skin_vertadr: UnsafePointer[Int32]
	
	# first vertex address                     (nskin x 1)


	var skin_vertnum: UnsafePointer[Int32]
	
	# number of vertices                       (nskin x 1)


	var skin_texcoordadr: UnsafePointer[Int32]
	
	# texcoord data address; -1: no texcoord   (nskin x 1)


	var skin_faceadr: UnsafePointer[Int32]
	
	# first face address                       (nskin x 1)


	var skin_facenum: UnsafePointer[Int32]
	
	# number of faces                          (nskin x 1)


	var skin_boneadr: UnsafePointer[Int32]
	
	# first bone in skin                       (nskin x 1)


	var skin_bonenum: UnsafePointer[Int32]
	
	# number of bones in skin                  (nskin x 1)


	var skin_vert: UnsafePointer[Float32]
	
	# vertex positions for all skin meshes     (nskinvert x 3)


	var skin_texcoord: UnsafePointer[Float32]
	
	# vertex texcoords for all skin meshes     (nskintexvert x 2)


	var skin_face: UnsafePointer[Int32]
	
	# triangle faces for all skin meshes       (nskinface x 3)


	var skin_bonevertadr: UnsafePointer[Int32]
	
	# first vertex in each bone                (nskinbone x 1)


	var skin_bonevertnum: UnsafePointer[Int32]
	
	# number of vertices in each bone          (nskinbone x 1)


	var skin_bonebindpos: UnsafePointer[Float32]
	
	# bind pos of each bone                    (nskinbone x 3)


	var skin_bonebindquat: UnsafePointer[Float32]
	
	# bind quat of each bone                   (nskinbone x 4)


	var skin_bonebodyid: UnsafePointer[Int32]
	
	# body id of each bone                     (nskinbone x 1)


	var skin_bonevertid: UnsafePointer[Int32]
	
	# mesh ids of vertices in each bone        (nskinbonevert x 1)


	var skin_bonevertweight: UnsafePointer[Float32]
	
	# weights of vertices in each bone         (nskinbonevert x 1)


	var skin_pathadr: UnsafePointer[Int32]
	
	# address of asset path for skin; -1: none (nskin x 1)


	var hfield_size: UnsafePointer[mjtNum]
	
	# (x, y, z_top, z_bottom)                  (nhfield x 4)


	var hfield_nrow: UnsafePointer[Int32]
	
	# number of rows in grid                   (nhfield x 1)


	var hfield_ncol: UnsafePointer[Int32]
	
	# number of columns in grid                (nhfield x 1)


	var hfield_adr: UnsafePointer[Int32]
	
	# address in hfield_data                   (nhfield x 1)


	var hfield_data: UnsafePointer[Float32]
	
	# elevation data                           (nhfielddata x 1)


	var hfield_pathadr: UnsafePointer[Int32]
	
	# address of hfield asset path; -1: none   (nhfield x 1)


	var tex_type: UnsafePointer[Int32]
	
	# texture type (mjtTexture)                (ntex x 1)


	var tex_height: UnsafePointer[Int32]
	
	# number of rows in texture image          (ntex x 1)


	var tex_width: UnsafePointer[Int32]
	
	# number of columns in texture image       (ntex x 1)


	var tex_nchannel: UnsafePointer[Int32]
	
	# number of channels in texture image      (ntex x 1)


	var tex_adr: UnsafePointer[Int32]
	
	# start address in tex_data                (ntex x 1)


	var tex_data: UnsafePointer[mjtByte]
	
	# pixel values                             (ntexdata x 1)


	var tex_pathadr: UnsafePointer[Int32]
	
	# address of texture asset path; -1: none  (ntex x 1)


	var mat_texid: UnsafePointer[Int32]
	
	# indices of textures; -1: none            (nmat x mjNTEXROLE)


	var mat_texuniform: UnsafePointer[mjtByte]
	
	# make texture cube uniform                (nmat x 1)


	var mat_texrepeat: UnsafePointer[Float32]
	
	# texture repetition for 2d mapping        (nmat x 2)


	var mat_emission: UnsafePointer[Float32]
	
	# emission (x rgb)                         (nmat x 1)


	var mat_specular: UnsafePointer[Float32]
	
	# specular (x white)                       (nmat x 1)


	var mat_shininess: UnsafePointer[Float32]
	
	# shininess coef                           (nmat x 1)


	var mat_reflectance: UnsafePointer[Float32]
	
	# reflectance (0: disable)                 (nmat x 1)


	var mat_metallic: UnsafePointer[Float32]
	
	# metallic coef                            (nmat x 1)


	var mat_roughness: UnsafePointer[Float32]
	
	# roughness coef                           (nmat x 1)


	var mat_rgba: UnsafePointer[Float32]
	
	# rgba                                     (nmat x 4)


	var pair_dim: UnsafePointer[Int32]
	
	# contact dimensionality                   (npair x 1)


	var pair_geom1: UnsafePointer[Int32]
	
	# id of geom1                              (npair x 1)


	var pair_geom2: UnsafePointer[Int32]
	
	# id of geom2                              (npair x 1)


	var pair_signature: UnsafePointer[Int32]
	
	# body1 
	#<
	#<
	# 16 + body2                      (npair x 1)


	var pair_solref: UnsafePointer[mjtNum]
	
	# solver reference: contact normal         (npair x mjNREF)


	var pair_solreffriction: UnsafePointer[mjtNum]
	
	# solver reference: contact friction       (npair x mjNREF)


	var pair_solimp: UnsafePointer[mjtNum]
	
	# solver impedance: contact                (npair x mjNIMP)


	var pair_margin: UnsafePointer[mjtNum]
	
	# detect contact if dist
	#<margin
	#            (npair x 1)


	var pair_gap: UnsafePointer[mjtNum]
	
	# include in solver if dist
	#<margin
	#-gap     (npair x 1)


	var pair_friction: UnsafePointer[mjtNum]
	
	# tangent1, 2, spin, roll1, 2              (npair x 5)


	var exclude_signature: UnsafePointer[Int32]
	
	# body1 
	#<
	#<
	# 16 + body2                      (nexclude x 1)


	var eq_type: UnsafePointer[Int32]
	
	# constraint type (mjtEq)                  (neq x 1)


	var eq_obj1id: UnsafePointer[Int32]
	
	# id of object 1                           (neq x 1)


	var eq_obj2id: UnsafePointer[Int32]
	
	# id of object 2                           (neq x 1)


	var eq_objtype: UnsafePointer[Int32]
	
	# type of both objects (mjtObj)            (neq x 1)


	var eq_active0: UnsafePointer[mjtByte]
	
	# initial enable/disable constraint state  (neq x 1)


	var eq_solref: UnsafePointer[mjtNum]
	
	# constraint solver reference              (neq x mjNREF)


	var eq_solimp: UnsafePointer[mjtNum]
	
	# constraint solver impedance              (neq x mjNIMP)


	var eq_data: UnsafePointer[mjtNum]
	
	# numeric data for constraint              (neq x mjNEQDATA)


	var tendon_adr: UnsafePointer[Int32]
	
	# address of first object in tendon ' s path (ntendon x 1)


	var tendon_num: UnsafePointer[Int32]
	
	# number of objects in tendon ' s path       (ntendon x 1)


	var tendon_matid: UnsafePointer[Int32]
	
	# material id for rendering                (ntendon x 1)


	var tendon_group: UnsafePointer[Int32]
	
	# group for visibility                     (ntendon x 1)


	var tendon_limited: UnsafePointer[mjtByte]
	
	# does tendon have length limits           (ntendon x 1)


	var tendon_width: UnsafePointer[mjtNum]
	
	# width for rendering                      (ntendon x 1)


	var tendon_solref_lim: UnsafePointer[mjtNum]
	
	# constraint solver reference: limit       (ntendon x mjNREF)


	var tendon_solimp_lim: UnsafePointer[mjtNum]
	
	# constraint solver impedance: limit       (ntendon x mjNIMP)


	var tendon_solref_fri: UnsafePointer[mjtNum]
	
	# constraint solver reference: friction    (ntendon x mjNREF)


	var tendon_solimp_fri: UnsafePointer[mjtNum]
	
	# constraint solver impedance: friction    (ntendon x mjNIMP)


	var tendon_range: UnsafePointer[mjtNum]
	
	# tendon length limits                     (ntendon x 2)


	var tendon_margin: UnsafePointer[mjtNum]
	
	# min distance for limit detection         (ntendon x 1)


	var tendon_stiffness: UnsafePointer[mjtNum]
	
	# stiffness coefficient                    (ntendon x 1)


	var tendon_damping: UnsafePointer[mjtNum]
	
	# damping coefficient                      (ntendon x 1)


	var tendon_armature: UnsafePointer[mjtNum]
	
	# inertia associated with tendon velocity  (ntendon x 1)


	var tendon_frictionloss: UnsafePointer[mjtNum]
	
	# loss due to friction                     (ntendon x 1)


	var tendon_lengthspring: UnsafePointer[mjtNum]
	
	# spring resting length range              (ntendon x 2)


	var tendon_length0: UnsafePointer[mjtNum]
	
	# tendon length in qpos0                   (ntendon x 1)


	var tendon_invweight0: UnsafePointer[mjtNum]
	
	# inv. weight in qpos0                     (ntendon x 1)


	var tendon_user: UnsafePointer[mjtNum]
	
	# user data                                (ntendon x nuser_tendon)


	var tendon_rgba: UnsafePointer[Float32]
	
	# rgba when material is omitted            (ntendon x 4)


	var wrap_type: UnsafePointer[Int32]
	
	# wrap object type (mjtWrap)               (nwrap x 1)


	var wrap_objid: UnsafePointer[Int32]
	
	# object id: geom, site, joint             (nwrap x 1)


	var wrap_prm: UnsafePointer[mjtNum]
	
	# divisor, joint coef, or site id          (nwrap x 1)


	var actuator_trntype: UnsafePointer[Int32]
	
	# transmission type (mjtTrn)               (nu x 1)


	var actuator_dyntype: UnsafePointer[Int32]
	
	# dynamics type (mjtDyn)                   (nu x 1)


	var actuator_gaintype: UnsafePointer[Int32]
	
	# gain type (mjtGain)                      (nu x 1)


	var actuator_biastype: UnsafePointer[Int32]
	
	# bias type (mjtBias)                      (nu x 1)


	var actuator_trnid: UnsafePointer[Int32]
	
	# transmission id: joint, tendon, site     (nu x 2)


	var actuator_actadr: UnsafePointer[Int32]
	
	# first activation address; -1: stateless  (nu x 1)


	var actuator_actnum: UnsafePointer[Int32]
	
	# number of activation variables           (nu x 1)


	var actuator_group: UnsafePointer[Int32]
	
	# group for visibility                     (nu x 1)


	var actuator_ctrllimited: UnsafePointer[mjtByte]
	
	# is control limited                       (nu x 1)


	var actuator_forcelimited: UnsafePointer[mjtByte]
	
	# is force limited                         (nu x 1)


	var actuator_actlimited: UnsafePointer[mjtByte]
	
	# is activation limited                    (nu x 1)


	var actuator_dynprm: UnsafePointer[mjtNum]
	
	# dynamics parameters                      (nu x mjNDYN)


	var actuator_gainprm: UnsafePointer[mjtNum]
	
	# gain parameters                          (nu x mjNGAIN)


	var actuator_biasprm: UnsafePointer[mjtNum]
	
	# bias parameters                          (nu x mjNBIAS)


	var actuator_actearly: UnsafePointer[mjtByte]
	
	# step activation before force             (nu x 1)


	var actuator_ctrlrange: UnsafePointer[mjtNum]
	
	# range of controls                        (nu x 2)


	var actuator_forcerange: UnsafePointer[mjtNum]
	
	# range of forces                          (nu x 2)


	var actuator_actrange: UnsafePointer[mjtNum]
	
	# range of activations                     (nu x 2)


	var actuator_gear: UnsafePointer[mjtNum]
	
	# scale length and transmitted force       (nu x 6)


	var actuator_cranklength: UnsafePointer[mjtNum]
	
	# crank length for slider-crank            (nu x 1)


	var actuator_acc0: UnsafePointer[mjtNum]
	
	# acceleration from unit force in qpos0    (nu x 1)


	var actuator_length0: UnsafePointer[mjtNum]
	
	# actuator length in qpos0                 (nu x 1)


	var actuator_lengthrange: UnsafePointer[mjtNum]
	
	# feasible actuator length range           (nu x 2)


	var actuator_user: UnsafePointer[mjtNum]
	
	# user data                                (nu x nuser_actuator)


	var actuator_plugin: UnsafePointer[Int32]
	
	# plugin instance id; -1: not a plugin     (nu x 1)


	var sensor_type: UnsafePointer[Int32]
	
	# sensor type (mjtSensor)                  (nsensor x 1)


	var sensor_datatype: UnsafePointer[Int32]
	
	# numeric data type (mjtDataType)          (nsensor x 1)


	var sensor_needstage: UnsafePointer[Int32]
	
	# required compute stage (mjtStage)        (nsensor x 1)


	var sensor_objtype: UnsafePointer[Int32]
	
	# type of sensorized object (mjtObj)       (nsensor x 1)


	var sensor_objid: UnsafePointer[Int32]
	
	# id of sensorized object                  (nsensor x 1)


	var sensor_reftype: UnsafePointer[Int32]
	
	# type of reference frame (mjtObj)         (nsensor x 1)


	var sensor_refid: UnsafePointer[Int32]
	
	# id of reference frame; -1: global frame  (nsensor x 1)


	var sensor_dim: UnsafePointer[Int32]
	
	# number of scalar outputs                 (nsensor x 1)


	var sensor_adr: UnsafePointer[Int32]
	
	# address in sensor array                  (nsensor x 1)


	var sensor_cutoff: UnsafePointer[mjtNum]
	
	# cutoff for real and positive; 0: ignore  (nsensor x 1)


	var sensor_noise: UnsafePointer[mjtNum]
	
	# noise standard deviation                 (nsensor x 1)


	var sensor_user: UnsafePointer[mjtNum]
	
	# user data                                (nsensor x nuser_sensor)


	var sensor_plugin: UnsafePointer[Int32]
	
	# plugin instance id; -1: not a plugin     (nsensor x 1)


	var plugin: UnsafePointer[Int32]
	
	# globally registered plugin slot number   (nplugin x 1)


	var plugin_stateadr: UnsafePointer[Int32]
	
	# address in the plugin state array        (nplugin x 1)


	var plugin_statenum: UnsafePointer[Int32]
	
	# number of states in the plugin instance  (nplugin x 1)


	var plugin_attr: UnsafePointer[Int8]
	
	# config attributes of plugin instances    (npluginattr x 1)


	var plugin_attradr: UnsafePointer[Int32]
	
	# address to each instance ' s config attrib (nplugin x 1)


	var numeric_adr: UnsafePointer[Int32]
	
	# address of field in numeric_data         (nnumeric x 1)


	var numeric_size: UnsafePointer[Int32]
	
	# size of numeric field                    (nnumeric x 1)


	var numeric_data: UnsafePointer[mjtNum]
	
	# array of all numeric fields              (nnumericdata x 1)


	var text_adr: UnsafePointer[Int32]
	
	# address of text in text_data             (ntext x 1)


	var text_size: UnsafePointer[Int32]
	
	# size of text field (strlen+1)            (ntext x 1)


	var text_data: UnsafePointer[Int8]
	
	# array of all text fields (0-terminated)  (ntextdata x 1)


	var tuple_adr: UnsafePointer[Int32]
	
	# address of text in text_data             (ntuple x 1)


	var tuple_size: UnsafePointer[Int32]
	
	# number of objects in tuple               (ntuple x 1)


	var tuple_objtype: UnsafePointer[Int32]
	
	# array of object types in all tuples      (ntupledata x 1)


	var tuple_objid: UnsafePointer[Int32]
	
	# array of object ids in all tuples        (ntupledata x 1)


	var tuple_objprm: UnsafePointer[mjtNum]
	
	# array of object params in all tuples     (ntupledata x 1)


	var key_time: UnsafePointer[mjtNum]
	
	# key time                                 (nkey x 1)


	var key_qpos: UnsafePointer[mjtNum]
	
	# key position                             (nkey x nq)


	var key_qvel: UnsafePointer[mjtNum]
	
	# key velocity                             (nkey x nv)


	var key_act: UnsafePointer[mjtNum]
	
	# key activation                           (nkey x na)


	var key_mpos: UnsafePointer[mjtNum]
	
	# key mocap position                       (nkey x nmocap*3)


	var key_mquat: UnsafePointer[mjtNum]
	
	# key mocap quaternion                     (nkey x nmocap*4)


	var key_ctrl: UnsafePointer[mjtNum]
	
	# key control                              (nkey x nu)


	var name_bodyadr: UnsafePointer[Int32]
	
	# body name pointers                       (nbody x 1)


	var name_jntadr: UnsafePointer[Int32]
	
	# joint name pointers                      (njnt x 1)


	var name_geomadr: UnsafePointer[Int32]
	
	# geom name pointers                       (ngeom x 1)


	var name_siteadr: UnsafePointer[Int32]
	
	# site name pointers                       (nsite x 1)


	var name_camadr: UnsafePointer[Int32]
	
	# camera name pointers                     (ncam x 1)


	var name_lightadr: UnsafePointer[Int32]
	
	# light name pointers                      (nlight x 1)


	var name_flexadr: UnsafePointer[Int32]
	
	# flex name pointers                       (nflex x 1)


	var name_meshadr: UnsafePointer[Int32]
	
	# mesh name pointers                       (nmesh x 1)


	var name_skinadr: UnsafePointer[Int32]
	
	# skin name pointers                       (nskin x 1)


	var name_hfieldadr: UnsafePointer[Int32]
	
	# hfield name pointers                     (nhfield x 1)


	var name_texadr: UnsafePointer[Int32]
	
	# texture name pointers                    (ntex x 1)


	var name_matadr: UnsafePointer[Int32]
	
	# material name pointers                   (nmat x 1)


	var name_pairadr: UnsafePointer[Int32]
	
	# geom pair name pointers                  (npair x 1)


	var name_excludeadr: UnsafePointer[Int32]
	
	# exclude name pointers                    (nexclude x 1)


	var name_eqadr: UnsafePointer[Int32]
	
	# equality constraint name pointers        (neq x 1)


	var name_tendonadr: UnsafePointer[Int32]
	
	# tendon name pointers                     (ntendon x 1)


	var name_actuatoradr: UnsafePointer[Int32]
	
	# actuator name pointers                   (nu x 1)


	var name_sensoradr: UnsafePointer[Int32]
	
	# sensor name pointers                     (nsensor x 1)


	var name_numericadr: UnsafePointer[Int32]
	
	# numeric name pointers                    (nnumeric x 1)


	var name_textadr: UnsafePointer[Int32]
	
	# text name pointers                       (ntext x 1)


	var name_tupleadr: UnsafePointer[Int32]
	
	# tuple name pointers                      (ntuple x 1)


	var name_keyadr: UnsafePointer[Int32]
	
	# keyframe name pointers                   (nkey x 1)


	var name_pluginadr: UnsafePointer[Int32]
	
	# plugin instance name pointers            (nplugin x 1)


	var names: UnsafePointer[Int8]
	
	# names of all objects, 0-terminated       (nnames x 1)


	var names_map: UnsafePointer[Int32]
	
	# internal hash map of names               (nnames_map x 1)


	var paths: UnsafePointer[Int8]
	
	# paths to assets, 0-terminated            (npaths x 1)


	var signature: uint64_t
	# Unhandled tokens: unsigned long
	
	# also held by the mjSpec that compiled this model



alias mjModel = mjModel_
struct mjtTaskStatus_:
	alias mjTASK_NEW: Int = 0

	alias mjTASK_QUEUED: 
	alias mjTASK_COMPLETED: 


alias mjtTaskStatus = 

alias mjfTask = UnsafePointer[
# (placeholder) | | `-ParenType 0x6ba160 'void *(void *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6ba130 'void *(void *)' cdecl
UnsafePointer[NoneType]
UnsafePointer[NoneType]
]

# function pointer type for mjTask

struct mjThreadPool_:

	var nworker: Int32
	
	# number of workers in the pool



alias mjThreadPool = mjThreadPool_
struct mjTask_:

	var func: mjfTask
	# Unhandled tokens: void *(*)(void *)
	
	# pointer to the function that implements the task


	var args: UnsafePointer[NoneType]
	
	# arguments to func


	var status: volatile int
	
	# status of the task



alias mjTask = mjTask_
struct mjtState_:

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias referenced: Int = 1

	alias referenced: Int = 2

	alias referenced: Int = 4

	alias referenced: Int = 8

	alias referenced: Int = 16

	alias referenced: Int = 32

	alias referenced: Int = 64

	alias referenced: Int = 128

	alias referenced: Int = 256

	alias referenced: Int = 512

	alias referenced: Int = 1024

	alias referenced: Int = 2048

	alias referenced: Int = 4096

	alias mjNSTATE: Int = 13

	alias referenced: Int = 14

	alias referenced: Int = 4111

	alias referenced: Int = 4064

	alias mjSTATE_INTEGRATION: Int = 8191



alias mjtState = 
#---------------------------------- primitive types (mjt) -----------------------------------------

struct mjtWarning_:
	alias mjWARN_INERTIA: Int = 0

	alias mjWARN_CONTACTFULL: 
	alias mjWARN_CNSTRFULL: 
	alias mjWARN_VGEOMFULL: 
	alias mjWARN_BADQPOS: 
	alias mjWARN_BADQVEL: 
	alias mjWARN_BADQACC: 
	alias mjWARN_BADCTRL: 
	alias referenced: 


alias mjtWarning = 
struct mjtTimer_:
	alias mjTIMER_STEP: Int = 0

	alias mjTIMER_FORWARD: 
	alias mjTIMER_INVERSE: 
	alias mjTIMER_POSITION: 
	alias mjTIMER_VELOCITY: 
	alias mjTIMER_ACTUATION: 
	alias mjTIMER_CONSTRAINT: 
	alias mjTIMER_ADVANCE: 
	alias mjTIMER_POS_KINEMATICS: 
	alias mjTIMER_POS_INERTIA: 
	alias mjTIMER_POS_COLLISION: 
	alias mjTIMER_POS_MAKE: 
	alias mjTIMER_POS_PROJECT: 
	alias mjTIMER_COL_BROAD: 
	alias mjTIMER_COL_NARROW: 
	alias referenced: 


alias mjtTimer = 
struct mjContact_:

	var dist: mjtNum
	# Unhandled tokens: double
	
	# distance between nearest points; neg: penetration


	var pos: SIMD[mjtNum.dtype, 3]
	
	# position of contact point: midpoint between geoms


	var frame: SIMD[mjtNum.dtype, 9]
	
	# normal is in [0-2], points from geom[0] to geom[1]


	var includemargin: mjtNum
	# Unhandled tokens: double
	
	# include if dist
	#<includemargin
	#=margin-gap


	var friction: SIMD[mjtNum.dtype, 5]
	
	# tangent1, 2, spin, roll1, 2


	var solref: SIMD[mjtNum.dtype, 2]
	
	# constraint solver reference, normal direction


	var solreffriction: SIMD[mjtNum.dtype, 2]
	
	# constraint solver reference, friction directions


	var solimp: SIMD[mjtNum.dtype, 5]
	
	# constraint solver impedance


	var mu: mjtNum
	# Unhandled tokens: double
	
	# friction of regularized cone, set by mj_makeConstraint


	var H: SIMD[mjtNum.dtype, 36]
	
	# cone Hessian, set by mj_constraintUpdate


	var dim: Int32
	
	# contact space dimensionality: 1, 3, 4 or 6


	var geom1: Int32
	
	# id of geom 1; deprecated, use geom[0]


	var geom2: Int32
	
	# id of geom 2; deprecated, use geom[1]


	var geom: SIMD[Int32.dtype, 2]
	
	# geom ids; -1 for flex


	var flex: SIMD[Int32.dtype, 2]
	
	# flex ids; -1 for geom


	var elem: SIMD[Int32.dtype, 2]
	
	# element ids; -1 for geom or flex vertex


	var vert: SIMD[Int32.dtype, 2]
	
	# vertex ids;  -1 for geom or flex element


	var exclude: Int32
	
	# 0: include, 1: in gap, 2: fused, 3: no dofs


	var efc_address: Int32
	
	# address in efc; -1: not included



alias mjContact = mjContact_
struct mjWarningStat_:

	var lastinfo: Int32
	
	# info from last warning


	var number: Int32
	
	# how many times was warning raised



alias mjWarningStat = mjWarningStat_
struct mjTimerStat_:

	var duration: mjtNum
	# Unhandled tokens: double
	
	# cumulative duration


	var number: Int32
	
	# how many times was timer called



alias mjTimerStat = mjTimerStat_
struct mjSolverStat_:

	var improvement: mjtNum
	# Unhandled tokens: double
	
	# cost reduction, scaled by 1/trace(M(qpos0))


	var gradient: mjtNum
	# Unhandled tokens: double
	
	# gradient norm (primal only, scaled)


	var lineslope: mjtNum
	# Unhandled tokens: double
	
	# slope in linesearch


	var nactive: Int32
	
	# number of active constraints


	var nchange: Int32
	
	# number of constraint state changes


	var neval: Int32
	
	# number of cost evaluations in line search


	var nupdate: Int32
	
	# number of Cholesky updates in line search



alias mjSolverStat = mjSolverStat_
struct mjData_:

	var narena: size_t
	# Unhandled tokens: unsigned long
	
	# size of the arena in bytes (inclusive of the stack)


	var nbuffer: size_t
	# Unhandled tokens: unsigned long
	
	# size of main buffer in bytes


	var nplugin: Int32
	
	# number of plugin instances


	var pstack: size_t
	# Unhandled tokens: unsigned long
	
	# first available byte in stack


	var pbase: size_t
	# Unhandled tokens: unsigned long
	
	# value of pstack when mj_markStack was last called


	var parena: size_t
	# Unhandled tokens: unsigned long
	
	# first available byte in arena


	var maxuse_stack: size_t
	# Unhandled tokens: unsigned long
	
	# maximum stack allocation in bytes


	var maxuse_threadstack: SIMD[size_t.dtype, 128]
	
	# maximum stack allocation per thread in bytes


	var maxuse_arena: size_t
	# Unhandled tokens: unsigned long
	
	# maximum arena allocation in bytes


	var maxuse_con: Int32
	
	# maximum number of contacts


	var maxuse_efc: Int32
	
	# maximum number of scalar constraints


	var solver: SIMD[mjSolverStat.dtype, 4000]
	
	# solver statistics per island, per iteration


	var solver_nisland: Int32
	
	# number of islands processed by solver


	var solver_niter: SIMD[Int32.dtype, 20]
	
	# number of solver iterations, per island


	var solver_nnz: SIMD[Int32.dtype, 20]
	
	# number of nonzeros in Hessian or efc_AR, per island


	var solver_fwdinv: SIMD[mjtNum.dtype, 2]
	
	# forward-inverse comparison: qfrc, efc


	var warning: SIMD[mjWarningStat.dtype, 8]
	
	# warning statistics


	var timer: SIMD[mjTimerStat.dtype, 15]
	
	# timer statistics


	var ncon: Int32
	
	# number of detected contacts


	var ne: Int32
	
	# number of equality constraints


	var nf: Int32
	
	# number of friction constraints


	var nl: Int32
	
	# number of limit constraints


	var nefc: Int32
	
	# number of constraints


	var nJ: Int32
	
	# number of non-zeros in constraint Jacobian


	var nA: Int32
	
	# number of non-zeros in constraint inverse inertia matrix


	var nisland: Int32
	
	# number of detected constraint islands


	var time: mjtNum
	# Unhandled tokens: double
	
	# simulation time


	var energy: SIMD[mjtNum.dtype, 2]
	
	# potential, kinetic energy


	var buffer: UnsafePointer[NoneType]
	
	# main buffer; all pointers point in it            (nbuffer bytes)


	var arena: UnsafePointer[NoneType]
	
	# arena+stack buffer                               (narena bytes)


	var qpos: UnsafePointer[mjtNum]
	
	# position                                         (nq x 1)


	var qvel: UnsafePointer[mjtNum]
	
	# velocity                                         (nv x 1)


	var act: UnsafePointer[mjtNum]
	
	# actuator activation                              (na x 1)


	var qacc_warmstart: UnsafePointer[mjtNum]
	
	# acceleration used for warmstart                  (nv x 1)


	var plugin_state: UnsafePointer[mjtNum]
	
	# plugin state                                     (npluginstate x 1)


	var ctrl: UnsafePointer[mjtNum]
	
	# control                                          (nu x 1)


	var qfrc_applied: UnsafePointer[mjtNum]
	
	# applied generalized force                        (nv x 1)


	var xfrc_applied: UnsafePointer[mjtNum]
	
	# applied Cartesian force/torque                   (nbody x 6)


	var eq_active: UnsafePointer[mjtByte]
	
	# enable/disable constraints                       (neq x 1)


	var mocap_pos: UnsafePointer[mjtNum]
	
	# positions of mocap bodies                        (nmocap x 3)


	var mocap_quat: UnsafePointer[mjtNum]
	
	# orientations of mocap bodies                     (nmocap x 4)


	var qacc: UnsafePointer[mjtNum]
	
	# acceleration                                     (nv x 1)


	var act_dot: UnsafePointer[mjtNum]
	
	# time-derivative of actuator activation           (na x 1)


	var userdata: UnsafePointer[mjtNum]
	
	# user data, not touched by engine                 (nuserdata x 1)


	var sensordata: UnsafePointer[mjtNum]
	
	# sensor data array                                (nsensordata x 1)


	var plugin: UnsafePointer[Int32]
	
	# copy of m->plugin, required for deletion         (nplugin x 1)


	var plugin_data: UnsafePointer[uintptr_t]
	
	# pointer to plugin-managed data structure         (nplugin x 1)


	var xpos: UnsafePointer[mjtNum]
	
	# Cartesian position of body frame                 (nbody x 3)


	var xquat: UnsafePointer[mjtNum]
	
	# Cartesian orientation of body frame              (nbody x 4)


	var xmat: UnsafePointer[mjtNum]
	
	# Cartesian orientation of body frame              (nbody x 9)


	var xipos: UnsafePointer[mjtNum]
	
	# Cartesian position of body com                   (nbody x 3)


	var ximat: UnsafePointer[mjtNum]
	
	# Cartesian orientation of body inertia            (nbody x 9)


	var xanchor: UnsafePointer[mjtNum]
	
	# Cartesian position of joint anchor               (njnt x 3)


	var xaxis: UnsafePointer[mjtNum]
	
	# Cartesian joint axis                             (njnt x 3)


	var geom_xpos: UnsafePointer[mjtNum]
	
	# Cartesian geom position                          (ngeom x 3)


	var geom_xmat: UnsafePointer[mjtNum]
	
	# Cartesian geom orientation                       (ngeom x 9)


	var site_xpos: UnsafePointer[mjtNum]
	
	# Cartesian site position                          (nsite x 3)


	var site_xmat: UnsafePointer[mjtNum]
	
	# Cartesian site orientation                       (nsite x 9)


	var cam_xpos: UnsafePointer[mjtNum]
	
	# Cartesian camera position                        (ncam x 3)


	var cam_xmat: UnsafePointer[mjtNum]
	
	# Cartesian camera orientation                     (ncam x 9)


	var light_xpos: UnsafePointer[mjtNum]
	
	# Cartesian light position                         (nlight x 3)


	var light_xdir: UnsafePointer[mjtNum]
	
	# Cartesian light direction                        (nlight x 3)


	var subtree_com: UnsafePointer[mjtNum]
	
	# center of mass of each subtree                   (nbody x 3)


	var cdof: UnsafePointer[mjtNum]
	
	# com-based motion axis of each dof (rot:lin)      (nv x 6)


	var cinert: UnsafePointer[mjtNum]
	
	# com-based body inertia and mass                  (nbody x 10)


	var flexvert_xpos: UnsafePointer[mjtNum]
	
	# Cartesian flex vertex positions                  (nflexvert x 3)


	var flexelem_aabb: UnsafePointer[mjtNum]
	
	# flex element bounding boxes (center, size)       (nflexelem x 6)


	var flexedge_J_rownnz: UnsafePointer[Int32]
	
	# number of non-zeros in Jacobian row              (nflexedge x 1)


	var flexedge_J_rowadr: UnsafePointer[Int32]
	
	# row start address in colind array                (nflexedge x 1)


	var flexedge_J_colind: UnsafePointer[Int32]
	
	# column indices in sparse Jacobian                (nflexedge x nv)


	var flexedge_J: UnsafePointer[mjtNum]
	
	# flex edge Jacobian                               (nflexedge x nv)


	var flexedge_length: UnsafePointer[mjtNum]
	
	# flex edge lengths                                (nflexedge x 1)


	var ten_wrapadr: UnsafePointer[Int32]
	
	# start address of tendon ' s path                   (ntendon x 1)


	var ten_wrapnum: UnsafePointer[Int32]
	
	# number of wrap points in path                    (ntendon x 1)


	var ten_J_rownnz: UnsafePointer[Int32]
	
	# number of non-zeros in Jacobian row              (ntendon x 1)


	var ten_J_rowadr: UnsafePointer[Int32]
	
	# row start address in colind array                (ntendon x 1)


	var ten_J_colind: UnsafePointer[Int32]
	
	# column indices in sparse Jacobian                (ntendon x nv)


	var ten_J: UnsafePointer[mjtNum]
	
	# tendon Jacobian                                  (ntendon x nv)


	var ten_length: UnsafePointer[mjtNum]
	
	# tendon lengths                                   (ntendon x 1)


	var wrap_obj: UnsafePointer[Int32]
	
	# geom id; -1: site; -2: pulley                    (nwrap x 2)


	var wrap_xpos: UnsafePointer[mjtNum]
	
	# Cartesian 3D points in all paths                 (nwrap x 6)


	var actuator_length: UnsafePointer[mjtNum]
	
	# actuator lengths                                 (nu x 1)


	var moment_rownnz: UnsafePointer[Int32]
	
	# number of non-zeros in actuator_moment row       (nu x 1)


	var moment_rowadr: UnsafePointer[Int32]
	
	# row start address in colind array                (nu x 1)


	var moment_colind: UnsafePointer[Int32]
	
	# column indices in sparse Jacobian                (nJmom x 1)


	var actuator_moment: UnsafePointer[mjtNum]
	
	# actuator moments                                 (nJmom x 1)


	var crb: UnsafePointer[mjtNum]
	
	# com-based composite inertia and mass             (nbody x 10)


	var qM: UnsafePointer[mjtNum]
	
	# total inertia (sparse)                           (nM x 1)


	var qLD: UnsafePointer[mjtNum]
	
	# L ' *D*L factorization of M (sparse)               (nM x 1)


	var qLDiagInv: UnsafePointer[mjtNum]
	
	# 1/diag(D)                                        (nv x 1)


	var bvh_aabb_dyn: UnsafePointer[mjtNum]
	
	# global bounding box (center, size)               (nbvhdynamic x 6)


	var bvh_active: UnsafePointer[mjtByte]
	
	# was bounding volume checked for collision        (nbvh x 1)


	var flexedge_velocity: UnsafePointer[mjtNum]
	
	# flex edge velocities                             (nflexedge x 1)


	var ten_velocity: UnsafePointer[mjtNum]
	
	# tendon velocities                                (ntendon x 1)


	var actuator_velocity: UnsafePointer[mjtNum]
	
	# actuator velocities                              (nu x 1)


	var cvel: UnsafePointer[mjtNum]
	
	# com-based velocity (rot:lin)                     (nbody x 6)


	var cdof_dot: UnsafePointer[mjtNum]
	
	# time-derivative of cdof (rot:lin)                (nv x 6)


	var qfrc_bias: UnsafePointer[mjtNum]
	
	# C(qpos,qvel)                                     (nv x 1)


	var qfrc_spring: UnsafePointer[mjtNum]
	
	# passive spring force                             (nv x 1)


	var qfrc_damper: UnsafePointer[mjtNum]
	
	# passive damper force                             (nv x 1)


	var qfrc_gravcomp: UnsafePointer[mjtNum]
	
	# passive gravity compensation force               (nv x 1)


	var qfrc_fluid: UnsafePointer[mjtNum]
	
	# passive fluid force                              (nv x 1)


	var qfrc_passive: UnsafePointer[mjtNum]
	
	# total passive force                              (nv x 1)


	var subtree_linvel: UnsafePointer[mjtNum]
	
	# linear velocity of subtree com                   (nbody x 3)


	var subtree_angmom: UnsafePointer[mjtNum]
	
	# angular momentum about subtree com               (nbody x 3)


	var qH: UnsafePointer[mjtNum]
	
	# L ' *D*L factorization of modified M               (nM x 1)


	var qHDiagInv: UnsafePointer[mjtNum]
	
	# 1/diag(D) of modified M                          (nv x 1)


	var B_rownnz: UnsafePointer[Int32]
	
	# body-dof: non-zeros in each row                  (nbody x 1)


	var B_rowadr: UnsafePointer[Int32]
	
	# body-dof: address of each row in B_colind        (nbody x 1)


	var B_colind: UnsafePointer[Int32]
	
	# body-dof: column indices of non-zeros            (nB x 1)


	var M_rownnz: UnsafePointer[Int32]
	
	# inertia: non-zeros in each row                   (nv x 1)


	var M_rowadr: UnsafePointer[Int32]
	
	# inertia: address of each row in M_colind         (nv x 1)


	var M_colind: UnsafePointer[Int32]
	
	# inertia: column indices of non-zeros             (nM x 1)


	var mapM2M: UnsafePointer[Int32]
	
	# index mapping from M (legacy) to M (CSR)         (nM x 1)


	var C_rownnz: UnsafePointer[Int32]
	
	# reduced dof-dof: non-zeros in each row           (nv x 1)


	var C_rowadr: UnsafePointer[Int32]
	
	# reduced dof-dof: address of each row in C_colind (nv x 1)


	var C_colind: UnsafePointer[Int32]
	
	# reduced dof-dof: column indices of non-zeros     (nC x 1)


	var mapM2C: UnsafePointer[Int32]
	
	# index mapping from M to C                        (nC x 1)


	var D_rownnz: UnsafePointer[Int32]
	
	# dof-dof: non-zeros in each row                   (nv x 1)


	var D_rowadr: UnsafePointer[Int32]
	
	# dof-dof: address of each row in D_colind         (nv x 1)


	var D_diag: UnsafePointer[Int32]
	
	# dof-dof: index of diagonal element               (nv x 1)


	var D_colind: UnsafePointer[Int32]
	
	# dof-dof: column indices of non-zeros             (nD x 1)


	var mapM2D: UnsafePointer[Int32]
	
	# index mapping from M to D                        (nD x 1)


	var mapD2M: UnsafePointer[Int32]
	
	# index mapping from D to M                        (nM x 1)


	var qDeriv: UnsafePointer[mjtNum]
	
	# d (passive + actuator - bias) / d qvel           (nD x 1)


	var qLU: UnsafePointer[mjtNum]
	
	# sparse LU of (qM - dt*qDeriv)                    (nD x 1)


	var actuator_force: UnsafePointer[mjtNum]
	
	# actuator force in actuation space                (nu x 1)


	var qfrc_actuator: UnsafePointer[mjtNum]
	
	# actuator force                                   (nv x 1)


	var qfrc_smooth: UnsafePointer[mjtNum]
	
	# net unconstrained force                          (nv x 1)


	var qacc_smooth: UnsafePointer[mjtNum]
	
	# unconstrained acceleration                       (nv x 1)


	var qfrc_constraint: UnsafePointer[mjtNum]
	
	# constraint force                                 (nv x 1)


	var qfrc_inverse: UnsafePointer[mjtNum]
	
	# net external force; should equal:                (nv x 1)
	# qfrc_applied + J ' *xfrc_applied + qfrc_actuator


	var cacc: UnsafePointer[mjtNum]
	
	# com-based acceleration                           (nbody x 6)


	var cfrc_int: UnsafePointer[mjtNum]
	
	# com-based interaction force with parent          (nbody x 6)


	var cfrc_ext: UnsafePointer[mjtNum]
	
	# com-based external force on body                 (nbody x 6)


	var contact: UnsafePointer[mjContact]
	
	# array of all detected contacts                   (ncon x 1)


	var efc_type: UnsafePointer[Int32]
	
	# constraint type (mjtConstraint)                  (nefc x 1)


	var efc_id: UnsafePointer[Int32]
	
	# id of object of specified type                   (nefc x 1)


	var efc_J_rownnz: UnsafePointer[Int32]
	
	# number of non-zeros in constraint Jacobian row   (nefc x 1)


	var efc_J_rowadr: UnsafePointer[Int32]
	
	# row start address in colind array                (nefc x 1)


	var efc_J_rowsuper: UnsafePointer[Int32]
	
	# number of subsequent rows in supernode           (nefc x 1)


	var efc_J_colind: UnsafePointer[Int32]
	
	# column indices in constraint Jacobian            (nJ x 1)


	var efc_JT_rownnz: UnsafePointer[Int32]
	
	# number of non-zeros in constraint Jacobian row T (nv x 1)


	var efc_JT_rowadr: UnsafePointer[Int32]
	
	# row start address in colind array              T (nv x 1)


	var efc_JT_rowsuper: UnsafePointer[Int32]
	
	# number of subsequent rows in supernode         T (nv x 1)


	var efc_JT_colind: UnsafePointer[Int32]
	
	# column indices in constraint Jacobian          T (nJ x 1)


	var efc_J: UnsafePointer[mjtNum]
	
	# constraint Jacobian                              (nJ x 1)


	var efc_JT: UnsafePointer[mjtNum]
	
	# constraint Jacobian transposed                   (nJ x 1)


	var efc_pos: UnsafePointer[mjtNum]
	
	# constraint position (equality, contact)          (nefc x 1)


	var efc_margin: UnsafePointer[mjtNum]
	
	# inclusion margin (contact)                       (nefc x 1)


	var efc_frictionloss: UnsafePointer[mjtNum]
	
	# frictionloss (friction)                          (nefc x 1)


	var efc_diagApprox: UnsafePointer[mjtNum]
	
	# approximation to diagonal of A                   (nefc x 1)


	var efc_KBIP: UnsafePointer[mjtNum]
	
	# stiffness, damping, impedance, imp '              (nefc x 4)


	var efc_D: UnsafePointer[mjtNum]
	
	# constraint mass                                  (nefc x 1)


	var efc_R: UnsafePointer[mjtNum]
	
	# inverse constraint mass                          (nefc x 1)


	var tendon_efcadr: UnsafePointer[Int32]
	
	# first efc address involving tendon; -1: none     (ntendon x 1)


	var dof_island: UnsafePointer[Int32]
	
	# island id of this dof; -1: none                  (nv x 1)


	var island_dofnum: UnsafePointer[Int32]
	
	# number of dofs in island                         (nisland x 1)


	var island_dofadr: UnsafePointer[Int32]
	
	# start address in island_dofind                   (nisland x 1)


	var island_dofind: UnsafePointer[Int32]
	
	# island dof indices; -1: none                     (nv x 1)


	var dof_islandind: UnsafePointer[Int32]
	
	# dof island indices; -1: none                     (nv x 1)


	var efc_island: UnsafePointer[Int32]
	
	# island id of this constraint                     (nefc x 1)


	var island_efcnum: UnsafePointer[Int32]
	
	# number of constraints in island                  (nisland x 1)


	var island_efcadr: UnsafePointer[Int32]
	
	# start address in island_efcind                   (nisland x 1)


	var island_efcind: UnsafePointer[Int32]
	
	# island constraint indices                        (nefc x 1)


	var efc_AR_rownnz: UnsafePointer[Int32]
	
	# number of non-zeros in AR                        (nefc x 1)


	var efc_AR_rowadr: UnsafePointer[Int32]
	
	# row start address in colind array                (nefc x 1)


	var efc_AR_colind: UnsafePointer[Int32]
	
	# column indices in sparse AR                      (nA x 1)


	var efc_AR: UnsafePointer[mjtNum]
	
	# J*inv(M)*J ' + R                                  (nA x 1)


	var efc_vel: UnsafePointer[mjtNum]
	
	# velocity in constraint space: J*qvel             (nefc x 1)


	var efc_aref: UnsafePointer[mjtNum]
	
	# reference pseudo-acceleration                    (nefc x 1)


	var efc_b: UnsafePointer[mjtNum]
	
	# linear cost term: J*qacc_smooth - aref           (nefc x 1)


	var efc_force: UnsafePointer[mjtNum]
	
	# constraint force in constraint space             (nefc x 1)


	var efc_state: UnsafePointer[Int32]
	
	# constraint state (mjtConstraintState)            (nefc x 1)


	var threadpool: uintptr_t
	# Unhandled tokens: unsigned long
	
	# thread pool pointer


	var signature: uint64_t
	# Unhandled tokens: unsigned long
	
	# also held by the mjSpec that compiled the model



alias mjData = mjData_

alias mjfGeneric = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d2b50 'void (const mjModel *, mjData *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d2b10 'void (const mjModel *, mjData *)' cdecl
NoneTypeUnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const
mjModel]
UnsafePointer[mjData]
]

# generic MuJoCo function


alias mjfConFilt = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d2f30 'int (const mjModel *, mjData *, int, int)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d2ee0 'int (const mjModel *, mjData *, int, int)' cdecl
Int32UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const
mjModel]
UnsafePointer[mjData]
Int32Int32]

# contact filter: 1- discard, 0- collide


alias mjfSensor = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d3290 'void (const mjModel *, mjData *, int)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d3250 'void (const mjModel *, mjData *, int)' cdecl
NoneTypeUnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const
mjModel]
UnsafePointer[mjData]
Int32]

# sensor simulation


alias mjfTime = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d3490 'mjtNum (void)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d3460 'mjtNum (void)' cdecl
Float64]

# timer


alias mjfAct = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d3810 'mjtNum (const mjModel *, const mjData *, int)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d37d0 'mjtNum (const mjModel *, const mjData *, int)' cdecl
Float64UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const
mjModel]
UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0a11 'const mjData' const
mjData]
Int32]

# actuator dynamics, gain, bias


alias mjfCollision = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d3d10 'int (const mjModel *, const mjData *, mjContact *, int, int, mjtNum)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d3cb0 'int (const mjModel *, const mjData *, mjContact *, int, int, mjtNum)' cdecl
Int32UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const
mjModel]
UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0a11 'const mjData' const
mjData]
UnsafePointer[mjContact]
Int32Int32Float64]

# collision detection

struct mjtCatBit_:

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjCAT_STATIC: Int = 1

	alias mjCAT_DYNAMIC: Int = 2

	alias mjCAT_DECOR: Int = 4

	alias mjCAT_ALL: Int = 7



alias mjtCatBit = 
#---------------------------------- primitive types (mjt) -----------------------------------------

struct mjtMouse_:
	alias mjMOUSE_NONE: Int = 0

	alias mjMOUSE_ROTATE_V: 
	alias mjMOUSE_ROTATE_H: 
	alias mjMOUSE_MOVE_V: 
	alias mjMOUSE_MOVE_H: 
	alias mjMOUSE_ZOOM: 
	alias mjMOUSE_SELECT: 


alias mjtMouse = 
struct mjtPertBit_:
	alias mjPERT_TRANSLATE: Int = 1

	alias mjPERT_ROTATE: Int = 2



alias mjtPertBit = 
struct mjtCamera_:
	alias mjCAMERA_FREE: Int = 0

	alias mjCAMERA_TRACKING: 
	alias mjCAMERA_FIXED: 
	alias mjCAMERA_USER: 


alias mjtCamera = 
struct mjtLabel_:
	alias mjLABEL_NONE: Int = 0

	alias mjLABEL_BODY: 
	alias mjLABEL_JOINT: 
	alias mjLABEL_GEOM: 
	alias mjLABEL_SITE: 
	alias mjLABEL_CAMERA: 
	alias mjLABEL_LIGHT: 
	alias mjLABEL_TENDON: 
	alias mjLABEL_ACTUATOR: 
	alias mjLABEL_CONSTRAINT: 
	alias mjLABEL_FLEX: 
	alias mjLABEL_SKIN: 
	alias mjLABEL_SELECTION: 
	alias mjLABEL_SELPNT: 
	alias mjLABEL_CONTACTPOINT: 
	alias mjLABEL_CONTACTFORCE: 
	alias mjLABEL_ISLAND: 
	alias referenced: 


alias mjtLabel = 
struct mjtFrame_:
	alias mjFRAME_NONE: Int = 0

	alias mjFRAME_BODY: 
	alias mjFRAME_GEOM: 
	alias mjFRAME_SITE: 
	alias mjFRAME_CAMERA: 
	alias mjFRAME_LIGHT: 
	alias mjFRAME_CONTACT: 
	alias mjFRAME_WORLD: 
	alias referenced: 


alias mjtFrame = 
struct mjtVisFlag_:
	alias mjVIS_CONVEXHULL: Int = 0

	alias mjVIS_TEXTURE: 
	alias mjVIS_JOINT: 
	alias mjVIS_CAMERA: 
	alias mjVIS_ACTUATOR: 
	alias mjVIS_ACTIVATION: 
	alias mjVIS_LIGHT: 
	alias mjVIS_TENDON: 
	alias mjVIS_RANGEFINDER: 
	alias mjVIS_CONSTRAINT: 
	alias mjVIS_INERTIA: 
	alias mjVIS_SCLINERTIA: 
	alias mjVIS_PERTFORCE: 
	alias mjVIS_PERTOBJ: 
	alias mjVIS_CONTACTPOINT: 
	alias mjVIS_ISLAND: 
	alias mjVIS_CONTACTFORCE: 
	alias mjVIS_CONTACTSPLIT: 
	alias mjVIS_TRANSPARENT: 
	alias mjVIS_AUTOCONNECT: 
	alias mjVIS_COM: 
	alias mjVIS_SELECT: 
	alias mjVIS_STATIC: 
	alias mjVIS_SKIN: 
	alias mjVIS_FLEXVERT: 
	alias mjVIS_FLEXEDGE: 
	alias mjVIS_FLEXFACE: 
	alias mjVIS_FLEXSKIN: 
	alias mjVIS_BODYBVH: 
	alias mjVIS_FLEXBVH: 
	alias mjVIS_MESHBVH: 
	alias mjVIS_SDFITER: 
	alias referenced: 


alias mjtVisFlag = 
struct mjtRndFlag_:
	alias mjRND_SHADOW: Int = 0

	alias mjRND_WIREFRAME: 
	alias mjRND_REFLECTION: 
	alias mjRND_ADDITIVE: 
	alias mjRND_SKYBOX: 
	alias mjRND_FOG: 
	alias mjRND_HAZE: 
	alias mjRND_SEGMENT: 
	alias mjRND_IDCOLOR: 
	alias mjRND_CULL_FACE: 
	alias referenced: 


alias mjtRndFlag = 
struct mjtStereo_:
	alias mjSTEREO_NONE: Int = 0

	alias mjSTEREO_QUADBUFFERED: 
	alias mjSTEREO_SIDEBYSIDE: 


alias mjtStereo = 
struct mjvPerturb_:

	var select: Int32
	
	# selected body id; non-positive: none


	var flexselect: Int32
	
	# selected flex id; negative: none


	var skinselect: Int32
	
	# selected skin id; negative: none


	var active: Int32
	
	# perturbation bitmask (mjtPertBit)


	var active2: Int32
	
	# secondary perturbation bitmask (mjtPertBit)


	var refpos: SIMD[mjtNum.dtype, 3]
	
	# reference position for selected object


	var refquat: SIMD[mjtNum.dtype, 4]
	
	# reference orientation for selected object


	var refselpos: SIMD[mjtNum.dtype, 3]
	
	# reference position for selection point


	var localpos: SIMD[mjtNum.dtype, 3]
	
	# selection point in object coordinates


	var localmass: mjtNum
	# Unhandled tokens: double
	
	# spatial inertia at selection point


	var scale: mjtNum
	# Unhandled tokens: double
	
	# relative mouse motion-to-space scaling (set by initPerturb)



alias mjvPerturb = mjvPerturb_
struct mjvCamera_:

	var type: Int32
	
	# camera type (mjtCamera)


	var fixedcamid: Int32
	
	# fixed camera id


	var trackbodyid: Int32
	
	# body id to track


	var lookat: SIMD[mjtNum.dtype, 3]
	
	# lookat point


	var distance: mjtNum
	# Unhandled tokens: double
	
	# distance to lookat point or tracked body


	var azimuth: mjtNum
	# Unhandled tokens: double
	
	# camera azimuth (deg)


	var elevation: mjtNum
	# Unhandled tokens: double
	
	# camera elevation (deg)


	var orthographic: Int32
	
	# 0: perspective; 1: orthographic



alias mjvCamera = mjvCamera_
struct mjvGLCamera_:

	var pos: SIMD[Float32.dtype, 3]
	
	# position


	var forward: SIMD[Float32.dtype, 3]
	
	# forward direction


	var up: SIMD[Float32.dtype, 3]
	
	# up direction


	var frustum_center: Float32
	
	# hor. center (left,right set to match aspect)


	var frustum_width: Float32
	
	# width (not used for rendering)


	var frustum_bottom: Float32
	
	# bottom


	var frustum_top: Float32
	
	# top


	var frustum_near: Float32
	
	# near


	var frustum_far: Float32
	
	# far


	var orthographic: Int32
	
	# 0: perspective; 1: orthographic



alias mjvGLCamera = mjvGLCamera_
struct mjvGeom_:

	var type: Int32
	
	# geom type (mjtGeom)


	var dataid: Int32
	
	# mesh, hfield or plane id; -1: none


	var objtype: Int32
	
	# mujoco object type; mjOBJ_UNKNOWN for decor


	var objid: Int32
	
	# mujoco object id; -1 for decor


	var category: Int32
	
	# visual category


	var matid: Int32
	
	# material id; -1: no textured material


	var texcoord: Int32
	
	# mesh or flex geom has texture coordinates


	var segid: Int32
	
	# segmentation id; -1: not shown


	var size: SIMD[Float32.dtype, 3]
	
	# size parameters


	var pos: SIMD[Float32.dtype, 3]
	
	# Cartesian position


	var mat: SIMD[Float32.dtype, 9]
	
	# Cartesian orientation


	var rgba: SIMD[Float32.dtype, 4]
	
	# color and transparency


	var emission: Float32
	
	# emission coef


	var specular: Float32
	
	# specular coef


	var shininess: Float32
	
	# shininess coef


	var reflectance: Float32
	
	# reflectance coef


	var label: SIMD[Int8.dtype, 100]
	
	# text label


	var camdist: Float32
	
	# distance to camera (used by sorter)


	var modelrbound: Float32
	
	# geom rbound from model, 0 if not model geom


	var transparent: mjtByte
	# Unhandled tokens: unsigned char
	
	# treat geom as transparent



alias mjvGeom = mjvGeom_
struct mjvLight_:

	var pos: SIMD[Float32.dtype, 3]
	
	# position rel. to body frame


	var dir: SIMD[Float32.dtype, 3]
	
	# direction rel. to body frame


	var attenuation: SIMD[Float32.dtype, 3]
	
	# OpenGL attenuation (quadratic model)


	var cutoff: Float32
	
	# OpenGL cutoff


	var exponent: Float32
	
	# OpenGL exponent


	var ambient: SIMD[Float32.dtype, 3]
	
	# ambient rgb (alpha=1)


	var diffuse: SIMD[Float32.dtype, 3]
	
	# diffuse rgb (alpha=1)


	var specular: SIMD[Float32.dtype, 3]
	
	# specular rgb (alpha=1)


	var headlight: mjtByte
	# Unhandled tokens: unsigned char
	
	# headlight


	var directional: mjtByte
	# Unhandled tokens: unsigned char
	
	# directional light


	var castshadow: mjtByte
	# Unhandled tokens: unsigned char
	
	# does light cast shadows


	var bulbradius: Float32
	
	# bulb radius for soft shadows



alias mjvLight = mjvLight_
struct mjvOption_:

	var label: Int32
	
	# what objects to label (mjtLabel)


	var frame: Int32
	
	# which frame to show (mjtFrame)


	var geomgroup: SIMD[mjtByte.dtype, 6]
	
	# geom visualization by group


	var sitegroup: SIMD[mjtByte.dtype, 6]
	
	# site visualization by group


	var jointgroup: SIMD[mjtByte.dtype, 6]
	
	# joint visualization by group


	var tendongroup: SIMD[mjtByte.dtype, 6]
	
	# tendon visualization by group


	var actuatorgroup: SIMD[mjtByte.dtype, 6]
	
	# actuator visualization by group


	var flexgroup: SIMD[mjtByte.dtype, 6]
	
	# flex visualization by group


	var skingroup: SIMD[mjtByte.dtype, 6]
	
	# skin visualization by group


	var flags: SIMD[mjtByte.dtype, 32]
	
	# visualization flags (indexed by mjtVisFlag)


	var bvh_depth: Int32
	
	# depth of the bounding volume hierarchy to be visualized


	var flex_layer: Int32
	
	# element layer to be visualized for 3D flex



alias mjvOption = mjvOption_
struct mjvScene_:

	var maxgeom: Int32
	
	# size of allocated geom buffer


	var ngeom: Int32
	
	# number of geoms currently in buffer


	var geoms: UnsafePointer[mjvGeom]
	
	# buffer for geoms (ngeom)


	var geomorder: UnsafePointer[Int32]
	
	# buffer for ordering geoms by distance to camera (ngeom)


	var nflex: Int32
	
	# number of flexes


	var flexedgeadr: UnsafePointer[Int32]
	
	# address of flex edges (nflex)


	var flexedgenum: UnsafePointer[Int32]
	
	# number of edges in flex (nflex)


	var flexvertadr: UnsafePointer[Int32]
	
	# address of flex vertices (nflex)


	var flexvertnum: UnsafePointer[Int32]
	
	# number of vertices in flex (nflex)


	var flexfaceadr: UnsafePointer[Int32]
	
	# address of flex faces (nflex)


	var flexfacenum: UnsafePointer[Int32]
	
	# number of flex faces allocated (nflex)


	var flexfaceused: UnsafePointer[Int32]
	
	# number of flex faces currently in use (nflex)


	var flexedge: UnsafePointer[Int32]
	
	# flex edge data (2*nflexedge)


	var flexvert: UnsafePointer[Float32]
	
	# flex vertices (3*nflexvert)


	var flexface: UnsafePointer[Float32]
	
	# flex faces vertices (9*sum(flexfacenum))


	var flexnormal: UnsafePointer[Float32]
	
	# flex face normals (9*sum(flexfacenum))


	var flextexcoord: UnsafePointer[Float32]
	
	# flex face texture coordinates (6*sum(flexfacenum))


	var flexvertopt: mjtByte
	# Unhandled tokens: unsigned char
	
	# copy of mjVIS_FLEXVERT mjvOption flag


	var flexedgeopt: mjtByte
	# Unhandled tokens: unsigned char
	
	# copy of mjVIS_FLEXEDGE mjvOption flag


	var flexfaceopt: mjtByte
	# Unhandled tokens: unsigned char
	
	# copy of mjVIS_FLEXFACE mjvOption flag


	var flexskinopt: mjtByte
	# Unhandled tokens: unsigned char
	
	# copy of mjVIS_FLEXSKIN mjvOption flag


	var nskin: Int32
	
	# number of skins


	var skinfacenum: UnsafePointer[Int32]
	
	# number of faces in skin (nskin)


	var skinvertadr: UnsafePointer[Int32]
	
	# address of skin vertices (nskin)


	var skinvertnum: UnsafePointer[Int32]
	
	# number of vertices in skin (nskin)


	var skinvert: UnsafePointer[Float32]
	
	# skin vertex data (3*nskinvert)


	var skinnormal: UnsafePointer[Float32]
	
	# skin normal data (3*nskinvert)


	var nlight: Int32
	
	# number of lights currently in buffer


	var lights: SIMD[mjvLight.dtype, 100]
	
	# buffer for lights (nlight)


	var camera: SIMD[mjvGLCamera.dtype, 2]
	
	# left and right camera


	var enabletransform: mjtByte
	# Unhandled tokens: unsigned char
	
	# enable model transformation


	var translate: SIMD[Float32.dtype, 3]
	
	# model translation


	var rotate: SIMD[Float32.dtype, 4]
	
	# model quaternion rotation


	var scale: Float32
	
	# model scaling


	var stereo: Int32
	
	# stereoscopic rendering (mjtStereo)


	var flags: SIMD[mjtByte.dtype, 10]
	
	# rendering flags (indexed by mjtRndFlag)


	var framewidth: Int32
	
	# frame pixel width; 0: disable framing


	var framergb: SIMD[Float32.dtype, 3]
	
	# frame color



alias mjvScene = mjvScene_
struct mjvFigure_:

	var flg_legend: Int32
	
	# show legend


	var flg_ticklabel: SIMD[Int32.dtype, 2]
	
	# show grid tick labels (x,y)


	var flg_extend: Int32
	
	# automatically extend axis ranges to fit data


	var flg_barplot: Int32
	
	# isolated line segments (i.e. GL_LINES)


	var flg_selection: Int32
	
	# vertical selection line


	var flg_symmetric: Int32
	
	# symmetric y-axis


	var linewidth: Float32
	
	# line width


	var gridwidth: Float32
	
	# grid line width


	var gridsize: SIMD[Int32.dtype, 2]
	
	# number of grid points in (x,y)


	var gridrgb: SIMD[Float32.dtype, 3]
	
	# grid line rgb


	var figurergba: SIMD[Float32.dtype, 4]
	
	# figure color and alpha


	var panergba: SIMD[Float32.dtype, 4]
	
	# pane color and alpha


	var legendrgba: SIMD[Float32.dtype, 4]
	
	# legend color and alpha


	var textrgb: SIMD[Float32.dtype, 3]
	
	# text color


	var linergb: SIMD[Float32.dtype, 100]
	
	# line colors


	var range: SIMD[Float32.dtype, 2]
	
	# axis ranges; (min>=max) automatic


	var xformat: SIMD[Int8.dtype, 20]
	
	# x-tick label format for sprintf


	var yformat: SIMD[Int8.dtype, 20]
	
	# y-tick label format for sprintf


	var minwidth: SIMD[Int8.dtype, 20]
	
	# string used to determine min y-tick width


	var title: SIMD[Int8.dtype, 1000]
	
	# figure title; subplots separated with 2+ spaces


	var xlabel: SIMD[Int8.dtype, 100]
	
	# x-axis label


	var linename: SIMD[Int8.dtype, 100]
	
	# line names for legend


	var legendoffset: Int32
	
	# number of lines to offset legend


	var subplot: Int32
	
	# selected subplot (for title rendering)


	var highlight: SIMD[Int32.dtype, 2]
	
	# if point is in legend rect, highlight line


	var highlightid: Int32
	
	# if id>=0 and no point, highlight id


	var selection: Float32
	
	# selection line x-value


	var linepnt: SIMD[Int32.dtype, 100]
	
	# number of points in line; (0) disable


	var linedata: SIMD[Float32.dtype, 100]
	
	# line data (x,y)


	var xaxispixel: SIMD[Int32.dtype, 2]
	
	# range of x-axis in pixels


	var yaxispixel: SIMD[Int32.dtype, 2]
	
	# range of y-axis in pixels


	var xaxisdata: SIMD[Float32.dtype, 2]
	
	# range of x-axis in data units


	var yaxisdata: SIMD[Float32.dtype, 2]
	
	# range of y-axis in data units



alias mjvFigure = mjvFigure_
struct _mjvSceneState__Anonymous__line_634_3__line_688_3_:

	var warning: SIMD[mjWarningStat.dtype, 8]
	

	var nefc: Int32
	

	var ncon: Int32
	

	var nisland: Int32
	

	var time: mjtNum
	# Unhandled tokens: double
	

	var act: UnsafePointer[mjtNum]
	

	var ctrl: UnsafePointer[mjtNum]
	

	var xfrc_applied: UnsafePointer[mjtNum]
	

	var eq_active: UnsafePointer[mjtByte]
	

	var sensordata: UnsafePointer[mjtNum]
	

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
	

	var ten_wrapadr: UnsafePointer[Int32]
	

	var ten_wrapnum: UnsafePointer[Int32]
	

	var wrap_obj: UnsafePointer[Int32]
	

	var ten_length: UnsafePointer[mjtNum]
	

	var wrap_xpos: UnsafePointer[mjtNum]
	

	var bvh_aabb_dyn: UnsafePointer[mjtNum]
	

	var bvh_active: UnsafePointer[mjtByte]
	

	var island_dofadr: UnsafePointer[Int32]
	

	var island_dofind: UnsafePointer[Int32]
	

	var dof_island: UnsafePointer[Int32]
	

	var efc_island: UnsafePointer[Int32]
	

	var tendon_efcadr: UnsafePointer[Int32]
	

	var flexvert_xpos: UnsafePointer[mjtNum]
	

	var contact: UnsafePointer[mjContact]
	

	var efc_force: UnsafePointer[mjtNum]
	

	var arena: UnsafePointer[NoneType]
	


struct _mjvSceneState__Anonymous__line_417_3__line_631_3_:

	var nv: Int32
	

	var nu: Int32
	

	var na: Int32
	

	var nbody: Int32
	

	var nbvh: Int32
	

	var nbvhstatic: Int32
	

	var njnt: Int32
	

	var ngeom: Int32
	

	var nsite: Int32
	

	var ncam: Int32
	

	var nlight: Int32
	

	var nmesh: Int32
	

	var nskin: Int32
	

	var nflex: Int32
	

	var nflexvert: Int32
	

	var nflextexcoord: Int32
	

	var nskinvert: Int32
	

	var nskinface: Int32
	

	var nskinbone: Int32
	

	var nskinbonevert: Int32
	

	var nmat: Int32
	

	var neq: Int32
	

	var ntendon: Int32
	

	var ntree: Int32
	

	var nwrap: Int32
	

	var nsensor: Int32
	

	var nnames: Int32
	

	var npaths: Int32
	

	var nsensordata: Int32
	

	var narena: Int32
	

	var opt: mjOption
	# Unhandled tokens: struct mjOption_
	

	var vis: mjVisual
	# Unhandled tokens: struct mjVisual_
	

	var stat: mjStatistic
	# Unhandled tokens: struct mjStatistic_
	

	var body_parentid: UnsafePointer[Int32]
	

	var body_rootid: UnsafePointer[Int32]
	

	var body_weldid: UnsafePointer[Int32]
	

	var body_mocapid: UnsafePointer[Int32]
	

	var body_jntnum: UnsafePointer[Int32]
	

	var body_jntadr: UnsafePointer[Int32]
	

	var body_dofnum: UnsafePointer[Int32]
	

	var body_dofadr: UnsafePointer[Int32]
	

	var body_geomnum: UnsafePointer[Int32]
	

	var body_geomadr: UnsafePointer[Int32]
	

	var body_iquat: UnsafePointer[mjtNum]
	

	var body_mass: UnsafePointer[mjtNum]
	

	var body_inertia: UnsafePointer[mjtNum]
	

	var body_bvhadr: UnsafePointer[Int32]
	

	var body_bvhnum: UnsafePointer[Int32]
	

	var bvh_depth: UnsafePointer[Int32]
	

	var bvh_child: UnsafePointer[Int32]
	

	var bvh_nodeid: UnsafePointer[Int32]
	

	var bvh_aabb: UnsafePointer[mjtNum]
	

	var jnt_type: UnsafePointer[Int32]
	

	var jnt_bodyid: UnsafePointer[Int32]
	

	var jnt_group: UnsafePointer[Int32]
	

	var geom_type: UnsafePointer[Int32]
	

	var geom_bodyid: UnsafePointer[Int32]
	

	var geom_contype: UnsafePointer[Int32]
	

	var geom_conaffinity: UnsafePointer[Int32]
	

	var geom_dataid: UnsafePointer[Int32]
	

	var geom_matid: UnsafePointer[Int32]
	

	var geom_group: UnsafePointer[Int32]
	

	var geom_size: UnsafePointer[mjtNum]
	

	var geom_aabb: UnsafePointer[mjtNum]
	

	var geom_rbound: UnsafePointer[mjtNum]
	

	var geom_rgba: UnsafePointer[Float32]
	

	var site_type: UnsafePointer[Int32]
	

	var site_bodyid: UnsafePointer[Int32]
	

	var site_matid: UnsafePointer[Int32]
	

	var site_group: UnsafePointer[Int32]
	

	var site_size: UnsafePointer[mjtNum]
	

	var site_rgba: UnsafePointer[Float32]
	

	var cam_orthographic: UnsafePointer[Int32]
	

	var cam_fovy: UnsafePointer[mjtNum]
	

	var cam_ipd: UnsafePointer[mjtNum]
	

	var cam_resolution: UnsafePointer[Int32]
	

	var cam_sensorsize: UnsafePointer[Float32]
	

	var cam_intrinsic: UnsafePointer[Float32]
	

	var light_directional: UnsafePointer[mjtByte]
	

	var light_castshadow: UnsafePointer[mjtByte]
	

	var light_bulbradius: UnsafePointer[Float32]
	

	var light_active: UnsafePointer[mjtByte]
	

	var light_attenuation: UnsafePointer[Float32]
	

	var light_cutoff: UnsafePointer[Float32]
	

	var light_exponent: UnsafePointer[Float32]
	

	var light_ambient: UnsafePointer[Float32]
	

	var light_diffuse: UnsafePointer[Float32]
	

	var light_specular: UnsafePointer[Float32]
	

	var flex_flatskin: UnsafePointer[mjtByte]
	

	var flex_dim: UnsafePointer[Int32]
	

	var flex_matid: UnsafePointer[Int32]
	

	var flex_group: UnsafePointer[Int32]
	

	var flex_interp: UnsafePointer[Int32]
	

	var flex_nodeadr: UnsafePointer[Int32]
	

	var flex_nodenum: UnsafePointer[Int32]
	

	var flex_nodebodyid: UnsafePointer[Int32]
	

	var flex_vertadr: UnsafePointer[Int32]
	

	var flex_vertnum: UnsafePointer[Int32]
	

	var flex_elem: UnsafePointer[Int32]
	

	var flex_elemtexcoord: UnsafePointer[Int32]
	

	var flex_elemlayer: UnsafePointer[Int32]
	

	var flex_elemadr: UnsafePointer[Int32]
	

	var flex_elemnum: UnsafePointer[Int32]
	

	var flex_elemdataadr: UnsafePointer[Int32]
	

	var flex_shell: UnsafePointer[Int32]
	

	var flex_shellnum: UnsafePointer[Int32]
	

	var flex_shelldataadr: UnsafePointer[Int32]
	

	var flex_texcoordadr: UnsafePointer[Int32]
	

	var flex_bvhadr: UnsafePointer[Int32]
	

	var flex_bvhnum: UnsafePointer[Int32]
	

	var flex_centered: UnsafePointer[mjtByte]
	

	var flex_node: UnsafePointer[mjtNum]
	

	var flex_radius: UnsafePointer[mjtNum]
	

	var flex_rgba: UnsafePointer[Float32]
	

	var flex_texcoord: UnsafePointer[Float32]
	

	var hfield_pathadr: UnsafePointer[Int32]
	

	var mesh_bvhadr: UnsafePointer[Int32]
	

	var mesh_bvhnum: UnsafePointer[Int32]
	

	var mesh_texcoordadr: UnsafePointer[Int32]
	

	var mesh_graphadr: UnsafePointer[Int32]
	

	var mesh_pathadr: UnsafePointer[Int32]
	

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
	

	var skin_face: UnsafePointer[Int32]
	

	var skin_bonevertadr: UnsafePointer[Int32]
	

	var skin_bonevertnum: UnsafePointer[Int32]
	

	var skin_bonebindpos: UnsafePointer[Float32]
	

	var skin_bonebindquat: UnsafePointer[Float32]
	

	var skin_bonebodyid: UnsafePointer[Int32]
	

	var skin_bonevertid: UnsafePointer[Int32]
	

	var skin_bonevertweight: UnsafePointer[Float32]
	

	var skin_pathadr: UnsafePointer[Int32]
	

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
	

	var eq_type: UnsafePointer[Int32]
	

	var eq_obj1id: UnsafePointer[Int32]
	

	var eq_obj2id: UnsafePointer[Int32]
	

	var eq_objtype: UnsafePointer[Int32]
	

	var eq_data: UnsafePointer[mjtNum]
	

	var tendon_num: UnsafePointer[Int32]
	

	var tendon_matid: UnsafePointer[Int32]
	

	var tendon_group: UnsafePointer[Int32]
	

	var tendon_limited: UnsafePointer[mjtByte]
	

	var tendon_width: UnsafePointer[mjtNum]
	

	var tendon_range: UnsafePointer[mjtNum]
	

	var tendon_stiffness: UnsafePointer[mjtNum]
	

	var tendon_damping: UnsafePointer[mjtNum]
	

	var tendon_frictionloss: UnsafePointer[mjtNum]
	

	var tendon_lengthspring: UnsafePointer[mjtNum]
	

	var tendon_rgba: UnsafePointer[Float32]
	

	var actuator_trntype: UnsafePointer[Int32]
	

	var actuator_dyntype: UnsafePointer[Int32]
	

	var actuator_trnid: UnsafePointer[Int32]
	

	var actuator_actadr: UnsafePointer[Int32]
	

	var actuator_actnum: UnsafePointer[Int32]
	

	var actuator_group: UnsafePointer[Int32]
	

	var actuator_ctrllimited: UnsafePointer[mjtByte]
	

	var actuator_actlimited: UnsafePointer[mjtByte]
	

	var actuator_ctrlrange: UnsafePointer[mjtNum]
	

	var actuator_actrange: UnsafePointer[mjtNum]
	

	var actuator_cranklength: UnsafePointer[mjtNum]
	

	var sensor_type: UnsafePointer[Int32]
	

	var sensor_objid: UnsafePointer[Int32]
	

	var sensor_adr: UnsafePointer[Int32]
	

	var name_bodyadr: UnsafePointer[Int32]
	

	var name_jntadr: UnsafePointer[Int32]
	

	var name_geomadr: UnsafePointer[Int32]
	

	var name_siteadr: UnsafePointer[Int32]
	

	var name_camadr: UnsafePointer[Int32]
	

	var name_lightadr: UnsafePointer[Int32]
	

	var name_eqadr: UnsafePointer[Int32]
	

	var name_tendonadr: UnsafePointer[Int32]
	

	var name_actuatoradr: UnsafePointer[Int32]
	

	var names: UnsafePointer[Int8]
	

	var paths: UnsafePointer[Int8]
	


struct mjvSceneState_:

	var nbuffer: Int32
	
	# size of the buffer in bytes


	var buffer: UnsafePointer[NoneType]
	
	# heap-allocated memory for all arrays in this struct


	var maxgeom: Int32
	
	# maximum number of mjvGeom supported by this state object


	var scratch: mjvScene
	# Unhandled tokens: struct mjvScene_
	
	# scratch space for vis geoms inserted by the user and plugins


	var model: _mjvSceneState__Anonymous__line_417_3__line_631_3_
	

	var data: _mjvSceneState__Anonymous__line_634_3__line_688_3_
	


alias mjvSceneState = mjvSceneState_
struct _mjResource__mjpResourceProvider:
	pass


struct mjResource_:

	var name: UnsafePointer[Int8]
	
	# name of resource (filename, etc)


	var data: UnsafePointer[NoneType]
	
	# opaque data pointer


	var timestamp: SIMD[Int8.dtype, 512]
	
	# timestamp of the resource


	var provider: UnsafePointer[const mjpResourceProvider]
	
	# pointer to the provider



alias mjResource = mjResource_

alias mjfOpenResource = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fdae0 'int (mjResource *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fdab0 'int (mjResource *)' cdecl
Int32UnsafePointer[mjResource]
]

# callback for opening a resource, returns zero on failure


alias mjfReadResource = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fddd0 'int (mjResource *, const void **)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fdd90 'int (mjResource *, const void **)' cdecl
Int32UnsafePointer[mjResource]
UnsafePointer[UnsafePointer[
# (placeholder) | |         `-QualType 0x4e3401 'const void' const
NoneType]
]
]

# callback for reading a resource
# return number of bytes stored in buffer, return -1 if error


alias mjfCloseResource = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fe000 'void (mjResource *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fdfd0 'void (mjResource *)' cdecl
NoneTypeUnsafePointer[mjResource]
]

# callback for closing a resource (responsible for freeing any allocated memory)


alias mjfGetResourceDir = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fe370 'void (mjResource *, const char **, int *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fe330 'void (mjResource *, const char **, int *)' cdecl
NoneTypeUnsafePointer[mjResource]
UnsafePointer[UnsafePointer[
# (placeholder) | |     |   `-QualType 0x4e3441 'const char' const
Int8]
]
UnsafePointer[Int32]
]

# callback for returning the directory of a resource
# sets dir to directory string with ndir being size of directory string


alias mjfResourceModified = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fe6a0 'int (const mjResource *, const char *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fe660 'int (const mjResource *, const char *)' cdecl
Int32UnsafePointer[
# (placeholder) | |     | `-QualType 0x6fd991 'const mjResource' const
mjResource]
UnsafePointer[
# (placeholder) | |       `-QualType 0x4e3441 'const char' const
Int8]
]

# callback for checking if the current resource was modified from the time
# specified by the timestamp
# returns 0 if the resource ' s timestamp matches the provided timestamp
# returns > 0 if the resource is younger than the given timestamp
# returns 
#<
# 0 if the resource is older than the given timestamp

struct mjpResourceProvider:

	var prefix: UnsafePointer[const char]
	
	# prefix for match against a resource name


	var open: mjfOpenResource
	# Unhandled tokens: int (*)(mjResource *)
	
	# opening callback


	var read: mjfReadResource
	# Unhandled tokens: int (*)(mjResource *, const void **)
	
	# reading callback


	var close: mjfCloseResource
	# Unhandled tokens: void (*)(mjResource *)
	
	# closing callback


	var getdir: mjfGetResourceDir
	# Unhandled tokens: void (*)(mjResource *, const char **, int *)
	
	# get directory callback (optional)


	var modified: mjfResourceModified
	# Unhandled tokens: int (*)(const mjResource *, const char *)
	
	# resource modified callback (optional)


	var data: UnsafePointer[NoneType]
	
	# opaque data pointer (resource invariant)



alias mjpResourceProvider = mjpResourceProvider
struct mjtPluginCapabilityBit_:

	#---------------------------------- Plugins -------------------------------------------------------
	alias mjPLUGIN_ACTUATOR: Int = 1

	alias mjPLUGIN_SENSOR: Int = 2

	alias mjPLUGIN_PASSIVE: Int = 4

	alias mjPLUGIN_SDF: Int = 8



alias mjtPluginCapabilityBit = 
#---------------------------------- Plugins -------------------------------------------------------

struct mjpPlugin_:

	var name: UnsafePointer[const char]
	
	# globally unique name identifying the plugin


	var nattribute: Int32
	
	# number of configuration attributes


	var attributes: UnsafePointer[const char *const]
	
	# name of configuration attributes


	var capabilityflags: Int32
	
	# plugin capabilities: bitfield of mjtPluginCapabilityBit


	var needstage: Int32
	
	# sensor computation stage (mjtStage)


	var nstate: int (*)(const mjModel *, int)
	
	# number of mjtNums needed to store the state of a plugin instance (required)


	var nsensordata: int (*)(const mjModel *, int, int)
	
	# dimension of the specified sensor ' s output (required only for sensor plugins)


	var init: int (*)(const mjModel *, mjData *, int)
	
	# called when a new mjData is being created (required), returns 0 on success or -1 on failure


	var destroy: void (*)(mjData *, int)
	
	# called when an mjData is being freed (optional)


	var copy: void (*)(mjData *, const mjModel *, const mjData *, int)
	
	# called when an mjData is being copied (optional)


	var reset: void (*)(const mjModel *, mjtNum *, void *, int)
	
	# called when an mjData is being reset (required)


	var compute: void (*)(const mjModel *, mjData *, int, int)
	
	# called when the plugin needs to update its outputs (required)


	var advance: void (*)(const mjModel *, mjData *, int)
	
	# called when time integration occurs (optional)


	var visualize: void (*)(const mjModel *, mjData *, const mjvOption *, mjvScene *, int)
	
	# called by mjv_updateScene (optional)


	var actuator_act_dot: void (*)(const mjModel *, mjData *, int)
	
	# updates the actuator plugin ' s entries in act_dot
	# called after native act_dot is computed and before the compute callback


	var sdf_distance: mjtNum (*)(const mjtNum *, const mjData *, int)
	
	# signed distance from the surface


	var sdf_gradient: void (*)(mjtNum *, const mjtNum *, const mjData *, int)
	
	# gradient of distance with respect to local coordinates


	var sdf_staticdistance: mjtNum (*)(const mjtNum *, const mjtNum *)
	
	# called during compilation for marching cubes


	var sdf_attribute: void (*)(mjtNum *, const char **, const char **)
	
	# convert attributes and provide defaults if not present


	var sdf_aabb: void (*)(mjtNum *, const mjtNum *)
	
	# bounding box of implicit surface



alias mjpPlugin = mjpPlugin_

alias mjfPluginLibraryLoadCallback = UnsafePointer[
# (placeholder) | | `-ParenType 0x7030b0 'void (const char *, int, int)' sugar

# (placeholder) | |   `-FunctionProtoType 0x703070 'void (const char *, int, int)' cdecl
NoneTypeUnsafePointer[
# (placeholder) | |     | `-QualType 0x4e3441 'const char' const
Int8]
Int32Int32]

# function pointer type for mj_loadAllPluginLibraries callback

struct mjtGridPos_:

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjGRID_TOPLEFT: Int = 0

	alias mjGRID_TOPRIGHT: 
	alias mjGRID_BOTTOMLEFT: 
	alias mjGRID_BOTTOMRIGHT: 
	alias mjGRID_TOP: 
	alias mjGRID_BOTTOM: 
	alias mjGRID_LEFT: 
	alias mjGRID_RIGHT: 


alias mjtGridPos = 
#---------------------------------- primitive types (mjt) -----------------------------------------

struct mjtFramebuffer_:
	alias mjFB_WINDOW: Int = 0

	alias mjFB_OFFSCREEN: 


alias mjtFramebuffer = 
struct mjtDepthMap_:
	alias mjDEPTH_ZERONEAR: Int = 0

	alias mjDEPTH_ZEROFAR: Int = 1



alias mjtDepthMap = 
struct mjtFontScale_:
	alias mjFONTSCALE_50: Int = 50

	alias mjFONTSCALE_100: Int = 100

	alias mjFONTSCALE_150: Int = 150

	alias mjFONTSCALE_200: Int = 200

	alias mjFONTSCALE_250: Int = 250

	alias mjFONTSCALE_300: Int = 300



alias mjtFontScale = 
struct mjtFont_:
	alias mjFONT_NORMAL: Int = 0

	alias mjFONT_SHADOW: 
	alias mjFONT_BIG: 


alias mjtFont = 
struct mjrRect_:

	var left: Int32
	
	# left (usually 0)


	var bottom: Int32
	
	# bottom (usually 0)


	var width: Int32
	
	# width (usually buffer width)


	var height: Int32
	
	# height (usually buffer height)



alias mjrRect = mjrRect_
struct mjrContext_:

	var lineWidth: Float32
	
	# line width for wireframe rendering


	var shadowClip: Float32
	
	# clipping radius for directional lights


	var shadowScale: Float32
	
	# fraction of light cutoff for spot lights


	var fogStart: Float32
	
	# fog start = stat.extent * vis.map.fogstart


	var fogEnd: Float32
	
	# fog end = stat.extent * vis.map.fogend


	var fogRGBA: SIMD[Float32.dtype, 4]
	
	# fog rgba


	var shadowSize: Int32
	
	# size of shadow map texture


	var offWidth: Int32
	
	# width of offscreen buffer


	var offHeight: Int32
	
	# height of offscreen buffer


	var offSamples: Int32
	
	# number of offscreen buffer multisamples


	var fontScale: Int32
	
	# font scale


	var auxWidth: SIMD[Int32.dtype, 10]
	
	# auxiliary buffer width


	var auxHeight: SIMD[Int32.dtype, 10]
	
	# auxiliary buffer height


	var auxSamples: SIMD[Int32.dtype, 10]
	
	# auxiliary buffer multisamples


	var offFBO: UInt32
	
	# offscreen framebuffer object


	var offFBO_r: UInt32
	
	# offscreen framebuffer for resolving multisamples


	var offColor: UInt32
	
	# offscreen color buffer


	var offColor_r: UInt32
	
	# offscreen color buffer for resolving multisamples


	var offDepthStencil: UInt32
	
	# offscreen depth and stencil buffer


	var offDepthStencil_r: UInt32
	
	# offscreen depth and stencil buffer for multisamples


	var shadowFBO: UInt32
	
	# shadow map framebuffer object


	var shadowTex: UInt32
	
	# shadow map texture


	var auxFBO: SIMD[UInt32.dtype, 10]
	
	# auxiliary framebuffer object


	var auxFBO_r: SIMD[UInt32.dtype, 10]
	
	# auxiliary framebuffer object for resolving


	var auxColor: SIMD[UInt32.dtype, 10]
	
	# auxiliary color buffer


	var auxColor_r: SIMD[UInt32.dtype, 10]
	
	# auxiliary color buffer for resolving


	var mat_texid: SIMD[Int32.dtype, 10000]
	
	# material texture ids (-1: no texture)


	var mat_texuniform: SIMD[Int32.dtype, 1000]
	
	# uniform cube mapping


	var mat_texrepeat: SIMD[Float32.dtype, 2000]
	
	# texture repetition for 2d mapping


	var ntexture: Int32
	
	# number of allocated textures


	var textureType: SIMD[Int32.dtype, 1000]
	
	# type of texture (mjtTexture) (ntexture)


	var texture: SIMD[UInt32.dtype, 1000]
	
	# texture names


	var basePlane: UInt32
	
	# all planes from model


	var baseMesh: UInt32
	
	# all meshes from model


	var baseHField: UInt32
	
	# all height fields from model


	var baseBuiltin: UInt32
	
	# all builtin geoms, with quality from model


	var baseFontNormal: UInt32
	
	# normal font


	var baseFontShadow: UInt32
	
	# shadow font


	var baseFontBig: UInt32
	
	# big font


	var rangePlane: Int32
	
	# all planes from model


	var rangeMesh: Int32
	
	# all meshes from model


	var rangeHField: Int32
	
	# all hfields from model


	var rangeBuiltin: Int32
	
	# all builtin geoms, with quality from model


	var rangeFont: Int32
	
	# all characters in font


	var nskin: Int32
	
	# number of skins


	var skinvertVBO: UnsafePointer[UInt32]
	
	# skin vertex position VBOs (nskin)


	var skinnormalVBO: UnsafePointer[UInt32]
	
	# skin vertex normal VBOs (nskin)


	var skintexcoordVBO: UnsafePointer[UInt32]
	
	# skin vertex texture coordinate VBOs (nskin)


	var skinfaceVBO: UnsafePointer[UInt32]
	
	# skin face index VBOs (nskin)


	var charWidth: SIMD[Int32.dtype, 127]
	
	# character widths: normal and shadow


	var charWidthBig: SIMD[Int32.dtype, 127]
	
	# chacarter widths: big


	var charHeight: Int32
	
	# character heights: normal and shadow


	var charHeightBig: Int32
	
	# character heights: big


	var glInitialized: Int32
	
	# is OpenGL initialized


	var windowAvailable: Int32
	
	# is default/window framebuffer available


	var windowSamples: Int32
	
	# number of samples for default/window framebuffer


	var windowStereo: Int32
	
	# is stereo available for default/window framebuffer


	var windowDoublebuffer: Int32
	
	# is default/window framebuffer double buffered


	var currentBuffer: Int32
	
	# currently active framebuffer: mjFB_WINDOW or mjFB_OFFSCREEN


	var readPixelFormat: Int32
	
	# default color pixel format for mjr_readPixels


	var readDepthMap: Int32
	
	# depth mapping: mjDEPTH_ZERONEAR or mjDEPTH_ZEROFAR



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
struct mjtGeomInertia_:

	#-------------------------------- enum types (mjt) ------------------------------------------------
	alias mjINERTIA_VOLUME: Int = 0

	alias mjINERTIA_SHELL: 


alias mjtGeomInertia = 
#-------------------------------- enum types (mjt) ------------------------------------------------

struct mjtMeshInertia_:
	alias mjMESH_INERTIA_CONVEX: Int = 0

	alias mjMESH_INERTIA_EXACT: 
	alias mjMESH_INERTIA_LEGACY: 
	alias mjMESH_INERTIA_SHELL: 


alias mjtMeshInertia = 
struct mjtBuiltin_:
	alias mjBUILTIN_NONE: Int = 0

	alias mjBUILTIN_GRADIENT: 
	alias mjBUILTIN_CHECKER: 
	alias mjBUILTIN_FLAT: 


alias mjtBuiltin = 
struct mjtMark_:
	alias mjMARK_NONE: Int = 0

	alias mjMARK_EDGE: 
	alias mjMARK_CROSS: 
	alias mjMARK_RANDOM: 


alias mjtMark = 
struct mjtLimited_:
	alias mjLIMITED_FALSE: Int = 0

	alias mjLIMITED_TRUE: 
	alias mjLIMITED_AUTO: 


alias mjtLimited = 
struct mjtAlignFree_:
	alias mjALIGNFREE_FALSE: Int = 0

	alias mjALIGNFREE_TRUE: 
	alias mjALIGNFREE_AUTO: 


alias mjtAlignFree = 
struct mjtInertiaFromGeom_:
	alias mjINERTIAFROMGEOM_FALSE: Int = 0

	alias mjINERTIAFROMGEOM_TRUE: 
	alias mjINERTIAFROMGEOM_AUTO: 


alias mjtInertiaFromGeom = 
struct mjtOrientation_:
	alias mjORIENTATION_QUAT: Int = 0

	alias mjORIENTATION_AXISANGLE: 
	alias mjORIENTATION_XYAXES: 
	alias mjORIENTATION_ZAXIS: 
	alias mjORIENTATION_EULER: 


alias mjtOrientation = 
struct mjsElement_:

	var elemtype: mjtObj
	# Unhandled tokens: enum mjtObj_
	
	# element type


	var signature: uint64_t
	# Unhandled tokens: unsigned long
	
	# compilation signature



alias mjsElement = mjsElement_
#-------------------------------- attribute structs (mjs) -----------------------------------------

struct mjsCompiler_:

	var autolimits: mjtByte
	# Unhandled tokens: unsigned char
	
	# infer "limited" attribute based on range


	var boundmass: Float64
	
	# enforce minimum body mass


	var boundinertia: Float64
	
	# enforce minimum body diagonal inertia


	var settotalmass: Float64
	
	# rescale masses and inertias; 
	#<
	#=0: ignore


	var balanceinertia: mjtByte
	# Unhandled tokens: unsigned char
	
	# automatically impose A + B >= C rule


	var fitaabb: mjtByte
	# Unhandled tokens: unsigned char
	
	# meshfit to aabb instead of inertia box


	var degree: mjtByte
	# Unhandled tokens: unsigned char
	
	# angles in radians or degrees


	var eulerseq: SIMD[Int8.dtype, 3]
	
	# sequence for euler rotations


	var discardvisual: mjtByte
	# Unhandled tokens: unsigned char
	
	# discard visual geoms in parser


	var usethread: mjtByte
	# Unhandled tokens: unsigned char
	
	# use multiple threads to speed up compiler


	var fusestatic: mjtByte
	# Unhandled tokens: unsigned char
	
	# fuse static bodies with parent


	var inertiafromgeom: Int32
	
	# use geom inertias (mjtInertiaFromGeom)


	var inertiagrouprange: SIMD[Int32.dtype, 2]
	
	# range of geom groups used to compute inertia


	var saveinertial: mjtByte
	# Unhandled tokens: unsigned char
	
	# save explicit inertial clause for all bodies to XML


	var alignfree: Int32
	
	# align free joints with inertial frame


	var LRopt: mjLROpt
	# Unhandled tokens: struct mjLROpt_
	
	# options for lengthrange computation



alias mjsCompiler = mjsCompiler_
struct mjSpec_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var modelname: UnsafePointer[mjString]
	
	# model name


	var compiler: mjsCompiler
	# Unhandled tokens: struct mjsCompiler_
	
	# compiler options


	var strippath: mjtByte
	# Unhandled tokens: unsigned char
	
	# automatically strip paths from mesh files


	var meshdir: UnsafePointer[mjString]
	
	# mesh and hfield directory


	var texturedir: UnsafePointer[mjString]
	
	# texture directory


	var option: mjOption
	# Unhandled tokens: struct mjOption_
	
	# physics options


	var visual: mjVisual
	# Unhandled tokens: struct mjVisual_
	
	# visual options


	var stat: mjStatistic
	# Unhandled tokens: struct mjStatistic_
	
	# statistics override (if defined)


	var memory: size_t
	# Unhandled tokens: unsigned long
	
	# number of bytes in arena+stack memory


	var nemax: Int32
	
	# max number of equality constraints


	var nuserdata: Int32
	
	# number of mjtNums in userdata


	var nuser_body: Int32
	
	# number of mjtNums in body_user


	var nuser_jnt: Int32
	
	# number of mjtNums in jnt_user


	var nuser_geom: Int32
	
	# number of mjtNums in geom_user


	var nuser_site: Int32
	
	# number of mjtNums in site_user


	var nuser_cam: Int32
	
	# number of mjtNums in cam_user


	var nuser_tendon: Int32
	
	# number of mjtNums in tendon_user


	var nuser_actuator: Int32
	
	# number of mjtNums in actuator_user


	var nuser_sensor: Int32
	
	# number of mjtNums in sensor_user


	var nkey: Int32
	
	# number of keyframes


	var njmax: Int32
	
	# (deprecated) max number of constraints


	var nconmax: Int32
	
	# (deprecated) max number of detected contacts


	var nstack: size_t
	# Unhandled tokens: unsigned long
	
	# (deprecated) number of mjtNums in mjData stack


	var comment: UnsafePointer[mjString]
	
	# comment at top of XML


	var modelfiledir: UnsafePointer[mjString]
	
	# path to model file


	var hasImplicitPluginElem: mjtByte
	# Unhandled tokens: unsigned char
	
	# already encountered an implicit plugin sensor/actuator



alias mjSpec = mjSpec_
struct mjsOrientation_:

	var type: mjtOrientation
	# Unhandled tokens: enum mjtOrientation_
	
	# active orientation specifier


	var axisangle: SIMD[Float64.dtype, 4]
	
	# axis and angle


	var xyaxes: SIMD[Float64.dtype, 6]
	
	# x and y axes


	var zaxis: SIMD[Float64.dtype, 3]
	
	# z axis (minimal rotation)


	var euler: SIMD[Float64.dtype, 3]
	
	# Euler angles



alias mjsOrientation = mjsOrientation_
struct mjsPlugin_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# instance name


	var plugin_name: UnsafePointer[mjString]
	
	# plugin name


	var active: mjtByte
	# Unhandled tokens: unsigned char
	
	# is the plugin active


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsPlugin = mjsPlugin_
struct mjsBody_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var childclass: UnsafePointer[mjString]
	
	# childclass name


	var pos: SIMD[Float64.dtype, 3]
	
	# frame position


	var quat: SIMD[Float64.dtype, 4]
	
	# frame orientation


	var alt: mjsOrientation
	# Unhandled tokens: struct mjsOrientation_
	
	# frame alternative orientation


	var mass: Float64
	
	# mass


	var ipos: SIMD[Float64.dtype, 3]
	
	# inertial frame position


	var iquat: SIMD[Float64.dtype, 4]
	
	# inertial frame orientation


	var inertia: SIMD[Float64.dtype, 3]
	
	# diagonal inertia (in i-frame)


	var ialt: mjsOrientation
	# Unhandled tokens: struct mjsOrientation_
	
	# inertial frame alternative orientation


	var fullinertia: SIMD[Float64.dtype, 6]
	
	# non-axis-aligned inertia matrix


	var mocap: mjtByte
	# Unhandled tokens: unsigned char
	
	# is this a mocap body


	var gravcomp: Float64
	
	# gravity compensation


	var userdata: UnsafePointer[mjDoubleVec]
	
	# user data


	var explicitinertial: mjtByte
	# Unhandled tokens: unsigned char
	
	# whether to save the body with explicit inertial clause


	var plugin: mjsPlugin
	# Unhandled tokens: struct mjsPlugin_
	
	# passive force plugin


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsBody = mjsBody_
struct mjsFrame_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var childclass: UnsafePointer[mjString]
	
	# childclass name


	var pos: SIMD[Float64.dtype, 3]
	
	# position


	var quat: SIMD[Float64.dtype, 4]
	
	# orientation


	var alt: mjsOrientation
	# Unhandled tokens: struct mjsOrientation_
	
	# alternative orientation


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsFrame = mjsFrame_
struct mjsJoint_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var type: mjtJoint
	# Unhandled tokens: enum mjtJoint_
	
	# joint type


	var pos: SIMD[Float64.dtype, 3]
	
	# anchor position


	var axis: SIMD[Float64.dtype, 3]
	
	# joint axis


	var ref: Float64
	
	# value at reference configuration: qpos0


	var align: Int32
	
	# align free joint with body com (mjtAlignFree)


	var stiffness: Float64
	
	# stiffness coefficient


	var springref: Float64
	
	# spring reference value: qpos_spring


	var springdamper: SIMD[Float64.dtype, 2]
	
	# timeconst, dampratio


	var limited: Int32
	
	# does joint have limits (mjtLimited)


	var range: SIMD[Float64.dtype, 2]
	
	# joint limits


	var margin: Float64
	
	# margin value for joint limit detection


	var solref_limit: SIMD[mjtNum.dtype, 2]
	
	# solver reference: joint limits


	var solimp_limit: SIMD[mjtNum.dtype, 5]
	
	# solver impedance: joint limits


	var actfrclimited: Int32
	
	# are actuator forces on joint limited (mjtLimited)


	var actfrcrange: SIMD[Float64.dtype, 2]
	
	# actuator force limits


	var armature: Float64
	
	# armature inertia (mass for slider)


	var damping: Float64
	
	# damping coefficient


	var frictionloss: Float64
	
	# friction loss


	var solref_friction: SIMD[mjtNum.dtype, 2]
	
	# solver reference: dof friction


	var solimp_friction: SIMD[mjtNum.dtype, 5]
	
	# solver impedance: dof friction


	var group: Int32
	
	# group


	var actgravcomp: mjtByte
	# Unhandled tokens: unsigned char
	
	# is gravcomp force applied via actuators


	var userdata: UnsafePointer[mjDoubleVec]
	
	# user data


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsJoint = mjsJoint_
struct mjsGeom_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var type: mjtGeom
	# Unhandled tokens: enum mjtGeom_
	
	# geom type


	var pos: SIMD[Float64.dtype, 3]
	
	# position


	var quat: SIMD[Float64.dtype, 4]
	
	# orientation


	var alt: mjsOrientation
	# Unhandled tokens: struct mjsOrientation_
	
	# alternative orientation


	var fromto: SIMD[Float64.dtype, 6]
	
	# alternative for capsule, cylinder, box, ellipsoid


	var size: SIMD[Float64.dtype, 3]
	
	# type-specific size


	var contype: Int32
	
	# contact type


	var conaffinity: Int32
	
	# contact affinity


	var condim: Int32
	
	# contact dimensionality


	var priority: Int32
	
	# contact priority


	var friction: SIMD[Float64.dtype, 3]
	
	# one-sided friction coefficients: slide, roll, spin


	var solmix: Float64
	
	# solver mixing for contact pairs


	var solref: SIMD[mjtNum.dtype, 2]
	
	# solver reference


	var solimp: SIMD[mjtNum.dtype, 5]
	
	# solver impedance


	var margin: Float64
	
	# margin for contact detection


	var gap: Float64
	
	# include in solver if dist 
	#<
	# margin-gap


	var mass: Float64
	
	# used to compute density


	var density: Float64
	
	# used to compute mass and inertia from volume or surface


	var typeinertia: mjtGeomInertia
	# Unhandled tokens: enum mjtGeomInertia_
	
	# selects between surface and volume inertia


	var fluid_ellipsoid: mjtNum
	# Unhandled tokens: double
	
	# whether ellipsoid-fluid model is active


	var fluid_coefs: SIMD[mjtNum.dtype, 5]
	
	# ellipsoid-fluid interaction coefs


	var material: UnsafePointer[mjString]
	
	# name of material


	var rgba: SIMD[Float32.dtype, 4]
	
	# rgba when material is omitted


	var group: Int32
	
	# group


	var hfieldname: UnsafePointer[mjString]
	
	# heightfield attached to geom


	var meshname: UnsafePointer[mjString]
	
	# mesh attached to geom


	var fitscale: Float64
	
	# scale mesh uniformly


	var userdata: UnsafePointer[mjDoubleVec]
	
	# user data


	var plugin: mjsPlugin
	# Unhandled tokens: struct mjsPlugin_
	
	# sdf plugin


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsGeom = mjsGeom_
struct mjsSite_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var pos: SIMD[Float64.dtype, 3]
	
	# position


	var quat: SIMD[Float64.dtype, 4]
	
	# orientation


	var alt: mjsOrientation
	# Unhandled tokens: struct mjsOrientation_
	
	# alternative orientation


	var fromto: SIMD[Float64.dtype, 6]
	
	# alternative for capsule, cylinder, box, ellipsoid


	var size: SIMD[Float64.dtype, 3]
	
	# geom size


	var type: mjtGeom
	# Unhandled tokens: enum mjtGeom_
	
	# geom type


	var material: UnsafePointer[mjString]
	
	# name of material


	var group: Int32
	
	# group


	var rgba: SIMD[Float32.dtype, 4]
	
	# rgba when material is omitted


	var userdata: UnsafePointer[mjDoubleVec]
	
	# user data


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsSite = mjsSite_
struct mjsCamera_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var pos: SIMD[Float64.dtype, 3]
	
	# position


	var quat: SIMD[Float64.dtype, 4]
	
	# orientation


	var alt: mjsOrientation
	# Unhandled tokens: struct mjsOrientation_
	
	# alternative orientation


	var mode: mjtCamLight
	# Unhandled tokens: enum mjtCamLight_
	
	# tracking mode


	var targetbody: UnsafePointer[mjString]
	
	# target body for tracking/targeting


	var orthographic: Int32
	
	# is camera orthographic


	var fovy: Float64
	
	# y-field of view


	var ipd: Float64
	
	# inter-pupilary distance


	var intrinsic: SIMD[Float32.dtype, 4]
	
	# camera intrinsics (length)


	var sensor_size: SIMD[Float32.dtype, 2]
	
	# sensor size (length)


	var resolution: SIMD[Float32.dtype, 2]
	
	# resolution (pixel)


	var focal_length: SIMD[Float32.dtype, 2]
	
	# focal length (length)


	var focal_pixel: SIMD[Float32.dtype, 2]
	
	# focal length (pixel)


	var principal_length: SIMD[Float32.dtype, 2]
	
	# principal point (length)


	var principal_pixel: SIMD[Float32.dtype, 2]
	
	# principal point (pixel)


	var userdata: UnsafePointer[mjDoubleVec]
	
	# user data


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsCamera = mjsCamera_
struct mjsLight_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var pos: SIMD[Float64.dtype, 3]
	
	# position


	var dir: SIMD[Float64.dtype, 3]
	
	# direction


	var mode: mjtCamLight
	# Unhandled tokens: enum mjtCamLight_
	
	# tracking mode


	var targetbody: UnsafePointer[mjString]
	
	# target body for targeting


	var active: mjtByte
	# Unhandled tokens: unsigned char
	
	# is light active


	var directional: mjtByte
	# Unhandled tokens: unsigned char
	
	# is light directional or spot


	var castshadow: mjtByte
	# Unhandled tokens: unsigned char
	
	# does light cast shadows


	var bulbradius: Float64
	
	# bulb radius, for soft shadows


	var attenuation: SIMD[Float32.dtype, 3]
	
	# OpenGL attenuation (quadratic model)


	var cutoff: Float32
	
	# OpenGL cutoff


	var exponent: Float32
	
	# OpenGL exponent


	var ambient: SIMD[Float32.dtype, 3]
	
	# ambient color


	var diffuse: SIMD[Float32.dtype, 3]
	
	# diffuse color


	var specular: SIMD[Float32.dtype, 3]
	
	# specular color


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errorsx



alias mjsLight = mjsLight_
struct mjsFlex_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var contype: Int32
	
	# contact type


	var conaffinity: Int32
	
	# contact affinity


	var condim: Int32
	
	# contact dimensionality


	var priority: Int32
	
	# contact priority


	var friction: SIMD[Float64.dtype, 3]
	
	# one-sided friction coefficients: slide, roll, spin


	var solmix: Float64
	
	# solver mixing for contact pairs


	var solref: SIMD[mjtNum.dtype, 2]
	
	# solver reference


	var solimp: SIMD[mjtNum.dtype, 5]
	
	# solver impedance


	var margin: Float64
	
	# margin for contact detection


	var gap: Float64
	
	# include in solver if dist
	#<margin
	#-gap


	var dim: Int32
	
	# element dimensionality


	var radius: Float64
	
	# radius around primitive element


	var internal: mjtByte
	# Unhandled tokens: unsigned char
	
	# enable internal collisions


	var flatskin: mjtByte
	# Unhandled tokens: unsigned char
	
	# render flex skin with flat shading


	var selfcollide: Int32
	
	# mode for flex self colllision


	var activelayers: Int32
	
	# number of active element layers in 3D


	var group: Int32
	
	# group for visualizatioh


	var edgestiffness: Float64
	
	# edge stiffness


	var edgedamping: Float64
	
	# edge damping


	var rgba: SIMD[Float32.dtype, 4]
	
	# rgba when material is omitted


	var material: UnsafePointer[mjString]
	
	# name of material used for rendering


	var young: Float64
	
	# Young ' s modulus


	var poisson: Float64
	
	# Poisson ' s ratio


	var damping: Float64
	
	# Rayleigh ' s damping


	var thickness: Float64
	
	# thickness (2D only)


	var nodebody: UnsafePointer[mjStringVec]
	
	# node body names


	var vertbody: UnsafePointer[mjStringVec]
	
	# vertex body names


	var node: UnsafePointer[mjDoubleVec]
	
	# node positions


	var vert: UnsafePointer[mjDoubleVec]
	
	# vertex positions


	var elem: UnsafePointer[mjIntVec]
	
	# element vertex ids


	var texcoord: UnsafePointer[mjFloatVec]
	
	# vertex texture coordinates


	var elemtexcoord: UnsafePointer[mjIntVec]
	
	# element texture coordinates


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsFlex = mjsFlex_
struct mjsMesh_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var content_type: UnsafePointer[mjString]
	
	# content type of file


	var file: UnsafePointer[mjString]
	
	# mesh file


	var refpos: SIMD[Float64.dtype, 3]
	
	# reference position


	var refquat: SIMD[Float64.dtype, 4]
	
	# reference orientation


	var scale: SIMD[Float64.dtype, 3]
	
	# rescale mesh


	var inertia: mjtMeshInertia
	# Unhandled tokens: enum mjtMeshInertia_
	
	# inertia type (convex, legacy, exact, shell)


	var smoothnormal: mjtByte
	# Unhandled tokens: unsigned char
	
	# do not exclude large-angle faces from normals


	var maxhullvert: Int32
	
	# maximum vertex count for the convex hull


	var uservert: UnsafePointer[mjFloatVec]
	
	# user vertex data


	var usernormal: UnsafePointer[mjFloatVec]
	
	# user normal data


	var usertexcoord: UnsafePointer[mjFloatVec]
	
	# user texcoord data


	var userface: UnsafePointer[mjIntVec]
	
	# user vertex indices


	var userfacetexcoord: UnsafePointer[mjIntVec]
	
	# user texcoord indices


	var plugin: mjsPlugin
	# Unhandled tokens: struct mjsPlugin_
	
	# sdf plugin


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsMesh = mjsMesh_
struct mjsHField_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var content_type: UnsafePointer[mjString]
	
	# content type of file


	var file: UnsafePointer[mjString]
	
	# file: (nrow, ncol, [elevation data])


	var size: SIMD[Float64.dtype, 4]
	
	# hfield size (ignore referencing geom size)


	var nrow: Int32
	
	# number of rows


	var ncol: Int32
	
	# number of columns


	var userdata: UnsafePointer[mjFloatVec]
	
	# user-provided elevation data


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsHField = mjsHField_
struct mjsSkin_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var file: UnsafePointer[mjString]
	
	# skin file


	var material: UnsafePointer[mjString]
	
	# name of material used for rendering


	var rgba: SIMD[Float32.dtype, 4]
	
	# rgba when material is omitted


	var inflate: Float32
	
	# inflate in normal direction


	var group: Int32
	
	# group for visualization


	var vert: UnsafePointer[mjFloatVec]
	
	# vertex positions


	var texcoord: UnsafePointer[mjFloatVec]
	
	# texture coordinates


	var face: UnsafePointer[mjIntVec]
	
	# faces


	var bodyname: UnsafePointer[mjStringVec]
	
	# body names


	var bindpos: UnsafePointer[mjFloatVec]
	
	# bind pos


	var bindquat: UnsafePointer[mjFloatVec]
	
	# bind quat


	var vertid: UnsafePointer[mjIntVecVec]
	
	# vertex ids


	var vertweight: UnsafePointer[mjFloatVecVec]
	
	# vertex weights


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsSkin = mjsSkin_
struct mjsTexture_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var type: mjtTexture
	# Unhandled tokens: enum mjtTexture_
	
	# texture type


	var builtin: Int32
	
	# builtin type (mjtBuiltin)


	var mark: Int32
	
	# mark type (mjtMark)


	var rgb1: SIMD[Float64.dtype, 3]
	
	# first color for builtin


	var rgb2: SIMD[Float64.dtype, 3]
	
	# second color for builtin


	var markrgb: SIMD[Float64.dtype, 3]
	
	# mark color


	var random: Float64
	
	# probability of random dots


	var height: Int32
	
	# height in pixels (square for cube and skybox)


	var width: Int32
	
	# width in pixels


	var nchannel: Int32
	
	# number of channels


	var content_type: UnsafePointer[mjString]
	
	# content type of file


	var file: UnsafePointer[mjString]
	
	# png file to load; use for all sides of cube


	var gridsize: SIMD[Int32.dtype, 2]
	
	# size of grid for composite file; (1,1)-repeat


	var gridlayout: SIMD[Int8.dtype, 13]
	
	# row-major: L,R,F,B,U,D for faces; . for unused


	var cubefiles: UnsafePointer[mjStringVec]
	
	# different file for each side of the cube


	var data: UnsafePointer[mjByteVec]
	
	# texture data


	var hflip: mjtByte
	# Unhandled tokens: unsigned char
	
	# horizontal flip


	var vflip: mjtByte
	# Unhandled tokens: unsigned char
	
	# vertical flip


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsTexture = mjsTexture_
struct mjsMaterial_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var textures: UnsafePointer[mjStringVec]
	
	# names of textures (empty: none)


	var texuniform: mjtByte
	# Unhandled tokens: unsigned char
	
	# make texture cube uniform


	var texrepeat: SIMD[Float32.dtype, 2]
	
	# texture repetition for 2D mapping


	var emission: Float32
	
	# emission


	var specular: Float32
	
	# specular


	var shininess: Float32
	
	# shininess


	var reflectance: Float32
	
	# reflectance


	var metallic: Float32
	
	# metallic


	var roughness: Float32
	
	# roughness


	var rgba: SIMD[Float32.dtype, 4]
	
	# rgba


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsMaterial = mjsMaterial_
struct mjsPair_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var geomname1: UnsafePointer[mjString]
	
	# name of geom 1


	var geomname2: UnsafePointer[mjString]
	
	# name of geom 2


	var condim: Int32
	
	# contact dimensionality


	var solref: SIMD[mjtNum.dtype, 2]
	
	# solver reference, normal direction


	var solreffriction: SIMD[mjtNum.dtype, 2]
	
	# solver reference, frictional directions


	var solimp: SIMD[mjtNum.dtype, 5]
	
	# solver impedance


	var margin: Float64
	
	# margin for contact detection


	var gap: Float64
	
	# include in solver if dist
	#<margin
	#-gap


	var friction: SIMD[Float64.dtype, 5]
	
	# full contact friction


	var info: UnsafePointer[mjString]
	
	# message appended to errors



alias mjsPair = mjsPair_
struct mjsExclude_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var bodyname1: UnsafePointer[mjString]
	
	# name of geom 1


	var bodyname2: UnsafePointer[mjString]
	
	# name of geom 2


	var info: UnsafePointer[mjString]
	
	# message appended to errors



alias mjsExclude = mjsExclude_
struct mjsEquality_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var type: mjtEq
	# Unhandled tokens: enum mjtEq_
	
	# constraint type


	var data: SIMD[Float64.dtype, 11]
	
	# type-dependent data


	var active: mjtByte
	# Unhandled tokens: unsigned char
	
	# is equality initially active


	var name1: UnsafePointer[mjString]
	
	# name of object 1


	var name2: UnsafePointer[mjString]
	
	# name of object 2


	var objtype: mjtObj
	# Unhandled tokens: enum mjtObj_
	
	# type of both objects


	var solref: SIMD[mjtNum.dtype, 2]
	
	# solver reference


	var solimp: SIMD[mjtNum.dtype, 5]
	
	# solver impedance


	var info: UnsafePointer[mjString]
	
	# message appended to errors



alias mjsEquality = mjsEquality_
struct mjsTendon_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var stiffness: Float64
	
	# stiffness coefficient


	var springlength: SIMD[Float64.dtype, 2]
	
	# spring resting length; {-1, -1}: use qpos_spring


	var damping: Float64
	
	# damping coefficient


	var frictionloss: Float64
	
	# friction loss


	var solref_friction: SIMD[mjtNum.dtype, 2]
	
	# solver reference: tendon friction


	var solimp_friction: SIMD[mjtNum.dtype, 5]
	
	# solver impedance: tendon friction


	var armature: Float64
	
	# inertia associated with tendon velocity


	var limited: Int32
	
	# does tendon have limits (mjtLimited)


	var range: SIMD[Float64.dtype, 2]
	
	# length limits


	var margin: Float64
	
	# margin value for tendon limit detection


	var solref_limit: SIMD[mjtNum.dtype, 2]
	
	# solver reference: tendon limits


	var solimp_limit: SIMD[mjtNum.dtype, 5]
	
	# solver impedance: tendon limits


	var material: UnsafePointer[mjString]
	
	# name of material for rendering


	var width: Float64
	
	# width for rendering


	var rgba: SIMD[Float32.dtype, 4]
	
	# rgba when material is omitted


	var group: Int32
	
	# group


	var userdata: UnsafePointer[mjDoubleVec]
	
	# user data


	var info: UnsafePointer[mjString]
	
	# message appended to errors



alias mjsTendon = mjsTendon_
struct mjsWrap_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var info: UnsafePointer[mjString]
	
	# message appended to errors



alias mjsWrap = mjsWrap_
struct mjsActuator_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var gaintype: mjtGain
	# Unhandled tokens: enum mjtGain_
	
	# gain type


	var gainprm: SIMD[Float64.dtype, 10]
	
	# gain parameters


	var biastype: mjtBias
	# Unhandled tokens: enum mjtBias_
	
	# bias type


	var biasprm: SIMD[Float64.dtype, 10]
	
	# bias parameters


	var dyntype: mjtDyn
	# Unhandled tokens: enum mjtDyn_
	
	# dynamics type


	var dynprm: SIMD[Float64.dtype, 10]
	
	# dynamics parameters


	var actdim: Int32
	
	# number of activation variables


	var actearly: mjtByte
	# Unhandled tokens: unsigned char
	
	# apply next activations to qfrc


	var trntype: mjtTrn
	# Unhandled tokens: enum mjtTrn_
	
	# transmission type


	var gear: SIMD[Float64.dtype, 6]
	
	# length and transmitted force scaling


	var target: UnsafePointer[mjString]
	
	# name of transmission target


	var refsite: UnsafePointer[mjString]
	
	# reference site, for site transmission


	var slidersite: UnsafePointer[mjString]
	
	# site defining cylinder, for slider-crank


	var cranklength: Float64
	
	# crank length, for slider-crank


	var lengthrange: SIMD[Float64.dtype, 2]
	
	# transmission length range


	var inheritrange: Float64
	
	# automatic range setting for position and intvelocity


	var ctrllimited: Int32
	
	# are control limits defined (mjtLimited)


	var ctrlrange: SIMD[Float64.dtype, 2]
	
	# control range


	var forcelimited: Int32
	
	# are force limits defined (mjtLimited)


	var forcerange: SIMD[Float64.dtype, 2]
	
	# force range


	var actlimited: Int32
	
	# are activation limits defined (mjtLimited)


	var actrange: SIMD[Float64.dtype, 2]
	
	# activation range


	var group: Int32
	
	# group


	var userdata: UnsafePointer[mjDoubleVec]
	
	# user data


	var plugin: mjsPlugin
	# Unhandled tokens: struct mjsPlugin_
	
	# actuator plugin


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsActuator = mjsActuator_
struct mjsSensor_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var type: mjtSensor
	# Unhandled tokens: enum mjtSensor_
	
	# type of sensor


	var objtype: mjtObj
	# Unhandled tokens: enum mjtObj_
	
	# type of sensorized object


	var objname: UnsafePointer[mjString]
	
	# name of sensorized object


	var reftype: mjtObj
	# Unhandled tokens: enum mjtObj_
	
	# type of referenced object


	var refname: UnsafePointer[mjString]
	
	# name of referenced object


	var datatype: mjtDataType
	# Unhandled tokens: enum mjtDataType_
	
	# data type for sensor measurement


	var needstage: mjtStage
	# Unhandled tokens: enum mjtStage_
	
	# compute stage needed to simulate sensor


	var dim: Int32
	
	# number of scalar outputs


	var cutoff: Float64
	
	# cutoff for real and positive datatypes


	var noise: Float64
	
	# noise stdev


	var userdata: UnsafePointer[mjDoubleVec]
	
	# user data


	var plugin: mjsPlugin
	# Unhandled tokens: struct mjsPlugin_
	
	# sensor plugin


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsSensor = mjsSensor_
struct mjsNumeric_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var data: UnsafePointer[mjDoubleVec]
	
	# initialization data


	var size: Int32
	
	# array size, can be bigger than data size


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsNumeric = mjsNumeric_
struct mjsText_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var data: UnsafePointer[mjString]
	
	# text string


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsText = mjsText_
struct mjsTuple_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var objtype: UnsafePointer[mjIntVec]
	
	# object types


	var objname: UnsafePointer[mjStringVec]
	
	# object names


	var objprm: UnsafePointer[mjDoubleVec]
	
	# object parameters


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsTuple = mjsTuple_
struct mjsKey_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# name


	var time: Float64
	
	# time


	var qpos: UnsafePointer[mjDoubleVec]
	
	# qpos


	var qvel: UnsafePointer[mjDoubleVec]
	
	# qvel


	var act: UnsafePointer[mjDoubleVec]
	
	# act


	var mpos: UnsafePointer[mjDoubleVec]
	
	# mocap pos


	var mquat: UnsafePointer[mjDoubleVec]
	
	# mocap quat


	var ctrl: UnsafePointer[mjDoubleVec]
	
	# ctrl


	var info: UnsafePointer[mjString]
	
	# message appended to compiler errors



alias mjsKey = mjsKey_
struct mjsDefault_:

	var element: UnsafePointer[mjsElement]
	
	# element type


	var name: UnsafePointer[mjString]
	
	# class name


	var joint: UnsafePointer[mjsJoint]
	
	# joint defaults


	var geom: UnsafePointer[mjsGeom]
	
	# geom defaults


	var site: UnsafePointer[mjsSite]
	
	# site defaults


	var camera: UnsafePointer[mjsCamera]
	
	# camera defaults


	var light: UnsafePointer[mjsLight]
	
	# light defaults


	var flex: UnsafePointer[mjsFlex]
	
	# flex defaults


	var mesh: UnsafePointer[mjsMesh]
	
	# mesh defaults


	var material: UnsafePointer[mjsMaterial]
	
	# material defaults


	var pair: UnsafePointer[mjsPair]
	
	# pair defaults


	var equality: UnsafePointer[mjsEquality]
	
	# equality defaults


	var tendon: UnsafePointer[mjsTendon]
	
	# tendon defaults


	var actuator: UnsafePointer[mjsActuator]
	
	# actuator defaults



alias mjsDefault = mjsDefault_
struct mjtButton_:

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjBUTTON_NONE: Int = 0

	alias mjBUTTON_LEFT: 
	alias mjBUTTON_RIGHT: 
	alias mjBUTTON_MIDDLE: 


alias mjtButton = 
#---------------------------------- primitive types (mjt) -----------------------------------------

struct mjtEvent_:
	alias mjEVENT_NONE: Int = 0

	alias mjEVENT_MOVE: 
	alias mjEVENT_PRESS: 
	alias mjEVENT_RELEASE: 
	alias mjEVENT_SCROLL: 
	alias mjEVENT_KEY: 
	alias mjEVENT_RESIZE: 
	alias mjEVENT_REDRAW: 
	alias mjEVENT_FILESDROP: 


alias mjtEvent = 
struct mjtItem_:
	alias mjITEM_END: Int = -2

	alias mjITEM_SECTION: Int = -1

	alias mjITEM_SEPARATOR: Int = 0

	alias mjITEM_STATIC: 
	alias mjITEM_BUTTON: 
	alias mjITEM_CHECKINT: 
	alias mjITEM_CHECKBYTE: 
	alias mjITEM_RADIO: 
	alias mjITEM_RADIOLINE: 
	alias mjITEM_SELECT: 
	alias mjITEM_SLIDERINT: 
	alias mjITEM_SLIDERNUM: 
	alias mjITEM_EDITINT: 
	alias mjITEM_EDITNUM: 
	alias mjITEM_EDITFLOAT: 
	alias mjITEM_EDITTXT: 
	alias mjNITEM: 


alias mjtItem = 
struct mjtSection_:
	alias mjSECT_CLOSED: Int = 0

	alias mjSECT_OPEN: 
	alias mjSECT_FIXED: 


alias mjtSection = 

alias mjfItemEnable = UnsafePointer[
# (placeholder) | | `-ParenType 0x73e480 'int (int, void *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x73e440 'int (int, void *)' cdecl
Int32Int32UnsafePointer[NoneType]
]

# predicate function: set enable/disable based on item category

struct mjuiState_:

	var nrect: Int32
	
	# number of rectangles used


	var rect: SIMD[mjrRect.dtype, 25]
	
	# rectangles (index 0: entire window)


	var userdata: UnsafePointer[NoneType]
	
	# pointer to user data (for callbacks)


	var type: Int32
	
	# (type mjtEvent)


	var left: Int32
	
	# is left button down


	var right: Int32
	
	# is right button down


	var middle: Int32
	
	# is middle button down


	var doubleclick: Int32
	
	# is last press a double click


	var button: Int32
	
	# which button was pressed (mjtButton)


	var buttontime: Float64
	
	# time of last button press


	var x: Float64
	
	# x position


	var y: Float64
	
	# y position


	var dx: Float64
	
	# x displacement


	var dy: Float64
	
	# y displacement


	var sx: Float64
	
	# x scroll


	var sy: Float64
	
	# y scroll


	var control: Int32
	
	# is control down


	var shift: Int32
	
	# is shift down


	var alt: Int32
	
	# is alt down


	var key: Int32
	
	# which key was pressed


	var keytime: Float64
	
	# time of last key press


	var mouserect: Int32
	
	# which rectangle contains mouse


	var dragrect: Int32
	
	# which rectangle is dragged with mouse


	var dragbutton: Int32
	
	# which button started drag (mjtButton)


	var dropcount: Int32
	
	# number of files dropped


	var droppaths: UnsafePointer[const char *]
	
	# paths to files dropped



alias mjuiState = mjuiState_
struct mjuiThemeSpacing_:

	var total: Int32
	
	# total width


	var scroll: Int32
	
	# scrollbar width


	var label: Int32
	
	# label width


	var section: Int32
	
	# section gap


	var cornersect: Int32
	
	# corner radius for section


	var cornersep: Int32
	
	# corner radius for separator


	var itemside: Int32
	
	# item side gap


	var itemmid: Int32
	
	# item middle gap


	var itemver: Int32
	
	# item vertical gap


	var texthor: Int32
	
	# text horizontal gap


	var textver: Int32
	
	# text vertical gap


	var linescroll: Int32
	
	# number of pixels to scroll


	var samples: Int32
	
	# number of multisamples



alias mjuiThemeSpacing = mjuiThemeSpacing_
struct mjuiThemeColor_:

	var master: SIMD[Float32.dtype, 3]
	
	# master background


	var thumb: SIMD[Float32.dtype, 3]
	
	# scrollbar thumb


	var secttitle: SIMD[Float32.dtype, 3]
	
	# section title


	var secttitle2: SIMD[Float32.dtype, 3]
	
	# section title: bottom color


	var secttitleuncheck: SIMD[Float32.dtype, 3]
	
	# section title with unchecked box


	var secttitleuncheck2: SIMD[Float32.dtype, 3]
	
	# section title with unchecked box: bottom color


	var secttitlecheck: SIMD[Float32.dtype, 3]
	
	# section title with checked box


	var secttitlecheck2: SIMD[Float32.dtype, 3]
	
	# section title with checked box: bottom color


	var sectfont: SIMD[Float32.dtype, 3]
	
	# section font


	var sectsymbol: SIMD[Float32.dtype, 3]
	
	# section symbol


	var sectpane: SIMD[Float32.dtype, 3]
	
	# section pane


	var separator: SIMD[Float32.dtype, 3]
	
	# separator title


	var separator2: SIMD[Float32.dtype, 3]
	
	# separator title: bottom color


	var shortcut: SIMD[Float32.dtype, 3]
	
	# shortcut background


	var fontactive: SIMD[Float32.dtype, 3]
	
	# font active


	var fontinactive: SIMD[Float32.dtype, 3]
	
	# font inactive


	var decorinactive: SIMD[Float32.dtype, 3]
	
	# decor inactive


	var decorinactive2: SIMD[Float32.dtype, 3]
	
	# inactive slider color 2


	var button: SIMD[Float32.dtype, 3]
	
	# button


	var check: SIMD[Float32.dtype, 3]
	
	# check


	var radio: SIMD[Float32.dtype, 3]
	
	# radio


	var select: SIMD[Float32.dtype, 3]
	
	# select


	var select2: SIMD[Float32.dtype, 3]
	
	# select pane


	var slider: SIMD[Float32.dtype, 3]
	
	# slider


	var slider2: SIMD[Float32.dtype, 3]
	
	# slider color 2


	var edit: SIMD[Float32.dtype, 3]
	
	# edit


	var edit2: SIMD[Float32.dtype, 3]
	
	# edit invalid


	var cursor: SIMD[Float32.dtype, 3]
	
	# edit cursor



alias mjuiThemeColor = mjuiThemeColor_
struct mjuiItemSingle_:

	var modifier: Int32
	
	# 0: none, 1: control, 2: shift; 4: alt


	var shortcut: Int32
	
	# shortcut key; 0: undefined


struct mjuiItemMulti_:

	var nelem: Int32
	
	# number of elements in group


	var name: SIMD[Int8.dtype, 35]
	
	# element names


struct mjuiItemSlider_:

	var range: SIMD[Float64.dtype, 2]
	
	# slider range


	var divisions: Float64
	
	# number of range divisions


struct mjuiItemEdit_:

	var nelem: Int32
	
	# number of elements in list


	var range: SIMD[Float64.dtype, 7]
	
	# element range (min>=max: ignore)


struct _mjuiItem__Anonymous__line_259_3__line_264_3_:

	var single: mjuiItemSingle_
	# Unhandled tokens: struct mjuiItemSingle_
	
	# check and button


	var multi: mjuiItemMulti_
	# Unhandled tokens: struct mjuiItemMulti_
	
	# static, radio and select


	var slider: mjuiItemSlider_
	# Unhandled tokens: struct mjuiItemSlider_
	
	# slider


	var edit: mjuiItemEdit_
	# Unhandled tokens: struct mjuiItemEdit_
	
	# edit



struct mjuiItem_:

	var type: Int32
	
	# type (mjtItem)


	var name: SIMD[Int8.dtype, 40]
	
	# name


	var state: Int32
	
	# 0: disable, 1: enable, 2+: use predicate


	var pdata: UnsafePointer[NoneType]
	
	# data pointer (type-specific)


	var sectionid: Int32
	
	# id of section containing item


	var itemid: Int32
	
	# id of item within section


	var userid: Int32
	
	# user-supplied id (for event handling)


	var implicit: _mjuiItem__Anonymous__line_259_3__line_264_3_
	

	var rect: mjrRect
	# Unhandled tokens: struct mjrRect_
	
	# rectangle occupied by item


	var skip: Int32
	
	# item skipped due to closed separator



alias mjuiItem = mjuiItem_
struct mjuiSection_:

	var name: SIMD[Int8.dtype, 40]
	
	# name


	var state: Int32
	
	# section state (mjtSection)


	var modifier: Int32
	
	# 0: none, 1: control, 2: shift; 4: alt


	var shortcut: Int32
	
	# shortcut key; 0: undefined


	var checkbox: Int32
	
	# 0: none, 1: unchecked, 2: checked


	var nitem: Int32
	
	# number of items in use


	var item: SIMD[mjuiItem.dtype, 200]
	
	# preallocated array of items


	var rtitle: mjrRect
	# Unhandled tokens: struct mjrRect_
	
	# rectangle occupied by title


	var rcontent: mjrRect
	# Unhandled tokens: struct mjrRect_
	
	# rectangle occupied by content


	var lastclick: Int32
	
	# last mouse click over this section



alias mjuiSection = mjuiSection_
struct mjUI_:

	var spacing: mjuiThemeSpacing
	# Unhandled tokens: struct mjuiThemeSpacing_
	
	# UI theme spacing


	var color: mjuiThemeColor
	# Unhandled tokens: struct mjuiThemeColor_
	
	# UI theme color


	var predicate: mjfItemEnable
	# Unhandled tokens: int (*)(int, void *)
	
	# callback to set item state programmatically


	var userdata: UnsafePointer[NoneType]
	
	# pointer to user data (passed to predicate)


	var rectid: Int32
	
	# index of this ui rectangle in mjuiState


	var auxid: Int32
	
	# aux buffer index of this ui


	var radiocol: Int32
	
	# number of radio columns (0 defaults to 2)


	var width: Int32
	
	# width


	var height: Int32
	
	# current height


	var maxheight: Int32
	
	# height when all sections open


	var scroll: Int32
	
	# scroll from top of UI


	var mousesect: Int32
	
	# 0: none, -1: scroll, otherwise 1+section


	var mouseitem: Int32
	
	# item within section


	var mousehelp: Int32
	
	# help button down: print shortcuts


	var mouseclicks: Int32
	
	# number of mouse clicks over UI


	var mousesectcheck: Int32
	
	# 0: none, otherwise 1+section


	var editsect: Int32
	
	# 0: none, otherwise 1+section


	var edititem: Int32
	
	# item within section


	var editcursor: Int32
	
	# cursor position


	var editscroll: Int32
	
	# horizontal scroll


	var edittext: SIMD[Int8.dtype, 300]
	
	# current text


	var editchanged: UnsafePointer[mjuiItem]
	
	# pointer to changed edit in last mjui_event


	var nsect: Int32
	
	# number of sections in use


	var sect: SIMD[mjuiSection.dtype, 10]
	
	# preallocated array of sections



alias mjUI = mjUI_
struct mjuiDef_:

	var type: Int32
	
	# type (mjtItem); -1: section


	var name: SIMD[Int8.dtype, 40]
	
	# name


	var state: Int32
	
	# state


	var pdata: UnsafePointer[NoneType]
	
	# pointer to data


	var other: SIMD[Int8.dtype, 300]
	
	# string with type-specific properties


	var otherint: Int32
	
	# int with type-specific properties



alias mjuiDef = mjuiDef_

alias mju_user_error = NoneType # extern
# (placeholder) | |-VisibilityAttr 0x74a268 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# user error and memory handlers


alias mju_user_warning = NoneType # extern
# (placeholder) | `-VisibilityAttr 0x74a400 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mju_user_malloc = NoneType # extern
# (placeholder) | `-VisibilityAttr 0x74a620 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mju_user_free = NoneType # extern
# (placeholder) | `-VisibilityAttr 0x74a848 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjcb_passive = mjfGeneric # extern
# (placeholder) | |-VisibilityAttr 0x74a988 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# callbacks extending computation pipeline


alias mjcb_control = mjfGeneric # extern
# (placeholder) | `-VisibilityAttr 0x74aa78 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjcb_contactfilter = mjfConFilt # extern
# (placeholder) | `-VisibilityAttr 0x74ab88 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjcb_sensor = mjfSensor # extern
# (placeholder) | `-VisibilityAttr 0x74ac98 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjcb_time = mjfTime # extern
# (placeholder) | `-VisibilityAttr 0x74ada8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjcb_act_dyn = mjfAct # extern
# (placeholder) | `-VisibilityAttr 0x74aeb8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjcb_act_gain = mjfAct # extern
# (placeholder) | `-VisibilityAttr 0x74afa8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjcb_act_bias = mjfAct # extern
# (placeholder) | `-VisibilityAttr 0x74b098 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjCOLLISIONFUNC = mjfCollision[9][9] # extern
# (placeholder) | |-VisibilityAttr 0x74f440 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# collision function table


alias mjDISABLESTRING = const # extern
# (placeholder) | |-VisibilityAttr 0x74f5f8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# string names


alias mjENABLESTRING = const # extern
# (placeholder) | `-VisibilityAttr 0x74f778 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjTIMERSTRING = const # extern
# (placeholder) | `-VisibilityAttr 0x74f8f8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjLABELSTRING = const # extern
# (placeholder) | `-VisibilityAttr 0x74fa40 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjFRAMESTRING = const # extern
# (placeholder) | `-VisibilityAttr 0x74fbc8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjVISSTRING = const # extern
# (placeholder) | `-VisibilityAttr 0x74fdd8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default


alias mjRNDSTRING = const # extern
# (placeholder) | `-VisibilityAttr 0x74ffa8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

alias mj_defaultVFS = fn(vfs: UnsafePointer[mjVFS]) -> NoneType
alias mj_addFileVFS = fn(vfs: UnsafePointer[mjVFS], read directory: UnsafePointer[Int8], read filename: UnsafePointer[Int8]) -> Int32
alias mj_addBufferVFS = fn(vfs: UnsafePointer[mjVFS], read name: UnsafePointer[Int8], read buffer: UnsafePointer[NoneType], nbuffer: Int32) -> Int32
alias mj_deleteFileVFS = fn(vfs: UnsafePointer[mjVFS], read filename: UnsafePointer[Int8]) -> Int32
alias mj_deleteVFS = fn(vfs: UnsafePointer[mjVFS]) -> NoneType
alias mj_loadXML = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> UnsafePointer[mjModel]
alias mj_parseXML = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> UnsafePointer[mjSpec]
alias mj_parseXMLString = fn(read xml: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> UnsafePointer[mjSpec]
alias mj_compile = fn(s: UnsafePointer[mjSpec], read vfs: UnsafePointer[mjVFS]) -> UnsafePointer[mjModel]
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
alias mj_saveModel = fn(read m: UnsafePointer[mjModel], read filename: UnsafePointer[Int8], buffer: UnsafePointer[NoneType], buffer_sz: Int32) -> NoneType
alias mj_loadModel = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS]) -> UnsafePointer[mjModel]
alias mj_deleteModel = fn(m: UnsafePointer[mjModel]) -> NoneType
alias mj_sizeModel = fn(read m: UnsafePointer[mjModel]) -> Int32
alias mj_makeData = fn(read m: UnsafePointer[mjModel]) -> UnsafePointer[mjData]
alias mj_copyData = fn(dest: UnsafePointer[mjData], read m: UnsafePointer[mjModel], read src: UnsafePointer[mjData]) -> UnsafePointer[mjData]
alias mj_resetData = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_resetDataDebug = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], debug_value: Int8) -> NoneType
alias mj_resetDataKeyframe = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], key: Int32) -> NoneType
alias mj_markStack = fn(d: UnsafePointer[mjData]) -> NoneType
alias mj_freeStack = fn(d: UnsafePointer[mjData]) -> NoneType
alias mj_stackAllocByte = fn(d: UnsafePointer[mjData], bytes: size_t, alignment: size_t) -> UnsafePointer[NoneType]
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
alias mj_stateSize = fn(read m: UnsafePointer[mjModel], spec: Int32) -> Int32
alias mj_getState = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], state: UnsafePointer[mjtNum], spec: Int32) -> NoneType
alias mj_setState = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read state: UnsafePointer[mjtNum], spec: Int32) -> NoneType
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
alias mj_name2id = fn(read m: UnsafePointer[mjModel], type: Int32, read name: UnsafePointer[Int8]) -> Int32
alias mj_id2name = fn(read m: UnsafePointer[mjModel], type: Int32, id: Int32) -> UnsafePointer[Int8]
alias mj_fullM = fn(read m: UnsafePointer[mjModel], dst: UnsafePointer[mjtNum], read M: UnsafePointer[mjtNum]) -> NoneType
alias mj_mulM = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mj_mulM2 = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mj_addM = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], dst: UnsafePointer[mjtNum], rownnz: UnsafePointer[Int32], rowadr: UnsafePointer[Int32], colind: UnsafePointer[Int32]) -> NoneType
alias mj_applyFT = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read force: UnsafePointer[mjtNum], read torque: UnsafePointer[mjtNum], read point: UnsafePointer[mjtNum], body: Int32, qfrc_target: UnsafePointer[mjtNum]) -> NoneType
alias mj_objectVelocity = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], objtype: Int32, objid: Int32, res: UnsafePointer[mjtNum], flg_local: Int32) -> NoneType
alias mj_objectAcceleration = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], objtype: Int32, objid: Int32, res: UnsafePointer[mjtNum], flg_local: Int32) -> NoneType
alias mj_geomDistance = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], geom1: Int32, geom2: Int32, distmax: mjtNum, fromto: UnsafePointer[mjtNum]) -> mjtNum
alias mj_contactForce = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], id: Int32, result: UnsafePointer[mjtNum]) -> NoneType
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
alias mjv_moveCameraFromState = fn(read scnstate: UnsafePointer[mjvSceneState], action: Int32, reldx: mjtNum, reldy: mjtNum, read scn: UnsafePointer[mjvScene], cam: UnsafePointer[mjvCamera]) -> NoneType
alias mjv_movePerturb = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], action: Int32, reldx: mjtNum, reldy: mjtNum, read scn: UnsafePointer[mjvScene], pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_movePerturbFromState = fn(read scnstate: UnsafePointer[mjvSceneState], action: Int32, reldx: mjtNum, reldy: mjtNum, read scn: UnsafePointer[mjvScene], pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_moveModel = fn(read m: UnsafePointer[mjModel], action: Int32, reldx: mjtNum, reldy: mjtNum, read roomup: UnsafePointer[mjtNum], scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_initPerturb = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read scn: UnsafePointer[mjvScene], pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_applyPerturbPose = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read pert: UnsafePointer[mjvPerturb], flg_paused: Int32) -> NoneType
alias mjv_applyPerturbForce = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_averageCamera = fn(read cam1: UnsafePointer[mjvGLCamera], read cam2: UnsafePointer[mjvGLCamera]) -> mjvGLCamera
alias mjv_select = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read vopt: UnsafePointer[mjvOption], aspectratio: mjtNum, relx: mjtNum, rely: mjtNum, read scn: UnsafePointer[mjvScene], selpnt: UnsafePointer[mjtNum], geomid: UnsafePointer[Int32], flexid: UnsafePointer[Int32], skinid: UnsafePointer[Int32]) -> Int32
alias mjv_defaultOption = fn(opt: UnsafePointer[mjvOption]) -> NoneType
alias mjv_defaultFigure = fn(fig: UnsafePointer[mjvFigure]) -> NoneType
alias mjv_initGeom = fn(geom: UnsafePointer[mjvGeom], type: Int32, read size: UnsafePointer[mjtNum], read pos: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read rgba: UnsafePointer[Float32]) -> NoneType
alias mjv_connector = fn(geom: UnsafePointer[mjvGeom], type: Int32, width: mjtNum, read from: UnsafePointer[mjtNum], read to: UnsafePointer[mjtNum]) -> NoneType
alias mjv_defaultScene = fn(scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_makeScene = fn(read m: UnsafePointer[mjModel], scn: UnsafePointer[mjvScene], maxgeom: Int32) -> NoneType
alias mjv_freeScene = fn(scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_updateScene = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read opt: UnsafePointer[mjvOption], read pert: UnsafePointer[mjvPerturb], cam: UnsafePointer[mjvCamera], catmask: Int32, scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_updateSceneFromState = fn(read scnstate: UnsafePointer[mjvSceneState], read opt: UnsafePointer[mjvOption], read pert: UnsafePointer[mjvPerturb], cam: UnsafePointer[mjvCamera], catmask: Int32, scn: UnsafePointer[mjvScene]) -> Int32
alias mjv_copyModel = fn(dest: UnsafePointer[mjModel], read src: UnsafePointer[mjModel]) -> NoneType
alias mjv_defaultSceneState = fn(scnstate: UnsafePointer[mjvSceneState]) -> NoneType
alias mjv_makeSceneState = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], scnstate: UnsafePointer[mjvSceneState], maxgeom: Int32) -> NoneType
alias mjv_freeSceneState = fn(scnstate: UnsafePointer[mjvSceneState]) -> NoneType
alias mjv_updateSceneState = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read opt: UnsafePointer[mjvOption], scnstate: UnsafePointer[mjvSceneState]) -> NoneType
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
alias mjr_readPixels = fn(rgb: UnsafePointer[Int8], depth: UnsafePointer[Float32], viewport: mjrRect, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_drawPixels = fn(read rgb: UnsafePointer[Int8], read depth: UnsafePointer[Float32], viewport: mjrRect, read con: UnsafePointer[mjrContext]) -> NoneType
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
alias mjui_add = fn(ui: UnsafePointer[mjUI], read def: UnsafePointer[mjuiDef]) -> NoneType
alias mjui_addToSection = fn(ui: UnsafePointer[mjUI], sect: Int32, read def: UnsafePointer[mjuiDef]) -> NoneType
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
alias mju_malloc = fn(size: size_t) -> UnsafePointer[NoneType]
alias mju_free = fn(ptr: UnsafePointer[NoneType]) -> NoneType
alias mj_warning = fn(d: UnsafePointer[mjData], warning: Int32, info: Int32) -> NoneType
alias mju_writeLog = fn(read type: UnsafePointer[Int8], read msg: UnsafePointer[Int8]) -> NoneType
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
alias mju_muscleGain = fn(len: mjtNum, vel: mjtNum, read lengthrange: UnsafePointer[mjtNum], acc0: mjtNum, read prm: UnsafePointer[mjtNum]) -> mjtNum
alias mju_muscleBias = fn(len: mjtNum, read lengthrange: UnsafePointer[mjtNum], acc0: mjtNum, read prm: UnsafePointer[mjtNum]) -> mjtNum
alias mju_muscleDynamics = fn(ctrl: mjtNum, act: mjtNum, read prm: UnsafePointer[mjtNum]) -> mjtNum
alias mju_encodePyramid = fn(pyramid: UnsafePointer[mjtNum], read force: UnsafePointer[mjtNum], read mu: UnsafePointer[mjtNum], dim: Int32) -> NoneType
alias mju_decodePyramid = fn(force: UnsafePointer[mjtNum], read pyramid: UnsafePointer[mjtNum], read mu: UnsafePointer[mjtNum], dim: Int32) -> NoneType
alias mju_springDamper = fn(pos0: mjtNum, vel0: mjtNum, Kp: mjtNum, Kv: mjtNum, dt: mjtNum) -> mjtNum
alias mju_min = fn(a: mjtNum, b: mjtNum) -> mjtNum
alias mju_max = fn(a: mjtNum, b: mjtNum) -> mjtNum
alias mju_clip = fn(x: mjtNum, min: mjtNum, max: mjtNum) -> mjtNum
alias mju_sign = fn(x: mjtNum) -> mjtNum
alias mju_round = fn(x: mjtNum) -> Int32
alias mju_type2Str = fn(type: Int32) -> UnsafePointer[Int8]
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
alias mju_bindThreadPool = fn(d: UnsafePointer[mjData], thread_pool: UnsafePointer[NoneType]) -> NoneType
alias mju_threadPoolEnqueue = fn(thread_pool: UnsafePointer[mjThreadPool], task: UnsafePointer[mjTask]) -> NoneType
alias mju_threadPoolDestroy = fn(thread_pool: UnsafePointer[mjThreadPool]) -> NoneType
alias mju_defaultTask = fn(task: UnsafePointer[mjTask]) -> NoneType
alias mju_taskJoin = fn(task: UnsafePointer[mjTask]) -> NoneType
alias mjs_attach = fn(parent: UnsafePointer[mjsElement], read child: UnsafePointer[mjsElement], read prefix: UnsafePointer[Int8], read suffix: UnsafePointer[Int8]) -> UnsafePointer[mjsElement]
alias mjs_detachBody = fn(s: UnsafePointer[mjSpec], b: UnsafePointer[mjsBody]) -> Int32
alias mjs_detachDefault = fn(s: UnsafePointer[mjSpec], d: UnsafePointer[mjsDefault]) -> Int32
alias mjs_addBody = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsBody]
alias mjs_addSite = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsSite]
alias mjs_addJoint = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsJoint]
alias mjs_addFreeJoint = fn(body: UnsafePointer[mjsBody]) -> UnsafePointer[mjsJoint]
alias mjs_addGeom = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsGeom]
alias mjs_addCamera = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsCamera]
alias mjs_addLight = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsLight]
alias mjs_addFrame = fn(body: UnsafePointer[mjsBody], parentframe: UnsafePointer[mjsFrame]) -> UnsafePointer[mjsFrame]
alias mjs_delete = fn(element: UnsafePointer[mjsElement]) -> Int32
alias mjs_addActuator = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsActuator]
alias mjs_addSensor = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsSensor]
alias mjs_addFlex = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsFlex]
alias mjs_addPair = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsPair]
alias mjs_addExclude = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsExclude]
alias mjs_addEquality = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsEquality]
alias mjs_addTendon = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsTendon]
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
alias mjs_addMesh = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsMesh]
alias mjs_addHField = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsHField]
alias mjs_addSkin = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsSkin]
alias mjs_addTexture = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsTexture]
alias mjs_addMaterial = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsMaterial]
alias mjs_getSpec = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjSpec]
alias mjs_findSpec = fn(spec: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> UnsafePointer[mjSpec]
alias mjs_findBody = fn(s: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> UnsafePointer[mjsBody]
alias mjs_findElement = fn(s: UnsafePointer[mjSpec], type: mjtObj, read name: UnsafePointer[Int8]) -> UnsafePointer[mjsElement]
alias mjs_findChild = fn(body: UnsafePointer[mjsBody], read name: UnsafePointer[Int8]) -> UnsafePointer[mjsBody]
alias mjs_getParent = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsBody]
alias mjs_getFrame = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsFrame]
alias mjs_findFrame = fn(s: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> UnsafePointer[mjsFrame]
alias mjs_getDefault = fn(element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsDefault]
alias mjs_findDefault = fn(s: UnsafePointer[mjSpec], read classname: UnsafePointer[Int8]) -> UnsafePointer[mjsDefault]
alias mjs_getSpecDefault = fn(s: UnsafePointer[mjSpec]) -> UnsafePointer[mjsDefault]
alias mjs_getId = fn(element: UnsafePointer[mjsElement]) -> Int32
alias mjs_firstChild = fn(body: UnsafePointer[mjsBody], type: mjtObj, recurse: Int32) -> UnsafePointer[mjsElement]
alias mjs_nextChild = fn(body: UnsafePointer[mjsBody], child: UnsafePointer[mjsElement], recurse: Int32) -> UnsafePointer[mjsElement]
alias mjs_firstElement = fn(s: UnsafePointer[mjSpec], type: mjtObj) -> UnsafePointer[mjsElement]
alias mjs_nextElement = fn(s: UnsafePointer[mjSpec], element: UnsafePointer[mjsElement]) -> UnsafePointer[mjsElement]
alias mjs_setBuffer = fn(dest: UnsafePointer[mjByteVec], read array: UnsafePointer[NoneType], size: Int32) -> NoneType
alias mjs_setString = fn(dest: UnsafePointer[mjString], read text: UnsafePointer[Int8]) -> NoneType
alias mjs_setStringVec = fn(dest: UnsafePointer[mjStringVec], read text: UnsafePointer[Int8]) -> NoneType
alias mjs_setInStringVec = fn(dest: UnsafePointer[mjStringVec], i: Int32, read text: UnsafePointer[Int8]) -> mjtByte
alias mjs_appendString = fn(dest: UnsafePointer[mjStringVec], read text: UnsafePointer[Int8]) -> NoneType
alias mjs_setInt = fn(dest: UnsafePointer[mjIntVec], read array: UnsafePointer[Int32], size: Int32) -> NoneType
alias mjs_appendIntVec = fn(dest: UnsafePointer[mjIntVecVec], read array: UnsafePointer[Int32], size: Int32) -> NoneType
alias mjs_setFloat = fn(dest: UnsafePointer[mjFloatVec], read array: UnsafePointer[Float32], size: Int32) -> NoneType
alias mjs_appendFloatVec = fn(dest: UnsafePointer[mjFloatVecVec], read array: UnsafePointer[Float32], size: Int32) -> NoneType
alias mjs_setDouble = fn(dest: UnsafePointer[mjDoubleVec], read array: UnsafePointer[Float64], size: Int32) -> NoneType
alias mjs_setPluginAttributes = fn(plugin: UnsafePointer[mjsPlugin], attributes: UnsafePointer[NoneType]) -> NoneType
alias mjs_getString = fn(read source: UnsafePointer[mjString]) -> UnsafePointer[Int8]
alias mjs_getDouble = fn(read source: UnsafePointer[mjDoubleVec], size: UnsafePointer[Int32]) -> UnsafePointer[Float64]
alias mjs_setDefault = fn(element: UnsafePointer[mjsElement], read def: UnsafePointer[mjsDefault]) -> NoneType
alias mjs_setFrame = fn(dest: UnsafePointer[mjsElement], frame: UnsafePointer[mjsFrame]) -> Int32
alias mjs_resolveOrientation = fn(quat: UnsafePointer[Float64], degree: mjtByte, read sequence: UnsafePointer[Int8], read orientation: UnsafePointer[mjsOrientation]) -> UnsafePointer[Int8]
alias mjs_bodyToFrame = fn(body: UnsafePointer[UnsafePointer[mjsBody]]) -> UnsafePointer[mjsFrame]
alias mjs_setUserValue = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8], read data: UnsafePointer[NoneType]) -> NoneType
alias mjs_getUserValue = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8]) -> UnsafePointer[NoneType]
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

