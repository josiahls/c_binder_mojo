from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e3398 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer

alias size_t = UInt64

alias wchar_t = Int32

alias _Float32 = Float32

alias _Float64 = Float64

alias _Float32x = Float64

alias _Float64x = Float64
struct _Anonymous_line_59_9:
	var quot: Int32

	var rem: Int32


alias div_t = _Anonymous_line_59_9
struct _Anonymous_line_67_9:
	var quot: Int64

	var rem: Int64


alias ldiv_t = _Anonymous_line_67_9
struct _Anonymous_line_77_23:
	var quot: Int128

	var rem: Int128


alias lldiv_t = _Anonymous_line_77_23

alias __ctype_get_mb_cur_max = fn () -> size_t

alias atof = fn (__nptr: const char *) -> Float64

alias atoi = fn (__nptr: const char *) -> Int32

alias atol = fn (__nptr: const char *) -> Int64

alias atoll = fn (__nptr: const char *) -> Int128

alias implicit = fn ('const: char *, 'char: **) -> strtod double

alias strtod = fn (__nptr: const char *restrict, __endptr: char **restrict) -> Float64

alias implicit = fn ('const: char *, 'char: **) -> strtof float

alias strtof = fn (__nptr: const char *restrict, __endptr: char **restrict) -> Float32

alias implicit = fn ('const: char *, 'char: **) -> strtold long double

alias strtold = fn (__nptr: const char *restrict, __endptr: char **restrict) -> Float64

alias implicit = fn ('const: char *, 'char: **, Int32) -> strtol long

alias strtol = fn (__nptr: const char *restrict, __endptr: char **restrict, __base: Int32) -> Int64

alias implicit = fn ('const: char *, 'char: **, Int32) -> strtoul unsigned long

alias strtoul = fn (__nptr: const char *restrict, __endptr: char **restrict, __base: Int32) -> UInt64

alias strtoq = fn (__nptr: const char *restrict, __endptr: char **restrict, __base: Int32) -> Int128

alias strtouq = fn (__nptr: const char *restrict, __endptr: char **restrict, __base: Int32) -> UInt128

alias implicit = fn ('const: char *, 'char: **, Int32) -> strtoll long long

alias strtoll = fn (__nptr: const char *restrict, __endptr: char **restrict, __base: Int32) -> Int128

alias implicit = fn ('const: char *, 'char: **, Int32) -> strtoull unsigned long long

alias strtoull = fn (__nptr: const char *restrict, __endptr: char **restrict, __base: Int32) -> UInt128

alias l64a = fn (__n: Int64) -> char *(long) extern

alias a64l = fn (__s: const char *) -> Int64

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

alias __int_least8_t = __int8_t

alias __uint_least8_t = __uint8_t

alias __int_least16_t = __int16_t

alias __uint_least16_t = __uint16_t

alias __int_least32_t = __int32_t

alias __uint_least32_t = __uint32_t

alias __int_least64_t = __int64_t

alias __uint_least64_t = __uint64_t

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
struct _Anonymous_col_24:
	var __val: SIMD[Int32.dtype, 2]


alias __fsid_t = _Anonymous_col_24

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

alias __loff_t = __off64_t

alias __caddr_t = UnsafePointer[Int8]

alias __intptr_t = Int64

alias __socklen_t = UInt32

alias __sig_atomic_t = Int32

alias u_char = __u_char

alias u_short = __u_short

alias u_int = __u_int

alias u_long = __u_long

alias quad_t = __quad_t

alias u_quad_t = __u_quad_t

alias fsid_t = _Anonymous_col_24

alias loff_t = __loff_t

alias ino_t = __ino_t

alias dev_t = __dev_t

alias gid_t = __gid_t

alias mode_t = __mode_t

alias nlink_t = __nlink_t

alias uid_t = __uid_t

alias off_t = __off_t

alias pid_t = __pid_t

alias id_t = __id_t

alias ssize_t = __ssize_t

alias daddr_t = __daddr_t

alias caddr_t = UnsafePointer[__caddr_t]

alias key_t = __key_t

alias clock_t = __clock_t

alias clockid_t = __clockid_t

alias time_t = __time_t

alias timer_t = UnsafePointer[__timer_t]

alias ulong = UInt64

alias ushort = UInt16

alias uint = UInt32

alias int8_t = __int8_t

alias int16_t = __int16_t

alias int32_t = __int32_t

alias int64_t = __int64_t

alias u_int8_t = __uint8_t

alias u_int16_t = __uint16_t

alias u_int32_t = __uint32_t

alias u_int64_t = __uint64_t

alias register_t = Int64

alias __bswap_16 = fn (used: __bsx __uint16_t:unsigned short) -> __uint16_t

alias __bswap_32 = fn (used: __bsx __uint32_t:unsigned int) -> __uint32_t

alias __bswap_64 = fn (used: __bsx __uint64_t:unsigned long) -> __uint64_t

alias __uint16_identity = fn (used: __x __uint16_t:unsigned short) -> __uint16_t

alias __uint32_identity = fn (used: __x __uint32_t:unsigned int) -> __uint32_t

alias __uint64_identity = fn (used: __x __uint64_t:unsigned long) -> __uint64_t
struct _Anonymous_line_5_9:
	var __val: SIMD[UInt64.dtype, 16]


alias __sigset_t = _Anonymous_line_5_9

alias sigset_t = _Anonymous_line_5_9
struct timeval:
	var tv_sec: __time_t

	var tv_usec: __suseconds_t

struct timespec:
	var tv_sec: __time_t

	var tv_nsec: __syscall_slong_t


alias suseconds_t = __suseconds_t

alias __fd_mask = Int64
struct _Anonymous_line_59_9:
	var __fds_bits: SIMD[__fd_mask.dtype, 16]


alias fd_set = _Anonymous_line_59_9

alias fd_mask = __fd_mask

alias select = fn (__nfds: Int32, __readfds: fd_set *restrict, __writefds: fd_set *restrict, __exceptfds: fd_set *restrict, __timeout: struct timeval *restrict) -> Int32

alias pselect = fn (__nfds: Int32, __readfds: fd_set *restrict, __writefds: fd_set *restrict, __exceptfds: fd_set *restrict, __timeout: const struct timespec *restrict, __sigmask: const __sigset_t *restrict) -> Int32

alias blksize_t = __blksize_t

alias blkcnt_t = __blkcnt_t

alias fsblkcnt_t = __fsblkcnt_t

alias fsfilcnt_t = __fsfilcnt_t
struct _definition__Anonymous_line_28_3:
	var __low: UInt32

	var __high: UInt32


struct definition:
	var __value64: UInt128

	var __value32: _definition__Anonymous_line_28_3


alias __atomic_wide_counter = definition
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
struct _Anonymous_line_108_9:
	var __data: Int32


alias __once_flag = _Anonymous_line_108_9

alias pthread_t = UInt64
struct definition:
	var __size: SIMD[Int8.dtype, 4]

	var __align: Int32


alias pthread_mutexattr_t = definition
struct definition:
	var __size: SIMD[Int8.dtype, 4]

	var __align: Int32


alias pthread_condattr_t = definition

alias pthread_key_t = UInt32

alias pthread_once_t = Int32
struct pthread_attr_t:
	var __size: SIMD[Int8.dtype, 56]

	var __align: Int64


alias pthread_attr_t = pthread_attr_t
struct definition:
	var __data: __pthread_mutex_s

	var __size: SIMD[Int8.dtype, 40]

	var __align: Int64


alias pthread_mutex_t = definition
struct definition:
	var __data: __pthread_cond_s

	var __size: SIMD[Int8.dtype, 48]

	var __align: Int128


alias pthread_cond_t = definition
struct definition:
	var __data: __pthread_rwlock_arch_t

	var __size: SIMD[Int8.dtype, 56]

	var __align: Int64


alias pthread_rwlock_t = definition
struct definition:
	var __size: SIMD[Int8.dtype, 8]

	var __align: Int64


alias pthread_rwlockattr_t = definition

alias pthread_spinlock_t = volatile int
struct definition:
	var __size: SIMD[Int8.dtype, 32]

	var __align: Int64


alias pthread_barrier_t = definition
struct definition:
	var __size: SIMD[Int8.dtype, 4]

	var __align: Int32


alias pthread_barrierattr_t = definition

alias random = fn () -> Int64

alias srandom = fn (__seed: UInt32) -> NoneType

alias initstate = fn (__seed: UInt32, __statebuf: char *, __statelen: size_t:unsigned long) -> char *(unsigned int, char *, size_t) extern

alias setstate = fn (__statebuf: char *) -> char *(char *) extern
struct random_data:
	var fptr: UnsafePointer[Int32]

	var rptr: UnsafePointer[Int32]

	var state: UnsafePointer[Int32]

	var rand_type: Int32

	var rand_deg: Int32

	var rand_sep: Int32

	var end_ptr: UnsafePointer[Int32]


alias random_r = fn (__buf: struct random_data *restrict, __result: int32_t *restrict) -> Int32

alias srandom_r = fn (__seed: UInt32, __buf: struct random_data *) -> Int32

alias initstate_r = fn (__seed: UInt32, __statebuf: char *restrict, __statelen: size_t:unsigned long, __buf: struct random_data *restrict) -> Int32

alias setstate_r = fn (__statebuf: char *restrict, __buf: struct random_data *restrict) -> Int32

alias rand = fn () -> Int32

alias srand = fn (__seed: UInt32) -> NoneType

alias rand_r = fn (__seed: unsigned int *) -> Int32

alias drand48 = fn () -> Float64

alias erand48 = fn (__xsubi: unsigned short *:unsigned short *) -> Float64

alias lrand48 = fn () -> Int64

alias nrand48 = fn (__xsubi: unsigned short *:unsigned short *) -> Int64

alias mrand48 = fn () -> Int64

alias jrand48 = fn (__xsubi: unsigned short *:unsigned short *) -> Int64

alias srand48 = fn (__seedval: Int64) -> NoneType

alias seed48 = fn (__seed16v: unsigned short *:unsigned short *) -> unsigned short *(unsigned short *) extern

alias lcong48 = fn (__param: unsigned short *:unsigned short *) -> NoneType
struct drand48_data:
	var __x: SIMD[UInt16.dtype, 3]

	var __old_x: SIMD[UInt16.dtype, 3]

	var __c: UInt16

	var __init: UInt16

	var __a: UInt128


alias drand48_r = fn (__buffer: struct drand48_data *restrict, __result: double *restrict) -> Int32

alias erand48_r = fn (__xsubi: unsigned short *:unsigned short *, __buffer: struct drand48_data *restrict, __result: double *restrict) -> Int32

alias lrand48_r = fn (__buffer: struct drand48_data *restrict, __result: long *restrict) -> Int32

alias nrand48_r = fn (__xsubi: unsigned short *:unsigned short *, __buffer: struct drand48_data *restrict, __result: long *restrict) -> Int32

alias mrand48_r = fn (__buffer: struct drand48_data *restrict, __result: long *restrict) -> Int32

alias jrand48_r = fn (__xsubi: unsigned short *:unsigned short *, __buffer: struct drand48_data *restrict, __result: long *restrict) -> Int32

alias srand48_r = fn (__seedval: Int64, __buffer: struct drand48_data *) -> Int32

alias seed48_r = fn (__seed16v: unsigned short *:unsigned short *, __buffer: struct drand48_data *) -> Int32

alias lcong48_r = fn (__param: unsigned short *:unsigned short *, __buffer: struct drand48_data *) -> Int32

alias implicit = fn ('unsigned: Int64) -> malloc void *(unsigned long) extern

alias malloc = fn (__size: size_t:unsigned long) -> void *(unsigned long) extern

alias implicit = fn ('unsigned: Int64, 'unsigned: Int64) -> calloc void *(unsigned long, unsigned long) extern

alias calloc = fn (__nmemb: size_t:unsigned long, __size: size_t:unsigned long) -> void *(unsigned long, unsigned long) extern

alias implicit = fn ('void: *, 'unsigned: Int64) -> realloc void *(void *, unsigned long) extern

alias realloc = fn (__ptr: void *, __size: size_t:unsigned long) -> void *(void *, unsigned long) extern

alias implicit = fn ('void: *) -> free void

alias free = fn (__ptr: void *) -> NoneType

alias reallocarray = fn (__ptr: void *, __nmemb: size_t:unsigned long, __size: size_t:unsigned long) -> void *(void *, size_t, size_t) extern

alias reallocarray = fn (__ptr: void *, __nmemb: size_t:unsigned long, __size: size_t:unsigned long) -> void *(void *, size_t, size_t) extern

alias implicit = fn ('unsigned: Int64) -> alloca void *(unsigned long) extern

alias alloca = fn (__size: size_t:unsigned long) -> void *(unsigned long) extern

alias valloc = fn (__size: size_t:unsigned long) -> void *(size_t) extern

alias posix_memalign = fn (__memptr: void **, __alignment: size_t:unsigned long, __size: size_t:unsigned long) -> Int32

alias implicit = fn ('unsigned: Int64, 'unsigned: Int64) -> aligned_alloc void *(unsigned long, unsigned long) extern

alias aligned_alloc = fn (__alignment: size_t:unsigned long, __size: size_t:unsigned long) -> void *(unsigned long, unsigned long) extern

alias implicit = fn () -> abort void

alias abort = fn () -> NoneType

alias atexit = fn (__func: void (*)(void)) -> Int32

alias at_quick_exit = fn (__func: void (*)(void)) -> Int32

alias on_exit = fn (__func: void (*)(int, void *), __arg: void *) -> Int32

alias implicit = fn (Int32) -> exit void

alias exit = fn (__status: Int32) -> NoneType

alias quick_exit = fn (__status: Int32) -> NoneType

alias implicit = fn (Int32) -> _Exit void

alias _Exit = fn (__status: Int32) -> NoneType

alias getenv = fn (__name: const char *) -> char *(const char *) extern

alias putenv = fn (__string: char *) -> Int32

alias setenv = fn (__name: const char *, __value: const char *, __replace: Int32) -> Int32

alias unsetenv = fn (__name: const char *) -> Int32

alias clearenv = fn () -> Int32

alias mktemp = fn (__template: char *) -> char *(char *) extern

alias mkstemp = fn (__template: char *) -> Int32

alias mkstemps = fn (__template: char *, __suffixlen: Int32) -> Int32

alias mkdtemp = fn (__template: char *) -> char *(char *) extern

alias system = fn (__command: const char *) -> Int32

alias realpath = fn (__name: const char *restrict, __resolved: char *restrict) -> char *(const char *restrict, char *restrict) extern

alias __compar_fn_t = int (*)(const void *, const void *)

alias bsearch = fn (__key: const void *, __base: const void *, __nmemb: size_t:unsigned long, __size: size_t:unsigned long, __compar: __compar_fn_t:int (*)(const void *, const void *)) -> void *(const void *, const void *, size_t, size_t, __compar_fn_t) extern

alias qsort = fn (__base: void *, __nmemb: size_t:unsigned long, __size: size_t:unsigned long, __compar: __compar_fn_t:int (*)(const void *, const void *)) -> NoneType

alias implicit = fn (Int32) -> abs int

alias abs = fn (__x: Int32) -> Int32

alias implicit = fn (Int64) -> labs long

alias labs = fn (__x: Int64) -> Int64

alias implicit = fn ('long: Int64) -> llabs long long

alias llabs = fn (__x: Int128) -> Int128

alias div = fn (__numer: Int32, __denom: Int32) -> div_t

alias ldiv = fn (__numer: Int64, __denom: Int64) -> ldiv_t

alias lldiv = fn (__numer: Int128, __denom: Int128) -> lldiv_t

alias ecvt = fn (__value: Float64, __ndigit: Int32, __decpt: int *restrict, __sign: int *restrict) -> char *(double, int, int *restrict, int *restrict) extern

alias fcvt = fn (__value: Float64, __ndigit: Int32, __decpt: int *restrict, __sign: int *restrict) -> char *(double, int, int *restrict, int *restrict) extern

alias gcvt = fn (__value: Float64, __ndigit: Int32, __buf: char *) -> char *(double, int, char *) extern

alias qecvt = fn (__value: Float64, __ndigit: Int32, __decpt: int *restrict, __sign: int *restrict) -> char *(long double, int, int *restrict, int *restrict) extern

alias qfcvt = fn (__value: Float64, __ndigit: Int32, __decpt: int *restrict, __sign: int *restrict) -> char *(long double, int, int *restrict, int *restrict) extern

alias qgcvt = fn (__value: Float64, __ndigit: Int32, __buf: char *) -> char *(long double, int, char *) extern

alias ecvt_r = fn (__value: Float64, __ndigit: Int32, __decpt: int *restrict, __sign: int *restrict, __buf: char *restrict, __len: size_t:unsigned long) -> Int32

alias fcvt_r = fn (__value: Float64, __ndigit: Int32, __decpt: int *restrict, __sign: int *restrict, __buf: char *restrict, __len: size_t:unsigned long) -> Int32

alias qecvt_r = fn (__value: Float64, __ndigit: Int32, __decpt: int *restrict, __sign: int *restrict, __buf: char *restrict, __len: size_t:unsigned long) -> Int32

alias qfcvt_r = fn (__value: Float64, __ndigit: Int32, __decpt: int *restrict, __sign: int *restrict, __buf: char *restrict, __len: size_t:unsigned long) -> Int32

alias mblen = fn (__s: const char *, __n: size_t:unsigned long) -> Int32

alias mbtowc = fn (__pwc: wchar_t *restrict, __s: const char *restrict, __n: size_t:unsigned long) -> Int32

alias wctomb = fn (__s: char *, __wchar: wchar_t:int) -> Int32

alias mbstowcs = fn (__pwcs: wchar_t *restrict, __s: const char *restrict, __n: size_t:unsigned long) -> size_t

alias wcstombs = fn (__s: char *restrict, __pwcs: const wchar_t *restrict, __n: size_t:unsigned long) -> size_t

alias rpmatch = fn (__response: const char *) -> Int32

alias getsubopt = fn (__optionp: char **restrict, __tokens: char *const *restrict, __valuep: char **restrict) -> Int32

alias getloadavg = fn (__loadavg: double *:double *, __nelem: Int32) -> Int32

alias float_t = Float32

alias double_t = Float64

alias __fpclassify = fn (__value: Float64) -> Int32

alias __signbit = fn (__value: Float64) -> Int32

alias __isinf = fn (__value: Float64) -> Int32

alias implicit = fn (Float64) -> __finite int

alias __finite = fn (__value: Float64) -> Int32

alias __isnan = fn (__value: Float64) -> Int32

alias __iseqsig = fn (__x: Float64, __y: Float64) -> Int32

alias __issignaling = fn (__value: Float64) -> Int32

alias implicit = fn (Float64) -> acos double

alias acos = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:76:1 __acos double

alias implicit = fn (Float64) -> asin double

alias asin = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:78:1 __asin double

alias implicit = fn (Float64) -> atan double

alias atan = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:80:1 __atan double

alias implicit = fn (Float64, Float64) -> atan2 double

alias atan2 = fn (__y: Float64, __x: Float64) -> Float64

alias <scratch = fn (__y: Float64, __x: Float64) -> space>:82:1 __atan2 double

alias implicit = fn (Float64) -> cos double

alias cos = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:84:1 __cos double

alias implicit = fn (Float64) -> sin double

alias sin = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:86:1 __sin double

alias implicit = fn (Float64) -> tan double

alias tan = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:88:1 __tan double

alias implicit = fn (Float64) -> cosh double

alias cosh = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:90:1 __cosh double

alias implicit = fn (Float64) -> sinh double

alias sinh = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:92:1 __sinh double

alias implicit = fn (Float64) -> tanh double

alias tanh = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:94:1 __tanh double

alias implicit = fn (Float64) -> acosh double

alias acosh = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:96:1 __acosh double

alias implicit = fn (Float64) -> asinh double

alias asinh = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:98:1 __asinh double

alias implicit = fn (Float64) -> atanh double

alias atanh = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:100:1 __atanh double

alias implicit = fn (Float64) -> exp double

alias exp = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:102:1 __exp double

alias implicit = fn (Float64, 'int: *) -> frexp double

alias frexp = fn (__x: Float64, __exponent: int *) -> Float64

alias <scratch = fn (__x: Float64, __exponent: int *) -> space>:103:1 __frexp double

alias implicit = fn (Float64, Int32) -> ldexp double

alias ldexp = fn (__x: Float64, __exponent: Int32) -> Float64

alias <scratch = fn (__x: Float64, __exponent: Int32) -> space>:104:1 __ldexp double

alias implicit = fn (Float64) -> log double

alias log = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:106:1 __log double

alias implicit = fn (Float64) -> log10 double

alias log10 = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:108:1 __log10 double

alias implicit = fn (Float64, 'double: *) -> modf double

alias modf = fn (__x: Float64, __iptr: double *) -> Float64

alias <scratch = fn (__x: Float64, __iptr: double *) -> space>:109:1 __modf double

alias implicit = fn (Float64) -> expm1 double

alias expm1 = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:112:1 __expm1 double

alias implicit = fn (Float64) -> log1p double

alias log1p = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:114:1 __log1p double

alias implicit = fn (Float64) -> logb double

alias logb = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:115:1 __logb double

alias implicit = fn (Float64) -> exp2 double

alias exp2 = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:117:1 __exp2 double

alias implicit = fn (Float64) -> log2 double

alias log2 = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:119:1 __log2 double

alias implicit = fn (Float64, Float64) -> pow double

alias pow = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:121:1 __pow double

alias implicit = fn (Float64) -> sqrt double

alias sqrt = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:122:1 __sqrt double

alias implicit = fn (Float64, Float64) -> hypot double

alias hypot = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:124:1 __hypot double

alias implicit = fn (Float64) -> cbrt double

alias cbrt = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:126:1 __cbrt double

alias implicit = fn (Float64) -> ceil double

alias ceil = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:127:1 __ceil double

alias implicit = fn (Float64) -> fabs double

alias fabs = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:128:1 __fabs double

alias implicit = fn (Float64) -> floor double

alias floor = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:129:1 __floor double

alias implicit = fn (Float64, Float64) -> fmod double

alias fmod = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:130:1 __fmod double

alias isinf = fn (__value: Float64) -> Int32

alias implicit = fn (Float64) -> finite int

alias finite = fn (__value: Float64) -> Int32

alias drem = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:131:1 __drem double

alias significand = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:132:1 __significand double

alias implicit = fn (Float64, Float64) -> copysign double

alias copysign = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:133:1 __copysign double

alias implicit = fn ('const: char *) -> nan double

alias nan = fn (__tagb: const char *) -> Float64

alias <scratch = fn (__tagb: const char *) -> space>:134:1 __nan double

alias isnan = fn (__value: Float64) -> Int32

alias j0 = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:135:1 __j0 double

alias j1 = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:136:1 __j1 double

alias jn = fn (Int32, Float64) -> Float64

alias <scratch = fn (Int32, Float64) -> space>:137:1 __jn double

alias y0 = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:138:1 __y0 double

alias y1 = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:139:1 __y1 double

alias yn = fn (Int32, Float64) -> Float64

alias <scratch = fn (Int32, Float64) -> space>:140:1 __yn double

alias implicit = fn (Float64) -> erf double

alias erf = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:142:1 __erf double

alias implicit = fn (Float64) -> erfc double

alias erfc = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:144:1 __erfc double

alias implicit = fn (Float64) -> lgamma double

alias lgamma = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:145:1 __lgamma double

alias implicit = fn (Float64) -> tgamma double

alias tgamma = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:146:1 __tgamma double

alias gamma = fn (Float64) -> Float64

alias <scratch = fn (Float64) -> space>:147:1 __gamma double

alias <scratch = fn (Float64, __signgamp: int *) -> space>:148:1 lgamma_r double

alias <scratch = fn (Float64, __signgamp: int *) -> space>:150:1 __lgamma_r double

alias implicit = fn (Float64) -> rint double

alias rint = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:151:1 __rint double

alias implicit = fn (Float64, Float64) -> nextafter double

alias nextafter = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:152:1 __nextafter double

alias implicit = fn (Float64, 'long: Float64) -> nexttoward double

alias nexttoward = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:153:1 __nexttoward double

alias implicit = fn (Float64, Float64) -> remainder double

alias remainder = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:155:1 __remainder double

alias implicit = fn (Float64, Int32) -> scalbn double

alias scalbn = fn (__x: Float64, __n: Int32) -> Float64

alias <scratch = fn (__x: Float64, __n: Int32) -> space>:156:1 __scalbn double

alias implicit = fn (Float64) -> ilogb int

alias ilogb = fn (__x: Float64) -> Int32

alias <scratch = fn (__x: Float64) -> space>:157:1 __ilogb int

alias implicit = fn (Float64, Int64) -> scalbln double

alias scalbln = fn (__x: Float64, __n: Int64) -> Float64

alias <scratch = fn (__x: Float64, __n: Int64) -> space>:159:1 __scalbln double

alias implicit = fn (Float64) -> nearbyint double

alias nearbyint = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:160:1 __nearbyint double

alias implicit = fn (Float64) -> round double

alias round = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:161:1 __round double

alias implicit = fn (Float64) -> trunc double

alias trunc = fn (__x: Float64) -> Float64

alias <scratch = fn (__x: Float64) -> space>:162:1 __trunc double

alias implicit = fn (Float64, Float64, 'int: *) -> remquo double

alias remquo = fn (__x: Float64, __y: Float64, __quo: int *) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64, __quo: int *) -> space>:163:1 __remquo double

alias implicit = fn (Float64) -> lrint long

alias lrint = fn (__x: Float64) -> Int64

alias <scratch = fn (__x: Float64) -> space>:164:1 __lrint long

alias implicit = fn (Float64) -> llrint long long

alias llrint = fn (__x: Float64) -> Int128

alias <scratch = fn (__x: Float64) -> space>:165:1 __llrint long long

alias implicit = fn (Float64) -> lround long

alias lround = fn (__x: Float64) -> Int64

alias <scratch = fn (__x: Float64) -> space>:166:1 __lround long

alias implicit = fn (Float64) -> llround long long

alias llround = fn (__x: Float64) -> Int128

alias <scratch = fn (__x: Float64) -> space>:167:1 __llround long long

alias implicit = fn (Float64, Float64) -> fdim double

alias fdim = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:168:1 __fdim double

alias implicit = fn (Float64, Float64) -> fmax double

alias fmax = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:170:1 __fmax double

alias implicit = fn (Float64, Float64) -> fmin double

alias fmin = fn (__x: Float64, __y: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:171:1 __fmin double

alias implicit = fn (Float64, Float64, Float64) -> fma double

alias fma = fn (__x: Float64, __y: Float64, __z: Float64) -> Float64

alias <scratch = fn (__x: Float64, __y: Float64, __z: Float64) -> space>:172:1 __fma double

alias scalb = fn (__x: Float64, __n: Float64) -> Float64

alias <scratch = fn (__x: Float64, __n: Float64) -> space>:178:1 __scalb double

alias <scratch = fn (__value: Float32) -> space>:179:1 __fpclassifyf int

alias <scratch = fn (__value: Float32) -> space>:180:1 __signbitf int

alias <scratch = fn (__value: Float32) -> space>:181:1 __isinff int

alias implicit = fn (Float32) -> __finitef int

alias <scratch = fn (__value: Float32) -> space>:182:1 __finitef int

alias <scratch = fn (__value: Float32) -> space>:183:1 __isnanf int

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:184:1 __iseqsigf int

alias <scratch = fn (__value: Float32) -> space>:185:1 __issignalingf int

alias implicit = fn (Float32) -> acosf float

alias <scratch = fn (__x: Float32) -> space>:188:1 acosf float

alias <scratch = fn (__x: Float32) -> space>:190:1 __acosf float

alias implicit = fn (Float32) -> asinf float

alias <scratch = fn (__x: Float32) -> space>:193:1 asinf float

alias <scratch = fn (__x: Float32) -> space>:195:1 __asinf float

alias implicit = fn (Float32) -> atanf float

alias <scratch = fn (__x: Float32) -> space>:198:1 atanf float

alias <scratch = fn (__x: Float32) -> space>:200:1 __atanf float

alias implicit = fn (Float32, Float32) -> atan2f float

alias <scratch = fn (__y: Float32, __x: Float32) -> space>:203:1 atan2f float

alias <scratch = fn (__y: Float32, __x: Float32) -> space>:205:1 __atan2f float

alias implicit = fn (Float32) -> cosf float

alias <scratch = fn (__x: Float32) -> space>:208:1 cosf float

alias <scratch = fn (__x: Float32) -> space>:210:1 __cosf float

alias implicit = fn (Float32) -> sinf float

alias <scratch = fn (__x: Float32) -> space>:213:1 sinf float

alias <scratch = fn (__x: Float32) -> space>:215:1 __sinf float

alias implicit = fn (Float32) -> tanf float

alias <scratch = fn (__x: Float32) -> space>:218:1 tanf float

alias <scratch = fn (__x: Float32) -> space>:220:1 __tanf float

alias implicit = fn (Float32) -> coshf float

alias <scratch = fn (__x: Float32) -> space>:223:1 coshf float

alias <scratch = fn (__x: Float32) -> space>:225:1 __coshf float

alias implicit = fn (Float32) -> sinhf float

alias <scratch = fn (__x: Float32) -> space>:228:1 sinhf float

alias <scratch = fn (__x: Float32) -> space>:230:1 __sinhf float

alias implicit = fn (Float32) -> tanhf float

alias <scratch = fn (__x: Float32) -> space>:233:1 tanhf float

alias <scratch = fn (__x: Float32) -> space>:235:1 __tanhf float

alias implicit = fn (Float32) -> acoshf float

alias <scratch = fn (__x: Float32) -> space>:238:1 acoshf float

alias <scratch = fn (__x: Float32) -> space>:240:1 __acoshf float

alias implicit = fn (Float32) -> asinhf float

alias <scratch = fn (__x: Float32) -> space>:243:1 asinhf float

alias <scratch = fn (__x: Float32) -> space>:245:1 __asinhf float

alias implicit = fn (Float32) -> atanhf float

alias <scratch = fn (__x: Float32) -> space>:248:1 atanhf float

alias <scratch = fn (__x: Float32) -> space>:250:1 __atanhf float

alias implicit = fn (Float32) -> expf float

alias <scratch = fn (__x: Float32) -> space>:253:1 expf float

alias <scratch = fn (__x: Float32) -> space>:255:1 __expf float

alias implicit = fn (Float32, 'int: *) -> frexpf float

alias <scratch = fn (__x: Float32, __exponent: int *) -> space>:256:1 frexpf float

alias <scratch = fn (__x: Float32, __exponent: int *) -> space>:258:1 __frexpf float

alias implicit = fn (Float32, Int32) -> ldexpf float

alias <scratch = fn (__x: Float32, __exponent: Int32) -> space>:259:1 ldexpf float

alias <scratch = fn (__x: Float32, __exponent: Int32) -> space>:261:1 __ldexpf float

alias implicit = fn (Float32) -> logf float

alias <scratch = fn (__x: Float32) -> space>:264:1 logf float

alias <scratch = fn (__x: Float32) -> space>:266:1 __logf float

alias implicit = fn (Float32) -> log10f float

alias <scratch = fn (__x: Float32) -> space>:269:1 log10f float

alias <scratch = fn (__x: Float32) -> space>:271:1 __log10f float

alias implicit = fn (Float32, 'float: *) -> modff float

alias <scratch = fn (__x: Float32, __iptr: float *) -> space>:272:1 modff float

alias <scratch = fn (__x: Float32, __iptr: float *) -> space>:274:1 __modff float

alias implicit = fn (Float32) -> expm1f float

alias <scratch = fn (__x: Float32) -> space>:278:1 expm1f float

alias <scratch = fn (__x: Float32) -> space>:280:1 __expm1f float

alias implicit = fn (Float32) -> log1pf float

alias <scratch = fn (__x: Float32) -> space>:283:1 log1pf float

alias <scratch = fn (__x: Float32) -> space>:285:1 __log1pf float

alias implicit = fn (Float32) -> logbf float

alias <scratch = fn (__x: Float32) -> space>:286:1 logbf float

alias <scratch = fn (__x: Float32) -> space>:288:1 __logbf float

alias implicit = fn (Float32) -> exp2f float

alias <scratch = fn (__x: Float32) -> space>:291:1 exp2f float

alias <scratch = fn (__x: Float32) -> space>:293:1 __exp2f float

alias implicit = fn (Float32) -> log2f float

alias <scratch = fn (__x: Float32) -> space>:3:1 log2f float

alias <scratch = fn (__x: Float32) -> space>:5:1 __log2f float

alias implicit = fn (Float32, Float32) -> powf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:8:1 powf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:10:1 __powf float

alias implicit = fn (Float32) -> sqrtf float

alias <scratch = fn (__x: Float32) -> space>:11:1 sqrtf float

alias <scratch = fn (__x: Float32) -> space>:13:1 __sqrtf float

alias implicit = fn (Float32, Float32) -> hypotf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:16:1 hypotf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:18:1 __hypotf float

alias implicit = fn (Float32) -> cbrtf float

alias <scratch = fn (__x: Float32) -> space>:21:1 cbrtf float

alias <scratch = fn (__x: Float32) -> space>:23:1 __cbrtf float

alias implicit = fn (Float32) -> ceilf float

alias <scratch = fn (__x: Float32) -> space>:24:1 ceilf float

alias <scratch = fn (__x: Float32) -> space>:26:1 __ceilf float

alias implicit = fn (Float32) -> fabsf float

alias <scratch = fn (__x: Float32) -> space>:27:1 fabsf float

alias <scratch = fn (__x: Float32) -> space>:29:1 __fabsf float

alias implicit = fn (Float32) -> floorf float

alias <scratch = fn (__x: Float32) -> space>:30:1 floorf float

alias <scratch = fn (__x: Float32) -> space>:32:1 __floorf float

alias implicit = fn (Float32, Float32) -> fmodf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:33:1 fmodf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:35:1 __fmodf float

alias <scratch = fn (__value: Float32) -> space>:36:1 isinff int

alias implicit = fn (Float32) -> finitef int

alias <scratch = fn (__value: Float32) -> space>:37:1 finitef int

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:38:1 dremf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:40:1 __dremf float

alias <scratch = fn (__x: Float32) -> space>:41:1 significandf float

alias <scratch = fn (__x: Float32) -> space>:43:1 __significandf float

alias implicit = fn (Float32, Float32) -> copysignf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:44:1 copysignf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:46:1 __copysignf float

alias implicit = fn ('const: char *) -> nanf float

alias <scratch = fn (__tagb: const char *) -> space>:47:1 nanf float

alias <scratch = fn (__tagb: const char *) -> space>:49:1 __nanf float

alias <scratch = fn (__value: Float32) -> space>:50:1 isnanf int

alias <scratch = fn (Float32) -> space>:51:1 j0f float

alias <scratch = fn (Float32) -> space>:53:1 __j0f float

alias <scratch = fn (Float32) -> space>:54:1 j1f float

alias <scratch = fn (Float32) -> space>:56:1 __j1f float

alias <scratch = fn (Int32, Float32) -> space>:57:1 jnf float

alias <scratch = fn (Int32, Float32) -> space>:59:1 __jnf float

alias <scratch = fn (Float32) -> space>:60:1 y0f float

alias <scratch = fn (Float32) -> space>:62:1 __y0f float

alias <scratch = fn (Float32) -> space>:63:1 y1f float

alias <scratch = fn (Float32) -> space>:65:1 __y1f float

alias <scratch = fn (Int32, Float32) -> space>:66:1 ynf float

alias <scratch = fn (Int32, Float32) -> space>:68:1 __ynf float

alias implicit = fn (Float32) -> erff float

alias <scratch = fn (Float32) -> space>:71:1 erff float

alias <scratch = fn (Float32) -> space>:73:1 __erff float

alias implicit = fn (Float32) -> erfcf float

alias <scratch = fn (Float32) -> space>:76:1 erfcf float

alias <scratch = fn (Float32) -> space>:78:1 __erfcf float

alias implicit = fn (Float32) -> lgammaf float

alias <scratch = fn (Float32) -> space>:79:1 lgammaf float

alias <scratch = fn (Float32) -> space>:81:1 __lgammaf float

alias implicit = fn (Float32) -> tgammaf float

alias <scratch = fn (Float32) -> space>:82:1 tgammaf float

alias <scratch = fn (Float32) -> space>:84:1 __tgammaf float

alias <scratch = fn (Float32) -> space>:85:1 gammaf float

alias <scratch = fn (Float32) -> space>:87:1 __gammaf float

alias <scratch = fn (Float32, __signgamp: int *) -> space>:89:1 lgammaf_r float

alias <scratch = fn (Float32, __signgamp: int *) -> space>:92:1 __lgammaf_r float

alias implicit = fn (Float32) -> rintf float

alias <scratch = fn (__x: Float32) -> space>:93:1 rintf float

alias <scratch = fn (__x: Float32) -> space>:95:1 __rintf float

alias implicit = fn (Float32, Float32) -> nextafterf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:96:1 nextafterf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:98:1 __nextafterf float

alias implicit = fn (Float32, 'long: Float64) -> nexttowardf float

alias <scratch = fn (__x: Float32, __y: Float64) -> space>:99:1 nexttowardf float

alias <scratch = fn (__x: Float32, __y: Float64) -> space>:101:1 __nexttowardf float

alias implicit = fn (Float32, Float32) -> remainderf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:103:1 remainderf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:105:1 __remainderf float

alias implicit = fn (Float32, Int32) -> scalbnf float

alias <scratch = fn (__x: Float32, __n: Int32) -> space>:106:1 scalbnf float

alias <scratch = fn (__x: Float32, __n: Int32) -> space>:108:1 __scalbnf float

alias implicit = fn (Float32) -> ilogbf int

alias <scratch = fn (__x: Float32) -> space>:109:1 ilogbf int

alias <scratch = fn (__x: Float32) -> space>:111:1 __ilogbf int

alias implicit = fn (Float32, Int64) -> scalblnf float

alias <scratch = fn (__x: Float32, __n: Int64) -> space>:113:1 scalblnf float

alias <scratch = fn (__x: Float32, __n: Int64) -> space>:115:1 __scalblnf float

alias implicit = fn (Float32) -> nearbyintf float

alias <scratch = fn (__x: Float32) -> space>:116:1 nearbyintf float

alias <scratch = fn (__x: Float32) -> space>:118:1 __nearbyintf float

alias implicit = fn (Float32) -> roundf float

alias <scratch = fn (__x: Float32) -> space>:119:1 roundf float

alias <scratch = fn (__x: Float32) -> space>:121:1 __roundf float

alias implicit = fn (Float32) -> truncf float

alias <scratch = fn (__x: Float32) -> space>:122:1 truncf float

alias <scratch = fn (__x: Float32) -> space>:124:1 __truncf float

alias implicit = fn (Float32, Float32, 'int: *) -> remquof float

alias <scratch = fn (__x: Float32, __y: Float32, __quo: int *) -> space>:125:1 remquof float

alias <scratch = fn (__x: Float32, __y: Float32, __quo: int *) -> space>:127:1 __remquof float

alias implicit = fn (Float32) -> lrintf long

alias <scratch = fn (__x: Float32) -> space>:128:1 lrintf long

alias <scratch = fn (__x: Float32) -> space>:130:1 __lrintf long

alias implicit = fn (Float32) -> llrintf long long

alias <scratch = fn (__x: Float32) -> space>:131:1 llrintf long long

alias <scratch = fn (__x: Float32) -> space>:133:1 __llrintf long long

alias implicit = fn (Float32) -> lroundf long

alias <scratch = fn (__x: Float32) -> space>:134:1 lroundf long

alias <scratch = fn (__x: Float32) -> space>:136:1 __lroundf long

alias implicit = fn (Float32) -> llroundf long long

alias <scratch = fn (__x: Float32) -> space>:137:1 llroundf long long

alias <scratch = fn (__x: Float32) -> space>:139:1 __llroundf long long

alias implicit = fn (Float32, Float32) -> fdimf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:140:1 fdimf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:142:1 __fdimf float

alias implicit = fn (Float32, Float32) -> fmaxf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:144:1 fmaxf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:146:1 __fmaxf float

alias implicit = fn (Float32, Float32) -> fminf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:147:1 fminf float

alias <scratch = fn (__x: Float32, __y: Float32) -> space>:149:1 __fminf float

alias implicit = fn (Float32, Float32, Float32) -> fmaf float

alias <scratch = fn (__x: Float32, __y: Float32, __z: Float32) -> space>:150:1 fmaf float

alias <scratch = fn (__x: Float32, __y: Float32, __z: Float32) -> space>:152:1 __fmaf float

alias <scratch = fn (__x: Float32, __n: Float32) -> space>:158:1 scalbf float

alias <scratch = fn (__x: Float32, __n: Float32) -> space>:160:1 __scalbf float

alias <scratch = fn (__value: Float64) -> space>:161:1 __fpclassifyl int

alias <scratch = fn (__value: Float64) -> space>:162:1 __signbitl int

alias <scratch = fn (__value: Float64) -> space>:163:1 __isinfl int

alias implicit = fn ('long: Float64) -> __finitel int

alias <scratch = fn (__value: Float64) -> space>:164:1 __finitel int

alias <scratch = fn (__value: Float64) -> space>:165:1 __isnanl int

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:166:1 __iseqsigl int

alias <scratch = fn (__value: Float64) -> space>:167:1 __issignalingl int

alias implicit = fn ('long: Float64) -> acosl long double

alias <scratch = fn (__x: Float64) -> space>:170:1 acosl long double

alias <scratch = fn (__x: Float64) -> space>:172:1 __acosl long double

alias implicit = fn ('long: Float64) -> asinl long double

alias <scratch = fn (__x: Float64) -> space>:175:1 asinl long double

alias <scratch = fn (__x: Float64) -> space>:177:1 __asinl long double

alias implicit = fn ('long: Float64) -> atanl long double

alias <scratch = fn (__x: Float64) -> space>:180:1 atanl long double

alias <scratch = fn (__x: Float64) -> space>:182:1 __atanl long double

alias implicit = fn ('long: Float64, 'long: Float64) -> atan2l long double

alias <scratch = fn (__y: Float64, __x: Float64) -> space>:185:1 atan2l long double

alias <scratch = fn (__y: Float64, __x: Float64) -> space>:187:1 __atan2l long double

alias implicit = fn ('long: Float64) -> cosl long double

alias <scratch = fn (__x: Float64) -> space>:190:1 cosl long double

alias <scratch = fn (__x: Float64) -> space>:192:1 __cosl long double

alias implicit = fn ('long: Float64) -> sinl long double

alias <scratch = fn (__x: Float64) -> space>:195:1 sinl long double

alias <scratch = fn (__x: Float64) -> space>:197:1 __sinl long double

alias implicit = fn ('long: Float64) -> tanl long double

alias <scratch = fn (__x: Float64) -> space>:200:1 tanl long double

alias <scratch = fn (__x: Float64) -> space>:202:1 __tanl long double

alias implicit = fn ('long: Float64) -> coshl long double

alias <scratch = fn (__x: Float64) -> space>:205:1 coshl long double

alias <scratch = fn (__x: Float64) -> space>:207:1 __coshl long double

alias implicit = fn ('long: Float64) -> sinhl long double

alias <scratch = fn (__x: Float64) -> space>:210:1 sinhl long double

alias <scratch = fn (__x: Float64) -> space>:212:1 __sinhl long double

alias implicit = fn ('long: Float64) -> tanhl long double

alias <scratch = fn (__x: Float64) -> space>:215:1 tanhl long double

alias <scratch = fn (__x: Float64) -> space>:217:1 __tanhl long double

alias implicit = fn ('long: Float64) -> acoshl long double

alias <scratch = fn (__x: Float64) -> space>:220:1 acoshl long double

alias <scratch = fn (__x: Float64) -> space>:222:1 __acoshl long double

alias implicit = fn ('long: Float64) -> asinhl long double

alias <scratch = fn (__x: Float64) -> space>:225:1 asinhl long double

alias <scratch = fn (__x: Float64) -> space>:227:1 __asinhl long double

alias implicit = fn ('long: Float64) -> atanhl long double

alias <scratch = fn (__x: Float64) -> space>:230:1 atanhl long double

alias <scratch = fn (__x: Float64) -> space>:232:1 __atanhl long double

alias implicit = fn ('long: Float64) -> expl long double

alias <scratch = fn (__x: Float64) -> space>:235:1 expl long double

alias <scratch = fn (__x: Float64) -> space>:237:1 __expl long double

alias implicit = fn ('long: Float64, 'int: *) -> frexpl long double

alias <scratch = fn (__x: Float64, __exponent: int *) -> space>:238:1 frexpl long double

alias <scratch = fn (__x: Float64, __exponent: int *) -> space>:240:1 __frexpl long double

alias implicit = fn ('long: Float64, Int32) -> ldexpl long double

alias <scratch = fn (__x: Float64, __exponent: Int32) -> space>:241:1 ldexpl long double

alias <scratch = fn (__x: Float64, __exponent: Int32) -> space>:243:1 __ldexpl long double

alias implicit = fn ('long: Float64) -> logl long double

alias <scratch = fn (__x: Float64) -> space>:246:1 logl long double

alias <scratch = fn (__x: Float64) -> space>:248:1 __logl long double

alias implicit = fn ('long: Float64) -> log10l long double

alias <scratch = fn (__x: Float64) -> space>:251:1 log10l long double

alias <scratch = fn (__x: Float64) -> space>:253:1 __log10l long double

alias implicit = fn ('long: Float64, 'long: double *) -> modfl long double

alias <scratch = fn (__x: Float64, __iptr: long double *) -> space>:254:1 modfl long double

alias <scratch = fn (__x: Float64, __iptr: long double *) -> space>:256:1 __modfl long double

alias implicit = fn ('long: Float64) -> expm1l long double

alias <scratch = fn (__x: Float64) -> space>:260:1 expm1l long double

alias <scratch = fn (__x: Float64) -> space>:262:1 __expm1l long double

alias implicit = fn ('long: Float64) -> log1pl long double

alias <scratch = fn (__x: Float64) -> space>:265:1 log1pl long double

alias <scratch = fn (__x: Float64) -> space>:267:1 __log1pl long double

alias implicit = fn ('long: Float64) -> logbl long double

alias <scratch = fn (__x: Float64) -> space>:268:1 logbl long double

alias <scratch = fn (__x: Float64) -> space>:270:1 __logbl long double

alias implicit = fn ('long: Float64) -> exp2l long double

alias <scratch = fn (__x: Float64) -> space>:273:1 exp2l long double

alias <scratch = fn (__x: Float64) -> space>:275:1 __exp2l long double

alias implicit = fn ('long: Float64) -> log2l long double

alias <scratch = fn (__x: Float64) -> space>:278:1 log2l long double

alias <scratch = fn (__x: Float64) -> space>:280:1 __log2l long double

alias implicit = fn ('long: Float64, 'long: Float64) -> powl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:283:1 powl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:285:1 __powl long double

alias implicit = fn ('long: Float64) -> sqrtl long double

alias <scratch = fn (__x: Float64) -> space>:286:1 sqrtl long double

alias <scratch = fn (__x: Float64) -> space>:288:1 __sqrtl long double

alias implicit = fn ('long: Float64, 'long: Float64) -> hypotl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:291:1 hypotl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:293:1 __hypotl long double

alias implicit = fn ('long: Float64) -> cbrtl long double

alias <scratch = fn (__x: Float64) -> space>:296:1 cbrtl long double

alias <scratch = fn (__x: Float64) -> space>:298:1 __cbrtl long double

alias implicit = fn ('long: Float64) -> ceill long double

alias <scratch = fn (__x: Float64) -> space>:299:1 ceill long double

alias <scratch = fn (__x: Float64) -> space>:301:1 __ceill long double

alias implicit = fn ('long: Float64) -> fabsl long double

alias <scratch = fn (__x: Float64) -> space>:302:1 fabsl long double

alias <scratch = fn (__x: Float64) -> space>:304:1 __fabsl long double

alias implicit = fn ('long: Float64) -> floorl long double

alias <scratch = fn (__x: Float64) -> space>:305:1 floorl long double

alias <scratch = fn (__x: Float64) -> space>:307:1 __floorl long double

alias implicit = fn ('long: Float64, 'long: Float64) -> fmodl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:308:1 fmodl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:310:1 __fmodl long double

alias <scratch = fn (__value: Float64) -> space>:311:1 isinfl int

alias implicit = fn ('long: Float64) -> finitel int

alias <scratch = fn (__value: Float64) -> space>:312:1 finitel int

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:313:1 dreml long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:315:1 __dreml long double

alias <scratch = fn (__x: Float64) -> space>:316:1 significandl long double

alias <scratch = fn (__x: Float64) -> space>:318:1 __significandl long double

alias implicit = fn ('long: Float64, 'long: Float64) -> copysignl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:319:1 copysignl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:321:1 __copysignl long double

alias implicit = fn ('const: char *) -> nanl long double

alias <scratch = fn (__tagb: const char *) -> space>:322:1 nanl long double

alias <scratch = fn (__tagb: const char *) -> space>:324:1 __nanl long double

alias <scratch = fn (__value: Float64) -> space>:325:1 isnanl int

alias <scratch = fn ('long: Float64) -> space>:326:1 j0l long double

alias <scratch = fn ('long: Float64) -> space>:328:1 __j0l long double

alias <scratch = fn ('long: Float64) -> space>:329:1 j1l long double

alias <scratch = fn ('long: Float64) -> space>:331:1 __j1l long double

alias <scratch = fn (Int32, 'long: Float64) -> space>:332:1 jnl long double

alias <scratch = fn (Int32, 'long: Float64) -> space>:334:1 __jnl long double

alias <scratch = fn ('long: Float64) -> space>:335:1 y0l long double

alias <scratch = fn ('long: Float64) -> space>:337:1 __y0l long double

alias <scratch = fn ('long: Float64) -> space>:338:1 y1l long double

alias <scratch = fn ('long: Float64) -> space>:340:1 __y1l long double

alias <scratch = fn (Int32, 'long: Float64) -> space>:341:1 ynl long double

alias <scratch = fn (Int32, 'long: Float64) -> space>:343:1 __ynl long double

alias implicit = fn ('long: Float64) -> erfl long double

alias <scratch = fn ('long: Float64) -> space>:346:1 erfl long double

alias <scratch = fn ('long: Float64) -> space>:348:1 __erfl long double

alias implicit = fn ('long: Float64) -> erfcl long double

alias <scratch = fn ('long: Float64) -> space>:351:1 erfcl long double

alias <scratch = fn ('long: Float64) -> space>:353:1 __erfcl long double

alias implicit = fn ('long: Float64) -> lgammal long double

alias <scratch = fn ('long: Float64) -> space>:354:1 lgammal long double

alias <scratch = fn ('long: Float64) -> space>:356:1 __lgammal long double

alias implicit = fn ('long: Float64) -> tgammal long double

alias <scratch = fn ('long: Float64) -> space>:357:1 tgammal long double

alias <scratch = fn ('long: Float64) -> space>:359:1 __tgammal long double

alias <scratch = fn ('long: Float64) -> space>:360:1 gammal long double

alias <scratch = fn ('long: Float64) -> space>:362:1 __gammal long double

alias <scratch = fn ('long: Float64, __signgamp: int *) -> space>:364:1 lgammal_r long double

alias <scratch = fn ('long: Float64, __signgamp: int *) -> space>:367:1 __lgammal_r long double

alias implicit = fn ('long: Float64) -> rintl long double

alias <scratch = fn (__x: Float64) -> space>:368:1 rintl long double

alias <scratch = fn (__x: Float64) -> space>:370:1 __rintl long double

alias implicit = fn ('long: Float64, 'long: Float64) -> nextafterl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:371:1 nextafterl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:373:1 __nextafterl long double

alias implicit = fn ('long: Float64, 'long: Float64) -> nexttowardl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:374:1 nexttowardl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:376:1 __nexttowardl long double

alias implicit = fn ('long: Float64, 'long: Float64) -> remainderl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:378:1 remainderl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:380:1 __remainderl long double

alias implicit = fn ('long: Float64, Int32) -> scalbnl long double

alias <scratch = fn (__x: Float64, __n: Int32) -> space>:381:1 scalbnl long double

alias <scratch = fn (__x: Float64, __n: Int32) -> space>:383:1 __scalbnl long double

alias implicit = fn ('long: Float64) -> ilogbl int

alias <scratch = fn (__x: Float64) -> space>:384:1 ilogbl int

alias <scratch = fn (__x: Float64) -> space>:386:1 __ilogbl int

alias implicit = fn ('long: Float64, Int64) -> scalblnl long double

alias <scratch = fn (__x: Float64, __n: Int64) -> space>:388:1 scalblnl long double

alias <scratch = fn (__x: Float64, __n: Int64) -> space>:390:1 __scalblnl long double

alias implicit = fn ('long: Float64) -> nearbyintl long double

alias <scratch = fn (__x: Float64) -> space>:391:1 nearbyintl long double

alias <scratch = fn (__x: Float64) -> space>:393:1 __nearbyintl long double

alias implicit = fn ('long: Float64) -> roundl long double

alias <scratch = fn (__x: Float64) -> space>:394:1 roundl long double

alias <scratch = fn (__x: Float64) -> space>:396:1 __roundl long double

alias implicit = fn ('long: Float64) -> truncl long double

alias <scratch = fn (__x: Float64) -> space>:397:1 truncl long double

alias <scratch = fn (__x: Float64) -> space>:399:1 __truncl long double

alias implicit = fn ('long: Float64, 'long: Float64, 'int: *) -> remquol long double

alias <scratch = fn (__x: Float64, __y: Float64, __quo: int *) -> space>:400:1 remquol long double

alias <scratch = fn (__x: Float64, __y: Float64, __quo: int *) -> space>:2:1 __remquol long double

alias implicit = fn ('long: Float64) -> lrintl long

alias <scratch = fn (__x: Float64) -> space>:3:1 lrintl long

alias <scratch = fn (__x: Float64) -> space>:5:1 __lrintl long

alias implicit = fn ('long: Float64) -> llrintl long long

alias <scratch = fn (__x: Float64) -> space>:6:1 llrintl long long

alias <scratch = fn (__x: Float64) -> space>:8:1 __llrintl long long

alias implicit = fn ('long: Float64) -> lroundl long

alias <scratch = fn (__x: Float64) -> space>:9:1 lroundl long

alias <scratch = fn (__x: Float64) -> space>:11:1 __lroundl long

alias implicit = fn ('long: Float64) -> llroundl long long

alias <scratch = fn (__x: Float64) -> space>:12:1 llroundl long long

alias <scratch = fn (__x: Float64) -> space>:14:1 __llroundl long long

alias implicit = fn ('long: Float64, 'long: Float64) -> fdiml long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:15:1 fdiml long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:17:1 __fdiml long double

alias implicit = fn ('long: Float64, 'long: Float64) -> fmaxl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:19:1 fmaxl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:21:1 __fmaxl long double

alias implicit = fn ('long: Float64, 'long: Float64) -> fminl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:22:1 fminl long double

alias <scratch = fn (__x: Float64, __y: Float64) -> space>:24:1 __fminl long double

alias implicit = fn ('long: Float64, 'long: Float64, 'long: Float64) -> fmal long double

alias <scratch = fn (__x: Float64, __y: Float64, __z: Float64) -> space>:25:1 fmal long double

alias <scratch = fn (__x: Float64, __y: Float64, __z: Float64) -> space>:27:1 __fmal long double

alias <scratch = fn (__x: Float64, __n: Float64) -> space>:33:1 scalbl long double

alias <scratch = fn (__x: Float64, __n: Float64) -> space>:35:1 __scalbl long double

alias signgam: Int32 # extern
# Anonymous enum
alias FP_NAN: Int32 = 0

alias FP_INFINITE: Int32 = 1

alias FP_ZERO: Int32 = 2

alias FP_SUBNORMAL: Int32 = 3

alias FP_NORMAL: Int32 = 4


alias ptrdiff_t = Int64
struct _Anonymous_line_19_9:
	alias __clang_max_align_nonce1: Int128 = 8

	alias __clang_max_align_nonce2: Float64 = 16


alias max_align_t = _Anonymous_line_19_9

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

alias int_fast16_t = Int64

alias int_fast32_t = Int64

alias int_fast64_t = Int64

alias uint_fast8_t = UInt8

alias uint_fast16_t = UInt64

alias uint_fast32_t = UInt64

alias uint_fast64_t = UInt64

alias intptr_t = Int64

alias uintptr_t = UInt64

alias intmax_t = __intmax_t

alias uintmax_t = __uintmax_t

alias mjtNum = Float64

alias mjtByte = UInt8
struct mjtDisableBit_:
	#---------------------------------- enum types (mjt) ----------------------------------------------

	alias mjDSBL_CONSTRAINT: Int32 = 1

	alias mjDSBL_EQUALITY: Int32 = 2

	alias mjDSBL_FRICTIONLOSS: Int32 = 4

	alias mjDSBL_LIMIT: Int32 = 8

	alias mjDSBL_CONTACT: Int32 = 16

	alias mjDSBL_PASSIVE: Int32 = 32

	alias mjDSBL_GRAVITY: Int32 = 64

	alias mjDSBL_CLAMPCTRL: Int32 = 128

	alias mjDSBL_WARMSTART: Int32 = 256

	alias mjDSBL_FILTERPARENT: Int32 = 512

	alias mjDSBL_ACTUATION: Int32 = 1024

	alias mjDSBL_REFSAFE: Int32 = 2048

	alias mjDSBL_SENSOR: Int32 = 4096

	alias mjDSBL_MIDPHASE: Int32 = 8192

	alias mjDSBL_EULERDAMP: Int32 = 16384

	alias mjDSBL_AUTORESET: Int32 = 32768

	alias mjDSBL_NATIVECCD: Int32 = 65536

	alias referenced: mjNDISABLE int = 17


alias mjtDisableBit = mjtDisableBit_
struct mjtEnableBit_:
	alias mjENBL_OVERRIDE: Int32 = 1

	alias mjENBL_ENERGY: Int32 = 2

	alias mjENBL_FWDINV: Int32 = 4

	alias mjENBL_INVDISCRETE: Int32 = 8

	alias mjENBL_MULTICCD: Int32 = 16

	alias mjENBL_ISLAND: Int32 = 32

	alias referenced: mjNENABLE int = 6


alias mjtEnableBit = mjtEnableBit_
struct mjtJoint_:
	alias mjJNT_FREE: Int32 = 0

	alias mjJNT_BALL: Int32 = 1

	alias mjJNT_SLIDE: Int32 = 2

	alias mjJNT_HINGE: Int32 = 3


alias mjtJoint = mjtJoint_
struct mjtGeom_:
	alias mjGEOM_PLANE: Int32 = 0

	alias mjGEOM_HFIELD: Int32 = 1

	alias mjGEOM_SPHERE: Int32 = 2

	alias mjGEOM_CAPSULE: Int32 = 3

	alias mjGEOM_ELLIPSOID: Int32 = 4

	alias mjGEOM_CYLINDER: Int32 = 5

	alias mjGEOM_BOX: Int32 = 6

	alias mjGEOM_MESH: Int32 = 7

	alias mjGEOM_SDF: Int32 = 8

	alias referenced: mjNGEOMTYPES int = 9

	alias mjGEOM_ARROW: Int32 = 100

	alias mjGEOM_ARROW1: Int32 = 101

	alias mjGEOM_ARROW2: Int32 = 102

	alias mjGEOM_LINE: Int32 = 103

	alias mjGEOM_LINEBOX: Int32 = 104

	alias mjGEOM_FLEX: Int32 = 105

	alias mjGEOM_SKIN: Int32 = 106

	alias mjGEOM_LABEL: Int32 = 107

	alias mjGEOM_TRIANGLE: Int32 = 108

	alias mjGEOM_NONE: Int32 = 1001


alias mjtGeom = mjtGeom_
struct mjtCamLight_:
	alias mjCAMLIGHT_FIXED: Int32 = 0

	alias mjCAMLIGHT_TRACK: Int32 = 1

	alias mjCAMLIGHT_TRACKCOM: Int32 = 2

	alias mjCAMLIGHT_TARGETBODY: Int32 = 3

	alias mjCAMLIGHT_TARGETBODYCOM: Int32 = 4


alias mjtCamLight = mjtCamLight_
struct mjtTexture_:
	alias mjTEXTURE_2D: Int32 = 0

	alias mjTEXTURE_CUBE: Int32 = 1

	alias mjTEXTURE_SKYBOX: Int32 = 2


alias mjtTexture = mjtTexture_
struct mjtTextureRole_:
	alias mjTEXROLE_USER: Int32 = 0

	alias mjTEXROLE_RGB: Int32 = 1

	alias mjTEXROLE_OCCLUSION: Int32 = 2

	alias mjTEXROLE_ROUGHNESS: Int32 = 3

	alias mjTEXROLE_METALLIC: Int32 = 4

	alias mjTEXROLE_NORMAL: Int32 = 5

	alias mjTEXROLE_OPACITY: Int32 = 6

	alias mjTEXROLE_EMISSIVE: Int32 = 7

	alias mjTEXROLE_RGBA: Int32 = 8

	alias mjTEXROLE_ORM: Int32 = 9

	alias referenced: mjNTEXROLE int = 10


alias mjtTextureRole = mjtTextureRole_
struct mjtIntegrator_:
	alias mjINT_EULER: Int32 = 0

	alias mjINT_RK4: Int32 = 1

	alias mjINT_IMPLICIT: Int32 = 2

	alias mjINT_IMPLICITFAST: Int32 = 3


alias mjtIntegrator = mjtIntegrator_
struct mjtCone_:
	alias mjCONE_PYRAMIDAL: Int32 = 0

	alias mjCONE_ELLIPTIC: Int32 = 1


alias mjtCone = mjtCone_
struct mjtJacobian_:
	alias mjJAC_DENSE: Int32 = 0

	alias mjJAC_SPARSE: Int32 = 1

	alias mjJAC_AUTO: Int32 = 2


alias mjtJacobian = mjtJacobian_
struct mjtSolver_:
	alias mjSOL_PGS: Int32 = 0

	alias mjSOL_CG: Int32 = 1

	alias mjSOL_NEWTON: Int32 = 2


alias mjtSolver = mjtSolver_
struct mjtEq_:
	alias mjEQ_CONNECT: Int32 = 0

	alias mjEQ_WELD: Int32 = 1

	alias mjEQ_JOINT: Int32 = 2

	alias mjEQ_TENDON: Int32 = 3

	alias mjEQ_FLEX: Int32 = 4

	alias mjEQ_DISTANCE: Int32 = 5


alias mjtEq = mjtEq_
struct mjtWrap_:
	alias mjWRAP_NONE: Int32 = 0

	alias mjWRAP_JOINT: Int32 = 1

	alias mjWRAP_PULLEY: Int32 = 2

	alias mjWRAP_SITE: Int32 = 3

	alias mjWRAP_SPHERE: Int32 = 4

	alias mjWRAP_CYLINDER: Int32 = 5


alias mjtWrap = mjtWrap_
struct mjtTrn_:
	alias mjTRN_JOINT: Int32 = 0

	alias mjTRN_JOINTINPARENT: Int32 = 1

	alias mjTRN_SLIDERCRANK: Int32 = 2

	alias mjTRN_TENDON: Int32 = 3

	alias mjTRN_SITE: Int32 = 4

	alias mjTRN_BODY: Int32 = 5

	alias mjTRN_UNDEFINED: Int32 = 1000


alias mjtTrn = mjtTrn_
struct mjtDyn_:
	alias mjDYN_NONE: Int32 = 0

	alias mjDYN_INTEGRATOR: Int32 = 1

	alias mjDYN_FILTER: Int32 = 2

	alias mjDYN_FILTEREXACT: Int32 = 3

	alias mjDYN_MUSCLE: Int32 = 4

	alias mjDYN_USER: Int32 = 5


alias mjtDyn = mjtDyn_
struct mjtGain_:
	alias mjGAIN_FIXED: Int32 = 0

	alias mjGAIN_AFFINE: Int32 = 1

	alias mjGAIN_MUSCLE: Int32 = 2

	alias mjGAIN_USER: Int32 = 3


alias mjtGain = mjtGain_
struct mjtBias_:
	alias mjBIAS_NONE: Int32 = 0

	alias mjBIAS_AFFINE: Int32 = 1

	alias mjBIAS_MUSCLE: Int32 = 2

	alias mjBIAS_USER: Int32 = 3


alias mjtBias = mjtBias_
struct mjtObj_:
	alias mjOBJ_UNKNOWN: Int32 = 0

	alias mjOBJ_BODY: Int32 = 1

	alias mjOBJ_XBODY: Int32 = 2

	alias mjOBJ_JOINT: Int32 = 3

	alias mjOBJ_DOF: Int32 = 4

	alias mjOBJ_GEOM: Int32 = 5

	alias mjOBJ_SITE: Int32 = 6

	alias mjOBJ_CAMERA: Int32 = 7

	alias mjOBJ_LIGHT: Int32 = 8

	alias mjOBJ_FLEX: Int32 = 9

	alias mjOBJ_MESH: Int32 = 10

	alias mjOBJ_SKIN: Int32 = 11

	alias mjOBJ_HFIELD: Int32 = 12

	alias mjOBJ_TEXTURE: Int32 = 13

	alias mjOBJ_MATERIAL: Int32 = 14

	alias mjOBJ_PAIR: Int32 = 15

	alias mjOBJ_EXCLUDE: Int32 = 16

	alias mjOBJ_EQUALITY: Int32 = 17

	alias mjOBJ_TENDON: Int32 = 18

	alias mjOBJ_ACTUATOR: Int32 = 19

	alias mjOBJ_SENSOR: Int32 = 20

	alias mjOBJ_NUMERIC: Int32 = 21

	alias mjOBJ_TEXT: Int32 = 22

	alias mjOBJ_TUPLE: Int32 = 23

	alias mjOBJ_KEY: Int32 = 24

	alias mjOBJ_PLUGIN: Int32 = 25

	alias mjNOBJECT: Int32 = 26

	alias mjOBJ_FRAME: Int32 = 100

	alias mjOBJ_DEFAULT: Int32 = 101

	alias mjOBJ_MODEL: Int32 = 102


alias mjtObj = mjtObj_
struct mjtConstraint_:
	alias mjCNSTR_EQUALITY: Int32 = 0

	alias mjCNSTR_FRICTION_DOF: Int32 = 1

	alias mjCNSTR_FRICTION_TENDON: Int32 = 2

	alias mjCNSTR_LIMIT_JOINT: Int32 = 3

	alias mjCNSTR_LIMIT_TENDON: Int32 = 4

	alias mjCNSTR_CONTACT_FRICTIONLESS: Int32 = 5

	alias mjCNSTR_CONTACT_PYRAMIDAL: Int32 = 6

	alias mjCNSTR_CONTACT_ELLIPTIC: Int32 = 7


alias mjtConstraint = mjtConstraint_
struct mjtConstraintState_:
	alias mjCNSTRSTATE_SATISFIED: Int32 = 0

	alias mjCNSTRSTATE_QUADRATIC: Int32 = 1

	alias mjCNSTRSTATE_LINEARNEG: Int32 = 2

	alias mjCNSTRSTATE_LINEARPOS: Int32 = 3

	alias mjCNSTRSTATE_CONE: Int32 = 4


alias mjtConstraintState = mjtConstraintState_
struct mjtSensor_:
	alias mjSENS_TOUCH: Int32 = 0

	alias mjSENS_ACCELEROMETER: Int32 = 1

	alias mjSENS_VELOCIMETER: Int32 = 2

	alias mjSENS_GYRO: Int32 = 3

	alias mjSENS_FORCE: Int32 = 4

	alias mjSENS_TORQUE: Int32 = 5

	alias mjSENS_MAGNETOMETER: Int32 = 6

	alias mjSENS_RANGEFINDER: Int32 = 7

	alias mjSENS_CAMPROJECTION: Int32 = 8

	alias mjSENS_JOINTPOS: Int32 = 9

	alias mjSENS_JOINTVEL: Int32 = 10

	alias mjSENS_TENDONPOS: Int32 = 11

	alias mjSENS_TENDONVEL: Int32 = 12

	alias mjSENS_ACTUATORPOS: Int32 = 13

	alias mjSENS_ACTUATORVEL: Int32 = 14

	alias mjSENS_ACTUATORFRC: Int32 = 15

	alias mjSENS_JOINTACTFRC: Int32 = 16

	alias mjSENS_BALLQUAT: Int32 = 17

	alias mjSENS_BALLANGVEL: Int32 = 18

	alias mjSENS_JOINTLIMITPOS: Int32 = 19

	alias mjSENS_JOINTLIMITVEL: Int32 = 20

	alias mjSENS_JOINTLIMITFRC: Int32 = 21

	alias mjSENS_TENDONLIMITPOS: Int32 = 22

	alias mjSENS_TENDONLIMITVEL: Int32 = 23

	alias mjSENS_TENDONLIMITFRC: Int32 = 24

	alias mjSENS_FRAMEPOS: Int32 = 25

	alias mjSENS_FRAMEQUAT: Int32 = 26

	alias mjSENS_FRAMEXAXIS: Int32 = 27

	alias mjSENS_FRAMEYAXIS: Int32 = 28

	alias mjSENS_FRAMEZAXIS: Int32 = 29

	alias mjSENS_FRAMELINVEL: Int32 = 30

	alias mjSENS_FRAMEANGVEL: Int32 = 31

	alias mjSENS_FRAMELINACC: Int32 = 32

	alias mjSENS_FRAMEANGACC: Int32 = 33

	alias mjSENS_SUBTREECOM: Int32 = 34

	alias mjSENS_SUBTREELINVEL: Int32 = 35

	alias mjSENS_SUBTREEANGMOM: Int32 = 36

	alias mjSENS_GEOMDIST: Int32 = 37

	alias mjSENS_GEOMNORMAL: Int32 = 38

	alias mjSENS_GEOMFROMTO: Int32 = 39

	alias mjSENS_E_POTENTIAL: Int32 = 40

	alias mjSENS_E_KINETIC: Int32 = 41

	alias mjSENS_CLOCK: Int32 = 42

	alias mjSENS_PLUGIN: Int32 = 43

	alias mjSENS_USER: Int32 = 44


alias mjtSensor = mjtSensor_
struct mjtStage_:
	alias mjSTAGE_NONE: Int32 = 0

	alias mjSTAGE_POS: Int32 = 1

	alias mjSTAGE_VEL: Int32 = 2

	alias mjSTAGE_ACC: Int32 = 3


alias mjtStage = mjtStage_
struct mjtDataType_:
	alias mjDATATYPE_REAL: Int32 = 0

	alias mjDATATYPE_POSITIVE: Int32 = 1

	alias mjDATATYPE_AXIS: Int32 = 2

	alias mjDATATYPE_QUATERNION: Int32 = 3


alias mjtDataType = mjtDataType_
struct mjtSameFrame_:
	alias mjSAMEFRAME_NONE: Int32 = 0

	alias mjSAMEFRAME_BODY: Int32 = 1

	alias mjSAMEFRAME_INERTIA: Int32 = 2

	alias mjSAMEFRAME_BODYROT: Int32 = 3

	alias mjSAMEFRAME_INERTIAROT: Int32 = 4


alias mjtSameFrame = mjtSameFrame_
struct mjtLRMode_:
	alias mjLRMODE_NONE: Int32 = 0

	alias mjLRMODE_MUSCLE: Int32 = 1

	alias mjLRMODE_MUSCLEUSER: Int32 = 2

	alias mjLRMODE_ALL: Int32 = 3


alias mjtLRMode = mjtLRMode_
struct mjtFlexSelf_:
	alias mjFLEXSELF_NONE: Int32 = 0

	alias mjFLEXSELF_NARROW: Int32 = 1

	alias mjFLEXSELF_BVH: Int32 = 2

	alias mjFLEXSELF_SAP: Int32 = 3

	alias mjFLEXSELF_AUTO: Int32 = 4


alias mjtFlexSelf = mjtFlexSelf_
struct mjLROpt_:
	#---------------------------------- mjLROpt -------------------------------------------------------

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
	#---------------------------------- mjVFS ---------------------------------------------------------

	var impl_: UnsafePointer[NoneType]


alias mjVFS = mjVFS_
struct mjOption_:
	#---------------------------------- mjOption ------------------------------------------------------

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
struct _mjVisual___Anonymous_line_552_3:
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


struct _mjVisual___Anonymous_line_532_3:
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


struct _mjVisual___Anonymous_line_516_3:
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


struct _mjVisual___Anonymous_line_509_3:
	var ambient: SIMD[Float32.dtype, 3]

	var diffuse: SIMD[Float32.dtype, 3]

	var specular: SIMD[Float32.dtype, 3]

	var active: Int32


struct _mjVisual___Anonymous_line_501_3:
	var shadowsize: Int32

	var offsamples: Int32

	var numslices: Int32

	var numstacks: Int32

	var numquads: Int32


struct _mjVisual___Anonymous_line_486_3:
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
	#---------------------------------- mjVisual ------------------------------------------------------

	var `global`: _mjVisual___Anonymous_line_486_3

	var quality: _mjVisual___Anonymous_line_501_3

	var headlight: _mjVisual___Anonymous_line_509_3

	var map: _mjVisual___Anonymous_line_516_3

	var scale: _mjVisual___Anonymous_line_532_3

	var rgba: _mjVisual___Anonymous_line_552_3


alias mjVisual = mjVisual_
struct mjStatistic_:
	#---------------------------------- mjStatistic ---------------------------------------------------

	var meaninertia: mjtNum

	var meanmass: mjtNum

	var meansize: mjtNum

	var extent: mjtNum

	var center: SIMD[mjtNum.dtype, 3]


alias mjStatistic = mjStatistic_
struct mjModel_:
	#---------------------------------- mjModel -------------------------------------------------------

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
struct mjtTaskStatus_:
	alias mjTASK_NEW: Int32 = 0

	alias mjTASK_QUEUED: Int32 = 1

	alias mjTASK_COMPLETED: Int32 = 2


alias mjtTaskStatus = mjtTaskStatus_

alias mjfTask = void *(*)(void *)
struct mjThreadPool_:
	# An opaque type representing a thread pool.

	var nworker: Int32


alias mjThreadPool = mjThreadPool_
struct mjTask_:
	var func: mjfTask

	var args: UnsafePointer[NoneType]

	var status: volatile int


alias mjTask = mjTask_
struct mjtState_:
	#---------------------------------- primitive types (mjt) -----------------------------------------

	alias referenced: mjSTATE_TIME int = 1

	alias referenced: mjSTATE_QPOS int = 2

	alias referenced: mjSTATE_QVEL int = 4

	alias referenced: mjSTATE_ACT int = 8

	alias referenced: mjSTATE_WARMSTART int = 16

	alias referenced: mjSTATE_CTRL int = 32

	alias referenced: mjSTATE_QFRC_APPLIED int = 64

	alias referenced: mjSTATE_XFRC_APPLIED int = 128

	alias referenced: mjSTATE_EQ_ACTIVE int = 256

	alias referenced: mjSTATE_MOCAP_POS int = 512

	alias referenced: mjSTATE_MOCAP_QUAT int = 1024

	alias referenced: mjSTATE_USERDATA int = 2048

	alias referenced: mjSTATE_PLUGIN int = 4096

	alias mjNSTATE: Int32 = 13

	alias referenced: mjSTATE_PHYSICS int = 14

	alias referenced: mjSTATE_FULLPHYSICS int = 4111

	alias referenced: mjSTATE_USER int = 4064

	alias mjSTATE_INTEGRATION: Int32 = 8191


alias mjtState = mjtState_
struct mjtWarning_:
	alias mjWARN_INERTIA: Int32 = 0

	alias mjWARN_CONTACTFULL: Int32 = 1

	alias mjWARN_CNSTRFULL: Int32 = 2

	alias mjWARN_VGEOMFULL: Int32 = 3

	alias mjWARN_BADQPOS: Int32 = 4

	alias mjWARN_BADQVEL: Int32 = 5

	alias mjWARN_BADQACC: Int32 = 6

	alias mjWARN_BADCTRL: Int32 = 7

	alias referenced: mjNWARNING int = 8


alias mjtWarning = mjtWarning_
struct mjtTimer_:
	alias mjTIMER_STEP: Int32 = 0

	alias mjTIMER_FORWARD: Int32 = 1

	alias mjTIMER_INVERSE: Int32 = 2

	alias mjTIMER_POSITION: Int32 = 3

	alias mjTIMER_VELOCITY: Int32 = 4

	alias mjTIMER_ACTUATION: Int32 = 5

	alias mjTIMER_CONSTRAINT: Int32 = 6

	alias mjTIMER_ADVANCE: Int32 = 7

	alias mjTIMER_POS_KINEMATICS: Int32 = 8

	alias mjTIMER_POS_INERTIA: Int32 = 9

	alias mjTIMER_POS_COLLISION: Int32 = 10

	alias mjTIMER_POS_MAKE: Int32 = 11

	alias mjTIMER_POS_PROJECT: Int32 = 12

	alias mjTIMER_COL_BROAD: Int32 = 13

	alias mjTIMER_COL_NARROW: Int32 = 14

	alias referenced: mjNTIMER int = 15


alias mjtTimer = mjtTimer_
struct mjContact_:
	#---------------------------------- mjContact -----------------------------------------------------

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
	#---------------------------------- diagnostics ---------------------------------------------------

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
	#---------------------------------- mjData --------------------------------------------------------

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

alias mjfGeneric = mjModel_

alias mjfConFilt = mjModel_

alias mjfSensor = mjModel_

alias mjfTime = mjtNum (*)(void)

alias mjfAct = mjModel_

alias mjfCollision = mjModel_
struct mjtCatBit_:
	#---------------------------------- primitive types (mjt) -----------------------------------------

	alias mjCAT_STATIC: Int32 = 1

	alias mjCAT_DYNAMIC: Int32 = 2

	alias mjCAT_DECOR: Int32 = 4

	alias mjCAT_ALL: Int32 = 7


alias mjtCatBit = mjtCatBit_
struct mjtMouse_:
	alias mjMOUSE_NONE: Int32 = 0

	alias mjMOUSE_ROTATE_V: Int32 = 1

	alias mjMOUSE_ROTATE_H: Int32 = 2

	alias mjMOUSE_MOVE_V: Int32 = 3

	alias mjMOUSE_MOVE_H: Int32 = 4

	alias mjMOUSE_ZOOM: Int32 = 5

	alias mjMOUSE_SELECT: Int32 = 6


alias mjtMouse = mjtMouse_
struct mjtPertBit_:
	alias mjPERT_TRANSLATE: Int32 = 1

	alias mjPERT_ROTATE: Int32 = 2


alias mjtPertBit = mjtPertBit_
struct mjtCamera_:
	alias mjCAMERA_FREE: Int32 = 0

	alias mjCAMERA_TRACKING: Int32 = 1

	alias mjCAMERA_FIXED: Int32 = 2

	alias mjCAMERA_USER: Int32 = 3


alias mjtCamera = mjtCamera_
struct mjtLabel_:
	alias mjLABEL_NONE: Int32 = 0

	alias mjLABEL_BODY: Int32 = 1

	alias mjLABEL_JOINT: Int32 = 2

	alias mjLABEL_GEOM: Int32 = 3

	alias mjLABEL_SITE: Int32 = 4

	alias mjLABEL_CAMERA: Int32 = 5

	alias mjLABEL_LIGHT: Int32 = 6

	alias mjLABEL_TENDON: Int32 = 7

	alias mjLABEL_ACTUATOR: Int32 = 8

	alias mjLABEL_CONSTRAINT: Int32 = 9

	alias mjLABEL_FLEX: Int32 = 10

	alias mjLABEL_SKIN: Int32 = 11

	alias mjLABEL_SELECTION: Int32 = 12

	alias mjLABEL_SELPNT: Int32 = 13

	alias mjLABEL_CONTACTPOINT: Int32 = 14

	alias mjLABEL_CONTACTFORCE: Int32 = 15

	alias mjLABEL_ISLAND: Int32 = 16

	alias referenced: mjNLABEL int = 17


alias mjtLabel = mjtLabel_
struct mjtFrame_:
	alias mjFRAME_NONE: Int32 = 0

	alias mjFRAME_BODY: Int32 = 1

	alias mjFRAME_GEOM: Int32 = 2

	alias mjFRAME_SITE: Int32 = 3

	alias mjFRAME_CAMERA: Int32 = 4

	alias mjFRAME_LIGHT: Int32 = 5

	alias mjFRAME_CONTACT: Int32 = 6

	alias mjFRAME_WORLD: Int32 = 7

	alias referenced: mjNFRAME int = 8


alias mjtFrame = mjtFrame_
struct mjtVisFlag_:
	alias mjVIS_CONVEXHULL: Int32 = 0

	alias mjVIS_TEXTURE: Int32 = 1

	alias mjVIS_JOINT: Int32 = 2

	alias mjVIS_CAMERA: Int32 = 3

	alias mjVIS_ACTUATOR: Int32 = 4

	alias mjVIS_ACTIVATION: Int32 = 5

	alias mjVIS_LIGHT: Int32 = 6

	alias mjVIS_TENDON: Int32 = 7

	alias mjVIS_RANGEFINDER: Int32 = 8

	alias mjVIS_CONSTRAINT: Int32 = 9

	alias mjVIS_INERTIA: Int32 = 10

	alias mjVIS_SCLINERTIA: Int32 = 11

	alias mjVIS_PERTFORCE: Int32 = 12

	alias mjVIS_PERTOBJ: Int32 = 13

	alias mjVIS_CONTACTPOINT: Int32 = 14

	alias mjVIS_ISLAND: Int32 = 15

	alias mjVIS_CONTACTFORCE: Int32 = 16

	alias mjVIS_CONTACTSPLIT: Int32 = 17

	alias mjVIS_TRANSPARENT: Int32 = 18

	alias mjVIS_AUTOCONNECT: Int32 = 19

	alias mjVIS_COM: Int32 = 20

	alias mjVIS_SELECT: Int32 = 21

	alias mjVIS_STATIC: Int32 = 22

	alias mjVIS_SKIN: Int32 = 23

	alias mjVIS_FLEXVERT: Int32 = 24

	alias mjVIS_FLEXEDGE: Int32 = 25

	alias mjVIS_FLEXFACE: Int32 = 26

	alias mjVIS_FLEXSKIN: Int32 = 27

	alias mjVIS_BODYBVH: Int32 = 28

	alias mjVIS_FLEXBVH: Int32 = 29

	alias mjVIS_MESHBVH: Int32 = 30

	alias mjVIS_SDFITER: Int32 = 31

	alias referenced: mjNVISFLAG int = 32


alias mjtVisFlag = mjtVisFlag_
struct mjtRndFlag_:
	alias mjRND_SHADOW: Int32 = 0

	alias mjRND_WIREFRAME: Int32 = 1

	alias mjRND_REFLECTION: Int32 = 2

	alias mjRND_ADDITIVE: Int32 = 3

	alias mjRND_SKYBOX: Int32 = 4

	alias mjRND_FOG: Int32 = 5

	alias mjRND_HAZE: Int32 = 6

	alias mjRND_SEGMENT: Int32 = 7

	alias mjRND_IDCOLOR: Int32 = 8

	alias mjRND_CULL_FACE: Int32 = 9

	alias referenced: mjNRNDFLAG int = 10


alias mjtRndFlag = mjtRndFlag_
struct mjtStereo_:
	alias mjSTEREO_NONE: Int32 = 0

	alias mjSTEREO_QUADBUFFERED: Int32 = 1

	alias mjSTEREO_SIDEBYSIDE: Int32 = 2


alias mjtStereo = mjtStereo_
struct mjvPerturb_:
	#---------------------------------- mjvPerturb ----------------------------------------------------

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
	#---------------------------------- mjvCamera -----------------------------------------------------

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
	#---------------------------------- mjvGLCamera ---------------------------------------------------

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
	#---------------------------------- mjvGeom -------------------------------------------------------

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
	#---------------------------------- mjvLight ------------------------------------------------------

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
	#---------------------------------- mjvOption -----------------------------------------------------

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
	#---------------------------------- mjvScene ------------------------------------------------------

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
	#---------------------------------- mjvFigure -----------------------------------------------------

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
struct _mjvSceneState___Anonymous_line_634_3:
	# fields in mjData that are necessary to re-render a scene

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


struct _mjvSceneState___Anonymous_line_417_3:
	# fields in mjModel that are necessary to re-render a scene

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
	#---------------------------------- mjvSceneState -------------------------------------------------

	var nbuffer: Int32

	var buffer: UnsafePointer[NoneType]

	var maxgeom: Int32

	var scratch: mjvScene

	var model: _mjvSceneState___Anonymous_line_417_3

	var data: _mjvSceneState___Anonymous_line_634_3


alias mjvSceneState = mjvSceneState_
# Forward declaration of _mjResource__mjpResourceProvider	pass


struct mjResource_:
	#---------------------------------- Resource Provider ---------------------------------------------

	var name: UnsafePointer[Int8]

	var data: UnsafePointer[NoneType]

	var timestamp: SIMD[Int8.dtype, 512]

	var provider: UnsafePointer[const mjpResourceProvider]


alias mjResource = mjResource_

alias mjfOpenResource = mjResource_

alias mjfReadResource = mjResource_

alias mjfCloseResource = mjResource_

alias mjfGetResourceDir = mjResource_

alias mjfResourceModified = mjResource_
struct mjpResourceProvider:
	# struct describing a single resource provider

	var prefix: UnsafePointer[const char]

	var open: mjfOpenResource

	var read: mjfReadResource

	var close: mjfCloseResource

	var getdir: mjfGetResourceDir

	var modified: mjfResourceModified

	var data: UnsafePointer[NoneType]


alias mjpResourceProvider = mjpResourceProvider
struct mjtPluginCapabilityBit_:
	#---------------------------------- Plugins -------------------------------------------------------

	alias mjPLUGIN_ACTUATOR: Int32 = 1

	alias mjPLUGIN_SENSOR: Int32 = 2

	alias mjPLUGIN_PASSIVE: Int32 = 4

	alias mjPLUGIN_SDF: Int32 = 8


alias mjtPluginCapabilityBit = mjtPluginCapabilityBit_
struct mjpPlugin_:
	var name: UnsafePointer[const char]

	var nattribute: Int32

	var attributes: UnsafePointer[const char *const]

	var capabilityflags: Int32

	var needstage: Int32

	var nstate: int (*)(const mjModel *, int)

	var nsensordata: int (*)(const mjModel *, int, int)

	var init: int (*)(const mjModel *, mjData *, int)

	var destroy: void (*)(mjData *, int)

	var copy: void (*)(mjData *, const mjModel *, const mjData *, int)

	var reset: void (*)(const mjModel *, mjtNum *, void *, int)

	var compute: void (*)(const mjModel *, mjData *, int, int)

	var advance: void (*)(const mjModel *, mjData *, int)

	var visualize: void (*)(const mjModel *, mjData *, const mjvOption *, mjvScene *, int)

	var actuator_act_dot: void (*)(const mjModel *, mjData *, int)

	var sdf_distance: mjtNum (*)(const mjtNum *, const mjData *, int)

	var sdf_gradient: void (*)(mjtNum *, const mjtNum *, const mjData *, int)

	var sdf_staticdistance: mjtNum (*)(const mjtNum *, const mjtNum *)

	var sdf_attribute: void (*)(mjtNum *, const char **, const char **)

	var sdf_aabb: void (*)(mjtNum *, const mjtNum *)


alias mjpPlugin = mjpPlugin_

alias mjfPluginLibraryLoadCallback = void (*)(const char *, int, int)
struct mjtGridPos_:
	#---------------------------------- primitive types (mjt) -----------------------------------------

	alias mjGRID_TOPLEFT: Int32 = 0

	alias mjGRID_TOPRIGHT: Int32 = 1

	alias mjGRID_BOTTOMLEFT: Int32 = 2

	alias mjGRID_BOTTOMRIGHT: Int32 = 3

	alias mjGRID_TOP: Int32 = 4

	alias mjGRID_BOTTOM: Int32 = 5

	alias mjGRID_LEFT: Int32 = 6

	alias mjGRID_RIGHT: Int32 = 7


alias mjtGridPos = mjtGridPos_
struct mjtFramebuffer_:
	alias mjFB_WINDOW: Int32 = 0

	alias mjFB_OFFSCREEN: Int32 = 1


alias mjtFramebuffer = mjtFramebuffer_
struct mjtDepthMap_:
	alias mjDEPTH_ZERONEAR: Int32 = 0

	alias mjDEPTH_ZEROFAR: Int32 = 1


alias mjtDepthMap = mjtDepthMap_
struct mjtFontScale_:
	alias mjFONTSCALE_50: Int32 = 50

	alias mjFONTSCALE_100: Int32 = 100

	alias mjFONTSCALE_150: Int32 = 150

	alias mjFONTSCALE_200: Int32 = 200

	alias mjFONTSCALE_250: Int32 = 250

	alias mjFONTSCALE_300: Int32 = 300


alias mjtFontScale = mjtFontScale_
struct mjtFont_:
	alias mjFONT_NORMAL: Int32 = 0

	alias mjFONT_SHADOW: Int32 = 1

	alias mjFONT_BIG: Int32 = 2


alias mjtFont = mjtFont_
struct mjrRect_:
	var left: Int32

	var bottom: Int32

	var width: Int32

	var height: Int32


alias mjrRect = mjrRect_
struct mjrContext_:
	#---------------------------------- mjrContext ----------------------------------------------------

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

alias mjStringVec = NoneType

alias mjIntVec = NoneType

alias mjIntVecVec = NoneType

alias mjFloatVec = NoneType

alias mjFloatVecVec = NoneType

alias mjDoubleVec = NoneType

alias mjByteVec = NoneType
struct mjtGeomInertia_:
	#-------------------------------- enum types (mjt) ------------------------------------------------

	alias mjINERTIA_VOLUME: Int32 = 0

	alias mjINERTIA_SHELL: Int32 = 1


alias mjtGeomInertia = mjtGeomInertia_
struct mjtMeshInertia_:
	alias mjMESH_INERTIA_CONVEX: Int32 = 0

	alias mjMESH_INERTIA_EXACT: Int32 = 1

	alias mjMESH_INERTIA_LEGACY: Int32 = 2

	alias mjMESH_INERTIA_SHELL: Int32 = 3


alias mjtMeshInertia = mjtMeshInertia_
struct mjtBuiltin_:
	alias mjBUILTIN_NONE: Int32 = 0

	alias mjBUILTIN_GRADIENT: Int32 = 1

	alias mjBUILTIN_CHECKER: Int32 = 2

	alias mjBUILTIN_FLAT: Int32 = 3


alias mjtBuiltin = mjtBuiltin_
struct mjtMark_:
	alias mjMARK_NONE: Int32 = 0

	alias mjMARK_EDGE: Int32 = 1

	alias mjMARK_CROSS: Int32 = 2

	alias mjMARK_RANDOM: Int32 = 3


alias mjtMark = mjtMark_
struct mjtLimited_:
	alias mjLIMITED_FALSE: Int32 = 0

	alias mjLIMITED_TRUE: Int32 = 1

	alias mjLIMITED_AUTO: Int32 = 2


alias mjtLimited = mjtLimited_
struct mjtAlignFree_:
	alias mjALIGNFREE_FALSE: Int32 = 0

	alias mjALIGNFREE_TRUE: Int32 = 1

	alias mjALIGNFREE_AUTO: Int32 = 2


alias mjtAlignFree = mjtAlignFree_
struct mjtInertiaFromGeom_:
	alias mjINERTIAFROMGEOM_FALSE: Int32 = 0

	alias mjINERTIAFROMGEOM_TRUE: Int32 = 1

	alias mjINERTIAFROMGEOM_AUTO: Int32 = 2


alias mjtInertiaFromGeom = mjtInertiaFromGeom_
struct mjtOrientation_:
	alias mjORIENTATION_QUAT: Int32 = 0

	alias mjORIENTATION_AXISANGLE: Int32 = 1

	alias mjORIENTATION_XYAXES: Int32 = 2

	alias mjORIENTATION_ZAXIS: Int32 = 3

	alias mjORIENTATION_EULER: Int32 = 4


alias mjtOrientation = mjtOrientation_
struct mjsElement_:
	#-------------------------------- attribute structs (mjs) -----------------------------------------

	var elemtype: mjtObj

	var signature: uint64_t


alias mjsElement = mjsElement_
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
struct mjtButton_:
	#---------------------------------- primitive types (mjt) -----------------------------------------

	alias mjBUTTON_NONE: Int32 = 0

	alias mjBUTTON_LEFT: Int32 = 1

	alias mjBUTTON_RIGHT: Int32 = 2

	alias mjBUTTON_MIDDLE: Int32 = 3


alias mjtButton = mjtButton_
struct mjtEvent_:
	alias mjEVENT_NONE: Int32 = 0

	alias mjEVENT_MOVE: Int32 = 1

	alias mjEVENT_PRESS: Int32 = 2

	alias mjEVENT_RELEASE: Int32 = 3

	alias mjEVENT_SCROLL: Int32 = 4

	alias mjEVENT_KEY: Int32 = 5

	alias mjEVENT_RESIZE: Int32 = 6

	alias mjEVENT_REDRAW: Int32 = 7

	alias mjEVENT_FILESDROP: Int32 = 8


alias mjtEvent = mjtEvent_
struct mjtItem_:
	alias mjITEM_END: Int32 = -2

	alias mjITEM_SECTION: Int32 = -1

	alias mjITEM_SEPARATOR: Int32 = 0

	alias mjITEM_STATIC: Int32 = 1

	alias mjITEM_BUTTON: Int32 = 2

	alias mjITEM_CHECKINT: Int32 = 3

	alias mjITEM_CHECKBYTE: Int32 = 4

	alias mjITEM_RADIO: Int32 = 5

	alias mjITEM_RADIOLINE: Int32 = 6

	alias mjITEM_SELECT: Int32 = 7

	alias mjITEM_SLIDERINT: Int32 = 8

	alias mjITEM_SLIDERNUM: Int32 = 9

	alias mjITEM_EDITINT: Int32 = 10

	alias mjITEM_EDITNUM: Int32 = 11

	alias mjITEM_EDITFLOAT: Int32 = 12

	alias mjITEM_EDITTXT: Int32 = 13

	alias mjNITEM: Int32 = 14


alias mjtItem = mjtItem_
struct mjtSection_:
	alias mjSECT_CLOSED: Int32 = 0

	alias mjSECT_OPEN: Int32 = 1

	alias mjSECT_FIXED: Int32 = 2


alias mjtSection = mjtSection_

alias mjfItemEnable = int (*)(int, void *)
struct mjuiState_:
	#---------------------------------- mjuiState -----------------------------------------------------

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

	var droppaths: UnsafePointer[const char *]


alias mjuiState = mjuiState_
struct mjuiThemeSpacing_:
	#---------------------------------- mjuiThemeSpacing ----------------------------------------------

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
	#---------------------------------- mjuiThemeColor ------------------------------------------------

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
	#---------------------------------- mjuiItem ------------------------------------------------------

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

struct _mjuiItem__definition:
	# type-specific properties

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

	var implicit: union mjuiItem_::(anonymous at /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjui.h:259:3)

	# (placeholder) | |-IndirectFieldDecl 0x746c58 <line:260:28> col:28 implicit single 'struct mjuiItemSingle_':'struct mjuiItemSingle_'

	# (placeholder) | | |-Field 0x746bf8 '' 'union mjuiItem_::(anonymous at /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjui.h:259:3)'

	# (placeholder) | | `-Field 0x746850 'single' 'struct mjuiItemSingle_':'struct mjuiItemSingle_'

	# (placeholder) | |-IndirectFieldDecl 0x746cb0 <line:261:27> col:27 implicit multi 'struct mjuiItemMulti_':'struct mjuiItemMulti_'

	# (placeholder) | | |-Field 0x746bf8 '' 'union mjuiItem_::(anonymous at /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjui.h:259:3)'

	# (placeholder) | | `-Field 0x746920 'multi' 'struct mjuiItemMulti_':'struct mjuiItemMulti_'

	# (placeholder) | |-IndirectFieldDecl 0x746d08 <line:262:28> col:28 implicit slider 'struct mjuiItemSlider_':'struct mjuiItemSlider_'

	# (placeholder) | | |-Field 0x746bf8 '' 'union mjuiItem_::(anonymous at /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjui.h:259:3)'

	# (placeholder) | | `-Field 0x7469f0 'slider' 'struct mjuiItemSlider_':'struct mjuiItemSlider_'

	# (placeholder) | |-IndirectFieldDecl 0x746d60 <line:263:26> col:26 implicit edit 'struct mjuiItemEdit_':'struct mjuiItemEdit_'

	# (placeholder) | | |-Field 0x746bf8 '' 'union mjuiItem_::(anonymous at /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjui.h:259:3)'

	# (placeholder) | | `-Field 0x746ac0 'edit' 'struct mjuiItemEdit_':'struct mjuiItemEdit_'

	var rect: mjrRect

	var skip: Int32


alias mjuiItem = mjuiItem_
struct mjuiSection_:
	#---------------------------------- mjuiSection ---------------------------------------------------

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
	#---------------------------------- mjUI ----------------------------------------------------------

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
	#---------------------------------- mjuiDef -------------------------------------------------------

	var type: Int32

	var name: SIMD[Int8.dtype, 40]

	var state: Int32

	var pdata: UnsafePointer[NoneType]

	var other: SIMD[Int8.dtype, 300]

	var otherint: Int32


alias mjuiDef = mjuiDef_

alias mju_user_error: NoneType # extern

alias mju_user_warning: NoneType # extern

alias mju_user_malloc: NoneType # extern

alias mju_user_free: NoneType # extern

alias mjcb_passive: mjfGeneric # extern

alias mjcb_control: mjfGeneric # extern

alias mjcb_contactfilter: mjfConFilt # extern

alias mjcb_sensor: mjfSensor # extern

alias mjcb_time: mjfTime # extern

alias mjcb_act_dyn: mjfAct # extern

alias mjcb_act_gain: mjfAct # extern

alias mjcb_act_bias: mjfAct # extern

alias mjCOLLISIONFUNC: SIMD[mjfCollision.dtype, 9] # extern

alias mjDISABLESTRING: const # extern

alias mjENABLESTRING: const # extern

alias mjTIMERSTRING: const # extern

alias mjLABELSTRING: const # extern

alias mjFRAMESTRING: const # extern

alias mjVISSTRING: const # extern

alias mjRNDSTRING: const # extern

alias mj_defaultVFS = fn (vfs: mjVFS *) -> NoneType

alias mj_addFileVFS = fn (vfs: mjVFS *, directory: const char *, filename: const char *) -> Int32

alias mj_addBufferVFS = fn (vfs: mjVFS *, name: const char *, buffer: const void *, nbuffer: Int32) -> Int32

alias mj_deleteFileVFS = fn (vfs: mjVFS *, filename: const char *) -> Int32

alias mj_deleteVFS = fn (vfs: mjVFS *) -> NoneType

alias mj_loadXML = fn (filename: const char *, vfs: const mjVFS *, error: char *, error_sz: Int32) -> mjModel *(const char *, const mjVFS *, char *, int)

alias mj_parseXML = fn (filename: const char *, vfs: const mjVFS *, error: char *, error_sz: Int32) -> mjSpec *(const char *, const mjVFS *, char *, int)

alias mj_parseXMLString = fn (xml: const char *, vfs: const mjVFS *, error: char *, error_sz: Int32) -> mjSpec *(const char *, const mjVFS *, char *, int)

alias mj_compile = fn (s: mjSpec *, vfs: const mjVFS *) -> mjModel *(mjSpec *, const mjVFS *)

alias mj_recompile = fn (s: mjSpec *, vfs: const mjVFS *, m: mjModel *, d: mjData *) -> Int32

alias mj_saveLastXML = fn (filename: const char *, m: const mjModel *, error: char *, error_sz: Int32) -> Int32

alias mj_freeLastXML = fn () -> NoneType

alias mj_saveXMLString = fn (s: const mjSpec *, xml: char *, xml_sz: Int32, error: char *, error_sz: Int32) -> Int32

alias mj_saveXML = fn (s: const mjSpec *, filename: const char *, error: char *, error_sz: Int32) -> Int32

alias mj_step = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_step1 = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_step2 = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_forward = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_inverse = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_forwardSkip = fn (m: const mjModel *, d: mjData *, skipstage: Int32, skipsensor: Int32) -> NoneType

alias mj_inverseSkip = fn (m: const mjModel *, d: mjData *, skipstage: Int32, skipsensor: Int32) -> NoneType

alias mj_defaultLROpt = fn (opt: mjLROpt *) -> NoneType

alias mj_defaultSolRefImp = fn (solref: mjtNum *, solimp: mjtNum *) -> NoneType

alias mj_defaultOption = fn (opt: mjOption *) -> NoneType

alias mj_defaultVisual = fn (vis: mjVisual *) -> NoneType

alias mj_copyModel = fn (dest: mjModel *, src: const mjModel *) -> mjModel *(mjModel *, const mjModel *)

alias mj_saveModel = fn (m: const mjModel *, filename: const char *, buffer: void *, buffer_sz: Int32) -> NoneType

alias mj_loadModel = fn (filename: const char *, vfs: const mjVFS *) -> mjModel *(const char *, const mjVFS *)

alias mj_deleteModel = fn (m: mjModel *) -> NoneType

alias mj_sizeModel = fn (m: const mjModel *) -> Int32

alias mj_makeData = fn (m: const mjModel *) -> mjData *(const mjModel *)

alias mj_copyData = fn (dest: mjData *, m: const mjModel *, src: const mjData *) -> mjData *(mjData *, const mjModel *, const mjData *)

alias mj_resetData = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_resetDataDebug = fn (m: const mjModel *, d: mjData *, debug_value: UInt8) -> NoneType

alias mj_resetDataKeyframe = fn (m: const mjModel *, d: mjData *, key: Int32) -> NoneType

alias mj_markStack = fn (d: mjData *) -> NoneType

alias mj_freeStack = fn (d: mjData *) -> NoneType

alias mj_stackAllocByte = fn (d: mjData *, bytes: size_t:unsigned long, alignment: size_t:unsigned long) -> void *(mjData *, size_t, size_t)

alias mj_stackAllocNum = fn (d: mjData *, size: size_t:unsigned long) -> mjtNum *(mjData *, size_t)

alias mj_stackAllocInt = fn (d: mjData *, size: size_t:unsigned long) -> int *(mjData *, size_t)

alias mj_deleteData = fn (d: mjData *) -> NoneType

alias mj_resetCallbacks = fn () -> NoneType

alias mj_setConst = fn (m: mjModel *, d: mjData *) -> NoneType

alias mj_setLengthRange = fn (m: mjModel *, d: mjData *, index: Int32, opt: const mjLROpt *, error: char *, error_sz: Int32) -> Int32

alias mj_makeSpec = fn () -> mjSpec *(void)

alias mj_copySpec = fn (s: const mjSpec *) -> mjSpec *(const mjSpec *)

alias mj_deleteSpec = fn (s: mjSpec *) -> NoneType

alias mjs_activatePlugin = fn (s: mjSpec *, name: const char *) -> Int32

alias mjs_setDeepCopy = fn (s: mjSpec *, deepcopy: Int32) -> Int32

alias mj_printFormattedModel = fn (m: const mjModel *, filename: const char *, float_format: const char *) -> NoneType

alias mj_printModel = fn (m: const mjModel *, filename: const char *) -> NoneType

alias mj_printFormattedData = fn (m: const mjModel *, d: const mjData *, filename: const char *, float_format: const char *) -> NoneType

alias mj_printData = fn (m: const mjModel *, d: const mjData *, filename: const char *) -> NoneType

alias mju_printMat = fn (mat: const mjtNum *, nr: Int32, nc: Int32) -> NoneType

alias mju_printMatSparse = fn (mat: const mjtNum *, nr: Int32, rownnz: const int *, rowadr: const int *, colind: const int *) -> NoneType

alias mj_printSchema = fn (filename: const char *, buffer: char *, buffer_sz: Int32, flg_html: Int32, flg_pad: Int32) -> Int32

alias mj_fwdPosition = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_fwdVelocity = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_fwdActuation = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_fwdAcceleration = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_fwdConstraint = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_Euler = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_RungeKutta = fn (m: const mjModel *, d: mjData *, N: Int32) -> NoneType

alias mj_implicit = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_invPosition = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_invVelocity = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_invConstraint = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_compareFwdInv = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_sensorPos = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_sensorVel = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_sensorAcc = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_energyPos = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_energyVel = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_checkPos = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_checkVel = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_checkAcc = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_kinematics = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_comPos = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_camlight = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_flex = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_tendon = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_transmission = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_crb = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_factorM = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_solveM = fn (m: const mjModel *, d: mjData *, x: mjtNum *, y: const mjtNum *, n: Int32) -> NoneType

alias mj_solveM2 = fn (m: const mjModel *, d: mjData *, x: mjtNum *, y: const mjtNum *, sqrtInvD: const mjtNum *, n: Int32) -> NoneType

alias mj_comVel = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_passive = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_subtreeVel = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_rne = fn (m: const mjModel *, d: mjData *, flg_acc: Int32, result: mjtNum *) -> NoneType

alias mj_rnePostConstraint = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_collision = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_makeConstraint = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_island = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_projectConstraint = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_referenceConstraint = fn (m: const mjModel *, d: mjData *) -> NoneType

alias mj_constraintUpdate = fn (m: const mjModel *, d: mjData *, jar: const mjtNum *, cost: mjtNum *:mjtNum *, flg_coneHessian: Int32) -> NoneType

alias mj_stateSize = fn (m: const mjModel *, spec: UInt32) -> Int32

alias mj_getState = fn (m: const mjModel *, d: const mjData *, state: mjtNum *, spec: UInt32) -> NoneType

alias mj_setState = fn (m: const mjModel *, d: mjData *, state: const mjtNum *, spec: UInt32) -> NoneType

alias mj_setKeyframe = fn (m: mjModel *, d: const mjData *, k: Int32) -> NoneType

alias mj_addContact = fn (m: const mjModel *, d: mjData *, con: const mjContact *) -> Int32

alias mj_isPyramidal = fn (m: const mjModel *) -> Int32

alias mj_isSparse = fn (m: const mjModel *) -> Int32

alias mj_isDual = fn (m: const mjModel *) -> Int32

alias mj_mulJacVec = fn (m: const mjModel *, d: const mjData *, res: mjtNum *, vec: const mjtNum *) -> NoneType

alias mj_mulJacTVec = fn (m: const mjModel *, d: const mjData *, res: mjtNum *, vec: const mjtNum *) -> NoneType

alias mj_jac = fn (m: const mjModel *, d: const mjData *, jacp: mjtNum *, jacr: mjtNum *, point: const mjtNum *:const mjtNum *, body: Int32) -> NoneType

alias mj_jacBody = fn (m: const mjModel *, d: const mjData *, jacp: mjtNum *, jacr: mjtNum *, body: Int32) -> NoneType

alias mj_jacBodyCom = fn (m: const mjModel *, d: const mjData *, jacp: mjtNum *, jacr: mjtNum *, body: Int32) -> NoneType

alias mj_jacSubtreeCom = fn (m: const mjModel *, d: mjData *, jacp: mjtNum *, body: Int32) -> NoneType

alias mj_jacGeom = fn (m: const mjModel *, d: const mjData *, jacp: mjtNum *, jacr: mjtNum *, geom: Int32) -> NoneType

alias mj_jacSite = fn (m: const mjModel *, d: const mjData *, jacp: mjtNum *, jacr: mjtNum *, site: Int32) -> NoneType

alias mj_jacPointAxis = fn (m: const mjModel *, d: mjData *, jacPoint: mjtNum *, jacAxis: mjtNum *, point: const mjtNum *:const mjtNum *, axis: const mjtNum *:const mjtNum *, body: Int32) -> NoneType

alias mj_jacDot = fn (m: const mjModel *, d: const mjData *, jacp: mjtNum *, jacr: mjtNum *, point: const mjtNum *:const mjtNum *, body: Int32) -> NoneType

alias mj_angmomMat = fn (m: const mjModel *, d: mjData *, mat: mjtNum *, body: Int32) -> NoneType

alias mj_name2id = fn (m: const mjModel *, type: Int32, name: const char *) -> Int32

alias mj_id2name = fn (m: const mjModel *, type: Int32, id: Int32) -> const char *(const mjModel *, int, int)

alias mj_fullM = fn (m: const mjModel *, dst: mjtNum *, M: const mjtNum *) -> NoneType

alias mj_mulM = fn (m: const mjModel *, d: const mjData *, res: mjtNum *, vec: const mjtNum *) -> NoneType

alias mj_mulM2 = fn (m: const mjModel *, d: const mjData *, res: mjtNum *, vec: const mjtNum *) -> NoneType

alias mj_addM = fn (m: const mjModel *, d: mjData *, dst: mjtNum *, rownnz: int *, rowadr: int *, colind: int *) -> NoneType

alias mj_applyFT = fn (m: const mjModel *, d: mjData *, force: const mjtNum *:const mjtNum *, torque: const mjtNum *:const mjtNum *, point: const mjtNum *:const mjtNum *, body: Int32, qfrc_target: mjtNum *) -> NoneType

alias mj_objectVelocity = fn (m: const mjModel *, d: const mjData *, objtype: Int32, objid: Int32, res: mjtNum *:mjtNum *, flg_local: Int32) -> NoneType

alias mj_objectAcceleration = fn (m: const mjModel *, d: const mjData *, objtype: Int32, objid: Int32, res: mjtNum *:mjtNum *, flg_local: Int32) -> NoneType

alias mj_geomDistance = fn (m: const mjModel *, d: const mjData *, geom1: Int32, geom2: Int32, distmax: mjtNum:double, fromto: mjtNum *:mjtNum *) -> mjtNum

alias mj_contactForce = fn (m: const mjModel *, d: const mjData *, id: Int32, result: mjtNum *:mjtNum *) -> NoneType

alias mj_differentiatePos = fn (m: const mjModel *, qvel: mjtNum *, dt: mjtNum:double, qpos1: const mjtNum *, qpos2: const mjtNum *) -> NoneType

alias mj_integratePos = fn (m: const mjModel *, qpos: mjtNum *, qvel: const mjtNum *, dt: mjtNum:double) -> NoneType

alias mj_normalizeQuat = fn (m: const mjModel *, qpos: mjtNum *) -> NoneType

alias mj_local2Global = fn (d: mjData *, xpos: mjtNum *:mjtNum *, xmat: mjtNum *:mjtNum *, pos: const mjtNum *:const mjtNum *, quat: const mjtNum *:const mjtNum *, body: Int32, sameframe: mjtByte:unsigned char) -> NoneType

alias mj_getTotalmass = fn (m: const mjModel *) -> mjtNum

alias mj_setTotalmass = fn (m: mjModel *, newmass: mjtNum:double) -> NoneType

alias mj_getPluginConfig = fn (m: const mjModel *, plugin_id: Int32, attrib: const char *) -> const char *(const mjModel *, int, const char *)

alias mj_loadPluginLibrary = fn (path: const char *) -> NoneType

alias mj_loadAllPluginLibraries = fn (directory: const char *, callback: mjfPluginLibraryLoadCallback:void (*)(const char *, int, int)) -> NoneType

alias mj_version = fn () -> Int32

alias mj_versionString = fn () -> const char *(void)

alias mj_multiRay = fn (m: const mjModel *, d: mjData *, pnt: const mjtNum *:const mjtNum *, vec: const mjtNum *, geomgroup: const mjtByte *, flg_static: mjtByte:unsigned char, bodyexclude: Int32, geomid: int *, dist: mjtNum *, nray: Int32, cutoff: mjtNum:double) -> NoneType

alias mj_ray = fn (m: const mjModel *, d: const mjData *, pnt: const mjtNum *:const mjtNum *, vec: const mjtNum *:const mjtNum *, geomgroup: const mjtByte *, flg_static: mjtByte:unsigned char, bodyexclude: Int32, geomid: int *:int *) -> mjtNum

alias mj_rayHfield = fn (m: const mjModel *, d: const mjData *, geomid: Int32, pnt: const mjtNum *:const mjtNum *, vec: const mjtNum *:const mjtNum *) -> mjtNum

alias mj_rayMesh = fn (m: const mjModel *, d: const mjData *, geomid: Int32, pnt: const mjtNum *:const mjtNum *, vec: const mjtNum *:const mjtNum *) -> mjtNum

alias mju_rayGeom = fn (pos: const mjtNum *:const mjtNum *, mat: const mjtNum *:const mjtNum *, size: const mjtNum *:const mjtNum *, pnt: const mjtNum *:const mjtNum *, vec: const mjtNum *:const mjtNum *, geomtype: Int32) -> mjtNum

alias mju_rayFlex = fn (m: const mjModel *, d: const mjData *, flex_layer: Int32, flg_vert: mjtByte:unsigned char, flg_edge: mjtByte:unsigned char, flg_face: mjtByte:unsigned char, flg_skin: mjtByte:unsigned char, flexid: Int32, pnt: const mjtNum *, vec: const mjtNum *, vertid: int *:int *) -> mjtNum

alias mju_raySkin = fn (nface: Int32, nvert: Int32, face: const int *, vert: const float *, pnt: const mjtNum *:const mjtNum *, vec: const mjtNum *:const mjtNum *, vertid: int *:int *) -> mjtNum

alias mjv_defaultCamera = fn (cam: mjvCamera *) -> NoneType

alias mjv_defaultFreeCamera = fn (m: const mjModel *, cam: mjvCamera *) -> NoneType

alias mjv_defaultPerturb = fn (pert: mjvPerturb *) -> NoneType

alias mjv_room2model = fn (modelpos: mjtNum *:mjtNum *, modelquat: mjtNum *:mjtNum *, roompos: const mjtNum *:const mjtNum *, roomquat: const mjtNum *:const mjtNum *, scn: const mjvScene *) -> NoneType

alias mjv_model2room = fn (roompos: mjtNum *:mjtNum *, roomquat: mjtNum *:mjtNum *, modelpos: const mjtNum *:const mjtNum *, modelquat: const mjtNum *:const mjtNum *, scn: const mjvScene *) -> NoneType

alias mjv_cameraInModel = fn (headpos: mjtNum *:mjtNum *, forward: mjtNum *:mjtNum *, up: mjtNum *:mjtNum *, scn: const mjvScene *) -> NoneType

alias mjv_cameraInRoom = fn (headpos: mjtNum *:mjtNum *, forward: mjtNum *:mjtNum *, up: mjtNum *:mjtNum *, scn: const mjvScene *) -> NoneType

alias mjv_frustumHeight = fn (scn: const mjvScene *) -> mjtNum

alias mjv_alignToCamera = fn (res: mjtNum *:mjtNum *, vec: const mjtNum *:const mjtNum *, forward: const mjtNum *:const mjtNum *) -> NoneType

alias mjv_moveCamera = fn (m: const mjModel *, action: Int32, reldx: mjtNum:double, reldy: mjtNum:double, scn: const mjvScene *, cam: mjvCamera *) -> NoneType

alias mjv_moveCameraFromState = fn (scnstate: const mjvSceneState *, action: Int32, reldx: mjtNum:double, reldy: mjtNum:double, scn: const mjvScene *, cam: mjvCamera *) -> NoneType

alias mjv_movePerturb = fn (m: const mjModel *, d: const mjData *, action: Int32, reldx: mjtNum:double, reldy: mjtNum:double, scn: const mjvScene *, pert: mjvPerturb *) -> NoneType

alias mjv_movePerturbFromState = fn (scnstate: const mjvSceneState *, action: Int32, reldx: mjtNum:double, reldy: mjtNum:double, scn: const mjvScene *, pert: mjvPerturb *) -> NoneType

alias mjv_moveModel = fn (m: const mjModel *, action: Int32, reldx: mjtNum:double, reldy: mjtNum:double, roomup: const mjtNum *:const mjtNum *, scn: mjvScene *) -> NoneType

alias mjv_initPerturb = fn (m: const mjModel *, d: mjData *, scn: const mjvScene *, pert: mjvPerturb *) -> NoneType

alias mjv_applyPerturbPose = fn (m: const mjModel *, d: mjData *, pert: const mjvPerturb *, flg_paused: Int32) -> NoneType

alias mjv_applyPerturbForce = fn (m: const mjModel *, d: mjData *, pert: const mjvPerturb *) -> NoneType

alias mjv_averageCamera = fn (cam1: const mjvGLCamera *, cam2: const mjvGLCamera *) -> mjvGLCamera

alias mjv_select = fn (m: const mjModel *, d: const mjData *, vopt: const mjvOption *, aspectratio: mjtNum:double, relx: mjtNum:double, rely: mjtNum:double, scn: const mjvScene *, selpnt: mjtNum *:mjtNum *, geomid: int *:int *, flexid: int *:int *, skinid: int *:int *) -> Int32

alias mjv_defaultOption = fn (opt: mjvOption *) -> NoneType

alias mjv_defaultFigure = fn (fig: mjvFigure *) -> NoneType

alias mjv_initGeom = fn (geom: mjvGeom *, type: Int32, size: const mjtNum *:const mjtNum *, pos: const mjtNum *:const mjtNum *, mat: const mjtNum *:const mjtNum *, rgba: const float *:const float *) -> NoneType

alias mjv_connector = fn (geom: mjvGeom *, type: Int32, width: mjtNum:double, from: const mjtNum *:const mjtNum *, to: const mjtNum *:const mjtNum *) -> NoneType

alias mjv_defaultScene = fn (scn: mjvScene *) -> NoneType

alias mjv_makeScene = fn (m: const mjModel *, scn: mjvScene *, maxgeom: Int32) -> NoneType

alias mjv_freeScene = fn (scn: mjvScene *) -> NoneType

alias mjv_updateScene = fn (m: const mjModel *, d: mjData *, opt: const mjvOption *, pert: const mjvPerturb *, cam: mjvCamera *, catmask: Int32, scn: mjvScene *) -> NoneType

alias mjv_updateSceneFromState = fn (scnstate: const mjvSceneState *, opt: const mjvOption *, pert: const mjvPerturb *, cam: mjvCamera *, catmask: Int32, scn: mjvScene *) -> Int32

alias mjv_copyModel = fn (dest: mjModel *, src: const mjModel *) -> NoneType

alias mjv_defaultSceneState = fn (scnstate: mjvSceneState *) -> NoneType

alias mjv_makeSceneState = fn (m: const mjModel *, d: const mjData *, scnstate: mjvSceneState *, maxgeom: Int32) -> NoneType

alias mjv_freeSceneState = fn (scnstate: mjvSceneState *) -> NoneType

alias mjv_updateSceneState = fn (m: const mjModel *, d: mjData *, opt: const mjvOption *, scnstate: mjvSceneState *) -> NoneType

alias mjv_addGeoms = fn (m: const mjModel *, d: mjData *, opt: const mjvOption *, pert: const mjvPerturb *, catmask: Int32, scn: mjvScene *) -> NoneType

alias mjv_makeLights = fn (m: const mjModel *, d: const mjData *, scn: mjvScene *) -> NoneType

alias mjv_updateCamera = fn (m: const mjModel *, d: const mjData *, cam: mjvCamera *, scn: mjvScene *) -> NoneType

alias mjv_updateSkin = fn (m: const mjModel *, d: const mjData *, scn: mjvScene *) -> NoneType

alias mjr_defaultContext = fn (con: mjrContext *) -> NoneType

alias mjr_makeContext = fn (m: const mjModel *, con: mjrContext *, fontscale: Int32) -> NoneType

alias mjr_changeFont = fn (fontscale: Int32, con: mjrContext *) -> NoneType

alias mjr_addAux = fn (index: Int32, width: Int32, height: Int32, samples: Int32, con: mjrContext *) -> NoneType

alias mjr_freeContext = fn (con: mjrContext *) -> NoneType

alias mjr_resizeOffscreen = fn (width: Int32, height: Int32, con: mjrContext *) -> NoneType

alias mjr_uploadTexture = fn (m: const mjModel *, con: const mjrContext *, texid: Int32) -> NoneType

alias mjr_uploadMesh = fn (m: const mjModel *, con: const mjrContext *, meshid: Int32) -> NoneType

alias mjr_uploadHField = fn (m: const mjModel *, con: const mjrContext *, hfieldid: Int32) -> NoneType

alias mjr_restoreBuffer = fn (con: const mjrContext *) -> NoneType

alias mjr_setBuffer = fn (framebuffer: Int32, con: mjrContext *) -> NoneType

alias mjr_readPixels = fn (rgb: unsigned char *, depth: float *, viewport: mjrRect:struct mjrRect_, con: const mjrContext *) -> NoneType

alias mjr_drawPixels = fn (rgb: const unsigned char *, depth: const float *, viewport: mjrRect:struct mjrRect_, con: const mjrContext *) -> NoneType

alias mjr_blitBuffer = fn (src: mjrRect:struct mjrRect_, dst: mjrRect:struct mjrRect_, flg_color: Int32, flg_depth: Int32, con: const mjrContext *) -> NoneType

alias mjr_setAux = fn (index: Int32, con: const mjrContext *) -> NoneType

alias mjr_blitAux = fn (index: Int32, src: mjrRect:struct mjrRect_, left: Int32, bottom: Int32, con: const mjrContext *) -> NoneType

alias mjr_text = fn (font: Int32, txt: const char *, con: const mjrContext *, x: Float32, y: Float32, r: Float32, g: Float32, b: Float32) -> NoneType

alias mjr_overlay = fn (font: Int32, gridpos: Int32, viewport: mjrRect:struct mjrRect_, overlay: const char *, overlay2: const char *, con: const mjrContext *) -> NoneType

alias mjr_maxViewport = fn (con: const mjrContext *) -> mjrRect

alias mjr_rectangle = fn (viewport: mjrRect:struct mjrRect_, r: Float32, g: Float32, b: Float32, a: Float32) -> NoneType

alias mjr_label = fn (viewport: mjrRect:struct mjrRect_, font: Int32, txt: const char *, r: Float32, g: Float32, b: Float32, a: Float32, rt: Float32, gt: Float32, bt: Float32, con: const mjrContext *) -> NoneType

alias mjr_figure = fn (viewport: mjrRect:struct mjrRect_, fig: mjvFigure *, con: const mjrContext *) -> NoneType

alias mjr_render = fn (viewport: mjrRect:struct mjrRect_, scn: mjvScene *, con: const mjrContext *) -> NoneType

alias mjr_finish = fn () -> NoneType

alias mjr_getError = fn () -> Int32

alias mjr_findRect = fn (x: Int32, y: Int32, nrect: Int32, rect: const mjrRect *) -> Int32

alias mjui_themeSpacing = fn (ind: Int32) -> mjuiThemeSpacing

alias mjui_themeColor = fn (ind: Int32) -> mjuiThemeColor

alias mjui_add = fn (ui: mjUI *, def: const mjuiDef *) -> NoneType

alias mjui_addToSection = fn (ui: mjUI *, sect: Int32, def: const mjuiDef *) -> NoneType

alias mjui_resize = fn (ui: mjUI *, con: const mjrContext *) -> NoneType

alias mjui_update = fn (section: Int32, item: Int32, ui: const mjUI *, state: const mjuiState *, con: const mjrContext *) -> NoneType

alias mjui_event = fn (ui: mjUI *, state: mjuiState *, con: const mjrContext *) -> mjuiItem *(mjUI *, mjuiState *, const mjrContext *)

alias mjui_render = fn (ui: mjUI *, state: const mjuiState *, con: const mjrContext *) -> NoneType

alias mju_error = fn (msg: const char *) -> NoneType

alias mju_error_i = fn (msg: const char *, i: Int32) -> NoneType

alias mju_error_s = fn (msg: const char *, text: const char *) -> NoneType

alias mju_warning = fn (msg: const char *) -> NoneType

alias mju_warning_i = fn (msg: const char *, i: Int32) -> NoneType

alias mju_warning_s = fn (msg: const char *, text: const char *) -> NoneType

alias mju_clearHandlers = fn () -> NoneType

alias mju_malloc = fn (size: size_t:unsigned long) -> void *(size_t)

alias mju_free = fn (ptr: void *) -> NoneType

alias mj_warning = fn (d: mjData *, warning: Int32, info: Int32) -> NoneType

alias mju_writeLog = fn (type: const char *, msg: const char *) -> NoneType

alias mjs_getError = fn (s: mjSpec *) -> const char *(mjSpec *)

alias mjs_isWarning = fn (s: mjSpec *) -> Int32

alias mju_zero3 = fn (res: mjtNum *:mjtNum *) -> NoneType

alias mju_copy3 = fn (res: mjtNum *:mjtNum *, data: const mjtNum *:const mjtNum *) -> NoneType

alias mju_scl3 = fn (res: mjtNum *:mjtNum *, vec: const mjtNum *:const mjtNum *, scl: mjtNum:double) -> NoneType

alias mju_add3 = fn (res: mjtNum *:mjtNum *, vec1: const mjtNum *:const mjtNum *, vec2: const mjtNum *:const mjtNum *) -> NoneType

alias mju_sub3 = fn (res: mjtNum *:mjtNum *, vec1: const mjtNum *:const mjtNum *, vec2: const mjtNum *:const mjtNum *) -> NoneType

alias mju_addTo3 = fn (res: mjtNum *:mjtNum *, vec: const mjtNum *:const mjtNum *) -> NoneType

alias mju_subFrom3 = fn (res: mjtNum *:mjtNum *, vec: const mjtNum *:const mjtNum *) -> NoneType

alias mju_addToScl3 = fn (res: mjtNum *:mjtNum *, vec: const mjtNum *:const mjtNum *, scl: mjtNum:double) -> NoneType

alias mju_addScl3 = fn (res: mjtNum *:mjtNum *, vec1: const mjtNum *:const mjtNum *, vec2: const mjtNum *:const mjtNum *, scl: mjtNum:double) -> NoneType

alias mju_normalize3 = fn (vec: mjtNum *:mjtNum *) -> mjtNum

alias mju_norm3 = fn (vec: const mjtNum *:const mjtNum *) -> mjtNum

alias mju_dot3 = fn (vec1: const mjtNum *:const mjtNum *, vec2: const mjtNum *:const mjtNum *) -> mjtNum

alias mju_dist3 = fn (pos1: const mjtNum *:const mjtNum *, pos2: const mjtNum *:const mjtNum *) -> mjtNum

alias mju_mulMatVec3 = fn (res: mjtNum *:mjtNum *, mat: const mjtNum *:const mjtNum *, vec: const mjtNum *:const mjtNum *) -> NoneType

alias mju_mulMatTVec3 = fn (res: mjtNum *:mjtNum *, mat: const mjtNum *:const mjtNum *, vec: const mjtNum *:const mjtNum *) -> NoneType

alias mju_cross = fn (res: mjtNum *:mjtNum *, a: const mjtNum *:const mjtNum *, b: const mjtNum *:const mjtNum *) -> NoneType

alias mju_zero4 = fn (res: mjtNum *:mjtNum *) -> NoneType

alias mju_unit4 = fn (res: mjtNum *:mjtNum *) -> NoneType

alias mju_copy4 = fn (res: mjtNum *:mjtNum *, data: const mjtNum *:const mjtNum *) -> NoneType

alias mju_normalize4 = fn (vec: mjtNum *:mjtNum *) -> mjtNum

alias mju_zero = fn (res: mjtNum *, n: Int32) -> NoneType

alias mju_fill = fn (res: mjtNum *, val: mjtNum:double, n: Int32) -> NoneType

alias mju_copy = fn (res: mjtNum *, vec: const mjtNum *, n: Int32) -> NoneType

alias mju_sum = fn (vec: const mjtNum *, n: Int32) -> mjtNum

alias mju_L1 = fn (vec: const mjtNum *, n: Int32) -> mjtNum

alias mju_scl = fn (res: mjtNum *, vec: const mjtNum *, scl: mjtNum:double, n: Int32) -> NoneType

alias mju_add = fn (res: mjtNum *, vec1: const mjtNum *, vec2: const mjtNum *, n: Int32) -> NoneType

alias mju_sub = fn (res: mjtNum *, vec1: const mjtNum *, vec2: const mjtNum *, n: Int32) -> NoneType

alias mju_addTo = fn (res: mjtNum *, vec: const mjtNum *, n: Int32) -> NoneType

alias mju_subFrom = fn (res: mjtNum *, vec: const mjtNum *, n: Int32) -> NoneType

alias mju_addToScl = fn (res: mjtNum *, vec: const mjtNum *, scl: mjtNum:double, n: Int32) -> NoneType

alias mju_addScl = fn (res: mjtNum *, vec1: const mjtNum *, vec2: const mjtNum *, scl: mjtNum:double, n: Int32) -> NoneType

alias mju_normalize = fn (res: mjtNum *, n: Int32) -> mjtNum

alias mju_norm = fn (res: const mjtNum *, n: Int32) -> mjtNum

alias mju_dot = fn (vec1: const mjtNum *, vec2: const mjtNum *, n: Int32) -> mjtNum

alias mju_mulMatVec = fn (res: mjtNum *, mat: const mjtNum *, vec: const mjtNum *, nr: Int32, nc: Int32) -> NoneType

alias mju_mulMatTVec = fn (res: mjtNum *, mat: const mjtNum *, vec: const mjtNum *, nr: Int32, nc: Int32) -> NoneType

alias mju_mulVecMatVec = fn (vec1: const mjtNum *, mat: const mjtNum *, vec2: const mjtNum *, n: Int32) -> mjtNum

alias mju_transpose = fn (res: mjtNum *, mat: const mjtNum *, nr: Int32, nc: Int32) -> NoneType

alias mju_symmetrize = fn (res: mjtNum *, mat: const mjtNum *, n: Int32) -> NoneType

alias mju_eye = fn (mat: mjtNum *, n: Int32) -> NoneType

alias mju_mulMatMat = fn (res: mjtNum *, mat1: const mjtNum *, mat2: const mjtNum *, r1: Int32, c1: Int32, c2: Int32) -> NoneType

alias mju_mulMatMatT = fn (res: mjtNum *, mat1: const mjtNum *, mat2: const mjtNum *, r1: Int32, c1: Int32, r2: Int32) -> NoneType

alias mju_mulMatTMat = fn (res: mjtNum *, mat1: const mjtNum *, mat2: const mjtNum *, r1: Int32, c1: Int32, c2: Int32) -> NoneType

alias mju_sqrMatTD = fn (res: mjtNum *, mat: const mjtNum *, diag: const mjtNum *, nr: Int32, nc: Int32) -> NoneType

alias mju_transformSpatial = fn (res: mjtNum *:mjtNum *, vec: const mjtNum *:const mjtNum *, flg_force: Int32, newpos: const mjtNum *:const mjtNum *, oldpos: const mjtNum *:const mjtNum *, rotnew2old: const mjtNum *:const mjtNum *) -> NoneType

alias mju_dense2sparse = fn (res: mjtNum *, mat: const mjtNum *, nr: Int32, nc: Int32, rownnz: int *, rowadr: int *, colind: int *, nnz: Int32) -> Int32

alias mju_sparse2dense = fn (res: mjtNum *, mat: const mjtNum *, nr: Int32, nc: Int32, rownnz: const int *, rowadr: const int *, colind: const int *) -> NoneType

alias mju_rotVecQuat = fn (res: mjtNum *:mjtNum *, vec: const mjtNum *:const mjtNum *, quat: const mjtNum *:const mjtNum *) -> NoneType

alias mju_negQuat = fn (res: mjtNum *:mjtNum *, quat: const mjtNum *:const mjtNum *) -> NoneType

alias mju_mulQuat = fn (res: mjtNum *:mjtNum *, quat1: const mjtNum *:const mjtNum *, quat2: const mjtNum *:const mjtNum *) -> NoneType

alias mju_mulQuatAxis = fn (res: mjtNum *:mjtNum *, quat: const mjtNum *:const mjtNum *, axis: const mjtNum *:const mjtNum *) -> NoneType

alias mju_axisAngle2Quat = fn (res: mjtNum *:mjtNum *, axis: const mjtNum *:const mjtNum *, angle: mjtNum:double) -> NoneType

alias mju_quat2Vel = fn (res: mjtNum *:mjtNum *, quat: const mjtNum *:const mjtNum *, dt: mjtNum:double) -> NoneType

alias mju_subQuat = fn (res: mjtNum *:mjtNum *, qa: const mjtNum *:const mjtNum *, qb: const mjtNum *:const mjtNum *) -> NoneType

alias mju_quat2Mat = fn (res: mjtNum *:mjtNum *, quat: const mjtNum *:const mjtNum *) -> NoneType

alias mju_mat2Quat = fn (quat: mjtNum *:mjtNum *, mat: const mjtNum *:const mjtNum *) -> NoneType

alias mju_derivQuat = fn (res: mjtNum *:mjtNum *, quat: const mjtNum *:const mjtNum *, vel: const mjtNum *:const mjtNum *) -> NoneType

alias mju_quatIntegrate = fn (quat: mjtNum *:mjtNum *, vel: const mjtNum *:const mjtNum *, scale: mjtNum:double) -> NoneType

alias mju_quatZ2Vec = fn (quat: mjtNum *:mjtNum *, vec: const mjtNum *:const mjtNum *) -> NoneType

alias mju_mat2Rot = fn (quat: mjtNum *:mjtNum *, mat: const mjtNum *:const mjtNum *) -> Int32

alias mju_euler2Quat = fn (quat: mjtNum *:mjtNum *, euler: const mjtNum *:const mjtNum *, seq: const char *) -> NoneType

alias mju_mulPose = fn (posres: mjtNum *:mjtNum *, quatres: mjtNum *:mjtNum *, pos1: const mjtNum *:const mjtNum *, quat1: const mjtNum *:const mjtNum *, pos2: const mjtNum *:const mjtNum *, quat2: const mjtNum *:const mjtNum *) -> NoneType

alias mju_negPose = fn (posres: mjtNum *:mjtNum *, quatres: mjtNum *:mjtNum *, pos: const mjtNum *:const mjtNum *, quat: const mjtNum *:const mjtNum *) -> NoneType

alias mju_trnVecPose = fn (res: mjtNum *:mjtNum *, pos: const mjtNum *:const mjtNum *, quat: const mjtNum *:const mjtNum *, vec: const mjtNum *:const mjtNum *) -> NoneType

alias mju_cholFactor = fn (mat: mjtNum *, n: Int32, mindiag: mjtNum:double) -> Int32

alias mju_cholSolve = fn (res: mjtNum *, mat: const mjtNum *, vec: const mjtNum *, n: Int32) -> NoneType

alias mju_cholUpdate = fn (mat: mjtNum *, x: mjtNum *, n: Int32, flg_plus: Int32) -> Int32

alias mju_cholFactorBand = fn (mat: mjtNum *, ntotal: Int32, nband: Int32, ndense: Int32, diagadd: mjtNum:double, diagmul: mjtNum:double) -> mjtNum

alias mju_cholSolveBand = fn (res: mjtNum *, mat: const mjtNum *, vec: const mjtNum *, ntotal: Int32, nband: Int32, ndense: Int32) -> NoneType

alias mju_band2Dense = fn (res: mjtNum *, mat: const mjtNum *, ntotal: Int32, nband: Int32, ndense: Int32, flg_sym: mjtByte:unsigned char) -> NoneType

alias mju_dense2Band = fn (res: mjtNum *, mat: const mjtNum *, ntotal: Int32, nband: Int32, ndense: Int32) -> NoneType

alias mju_bandMulMatVec = fn (res: mjtNum *, mat: const mjtNum *, vec: const mjtNum *, ntotal: Int32, nband: Int32, ndense: Int32, nvec: Int32, flg_sym: mjtByte:unsigned char) -> NoneType

alias mju_bandDiag = fn (i: Int32, ntotal: Int32, nband: Int32, ndense: Int32) -> Int32

alias mju_eig3 = fn (eigval: mjtNum *:mjtNum *, eigvec: mjtNum *:mjtNum *, quat: mjtNum *:mjtNum *, mat: const mjtNum *:const mjtNum *) -> Int32

alias mju_boxQP = fn (res: mjtNum *, R: mjtNum *, index: int *, H: const mjtNum *, g: const mjtNum *, n: Int32, lower: const mjtNum *, upper: const mjtNum *) -> Int32

alias mju_boxQPmalloc = fn (res: mjtNum **, R: mjtNum **, index: int **, H: mjtNum **, g: mjtNum **, n: Int32, lower: mjtNum **, upper: mjtNum **) -> NoneType

alias mju_muscleGain = fn (len: mjtNum:double, vel: mjtNum:double, lengthrange: const mjtNum *:const mjtNum *, acc0: mjtNum:double, prm: const mjtNum *:const mjtNum *) -> mjtNum

alias mju_muscleBias = fn (len: mjtNum:double, lengthrange: const mjtNum *:const mjtNum *, acc0: mjtNum:double, prm: const mjtNum *:const mjtNum *) -> mjtNum

alias mju_muscleDynamics = fn (ctrl: mjtNum:double, act: mjtNum:double, prm: const mjtNum *:const mjtNum *) -> mjtNum

alias mju_encodePyramid = fn (pyramid: mjtNum *, force: const mjtNum *, mu: const mjtNum *, dim: Int32) -> NoneType

alias mju_decodePyramid = fn (force: mjtNum *, pyramid: const mjtNum *, mu: const mjtNum *, dim: Int32) -> NoneType

alias mju_springDamper = fn (pos0: mjtNum:double, vel0: mjtNum:double, Kp: mjtNum:double, Kv: mjtNum:double, dt: mjtNum:double) -> mjtNum

alias mju_min = fn (a: mjtNum:double, b: mjtNum:double) -> mjtNum

alias mju_max = fn (a: mjtNum:double, b: mjtNum:double) -> mjtNum

alias mju_clip = fn (x: mjtNum:double, min: mjtNum:double, max: mjtNum:double) -> mjtNum

alias mju_sign = fn (x: mjtNum:double) -> mjtNum

alias mju_round = fn (x: mjtNum:double) -> Int32

alias mju_type2Str = fn (type: Int32) -> const char *(int)

alias mju_str2Type = fn (str: const char *) -> Int32

alias mju_writeNumBytes = fn (nbytes: size_t:unsigned long) -> const char *(size_t)

alias mju_warningText = fn (warning: Int32, info: size_t:unsigned long) -> const char *(int, size_t)

alias mju_isBad = fn (x: mjtNum:double) -> Int32

alias mju_isZero = fn (vec: mjtNum *, n: Int32) -> Int32

alias mju_standardNormal = fn (num2: mjtNum *) -> mjtNum

alias mju_f2n = fn (res: mjtNum *, vec: const float *, n: Int32) -> NoneType

alias mju_n2f = fn (res: float *, vec: const mjtNum *, n: Int32) -> NoneType

alias mju_d2n = fn (res: mjtNum *, vec: const double *, n: Int32) -> NoneType

alias mju_n2d = fn (res: double *, vec: const mjtNum *, n: Int32) -> NoneType

alias mju_insertionSort = fn (list: mjtNum *, n: Int32) -> NoneType

alias mju_insertionSortInt = fn (list: int *, n: Int32) -> NoneType

alias mju_Halton = fn (index: Int32, base: Int32) -> mjtNum

alias mju_strncpy = fn (dst: char *, src: const char *, n: Int32) -> char *(char *, const char *, int)

alias mju_sigmoid = fn (x: mjtNum:double) -> mjtNum

alias mjd_transitionFD = fn (m: const mjModel *, d: mjData *, eps: mjtNum:double, flg_centered: mjtByte:unsigned char, A: mjtNum *, B: mjtNum *, C: mjtNum *, D: mjtNum *) -> NoneType

alias mjd_inverseFD = fn (m: const mjModel *, d: mjData *, eps: mjtNum:double, flg_actuation: mjtByte:unsigned char, DfDq: mjtNum *, DfDv: mjtNum *, DfDa: mjtNum *, DsDq: mjtNum *, DsDv: mjtNum *, DsDa: mjtNum *, DmDq: mjtNum *) -> NoneType

alias mjd_subQuat = fn (qa: const mjtNum *:const mjtNum *, qb: const mjtNum *:const mjtNum *, Da: mjtNum *:mjtNum *, Db: mjtNum *:mjtNum *) -> NoneType

alias mjd_quatIntegrate = fn (vel: const mjtNum *:const mjtNum *, scale: mjtNum:double, Dquat: mjtNum *:mjtNum *, Dvel: mjtNum *:mjtNum *, Dscale: mjtNum *:mjtNum *) -> NoneType

alias mjp_defaultPlugin = fn (plugin: mjpPlugin *) -> NoneType

alias mjp_registerPlugin = fn (plugin: const mjpPlugin *) -> Int32

alias mjp_pluginCount = fn () -> Int32

alias mjp_getPlugin = fn (name: const char *, slot: int *) -> const mjpPlugin *(const char *, int *)

alias mjp_getPluginAtSlot = fn (slot: Int32) -> const mjpPlugin *(int)

alias mjp_defaultResourceProvider = fn (provider: mjpResourceProvider *) -> NoneType

alias mjp_registerResourceProvider = fn (provider: const mjpResourceProvider *) -> Int32

alias mjp_resourceProviderCount = fn () -> Int32

alias mjp_getResourceProvider = fn (resource_name: const char *) -> const mjpResourceProvider *(const char *)

alias mjp_getResourceProviderAtSlot = fn (slot: Int32) -> const mjpResourceProvider *(int)

alias mju_threadPoolCreate = fn (number_of_threads: size_t:unsigned long) -> mjThreadPool *(size_t)

alias mju_bindThreadPool = fn (d: mjData *, thread_pool: void *) -> NoneType

alias mju_threadPoolEnqueue = fn (thread_pool: mjThreadPool *, task: mjTask *) -> NoneType

alias mju_threadPoolDestroy = fn (thread_pool: mjThreadPool *) -> NoneType

alias mju_defaultTask = fn (task: mjTask *) -> NoneType

alias mju_taskJoin = fn (task: mjTask *) -> NoneType

alias mjs_attach = fn (parent: mjsElement *, child: const mjsElement *, prefix: const char *, suffix: const char *) -> mjsElement *(mjsElement *, const mjsElement *, const char *, const char *)

alias mjs_detachBody = fn (s: mjSpec *, b: mjsBody *) -> Int32

alias mjs_detachDefault = fn (s: mjSpec *, d: mjsDefault *) -> Int32

alias mjs_addBody = fn (body: mjsBody *, def: const mjsDefault *) -> mjsBody *(mjsBody *, const mjsDefault *)

alias mjs_addSite = fn (body: mjsBody *, def: const mjsDefault *) -> mjsSite *(mjsBody *, const mjsDefault *)

alias mjs_addJoint = fn (body: mjsBody *, def: const mjsDefault *) -> mjsJoint *(mjsBody *, const mjsDefault *)

alias mjs_addFreeJoint = fn (body: mjsBody *) -> mjsJoint *(mjsBody *)

alias mjs_addGeom = fn (body: mjsBody *, def: const mjsDefault *) -> mjsGeom *(mjsBody *, const mjsDefault *)

alias mjs_addCamera = fn (body: mjsBody *, def: const mjsDefault *) -> mjsCamera *(mjsBody *, const mjsDefault *)

alias mjs_addLight = fn (body: mjsBody *, def: const mjsDefault *) -> mjsLight *(mjsBody *, const mjsDefault *)

alias mjs_addFrame = fn (body: mjsBody *, parentframe: mjsFrame *) -> mjsFrame *(mjsBody *, mjsFrame *)

alias mjs_delete = fn (element: mjsElement *) -> Int32

alias mjs_addActuator = fn (s: mjSpec *, def: const mjsDefault *) -> mjsActuator *(mjSpec *, const mjsDefault *)

alias mjs_addSensor = fn (s: mjSpec *) -> mjsSensor *(mjSpec *)

alias mjs_addFlex = fn (s: mjSpec *) -> mjsFlex *(mjSpec *)

alias mjs_addPair = fn (s: mjSpec *, def: const mjsDefault *) -> mjsPair *(mjSpec *, const mjsDefault *)

alias mjs_addExclude = fn (s: mjSpec *) -> mjsExclude *(mjSpec *)

alias mjs_addEquality = fn (s: mjSpec *, def: const mjsDefault *) -> mjsEquality *(mjSpec *, const mjsDefault *)

alias mjs_addTendon = fn (s: mjSpec *, def: const mjsDefault *) -> mjsTendon *(mjSpec *, const mjsDefault *)

alias mjs_wrapSite = fn (tendon: mjsTendon *, name: const char *) -> mjsWrap *(mjsTendon *, const char *)

alias mjs_wrapGeom = fn (tendon: mjsTendon *, name: const char *, sidesite: const char *) -> mjsWrap *(mjsTendon *, const char *, const char *)

alias mjs_wrapJoint = fn (tendon: mjsTendon *, name: const char *, coef: Float64) -> mjsWrap *(mjsTendon *, const char *, double)

alias mjs_wrapPulley = fn (tendon: mjsTendon *, divisor: Float64) -> mjsWrap *(mjsTendon *, double)

alias mjs_addNumeric = fn (s: mjSpec *) -> mjsNumeric *(mjSpec *)

alias mjs_addText = fn (s: mjSpec *) -> mjsText *(mjSpec *)

alias mjs_addTuple = fn (s: mjSpec *) -> mjsTuple *(mjSpec *)

alias mjs_addKey = fn (s: mjSpec *) -> mjsKey *(mjSpec *)

alias mjs_addPlugin = fn (s: mjSpec *) -> mjsPlugin *(mjSpec *)

alias mjs_addDefault = fn (s: mjSpec *, classname: const char *, parent: const mjsDefault *) -> mjsDefault *(mjSpec *, const char *, const mjsDefault *)

alias mjs_addMesh = fn (s: mjSpec *, def: const mjsDefault *) -> mjsMesh *(mjSpec *, const mjsDefault *)

alias mjs_addHField = fn (s: mjSpec *) -> mjsHField *(mjSpec *)

alias mjs_addSkin = fn (s: mjSpec *) -> mjsSkin *(mjSpec *)

alias mjs_addTexture = fn (s: mjSpec *) -> mjsTexture *(mjSpec *)

alias mjs_addMaterial = fn (s: mjSpec *, def: const mjsDefault *) -> mjsMaterial *(mjSpec *, const mjsDefault *)

alias mjs_getSpec = fn (element: mjsElement *) -> mjSpec *(mjsElement *)

alias mjs_findSpec = fn (spec: mjSpec *, name: const char *) -> mjSpec *(mjSpec *, const char *)

alias mjs_findBody = fn (s: mjSpec *, name: const char *) -> mjsBody *(mjSpec *, const char *)

alias mjs_findElement = fn (s: mjSpec *, type: mjtObj:enum mjtObj_, name: const char *) -> mjsElement *(mjSpec *, mjtObj, const char *)

alias mjs_findChild = fn (body: mjsBody *, name: const char *) -> mjsBody *(mjsBody *, const char *)

alias mjs_getParent = fn (element: mjsElement *) -> mjsBody *(mjsElement *)

alias mjs_getFrame = fn (element: mjsElement *) -> mjsFrame *(mjsElement *)

alias mjs_findFrame = fn (s: mjSpec *, name: const char *) -> mjsFrame *(mjSpec *, const char *)

alias mjs_getDefault = fn (element: mjsElement *) -> mjsDefault *(mjsElement *)

alias mjs_findDefault = fn (s: mjSpec *, classname: const char *) -> mjsDefault *(mjSpec *, const char *)

alias mjs_getSpecDefault = fn (s: mjSpec *) -> mjsDefault *(mjSpec *)

alias mjs_getId = fn (element: mjsElement *) -> Int32

alias mjs_firstChild = fn (body: mjsBody *, type: mjtObj:enum mjtObj_, recurse: Int32) -> mjsElement *(mjsBody *, mjtObj, int)

alias mjs_nextChild = fn (body: mjsBody *, child: mjsElement *, recurse: Int32) -> mjsElement *(mjsBody *, mjsElement *, int)

alias mjs_firstElement = fn (s: mjSpec *, type: mjtObj:enum mjtObj_) -> mjsElement *(mjSpec *, mjtObj)

alias mjs_nextElement = fn (s: mjSpec *, element: mjsElement *) -> mjsElement *(mjSpec *, mjsElement *)

alias mjs_setBuffer = fn (dest: mjByteVec *, array: const void *, size: Int32) -> NoneType

alias mjs_setString = fn (dest: mjString *, text: const char *) -> NoneType

alias mjs_setStringVec = fn (dest: mjStringVec *, text: const char *) -> NoneType

alias mjs_setInStringVec = fn (dest: mjStringVec *, i: Int32, text: const char *) -> mjtByte

alias mjs_appendString = fn (dest: mjStringVec *, text: const char *) -> NoneType

alias mjs_setInt = fn (dest: mjIntVec *, array: const int *, size: Int32) -> NoneType

alias mjs_appendIntVec = fn (dest: mjIntVecVec *, array: const int *, size: Int32) -> NoneType

alias mjs_setFloat = fn (dest: mjFloatVec *, array: const float *, size: Int32) -> NoneType

alias mjs_appendFloatVec = fn (dest: mjFloatVecVec *, array: const float *, size: Int32) -> NoneType

alias mjs_setDouble = fn (dest: mjDoubleVec *, array: const double *, size: Int32) -> NoneType

alias mjs_setPluginAttributes = fn (plugin: mjsPlugin *, attributes: void *) -> NoneType

alias mjs_getString = fn (source: const mjString *) -> const char *(const mjString *)

alias mjs_getDouble = fn (source: const mjDoubleVec *, size: int *) -> const double *(const mjDoubleVec *, int *)

alias mjs_setDefault = fn (element: mjsElement *, def: const mjsDefault *) -> NoneType

alias mjs_setFrame = fn (dest: mjsElement *, frame: mjsFrame *) -> Int32

alias mjs_resolveOrientation = fn (quat: double *:double *, degree: mjtByte:unsigned char, sequence: const char *, orientation: const mjsOrientation *) -> const char *(double *, mjtByte, const char *, const mjsOrientation *)

alias mjs_bodyToFrame = fn (body: mjsBody **) -> mjsFrame *(mjsBody **)

alias mjs_setUserValue = fn (element: mjsElement *, key: const char *, data: const void *) -> NoneType

alias mjs_getUserValue = fn (element: mjsElement *, key: const char *) -> const void *(mjsElement *, const char *)

alias mjs_deleteUserValue = fn (element: mjsElement *, key: const char *) -> NoneType

alias mjs_defaultSpec = fn (spec: mjSpec *) -> NoneType

alias mjs_defaultOrientation = fn (orient: mjsOrientation *) -> NoneType

alias mjs_defaultBody = fn (body: mjsBody *) -> NoneType

alias mjs_defaultFrame = fn (frame: mjsFrame *) -> NoneType

alias mjs_defaultJoint = fn (joint: mjsJoint *) -> NoneType

alias mjs_defaultGeom = fn (geom: mjsGeom *) -> NoneType

alias mjs_defaultSite = fn (site: mjsSite *) -> NoneType

alias mjs_defaultCamera = fn (camera: mjsCamera *) -> NoneType

alias mjs_defaultLight = fn (light: mjsLight *) -> NoneType

alias mjs_defaultFlex = fn (flex: mjsFlex *) -> NoneType

alias mjs_defaultMesh = fn (mesh: mjsMesh *) -> NoneType

alias mjs_defaultHField = fn (hfield: mjsHField *) -> NoneType

alias mjs_defaultSkin = fn (skin: mjsSkin *) -> NoneType

alias mjs_defaultTexture = fn (texture: mjsTexture *) -> NoneType

alias mjs_defaultMaterial = fn (material: mjsMaterial *) -> NoneType

alias mjs_defaultPair = fn (pair: mjsPair *) -> NoneType

alias mjs_defaultEquality = fn (equality: mjsEquality *) -> NoneType

alias mjs_defaultTendon = fn (tendon: mjsTendon *) -> NoneType

alias mjs_defaultActuator = fn (actuator: mjsActuator *) -> NoneType

alias mjs_defaultSensor = fn (sensor: mjsSensor *) -> NoneType

alias mjs_defaultNumeric = fn (numeric: mjsNumeric *) -> NoneType

alias mjs_defaultText = fn (text: mjsText *) -> NoneType

alias mjs_defaultTuple = fn (tuple: mjsTuple *) -> NoneType

alias mjs_defaultKey = fn (key: mjsKey *) -> NoneType

alias mjs_defaultPlugin = fn (plugin: mjsPlugin *) -> NoneType

alias mjs_asBody = fn (element: mjsElement *) -> mjsBody *(mjsElement *)

alias mjs_asGeom = fn (element: mjsElement *) -> mjsGeom *(mjsElement *)

alias mjs_asJoint = fn (element: mjsElement *) -> mjsJoint *(mjsElement *)

alias mjs_asSite = fn (element: mjsElement *) -> mjsSite *(mjsElement *)

alias mjs_asCamera = fn (element: mjsElement *) -> mjsCamera *(mjsElement *)

alias mjs_asLight = fn (element: mjsElement *) -> mjsLight *(mjsElement *)

alias mjs_asFrame = fn (element: mjsElement *) -> mjsFrame *(mjsElement *)

alias mjs_asActuator = fn (element: mjsElement *) -> mjsActuator *(mjsElement *)

alias mjs_asSensor = fn (element: mjsElement *) -> mjsSensor *(mjsElement *)

alias mjs_asFlex = fn (element: mjsElement *) -> mjsFlex *(mjsElement *)

alias mjs_asPair = fn (element: mjsElement *) -> mjsPair *(mjsElement *)

alias mjs_asEquality = fn (element: mjsElement *) -> mjsEquality *(mjsElement *)

alias mjs_asExclude = fn (element: mjsElement *) -> mjsExclude *(mjsElement *)

alias mjs_asTendon = fn (element: mjsElement *) -> mjsTendon *(mjsElement *)

alias mjs_asNumeric = fn (element: mjsElement *) -> mjsNumeric *(mjsElement *)

alias mjs_asText = fn (element: mjsElement *) -> mjsText *(mjsElement *)

alias mjs_asTuple = fn (element: mjsElement *) -> mjsTuple *(mjsElement *)

alias mjs_asKey = fn (element: mjsElement *) -> mjsKey *(mjsElement *)

alias mjs_asMesh = fn (element: mjsElement *) -> mjsMesh *(mjsElement *)

alias mjs_asHField = fn (element: mjsElement *) -> mjsHField *(mjsElement *)

alias mjs_asSkin = fn (element: mjsElement *) -> mjsSkin *(mjsElement *)

alias mjs_asTexture = fn (element: mjsElement *) -> mjsTexture *(mjsElement *)

alias mjs_asMaterial = fn (element: mjsElement *) -> mjsMaterial *(mjsElement *)

alias mjs_asPlugin = fn (element: mjsElement *) -> mjsPlugin *(mjsElement *)
