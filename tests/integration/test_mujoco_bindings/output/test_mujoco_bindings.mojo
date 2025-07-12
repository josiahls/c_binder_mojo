from sys.ffi import _Global
from sys import ffi, alignof, simdwidthof


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
	var tv_usec: __suseconds_t

struct timespec:
	var tv_sec: __time_t
	var tv_nsec: __syscall_slong_t


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
	var __g1_start: __atomic_wide_counter
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

# Disabled since this is already declared
# alias pthread_attr_t = pthread_attr_t
struct Anonymous__line_67_9__line_72_1_:
	var __data: __pthread_mutex_s
	var __size: SIMD[Int8.dtype, 40]
	var __align: Int64


alias pthread_mutex_t = Anonymous__line_67_9__line_72_1_
struct Anonymous__line_75_9__line_80_1_:
	var __data: __pthread_cond_s
	var __size: SIMD[Int8.dtype, 48]
	var __align: Int128


alias pthread_cond_t = Anonymous__line_75_9__line_80_1_
struct Anonymous__line_86_9__line_91_1_:
	var __data: __pthread_rwlock_arch_t
	var __size: SIMD[Int8.dtype, 56]
	var __align: Int64


alias pthread_rwlock_t = Anonymous__line_86_9__line_91_1_
struct Anonymous__line_93_9__line_97_1_:
	var __size: SIMD[Int8.dtype, 8]
	var __align: Int64


alias pthread_rwlockattr_t = Anonymous__line_93_9__line_97_1_

alias pthread_spinlock_t = Int32
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
 # Disabled either due to a redefinition or a previous declaration: alias malloc = fn(Int64) -> OpaquePointer
alias malloc = fn(__size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias calloc = fn(Int64, Int64) -> OpaquePointer
alias calloc = fn(__nmemb: size_t, __size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias realloc = fn(UnsafePointer[NoneType], Int64) -> OpaquePointer
alias realloc = fn(__ptr: UnsafePointer[NoneType], __size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias free = fn(UnsafePointer[NoneType]) -> NoneType
alias free = fn(__ptr: UnsafePointer[NoneType]) -> NoneType
alias reallocarray = fn(__ptr: UnsafePointer[NoneType], __nmemb: size_t, __size: size_t) -> OpaquePointer
alias reallocarray = fn(__ptr: UnsafePointer[NoneType], __nmemb: size_t, __size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias alloca = fn(Int64) -> OpaquePointer
alias alloca = fn(__size: size_t) -> OpaquePointer
alias valloc = fn(__size: size_t) -> OpaquePointer
alias posix_memalign = fn(__memptr: UnsafePointer[UnsafePointer[NoneType]], __alignment: size_t, __size: size_t) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias aligned_alloc = fn(Int64, Int64) -> OpaquePointer
alias aligned_alloc = fn(__alignment: size_t, __size: size_t) -> OpaquePointer
 # Disabled either due to a redefinition or a previous declaration: alias abort = fn() -> NoneType
alias abort = fn() -> NoneType
alias atexit = fn(__func: fn() -> NoneType) -> Int32
alias at_quick_exit = fn(__func: fn() -> NoneType) -> Int32
alias on_exit = fn(__func: fn(Int32, UnsafePointer[NoneType]) -> NoneType, __arg: UnsafePointer[NoneType]) -> Int32
 # Disabled either due to a redefinition or a previous declaration: alias exit = fn(Int32) -> NoneType
alias exit = fn(__status: Int32) -> NoneType
alias quick_exit = fn(__status: Int32) -> NoneType
 # Disabled either due to a redefinition or a previous declaration: alias _Exit = fn(Int32) -> NoneType
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

alias __compar_fn_t = fn(UnsafePointer[NoneType],UnsafePointer[NoneType]) -> Int32
alias bsearch = fn(read __key: UnsafePointer[NoneType], read __base: UnsafePointer[NoneType], __nmemb: size_t, __size: size_t, __compar: __compar_fn_t) -> OpaquePointer
alias qsort = fn(__base: UnsafePointer[NoneType], __nmemb: size_t, __size: size_t, __compar: __compar_fn_t) -> NoneType
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
alias getsubopt = fn(__optionp: UnsafePointer[UnsafePointer[Int8]], read __tokens: UnsafePointer[Int8], __valuep: UnsafePointer[UnsafePointer[Int8]]) -> Int32
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
struct Anonymous___usr_lib_llvm_14_lib_clang_14_0_0_include___stddef_max_align_t_h_19_9__line_24_1_:
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

struct mjtDisableBit_: # Enum

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

struct mjtEnableBit_: # Enum
	alias mjENBL_OVERRIDE: Int = 1
	alias mjENBL_ENERGY: Int = 2
	alias mjENBL_FWDINV: Int = 4
	alias mjENBL_INVDISCRETE: Int = 8
	alias mjENBL_MULTICCD: Int = 16
	alias mjENBL_ISLAND: Int = 32
	alias mjNENABLE: Int = 6


alias mjtEnableBit = mjtEnableBit_
struct mjtJoint_: # Enum
	alias mjJNT_FREE: Int = 0
	alias mjJNT_BALL: Int = 1
	alias mjJNT_SLIDE: Int = 2
	alias mjJNT_HINGE: Int = 3


alias mjtJoint = mjtJoint_
struct mjtGeom_: # Enum
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
struct mjtCamLight_: # Enum
	alias mjCAMLIGHT_FIXED: Int = 0
	alias mjCAMLIGHT_TRACK: Int = 1
	alias mjCAMLIGHT_TRACKCOM: Int = 2
	alias mjCAMLIGHT_TARGETBODY: Int = 3
	alias mjCAMLIGHT_TARGETBODYCOM: Int = 4


alias mjtCamLight = mjtCamLight_
struct mjtTexture_: # Enum
	alias mjTEXTURE_2D: Int = 0
	alias mjTEXTURE_CUBE: Int = 1
	alias mjTEXTURE_SKYBOX: Int = 2


alias mjtTexture = mjtTexture_
struct mjtTextureRole_: # Enum
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
struct mjtIntegrator_: # Enum
	alias mjINT_EULER: Int = 0
	alias mjINT_RK4: Int = 1
	alias mjINT_IMPLICIT: Int = 2
	alias mjINT_IMPLICITFAST: Int = 3


alias mjtIntegrator = mjtIntegrator_
struct mjtCone_: # Enum
	alias mjCONE_PYRAMIDAL: Int = 0
	alias mjCONE_ELLIPTIC: Int = 1


alias mjtCone = mjtCone_
struct mjtJacobian_: # Enum
	alias mjJAC_DENSE: Int = 0
	alias mjJAC_SPARSE: Int = 1
	alias mjJAC_AUTO: Int = 2


alias mjtJacobian = mjtJacobian_
struct mjtSolver_: # Enum
	alias mjSOL_PGS: Int = 0
	alias mjSOL_CG: Int = 1
	alias mjSOL_NEWTON: Int = 2


alias mjtSolver = mjtSolver_
struct mjtEq_: # Enum
	alias mjEQ_CONNECT: Int = 0
	alias mjEQ_WELD: Int = 1
	alias mjEQ_JOINT: Int = 2
	alias mjEQ_TENDON: Int = 3
	alias mjEQ_FLEX: Int = 4
	alias mjEQ_DISTANCE: Int = 5


alias mjtEq = mjtEq_
struct mjtWrap_: # Enum
	alias mjWRAP_NONE: Int = 0
	alias mjWRAP_JOINT: Int = 1
	alias mjWRAP_PULLEY: Int = 2
	alias mjWRAP_SITE: Int = 3
	alias mjWRAP_SPHERE: Int = 4
	alias mjWRAP_CYLINDER: Int = 5


alias mjtWrap = mjtWrap_
struct mjtTrn_: # Enum
	alias mjTRN_JOINT: Int = 0
	alias mjTRN_JOINTINPARENT: Int = 1
	alias mjTRN_SLIDERCRANK: Int = 2
	alias mjTRN_TENDON: Int = 3
	alias mjTRN_SITE: Int = 4
	alias mjTRN_BODY: Int = 5
	alias mjTRN_UNDEFINED: Int = 1000


alias mjtTrn = mjtTrn_
struct mjtDyn_: # Enum
	alias mjDYN_NONE: Int = 0
	alias mjDYN_INTEGRATOR: Int = 1
	alias mjDYN_FILTER: Int = 2
	alias mjDYN_FILTEREXACT: Int = 3
	alias mjDYN_MUSCLE: Int = 4
	alias mjDYN_USER: Int = 5


alias mjtDyn = mjtDyn_
struct mjtGain_: # Enum
	alias mjGAIN_FIXED: Int = 0
	alias mjGAIN_AFFINE: Int = 1
	alias mjGAIN_MUSCLE: Int = 2
	alias mjGAIN_USER: Int = 3


alias mjtGain = mjtGain_
struct mjtBias_: # Enum
	alias mjBIAS_NONE: Int = 0
	alias mjBIAS_AFFINE: Int = 1
	alias mjBIAS_MUSCLE: Int = 2
	alias mjBIAS_USER: Int = 3


alias mjtBias = mjtBias_
struct mjtObj_: # Enum
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
struct mjtConstraint_: # Enum
	alias mjCNSTR_EQUALITY: Int = 0
	alias mjCNSTR_FRICTION_DOF: Int = 1
	alias mjCNSTR_FRICTION_TENDON: Int = 2
	alias mjCNSTR_LIMIT_JOINT: Int = 3
	alias mjCNSTR_LIMIT_TENDON: Int = 4
	alias mjCNSTR_CONTACT_FRICTIONLESS: Int = 5
	alias mjCNSTR_CONTACT_PYRAMIDAL: Int = 6
	alias mjCNSTR_CONTACT_ELLIPTIC: Int = 7


alias mjtConstraint = mjtConstraint_
struct mjtConstraintState_: # Enum
	alias mjCNSTRSTATE_SATISFIED: Int = 0
	alias mjCNSTRSTATE_QUADRATIC: Int = 1
	alias mjCNSTRSTATE_LINEARNEG: Int = 2
	alias mjCNSTRSTATE_LINEARPOS: Int = 3
	alias mjCNSTRSTATE_CONE: Int = 4


alias mjtConstraintState = mjtConstraintState_
struct mjtSensor_: # Enum
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
	alias mjSENS_BALLQUAT: Int = 17
	alias mjSENS_BALLANGVEL: Int = 18
	alias mjSENS_JOINTLIMITPOS: Int = 19
	alias mjSENS_JOINTLIMITVEL: Int = 20
	alias mjSENS_JOINTLIMITFRC: Int = 21
	alias mjSENS_TENDONLIMITPOS: Int = 22
	alias mjSENS_TENDONLIMITVEL: Int = 23
	alias mjSENS_TENDONLIMITFRC: Int = 24
	alias mjSENS_FRAMEPOS: Int = 25
	alias mjSENS_FRAMEQUAT: Int = 26
	alias mjSENS_FRAMEXAXIS: Int = 27
	alias mjSENS_FRAMEYAXIS: Int = 28
	alias mjSENS_FRAMEZAXIS: Int = 29
	alias mjSENS_FRAMELINVEL: Int = 30
	alias mjSENS_FRAMEANGVEL: Int = 31
	alias mjSENS_FRAMELINACC: Int = 32
	alias mjSENS_FRAMEANGACC: Int = 33
	alias mjSENS_SUBTREECOM: Int = 34
	alias mjSENS_SUBTREELINVEL: Int = 35
	alias mjSENS_SUBTREEANGMOM: Int = 36
	alias mjSENS_GEOMDIST: Int = 37
	alias mjSENS_GEOMNORMAL: Int = 38
	alias mjSENS_GEOMFROMTO: Int = 39
	alias mjSENS_E_POTENTIAL: Int = 40
	alias mjSENS_E_KINETIC: Int = 41
	alias mjSENS_CLOCK: Int = 42
	alias mjSENS_PLUGIN: Int = 43
	alias mjSENS_USER: Int = 44


alias mjtSensor = mjtSensor_
struct mjtStage_: # Enum
	alias mjSTAGE_NONE: Int = 0
	alias mjSTAGE_POS: Int = 1
	alias mjSTAGE_VEL: Int = 2
	alias mjSTAGE_ACC: Int = 3


alias mjtStage = mjtStage_
struct mjtDataType_: # Enum
	alias mjDATATYPE_REAL: Int = 0
	alias mjDATATYPE_POSITIVE: Int = 1
	alias mjDATATYPE_AXIS: Int = 2
	alias mjDATATYPE_QUATERNION: Int = 3


alias mjtDataType = mjtDataType_
struct mjtSameFrame_: # Enum
	alias mjSAMEFRAME_NONE: Int = 0
	alias mjSAMEFRAME_BODY: Int = 1
	alias mjSAMEFRAME_INERTIA: Int = 2
	alias mjSAMEFRAME_BODYROT: Int = 3
	alias mjSAMEFRAME_INERTIAROT: Int = 4


alias mjtSameFrame = mjtSameFrame_
struct mjtLRMode_: # Enum
	alias mjLRMODE_NONE: Int = 0
	alias mjLRMODE_MUSCLE: Int = 1
	alias mjLRMODE_MUSCLEUSER: Int = 2
	alias mjLRMODE_ALL: Int = 3


alias mjtLRMode = mjtLRMode_
struct mjtFlexSelf_: # Enum
	alias mjFLEXSELF_NONE: Int = 0
	alias mjFLEXSELF_NARROW: Int = 1
	alias mjFLEXSELF_BVH: Int = 2
	alias mjFLEXSELF_SAP: Int = 3
	alias mjFLEXSELF_AUTO: Int = 4


alias mjtFlexSelf = mjtFlexSelf_
struct mjLROpt_:
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
struct mjVFS_:
	var impl_: UnsafePointer[NoneType]


alias mjVFS = mjVFS_
struct mjOption_:
	var timestep: mjtNum
	var apirate: mjtNum
	var impratio: mjtNum
	var tolerance: mjtNum
	var ls_tolerance: mjtNum
	var noslip_tolerance: mjtNum
	var ccd_tolerance: mjtNum
	var gravity: SIMD[mjtNum.dtype, 3]
	var wind: SIMD[mjtNum.dtype, 3]
	var magnetic: SIMD[mjtNum.dtype, 3]
	var density: mjtNum
	var viscosity: mjtNum
	var o_margin: mjtNum
	var o_solref: SIMD[mjtNum.dtype, 2]
	var o_solimp: SIMD[mjtNum.dtype, 5]
	var o_friction: SIMD[mjtNum.dtype, 5]
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
struct _mjVisual__Anonymous__line_552_3__line_578_3_:
	var fog: SIMD[Float32.dtype, 4]
	var haze: SIMD[Float32.dtype, 4]
	var force: SIMD[Float32.dtype, 4]
	var inertia: SIMD[Float32.dtype, 4]
	var joint: SIMD[Float32.dtype, 4]
	var actuator: SIMD[Float32.dtype, 4]
	var actuatornegative: SIMD[Float32.dtype, 4]
	var actuatorpositive: SIMD[Float32.dtype, 4]
	var com: SIMD[Float32.dtype, 4]
	var camera: SIMD[Float32.dtype, 4]
	var light: SIMD[Float32.dtype, 4]
	var selectpoint: SIMD[Float32.dtype, 4]
	var connect: SIMD[Float32.dtype, 4]
	var contactpoint: SIMD[Float32.dtype, 4]
	var contactforce: SIMD[Float32.dtype, 4]
	var contactfriction: SIMD[Float32.dtype, 4]
	var contacttorque: SIMD[Float32.dtype, 4]
	var contactgap: SIMD[Float32.dtype, 4]
	var rangefinder: SIMD[Float32.dtype, 4]
	var constraint: SIMD[Float32.dtype, 4]
	var slidercrank: SIMD[Float32.dtype, 4]
	var crankbroken: SIMD[Float32.dtype, 4]
	var frustum: SIMD[Float32.dtype, 4]
	var bv: SIMD[Float32.dtype, 4]
	var bvactive: SIMD[Float32.dtype, 4]


struct _mjVisual__Anonymous__line_532_3__line_550_3_:
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


struct _mjVisual__Anonymous__line_516_3__line_530_3_:
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


struct _mjVisual__Anonymous__line_509_3__line_514_3_:
	var ambient: SIMD[Float32.dtype, 3]
	var diffuse: SIMD[Float32.dtype, 3]
	var specular: SIMD[Float32.dtype, 3]
	var active: Int32


struct _mjVisual__Anonymous__line_501_3__line_507_3_:
	var shadowsize: Int32
	var offsamples: Int32
	var numslices: Int32
	var numstacks: Int32
	var numquads: Int32


struct _mjVisual__Anonymous__line_486_3__line_499_3_:
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


struct mjVisual_:
	var `global`: _mjVisual__Anonymous__line_486_3__line_499_3_
	var quality: _mjVisual__Anonymous__line_501_3__line_507_3_
	var headlight: _mjVisual__Anonymous__line_509_3__line_514_3_
	var map: _mjVisual__Anonymous__line_516_3__line_530_3_
	var scale: _mjVisual__Anonymous__line_532_3__line_550_3_
	var rgba: _mjVisual__Anonymous__line_552_3__line_578_3_


alias mjVisual = mjVisual_
struct mjStatistic_:
	var meaninertia: mjtNum
	var meanmass: mjtNum
	var meansize: mjtNum
	var extent: mjtNum
	var center: SIMD[mjtNum.dtype, 3]


alias mjStatistic = mjStatistic_
struct mjModel_:
	var nq: Int32
	var nv: Int32
	var nu: Int32
	var na: Int32
	var nbody: Int32
	var nbvh: Int32
	var nbvhstatic: Int32
	var nbvhdynamic: Int32
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
	var buffer: UnsafePointer[NoneType]
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
	var light_directional: UnsafePointer[mjtByte]
	var light_castshadow: UnsafePointer[mjtByte]
	var light_bulbradius: UnsafePointer[Float32]
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
	var tendon_width: UnsafePointer[mjtNum]
	var tendon_solref_lim: UnsafePointer[mjtNum]
	var tendon_solimp_lim: UnsafePointer[mjtNum]
	var tendon_solref_fri: UnsafePointer[mjtNum]
	var tendon_solimp_fri: UnsafePointer[mjtNum]
	var tendon_range: UnsafePointer[mjtNum]
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
	var signature: uint64_t


alias mjModel = mjModel_
struct mjtTaskStatus_: # Enum
	alias mjTASK_NEW: Int = 0
	alias mjTASK_QUEUED: Int = 1
	alias mjTASK_COMPLETED: Int = 2


alias mjtTaskStatus = mjtTaskStatus_

alias mjfTask = fn(UnsafePointer[NoneType]) -> UnsafePointer[NoneType]
# function pointer type for mjTask

struct mjThreadPool_:
	var nworker: Int32


alias mjThreadPool = mjThreadPool_
struct mjTask_:
	var func: mjfTask
	var args: UnsafePointer[NoneType]
	var status: Int32


alias mjTask = mjTask_
struct mjtState_: # Enum

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

struct mjtWarning_: # Enum
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
struct mjtTimer_: # Enum
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
struct mjContact_:
	var dist: mjtNum
	var pos: SIMD[mjtNum.dtype, 3]
	var frame: SIMD[mjtNum.dtype, 9]
	var includemargin: mjtNum
	var friction: SIMD[mjtNum.dtype, 5]
	var solref: SIMD[mjtNum.dtype, 2]
	var solreffriction: SIMD[mjtNum.dtype, 2]
	var solimp: SIMD[mjtNum.dtype, 5]
	var mu: mjtNum
	var H: SIMD[mjtNum.dtype, 36]
	var dim: Int32
	var geom1: Int32
	var geom2: Int32
	var geom: SIMD[Int32.dtype, 2]
	var flex: SIMD[Int32.dtype, 2]
	var elem: SIMD[Int32.dtype, 2]
	var vert: SIMD[Int32.dtype, 2]
	var exclude: Int32
	var efc_address: Int32


alias mjContact = mjContact_
struct mjWarningStat_:
	var lastinfo: Int32
	var number: Int32


alias mjWarningStat = mjWarningStat_
struct mjTimerStat_:
	var duration: mjtNum
	var number: Int32


alias mjTimerStat = mjTimerStat_
struct mjSolverStat_:
	var improvement: mjtNum
	var gradient: mjtNum
	var lineslope: mjtNum
	var nactive: Int32
	var nchange: Int32
	var neval: Int32
	var nupdate: Int32


alias mjSolverStat = mjSolverStat_
struct mjData_:
	var narena: size_t
	var nbuffer: size_t
	var nplugin: Int32
	var pstack: size_t
	var pbase: size_t
	var parena: size_t
	var maxuse_stack: size_t
	var maxuse_threadstack: SIMD[size_t.dtype, 128]
	var maxuse_arena: size_t
	var maxuse_con: Int32
	var maxuse_efc: Int32
	var solver: SIMD[mjSolverStat.dtype, 4000]
	var solver_nisland: Int32
	var solver_niter: SIMD[Int32.dtype, 20]
	var solver_nnz: SIMD[Int32.dtype, 20]
	var solver_fwdinv: SIMD[mjtNum.dtype, 2]
	var warning: SIMD[mjWarningStat.dtype, 8]
	var timer: SIMD[mjTimerStat.dtype, 15]
	var ncon: Int32
	var ne: Int32
	var nf: Int32
	var nl: Int32
	var nefc: Int32
	var nJ: Int32
	var nA: Int32
	var nisland: Int32
	var time: mjtNum
	var energy: SIMD[mjtNum.dtype, 2]
	var buffer: UnsafePointer[NoneType]
	var arena: UnsafePointer[NoneType]
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
	var C_rownnz: UnsafePointer[Int32]
	var C_rowadr: UnsafePointer[Int32]
	var C_colind: UnsafePointer[Int32]
	var mapM2C: UnsafePointer[Int32]
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
	var island_dofnum: UnsafePointer[Int32]
	var island_dofadr: UnsafePointer[Int32]
	var island_dofind: UnsafePointer[Int32]
	var dof_islandind: UnsafePointer[Int32]
	var efc_island: UnsafePointer[Int32]
	var island_efcnum: UnsafePointer[Int32]
	var island_efcadr: UnsafePointer[Int32]
	var island_efcind: UnsafePointer[Int32]
	var efc_AR_rownnz: UnsafePointer[Int32]
	var efc_AR_rowadr: UnsafePointer[Int32]
	var efc_AR_colind: UnsafePointer[Int32]
	var efc_AR: UnsafePointer[mjtNum]
	var efc_vel: UnsafePointer[mjtNum]
	var efc_aref: UnsafePointer[mjtNum]
	var efc_b: UnsafePointer[mjtNum]
	var efc_force: UnsafePointer[mjtNum]
	var efc_state: UnsafePointer[Int32]
	var threadpool: uintptr_t
	var signature: uint64_t


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

struct mjtCatBit_: # Enum

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjCAT_STATIC: Int = 1
	alias mjCAT_DYNAMIC: Int = 2
	alias mjCAT_DECOR: Int = 4
	alias mjCAT_ALL: Int = 7


alias mjtCatBit = mjtCatBit_
#---------------------------------- primitive types (mjt) -----------------------------------------

struct mjtMouse_: # Enum
	alias mjMOUSE_NONE: Int = 0
	alias mjMOUSE_ROTATE_V: Int = 1
	alias mjMOUSE_ROTATE_H: Int = 2
	alias mjMOUSE_MOVE_V: Int = 3
	alias mjMOUSE_MOVE_H: Int = 4
	alias mjMOUSE_ZOOM: Int = 5
	alias mjMOUSE_SELECT: Int = 6


alias mjtMouse = mjtMouse_
struct mjtPertBit_: # Enum
	alias mjPERT_TRANSLATE: Int = 1
	alias mjPERT_ROTATE: Int = 2


alias mjtPertBit = mjtPertBit_
struct mjtCamera_: # Enum
	alias mjCAMERA_FREE: Int = 0
	alias mjCAMERA_TRACKING: Int = 1
	alias mjCAMERA_FIXED: Int = 2
	alias mjCAMERA_USER: Int = 3


alias mjtCamera = mjtCamera_
struct mjtLabel_: # Enum
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
struct mjtFrame_: # Enum
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
struct mjtVisFlag_: # Enum
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
	alias mjVIS_FLEXBVH: Int = 29
	alias mjVIS_MESHBVH: Int = 30
	alias mjVIS_SDFITER: Int = 31
	alias mjNVISFLAG: Int = 32


alias mjtVisFlag = mjtVisFlag_
struct mjtRndFlag_: # Enum
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
struct mjtStereo_: # Enum
	alias mjSTEREO_NONE: Int = 0
	alias mjSTEREO_QUADBUFFERED: Int = 1
	alias mjSTEREO_SIDEBYSIDE: Int = 2


alias mjtStereo = mjtStereo_
struct mjvPerturb_:
	var select: Int32
	var flexselect: Int32
	var skinselect: Int32
	var active: Int32
	var active2: Int32
	var refpos: SIMD[mjtNum.dtype, 3]
	var refquat: SIMD[mjtNum.dtype, 4]
	var refselpos: SIMD[mjtNum.dtype, 3]
	var localpos: SIMD[mjtNum.dtype, 3]
	var localmass: mjtNum
	var scale: mjtNum


alias mjvPerturb = mjvPerturb_
struct mjvCamera_:
	var type: Int32
	var fixedcamid: Int32
	var trackbodyid: Int32
	var lookat: SIMD[mjtNum.dtype, 3]
	var distance: mjtNum
	var azimuth: mjtNum
	var elevation: mjtNum
	var orthographic: Int32


alias mjvCamera = mjvCamera_
struct mjvGLCamera_:
	var pos: SIMD[Float32.dtype, 3]
	var forward: SIMD[Float32.dtype, 3]
	var up: SIMD[Float32.dtype, 3]
	var frustum_center: Float32
	var frustum_width: Float32
	var frustum_bottom: Float32
	var frustum_top: Float32
	var frustum_near: Float32
	var frustum_far: Float32
	var orthographic: Int32


alias mjvGLCamera = mjvGLCamera_
struct mjvGeom_:
	var type: Int32
	var dataid: Int32
	var objtype: Int32
	var objid: Int32
	var category: Int32
	var matid: Int32
	var texcoord: Int32
	var segid: Int32
	var size: SIMD[Float32.dtype, 3]
	var pos: SIMD[Float32.dtype, 3]
	var mat: SIMD[Float32.dtype, 9]
	var rgba: SIMD[Float32.dtype, 4]
	var emission: Float32
	var specular: Float32
	var shininess: Float32
	var reflectance: Float32
	var label: SIMD[Int8.dtype, 100]
	var camdist: Float32
	var modelrbound: Float32
	var transparent: mjtByte


alias mjvGeom = mjvGeom_
struct mjvLight_:
	var pos: SIMD[Float32.dtype, 3]
	var dir: SIMD[Float32.dtype, 3]
	var attenuation: SIMD[Float32.dtype, 3]
	var cutoff: Float32
	var exponent: Float32
	var ambient: SIMD[Float32.dtype, 3]
	var diffuse: SIMD[Float32.dtype, 3]
	var specular: SIMD[Float32.dtype, 3]
	var headlight: mjtByte
	var directional: mjtByte
	var castshadow: mjtByte
	var bulbradius: Float32


alias mjvLight = mjvLight_
struct mjvOption_:
	var label: Int32
	var frame: Int32
	var geomgroup: SIMD[mjtByte.dtype, 6]
	var sitegroup: SIMD[mjtByte.dtype, 6]
	var jointgroup: SIMD[mjtByte.dtype, 6]
	var tendongroup: SIMD[mjtByte.dtype, 6]
	var actuatorgroup: SIMD[mjtByte.dtype, 6]
	var flexgroup: SIMD[mjtByte.dtype, 6]
	var skingroup: SIMD[mjtByte.dtype, 6]
	var flags: SIMD[mjtByte.dtype, 32]
	var bvh_depth: Int32
	var flex_layer: Int32


alias mjvOption = mjvOption_
struct mjvScene_:
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
	var lights: SIMD[mjvLight.dtype, 100]
	var camera: SIMD[mjvGLCamera.dtype, 2]
	var enabletransform: mjtByte
	var translate: SIMD[Float32.dtype, 3]
	var rotate: SIMD[Float32.dtype, 4]
	var scale: Float32
	var stereo: Int32
	var flags: SIMD[mjtByte.dtype, 10]
	var framewidth: Int32
	var framergb: SIMD[Float32.dtype, 3]


alias mjvScene = mjvScene_
struct mjvFigure_:
	var flg_legend: Int32
	var flg_ticklabel: SIMD[Int32.dtype, 2]
	var flg_extend: Int32
	var flg_barplot: Int32
	var flg_selection: Int32
	var flg_symmetric: Int32
	var linewidth: Float32
	var gridwidth: Float32
	var gridsize: SIMD[Int32.dtype, 2]
	var gridrgb: SIMD[Float32.dtype, 3]
	var figurergba: SIMD[Float32.dtype, 4]
	var panergba: SIMD[Float32.dtype, 4]
	var legendrgba: SIMD[Float32.dtype, 4]
	var textrgb: SIMD[Float32.dtype, 3]
	var linergb: SIMD[Float32.dtype, 100]
	var range: SIMD[Float32.dtype, 2]
	var xformat: SIMD[Int8.dtype, 20]
	var yformat: SIMD[Int8.dtype, 20]
	var minwidth: SIMD[Int8.dtype, 20]
	var title: SIMD[Int8.dtype, 1000]
	var xlabel: SIMD[Int8.dtype, 100]
	var linename: SIMD[Int8.dtype, 100]
	var legendoffset: Int32
	var subplot: Int32
	var highlight: SIMD[Int32.dtype, 2]
	var highlightid: Int32
	var selection: Float32
	var linepnt: SIMD[Int32.dtype, 100]
	var linedata: SIMD[Float32.dtype, 100]
	var xaxispixel: SIMD[Int32.dtype, 2]
	var yaxispixel: SIMD[Int32.dtype, 2]
	var xaxisdata: SIMD[Float32.dtype, 2]
	var yaxisdata: SIMD[Float32.dtype, 2]


alias mjvFigure = mjvFigure_
struct _mjvSceneState__Anonymous__line_634_3__line_688_3_:
	var warning: SIMD[mjWarningStat.dtype, 8]
	var nefc: Int32
	var ncon: Int32
	var nisland: Int32
	var time: mjtNum
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
	var vis: mjVisual
	var stat: mjStatistic
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
	var buffer: UnsafePointer[NoneType]
	var maxgeom: Int32
	var scratch: mjvScene
	var model: _mjvSceneState__Anonymous__line_417_3__line_631_3_
	var data: _mjvSceneState__Anonymous__line_634_3__line_688_3_


alias mjvSceneState = mjvSceneState_
struct _mjResource__mjpResourceProvider:
	pass


struct mjResource_:
	var name: UnsafePointer[Int8]
	var data: UnsafePointer[NoneType]
	var timestamp: SIMD[Int8.dtype, 512]
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

struct mjpResourceProvider:
	var prefix: UnsafePointer[Int8] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var open: mjfOpenResource
	var read: mjfReadResource
	var close: mjfCloseResource
	var getdir: mjfGetResourceDir
	var modified: mjfResourceModified
	var data: UnsafePointer[NoneType]

# Disabled since this is already declared
# alias mjpResourceProvider = mjpResourceProvider
struct mjtPluginCapabilityBit_: # Enum

	#---------------------------------- Plugins -------------------------------------------------------
	alias mjPLUGIN_ACTUATOR: Int = 1
	alias mjPLUGIN_SENSOR: Int = 2
	alias mjPLUGIN_PASSIVE: Int = 4
	alias mjPLUGIN_SDF: Int = 8


alias mjtPluginCapabilityBit = mjtPluginCapabilityBit_
#---------------------------------- Plugins -------------------------------------------------------

struct mjpPlugin_:
	var name: UnsafePointer[Int8] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var nattribute: Int32
	var attributes: UnsafePointer[char *const] # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var capabilityflags: Int32
	var needstage: Int32
	var nstate: int (*)(const mjModel *, int)
	var nsensordata: int (*)(const mjModel *, int, int)
	var init: int (*)(const mjModel *, mjData *, int)
	var destroy: void (*)(mjData *, int)
	var copy: void (*)(mjData *, mjModel *, mjData *, int) # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var reset: void (*)(const mjModel *, mjtNum *, void *, int)
	var compute: void (*)(const mjModel *, mjData *, int, int)
	var advance: void (*)(const mjModel *, mjData *, int)
	var visualize: void (*)(const mjModel *, mjData *, mjvOption *, mjvScene *, int) # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var actuator_act_dot: void (*)(const mjModel *, mjData *, int)
	var sdf_distance: mjtNum (*)(const mjtNum *, mjData *, int) # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var sdf_gradient: void (*)(mjtNum *, mjtNum *, mjData *, int) # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var sdf_staticdistance: mjtNum (*)(const mjtNum *, mjtNum *) # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var sdf_attribute: void (*)(mjtNum *, char **, char **) # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.
	var sdf_aabb: void (*)(mjtNum *, mjtNum *) # FieldDeclNode: This is a const param, but shouldn't be assigned as an alias since it doesn't have a value.


alias mjpPlugin = mjpPlugin_

alias mjfPluginLibraryLoadCallback = fn(UnsafePointer[Int8],Int32,Int32) -> NoneType
# function pointer type for mj_loadAllPluginLibraries callback

struct mjtGridPos_: # Enum

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

struct mjtFramebuffer_: # Enum
	alias mjFB_WINDOW: Int = 0
	alias mjFB_OFFSCREEN: Int = 1


alias mjtFramebuffer = mjtFramebuffer_
struct mjtDepthMap_: # Enum
	alias mjDEPTH_ZERONEAR: Int = 0
	alias mjDEPTH_ZEROFAR: Int = 1


alias mjtDepthMap = mjtDepthMap_
struct mjtFontScale_: # Enum
	alias mjFONTSCALE_50: Int = 50
	alias mjFONTSCALE_100: Int = 100
	alias mjFONTSCALE_150: Int = 150
	alias mjFONTSCALE_200: Int = 200
	alias mjFONTSCALE_250: Int = 250
	alias mjFONTSCALE_300: Int = 300


alias mjtFontScale = mjtFontScale_
struct mjtFont_: # Enum
	alias mjFONT_NORMAL: Int = 0
	alias mjFONT_SHADOW: Int = 1
	alias mjFONT_BIG: Int = 2


alias mjtFont = mjtFont_
struct mjrRect_:
	var left: Int32
	var bottom: Int32
	var width: Int32
	var height: Int32


alias mjrRect = mjrRect_
struct mjrContext_:
	var lineWidth: Float32
	var shadowClip: Float32
	var shadowScale: Float32
	var fogStart: Float32
	var fogEnd: Float32
	var fogRGBA: SIMD[Float32.dtype, 4]
	var shadowSize: Int32
	var offWidth: Int32
	var offHeight: Int32
	var offSamples: Int32
	var fontScale: Int32
	var auxWidth: SIMD[Int32.dtype, 10]
	var auxHeight: SIMD[Int32.dtype, 10]
	var auxSamples: SIMD[Int32.dtype, 10]
	var offFBO: UInt32
	var offFBO_r: UInt32
	var offColor: UInt32
	var offColor_r: UInt32
	var offDepthStencil: UInt32
	var offDepthStencil_r: UInt32
	var shadowFBO: UInt32
	var shadowTex: UInt32
	var auxFBO: SIMD[UInt32.dtype, 10]
	var auxFBO_r: SIMD[UInt32.dtype, 10]
	var auxColor: SIMD[UInt32.dtype, 10]
	var auxColor_r: SIMD[UInt32.dtype, 10]
	var mat_texid: SIMD[Int32.dtype, 10000]
	var mat_texuniform: SIMD[Int32.dtype, 1000]
	var mat_texrepeat: SIMD[Float32.dtype, 2000]
	var ntexture: Int32
	var textureType: SIMD[Int32.dtype, 1000]
	var texture: SIMD[UInt32.dtype, 1000]
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
	var charWidth: SIMD[Int32.dtype, 127]
	var charWidthBig: SIMD[Int32.dtype, 127]
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
struct mjtGeomInertia_: # Enum

	#-------------------------------- enum types (mjt) ------------------------------------------------
	alias mjINERTIA_VOLUME: Int = 0
	alias mjINERTIA_SHELL: Int = 1


alias mjtGeomInertia = mjtGeomInertia_
#-------------------------------- enum types (mjt) ------------------------------------------------

struct mjtMeshInertia_: # Enum
	alias mjMESH_INERTIA_CONVEX: Int = 0
	alias mjMESH_INERTIA_EXACT: Int = 1
	alias mjMESH_INERTIA_LEGACY: Int = 2
	alias mjMESH_INERTIA_SHELL: Int = 3


alias mjtMeshInertia = mjtMeshInertia_
struct mjtBuiltin_: # Enum
	alias mjBUILTIN_NONE: Int = 0
	alias mjBUILTIN_GRADIENT: Int = 1
	alias mjBUILTIN_CHECKER: Int = 2
	alias mjBUILTIN_FLAT: Int = 3


alias mjtBuiltin = mjtBuiltin_
struct mjtMark_: # Enum
	alias mjMARK_NONE: Int = 0
	alias mjMARK_EDGE: Int = 1
	alias mjMARK_CROSS: Int = 2
	alias mjMARK_RANDOM: Int = 3


alias mjtMark = mjtMark_
struct mjtLimited_: # Enum
	alias mjLIMITED_FALSE: Int = 0
	alias mjLIMITED_TRUE: Int = 1
	alias mjLIMITED_AUTO: Int = 2


alias mjtLimited = mjtLimited_
struct mjtAlignFree_: # Enum
	alias mjALIGNFREE_FALSE: Int = 0
	alias mjALIGNFREE_TRUE: Int = 1
	alias mjALIGNFREE_AUTO: Int = 2


alias mjtAlignFree = mjtAlignFree_
struct mjtInertiaFromGeom_: # Enum
	alias mjINERTIAFROMGEOM_FALSE: Int = 0
	alias mjINERTIAFROMGEOM_TRUE: Int = 1
	alias mjINERTIAFROMGEOM_AUTO: Int = 2


alias mjtInertiaFromGeom = mjtInertiaFromGeom_
struct mjtOrientation_: # Enum
	alias mjORIENTATION_QUAT: Int = 0
	alias mjORIENTATION_AXISANGLE: Int = 1
	alias mjORIENTATION_XYAXES: Int = 2
	alias mjORIENTATION_ZAXIS: Int = 3
	alias mjORIENTATION_EULER: Int = 4


alias mjtOrientation = mjtOrientation_
struct mjsElement_:
	var elemtype: mjtObj
	var signature: uint64_t


alias mjsElement = mjsElement_
#-------------------------------- attribute structs (mjs) -----------------------------------------

struct mjsCompiler_:
	var autolimits: mjtByte
	var boundmass: Float64
	var boundinertia: Float64
	var settotalmass: Float64
	var balanceinertia: mjtByte
	var fitaabb: mjtByte
	var degree: mjtByte
	var eulerseq: SIMD[Int8.dtype, 3]
	var discardvisual: mjtByte
	var usethread: mjtByte
	var fusestatic: mjtByte
	var inertiafromgeom: Int32
	var inertiagrouprange: SIMD[Int32.dtype, 2]
	var saveinertial: mjtByte
	var alignfree: Int32
	var LRopt: mjLROpt


alias mjsCompiler = mjsCompiler_
struct mjSpec_:
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
struct mjsOrientation_:
	var type: mjtOrientation
	var axisangle: SIMD[Float64.dtype, 4]
	var xyaxes: SIMD[Float64.dtype, 6]
	var zaxis: SIMD[Float64.dtype, 3]
	var euler: SIMD[Float64.dtype, 3]


alias mjsOrientation = mjsOrientation_
struct mjsPlugin_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var plugin_name: UnsafePointer[mjString]
	var active: mjtByte
	var info: UnsafePointer[mjString]


alias mjsPlugin = mjsPlugin_
struct mjsBody_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var childclass: UnsafePointer[mjString]
	var pos: SIMD[Float64.dtype, 3]
	var quat: SIMD[Float64.dtype, 4]
	var alt: mjsOrientation
	var mass: Float64
	var ipos: SIMD[Float64.dtype, 3]
	var iquat: SIMD[Float64.dtype, 4]
	var inertia: SIMD[Float64.dtype, 3]
	var ialt: mjsOrientation
	var fullinertia: SIMD[Float64.dtype, 6]
	var mocap: mjtByte
	var gravcomp: Float64
	var userdata: UnsafePointer[mjDoubleVec]
	var explicitinertial: mjtByte
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsBody = mjsBody_
struct mjsFrame_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var childclass: UnsafePointer[mjString]
	var pos: SIMD[Float64.dtype, 3]
	var quat: SIMD[Float64.dtype, 4]
	var alt: mjsOrientation
	var info: UnsafePointer[mjString]


alias mjsFrame = mjsFrame_
struct mjsJoint_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var type: mjtJoint
	var pos: SIMD[Float64.dtype, 3]
	var axis: SIMD[Float64.dtype, 3]
	var ref: Float64
	var align: Int32
	var stiffness: Float64
	var springref: Float64
	var springdamper: SIMD[Float64.dtype, 2]
	var limited: Int32
	var range: SIMD[Float64.dtype, 2]
	var margin: Float64
	var solref_limit: SIMD[mjtNum.dtype, 2]
	var solimp_limit: SIMD[mjtNum.dtype, 5]
	var actfrclimited: Int32
	var actfrcrange: SIMD[Float64.dtype, 2]
	var armature: Float64
	var damping: Float64
	var frictionloss: Float64
	var solref_friction: SIMD[mjtNum.dtype, 2]
	var solimp_friction: SIMD[mjtNum.dtype, 5]
	var group: Int32
	var actgravcomp: mjtByte
	var userdata: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsJoint = mjsJoint_
struct mjsGeom_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var type: mjtGeom
	var pos: SIMD[Float64.dtype, 3]
	var quat: SIMD[Float64.dtype, 4]
	var alt: mjsOrientation
	var fromto: SIMD[Float64.dtype, 6]
	var size: SIMD[Float64.dtype, 3]
	var contype: Int32
	var conaffinity: Int32
	var condim: Int32
	var priority: Int32
	var friction: SIMD[Float64.dtype, 3]
	var solmix: Float64
	var solref: SIMD[mjtNum.dtype, 2]
	var solimp: SIMD[mjtNum.dtype, 5]
	var margin: Float64
	var gap: Float64
	var mass: Float64
	var density: Float64
	var typeinertia: mjtGeomInertia
	var fluid_ellipsoid: mjtNum
	var fluid_coefs: SIMD[mjtNum.dtype, 5]
	var material: UnsafePointer[mjString]
	var rgba: SIMD[Float32.dtype, 4]
	var group: Int32
	var hfieldname: UnsafePointer[mjString]
	var meshname: UnsafePointer[mjString]
	var fitscale: Float64
	var userdata: UnsafePointer[mjDoubleVec]
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsGeom = mjsGeom_
struct mjsSite_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var pos: SIMD[Float64.dtype, 3]
	var quat: SIMD[Float64.dtype, 4]
	var alt: mjsOrientation
	var fromto: SIMD[Float64.dtype, 6]
	var size: SIMD[Float64.dtype, 3]
	var type: mjtGeom
	var material: UnsafePointer[mjString]
	var group: Int32
	var rgba: SIMD[Float32.dtype, 4]
	var userdata: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsSite = mjsSite_
struct mjsCamera_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var pos: SIMD[Float64.dtype, 3]
	var quat: SIMD[Float64.dtype, 4]
	var alt: mjsOrientation
	var mode: mjtCamLight
	var targetbody: UnsafePointer[mjString]
	var orthographic: Int32
	var fovy: Float64
	var ipd: Float64
	var intrinsic: SIMD[Float32.dtype, 4]
	var sensor_size: SIMD[Float32.dtype, 2]
	var resolution: SIMD[Float32.dtype, 2]
	var focal_length: SIMD[Float32.dtype, 2]
	var focal_pixel: SIMD[Float32.dtype, 2]
	var principal_length: SIMD[Float32.dtype, 2]
	var principal_pixel: SIMD[Float32.dtype, 2]
	var userdata: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsCamera = mjsCamera_
struct mjsLight_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var pos: SIMD[Float64.dtype, 3]
	var dir: SIMD[Float64.dtype, 3]
	var mode: mjtCamLight
	var targetbody: UnsafePointer[mjString]
	var active: mjtByte
	var directional: mjtByte
	var castshadow: mjtByte
	var bulbradius: Float64
	var attenuation: SIMD[Float32.dtype, 3]
	var cutoff: Float32
	var exponent: Float32
	var ambient: SIMD[Float32.dtype, 3]
	var diffuse: SIMD[Float32.dtype, 3]
	var specular: SIMD[Float32.dtype, 3]
	var info: UnsafePointer[mjString]


alias mjsLight = mjsLight_
struct mjsFlex_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var contype: Int32
	var conaffinity: Int32
	var condim: Int32
	var priority: Int32
	var friction: SIMD[Float64.dtype, 3]
	var solmix: Float64
	var solref: SIMD[mjtNum.dtype, 2]
	var solimp: SIMD[mjtNum.dtype, 5]
	var margin: Float64
	var gap: Float64
	var dim: Int32
	var radius: Float64
	var internal: mjtByte
	var flatskin: mjtByte
	var selfcollide: Int32
	var activelayers: Int32
	var group: Int32
	var edgestiffness: Float64
	var edgedamping: Float64
	var rgba: SIMD[Float32.dtype, 4]
	var material: UnsafePointer[mjString]
	var young: Float64
	var poisson: Float64
	var damping: Float64
	var thickness: Float64
	var nodebody: UnsafePointer[mjStringVec]
	var vertbody: UnsafePointer[mjStringVec]
	var node: UnsafePointer[mjDoubleVec]
	var vert: UnsafePointer[mjDoubleVec]
	var elem: UnsafePointer[mjIntVec]
	var texcoord: UnsafePointer[mjFloatVec]
	var elemtexcoord: UnsafePointer[mjIntVec]
	var info: UnsafePointer[mjString]


alias mjsFlex = mjsFlex_
struct mjsMesh_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var content_type: UnsafePointer[mjString]
	var file: UnsafePointer[mjString]
	var refpos: SIMD[Float64.dtype, 3]
	var refquat: SIMD[Float64.dtype, 4]
	var scale: SIMD[Float64.dtype, 3]
	var inertia: mjtMeshInertia
	var smoothnormal: mjtByte
	var maxhullvert: Int32
	var uservert: UnsafePointer[mjFloatVec]
	var usernormal: UnsafePointer[mjFloatVec]
	var usertexcoord: UnsafePointer[mjFloatVec]
	var userface: UnsafePointer[mjIntVec]
	var userfacetexcoord: UnsafePointer[mjIntVec]
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsMesh = mjsMesh_
struct mjsHField_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var content_type: UnsafePointer[mjString]
	var file: UnsafePointer[mjString]
	var size: SIMD[Float64.dtype, 4]
	var nrow: Int32
	var ncol: Int32
	var userdata: UnsafePointer[mjFloatVec]
	var info: UnsafePointer[mjString]


alias mjsHField = mjsHField_
struct mjsSkin_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var file: UnsafePointer[mjString]
	var material: UnsafePointer[mjString]
	var rgba: SIMD[Float32.dtype, 4]
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
struct mjsTexture_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var type: mjtTexture
	var builtin: Int32
	var mark: Int32
	var rgb1: SIMD[Float64.dtype, 3]
	var rgb2: SIMD[Float64.dtype, 3]
	var markrgb: SIMD[Float64.dtype, 3]
	var random: Float64
	var height: Int32
	var width: Int32
	var nchannel: Int32
	var content_type: UnsafePointer[mjString]
	var file: UnsafePointer[mjString]
	var gridsize: SIMD[Int32.dtype, 2]
	var gridlayout: SIMD[Int8.dtype, 13]
	var cubefiles: UnsafePointer[mjStringVec]
	var data: UnsafePointer[mjByteVec]
	var hflip: mjtByte
	var vflip: mjtByte
	var info: UnsafePointer[mjString]


alias mjsTexture = mjsTexture_
struct mjsMaterial_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var textures: UnsafePointer[mjStringVec]
	var texuniform: mjtByte
	var texrepeat: SIMD[Float32.dtype, 2]
	var emission: Float32
	var specular: Float32
	var shininess: Float32
	var reflectance: Float32
	var metallic: Float32
	var roughness: Float32
	var rgba: SIMD[Float32.dtype, 4]
	var info: UnsafePointer[mjString]


alias mjsMaterial = mjsMaterial_
struct mjsPair_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var geomname1: UnsafePointer[mjString]
	var geomname2: UnsafePointer[mjString]
	var condim: Int32
	var solref: SIMD[mjtNum.dtype, 2]
	var solreffriction: SIMD[mjtNum.dtype, 2]
	var solimp: SIMD[mjtNum.dtype, 5]
	var margin: Float64
	var gap: Float64
	var friction: SIMD[Float64.dtype, 5]
	var info: UnsafePointer[mjString]


alias mjsPair = mjsPair_
struct mjsExclude_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var bodyname1: UnsafePointer[mjString]
	var bodyname2: UnsafePointer[mjString]
	var info: UnsafePointer[mjString]


alias mjsExclude = mjsExclude_
struct mjsEquality_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var type: mjtEq
	var data: SIMD[Float64.dtype, 11]
	var active: mjtByte
	var name1: UnsafePointer[mjString]
	var name2: UnsafePointer[mjString]
	var objtype: mjtObj
	var solref: SIMD[mjtNum.dtype, 2]
	var solimp: SIMD[mjtNum.dtype, 5]
	var info: UnsafePointer[mjString]


alias mjsEquality = mjsEquality_
struct mjsTendon_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var stiffness: Float64
	var springlength: SIMD[Float64.dtype, 2]
	var damping: Float64
	var frictionloss: Float64
	var solref_friction: SIMD[mjtNum.dtype, 2]
	var solimp_friction: SIMD[mjtNum.dtype, 5]
	var armature: Float64
	var limited: Int32
	var range: SIMD[Float64.dtype, 2]
	var margin: Float64
	var solref_limit: SIMD[mjtNum.dtype, 2]
	var solimp_limit: SIMD[mjtNum.dtype, 5]
	var material: UnsafePointer[mjString]
	var width: Float64
	var rgba: SIMD[Float32.dtype, 4]
	var group: Int32
	var userdata: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsTendon = mjsTendon_
struct mjsWrap_:
	var element: UnsafePointer[mjsElement]
	var info: UnsafePointer[mjString]


alias mjsWrap = mjsWrap_
struct mjsActuator_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var gaintype: mjtGain
	var gainprm: SIMD[Float64.dtype, 10]
	var biastype: mjtBias
	var biasprm: SIMD[Float64.dtype, 10]
	var dyntype: mjtDyn
	var dynprm: SIMD[Float64.dtype, 10]
	var actdim: Int32
	var actearly: mjtByte
	var trntype: mjtTrn
	var gear: SIMD[Float64.dtype, 6]
	var target: UnsafePointer[mjString]
	var refsite: UnsafePointer[mjString]
	var slidersite: UnsafePointer[mjString]
	var cranklength: Float64
	var lengthrange: SIMD[Float64.dtype, 2]
	var inheritrange: Float64
	var ctrllimited: Int32
	var ctrlrange: SIMD[Float64.dtype, 2]
	var forcelimited: Int32
	var forcerange: SIMD[Float64.dtype, 2]
	var actlimited: Int32
	var actrange: SIMD[Float64.dtype, 2]
	var group: Int32
	var userdata: UnsafePointer[mjDoubleVec]
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsActuator = mjsActuator_
struct mjsSensor_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var type: mjtSensor
	var objtype: mjtObj
	var objname: UnsafePointer[mjString]
	var reftype: mjtObj
	var refname: UnsafePointer[mjString]
	var datatype: mjtDataType
	var needstage: mjtStage
	var dim: Int32
	var cutoff: Float64
	var noise: Float64
	var userdata: UnsafePointer[mjDoubleVec]
	var plugin: mjsPlugin
	var info: UnsafePointer[mjString]


alias mjsSensor = mjsSensor_
struct mjsNumeric_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var data: UnsafePointer[mjDoubleVec]
	var size: Int32
	var info: UnsafePointer[mjString]


alias mjsNumeric = mjsNumeric_
struct mjsText_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var data: UnsafePointer[mjString]
	var info: UnsafePointer[mjString]


alias mjsText = mjsText_
struct mjsTuple_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var objtype: UnsafePointer[mjIntVec]
	var objname: UnsafePointer[mjStringVec]
	var objprm: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsTuple = mjsTuple_
struct mjsKey_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
	var time: Float64
	var qpos: UnsafePointer[mjDoubleVec]
	var qvel: UnsafePointer[mjDoubleVec]
	var act: UnsafePointer[mjDoubleVec]
	var mpos: UnsafePointer[mjDoubleVec]
	var mquat: UnsafePointer[mjDoubleVec]
	var ctrl: UnsafePointer[mjDoubleVec]
	var info: UnsafePointer[mjString]


alias mjsKey = mjsKey_
struct mjsDefault_:
	var element: UnsafePointer[mjsElement]
	var name: UnsafePointer[mjString]
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
struct mjtButton_: # Enum

	#---------------------------------- primitive types (mjt) -----------------------------------------
	alias mjBUTTON_NONE: Int = 0
	alias mjBUTTON_LEFT: Int = 1
	alias mjBUTTON_RIGHT: Int = 2
	alias mjBUTTON_MIDDLE: Int = 3


alias mjtButton = mjtButton_
#---------------------------------- primitive types (mjt) -----------------------------------------

struct mjtEvent_: # Enum
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
struct mjtItem_: # Enum
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
struct mjtSection_: # Enum
	alias mjSECT_CLOSED: Int = 0
	alias mjSECT_OPEN: Int = 1
	alias mjSECT_FIXED: Int = 2


alias mjtSection = mjtSection_

alias mjfItemEnable = fn(Int32,UnsafePointer[NoneType]) -> Int32
# predicate function: set enable/disable based on item category

struct mjuiState_:
	var nrect: Int32
	var rect: SIMD[mjrRect.dtype, 25]
	var userdata: UnsafePointer[NoneType]
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
struct mjuiThemeSpacing_:
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
struct mjuiThemeColor_:
	var master: SIMD[Float32.dtype, 3]
	var thumb: SIMD[Float32.dtype, 3]
	var secttitle: SIMD[Float32.dtype, 3]
	var secttitle2: SIMD[Float32.dtype, 3]
	var secttitleuncheck: SIMD[Float32.dtype, 3]
	var secttitleuncheck2: SIMD[Float32.dtype, 3]
	var secttitlecheck: SIMD[Float32.dtype, 3]
	var secttitlecheck2: SIMD[Float32.dtype, 3]
	var sectfont: SIMD[Float32.dtype, 3]
	var sectsymbol: SIMD[Float32.dtype, 3]
	var sectpane: SIMD[Float32.dtype, 3]
	var separator: SIMD[Float32.dtype, 3]
	var separator2: SIMD[Float32.dtype, 3]
	var shortcut: SIMD[Float32.dtype, 3]
	var fontactive: SIMD[Float32.dtype, 3]
	var fontinactive: SIMD[Float32.dtype, 3]
	var decorinactive: SIMD[Float32.dtype, 3]
	var decorinactive2: SIMD[Float32.dtype, 3]
	var button: SIMD[Float32.dtype, 3]
	var check: SIMD[Float32.dtype, 3]
	var radio: SIMD[Float32.dtype, 3]
	var select: SIMD[Float32.dtype, 3]
	var select2: SIMD[Float32.dtype, 3]
	var slider: SIMD[Float32.dtype, 3]
	var slider2: SIMD[Float32.dtype, 3]
	var edit: SIMD[Float32.dtype, 3]
	var edit2: SIMD[Float32.dtype, 3]
	var cursor: SIMD[Float32.dtype, 3]


alias mjuiThemeColor = mjuiThemeColor_
struct mjuiItemSingle_:
	var modifier: Int32
	var shortcut: Int32

struct mjuiItemMulti_:
	var nelem: Int32
	var name: SIMD[Int8.dtype, 35]

struct mjuiItemSlider_:
	var range: SIMD[Float64.dtype, 2]
	var divisions: Float64

struct mjuiItemEdit_:
	var nelem: Int32
	var range: SIMD[Float64.dtype, 7]

struct _mjuiItem__Anonymous__line_259_3__line_264_3_:
	var single: mjuiItemSingle_
	var multi: mjuiItemMulti_
	var slider: mjuiItemSlider_
	var edit: mjuiItemEdit_


struct mjuiItem_:
	var type: Int32
	var name: SIMD[Int8.dtype, 40]
	var state: Int32
	var pdata: UnsafePointer[NoneType]
	var sectionid: Int32
	var itemid: Int32
	var userid: Int32
	var implicit: _mjuiItem__Anonymous__line_259_3__line_264_3_
	var rect: mjrRect
	var skip: Int32


alias mjuiItem = mjuiItem_
struct mjuiSection_:
	var name: SIMD[Int8.dtype, 40]
	var state: Int32
	var modifier: Int32
	var shortcut: Int32
	var checkbox: Int32
	var nitem: Int32
	var item: SIMD[mjuiItem.dtype, 200]
	var rtitle: mjrRect
	var rcontent: mjrRect
	var lastclick: Int32


alias mjuiSection = mjuiSection_
struct mjUI_:
	var spacing: mjuiThemeSpacing
	var color: mjuiThemeColor
	var predicate: mjfItemEnable
	var userdata: UnsafePointer[NoneType]
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
	var edittext: SIMD[Int8.dtype, 300]
	var editchanged: UnsafePointer[mjuiItem]
	var nsect: Int32
	var sect: SIMD[mjuiSection.dtype, 10]


alias mjUI = mjUI_
struct mjuiDef_:
	var type: Int32
	var name: SIMD[Int8.dtype, 40]
	var state: Int32
	var pdata: UnsafePointer[NoneType]
	var other: SIMD[Int8.dtype, 300]
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


alias mjCOLLISIONFUNC = mjfCollision[9][9] # extern # VisibilityAttrNode: Default

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
alias mjv_initGeom = fn(geom: UnsafePointer[mjvGeom], type_: Int32, read size: UnsafePointer[mjtNum], read pos: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read rgba: UnsafePointer[Float32]) -> NoneType
alias mjv_connector = fn(geom: UnsafePointer[mjvGeom], type_: Int32, width: mjtNum, read from_: UnsafePointer[mjtNum], read to: UnsafePointer[mjtNum]) -> NoneType
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
alias mju_free = fn(ptr: UnsafePointer[NoneType]) -> NoneType
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
alias mjs_addBody = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsBody]
alias mjs_addSite = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsSite]
alias mjs_addJoint = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsJoint]
alias mjs_addFreeJoint = fn(body: UnsafePointer[mjsBody]) -> UnsafePointer[mjsJoint]
alias mjs_addGeom = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsGeom]
alias mjs_addCamera = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsCamera]
alias mjs_addLight = fn(body: UnsafePointer[mjsBody], read def_: UnsafePointer[mjsDefault]) -> UnsafePointer[mjsLight]
alias mjs_addFrame = fn(body: UnsafePointer[mjsBody], parentframe: UnsafePointer[mjsFrame]) -> UnsafePointer[mjsFrame]
alias mjs_delete = fn(element: UnsafePointer[mjsElement]) -> Int32
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
alias mjs_setDefault = fn(element: UnsafePointer[mjsElement], read def_: UnsafePointer[mjsDefault]) -> NoneType
alias mjs_setFrame = fn(dest: UnsafePointer[mjsElement], frame: UnsafePointer[mjsFrame]) -> Int32
alias mjs_resolveOrientation = fn(quat: UnsafePointer[Float64], degree: mjtByte, read sequence: UnsafePointer[Int8], read orientation: UnsafePointer[mjsOrientation]) -> UnsafePointer[Int8]
alias mjs_bodyToFrame = fn(body: UnsafePointer[UnsafePointer[mjsBody]]) -> UnsafePointer[mjsFrame]
alias mjs_setUserValue = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8], read data: UnsafePointer[NoneType]) -> NoneType
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

