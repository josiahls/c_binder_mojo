from sys.ffi import _Global
from sys import ffi


alias __int128 = Int128

alias unsigned __int128 = UInt128

alias struct __NSConstantString_tag = __NSConstantString_tag
struct __NSConstantString_tag:
	pass


alias char * = UnsafePointer[Int8]


alias struct __va_list_tag[1] = OpaquePointer # __va_list_tag[1]
struct __va_list_tag:
	pass


alias unsigned long = UInt64

alias int = Int32

alias float = Float32

alias double = Float64

alias double = Float64

alias long double = Float64
struct Anonymous_line_59_9:

	var quot: Int32

	var rem: Int32


alias struct div_t : div_t = Anonymous_line_59_9
struct Anonymous_line_67_9:

	var quot: Int64

	var rem: Int64


alias struct ldiv_t : ldiv_t = Anonymous_line_67_9
struct Anonymous_line_77_23:

	var quot: Int128

	var rem: Int128


alias struct lldiv_t : lldiv_t = Anonymous_line_77_23
alias __ctype_get_mb_cur_max = fn() -> size_t
alias atof = fn(read __nptr: UnsafePointer[Int8]) -> Float64
alias atoi = fn(read __nptr: UnsafePointer[Int8]) -> Int32
alias atol = fn(read __nptr: UnsafePointer[Int8]) -> Int64
alias atoll = fn(read __nptr: UnsafePointer[Int8]) -> Int128
alias strtod = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtod = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtof = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float32
alias strtof = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float32
alias strtold = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtold = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]]) -> Float64
alias strtol = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> Int64
alias strtol = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int64
alias strtoul = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> UInt64
alias strtoul = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> UInt64
alias strtoq = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int128
alias strtouq = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> UInt128
alias strtoll = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> Int128
alias strtoll = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> Int128
alias strtoull = fn(read UnsafePointer[Int8], UnsafePointer[UnsafePointer[Int8]], Int32) -> UInt128
alias strtoull = fn(read __nptr: UnsafePointer[Int8], __endptr: UnsafePointer[UnsafePointer[Int8]], __base: Int32) -> UInt128
alias l64a = fn(__n: Int64) -> char *(long)
alias a64l = fn(read __s: UnsafePointer[Int8]) -> Int64

alias unsigned char = UInt8

alias unsigned short = UInt16

alias unsigned int = UInt32

alias unsigned long = UInt64

alias signed char = Int8

alias unsigned char = UInt8

alias short = Int16

alias unsigned short = UInt16

alias int = Int32

alias unsigned int = UInt32

alias long = Int64

alias unsigned long = UInt64

alias __int8_t : signed char = 
# (placeholder) | `-TypedefType 0x56b500 '__int8_t' sugar

# (placeholder) |   |-Typedef 0x56b190 '__int8_t'
Int8

alias __uint8_t : unsigned char = 
# (placeholder) | `-TypedefType 0x56b590 '__uint8_t' sugar

# (placeholder) |   |-Typedef 0x56b200 '__uint8_t'
UInt8

alias __int16_t : short = 
# (placeholder) | `-TypedefType 0x56b620 '__int16_t' sugar

# (placeholder) |   |-Typedef 0x56b270 '__int16_t'
Int16

alias __uint16_t : unsigned short = 
# (placeholder) | `-TypedefType 0x56b6b0 '__uint16_t' sugar

# (placeholder) |   |-Typedef 0x56b2e0 '__uint16_t'
UInt16

alias __int32_t : int = 
# (placeholder) | `-TypedefType 0x56b740 '__int32_t' sugar

# (placeholder) |   |-Typedef 0x56b350 '__int32_t'
Int32

alias __uint32_t : unsigned int = 
# (placeholder) | `-TypedefType 0x58b7c0 '__uint32_t' sugar

# (placeholder) |   |-Typedef 0x56b3c0 '__uint32_t'
UInt32

alias __int64_t : long = 
# (placeholder) | `-TypedefType 0x58b850 '__int64_t' sugar

# (placeholder) |   |-Typedef 0x56b430 '__int64_t'
Int64

alias __uint64_t : unsigned long = 
# (placeholder) | `-TypedefType 0x58b8e0 '__uint64_t' sugar

# (placeholder) |   |-Typedef 0x56b4a0 '__uint64_t'
UInt64

alias long = Int64

alias unsigned long = UInt64

alias long = Int64

alias unsigned long = UInt64

alias unsigned long = UInt64

alias unsigned int = UInt32

alias unsigned int = UInt32

alias unsigned long = UInt64

alias unsigned long = UInt64

alias unsigned int = UInt32

alias unsigned long = UInt64

alias long = Int64

alias long = Int64

alias int = Int32
struct Anonymous_col_24:

	var __val: SIMD[Int32.dtype, 2]


alias struct __fsid_t : __fsid_t = Anonymous_col_24

alias long = Int64

alias unsigned long = UInt64

alias unsigned long = UInt64

alias unsigned int = UInt32

alias long = Int64

alias unsigned int = UInt32

alias long = Int64

alias long = Int64

alias int = Int32

alias int = Int32

alias int = Int32

alias void * = UnsafePointer[NoneType]


alias long = Int64

alias long = Int64

alias long = Int64

alias unsigned long = UInt64

alias unsigned long = UInt64

alias unsigned long = UInt64

alias unsigned long = UInt64

alias long = Int64

alias long = Int64

alias long = Int64

alias unsigned long = UInt64

alias __off64_t : long = 
# (placeholder) | `-TypedefType 0x593b90 '__off64_t' sugar

# (placeholder) |   |-Typedef 0x58bec0 '__off64_t'
Int64

alias char * = UnsafePointer[Int8]


alias long = Int64

alias unsigned int = UInt32

alias int = Int32

alias __u_char : unsigned char = 
# (placeholder) | `-TypedefType 0x593de0 '__u_char' sugar

# (placeholder) |   |-Typedef 0x56afd0 '__u_char'
UInt8

alias __u_short : unsigned short = 
# (placeholder) | `-TypedefType 0x593e70 '__u_short' sugar

# (placeholder) |   |-Typedef 0x56b040 '__u_short'
UInt16

alias __u_int : unsigned int = 
# (placeholder) | `-TypedefType 0x593f00 '__u_int' sugar

# (placeholder) |   |-Typedef 0x56b0b0 '__u_int'
UInt32

alias __u_long : unsigned long = 
# (placeholder) | `-TypedefType 0x593f90 '__u_long' sugar

# (placeholder) |   |-Typedef 0x56b120 '__u_long'
UInt64

alias __quad_t : long = 
# (placeholder) | `-TypedefType 0x594020 '__quad_t' sugar

# (placeholder) |   |-Typedef 0x58b980 '__quad_t'
Int64

alias __u_quad_t : unsigned long = 
# (placeholder) | `-TypedefType 0x5940b0 '__u_quad_t' sugar

# (placeholder) |   |-Typedef 0x58b9f0 '__u_quad_t'
UInt64

alias __fsid_t : __fsid_t = 
# (placeholder) | `-TypedefType 0x594140 '__fsid_t' sugar

# (placeholder) |   |-Typedef 0x58c178 '__fsid_t'
Anonymous_col_24

alias __loff_t : long = 
# (placeholder) | `-TypedefType 0x5941d0 '__loff_t' sugar

# (placeholder) |   |-Typedef 0x593bc0 '__loff_t'

# (placeholder) |   `-TypedefType 0x593b90 '__off64_t' sugar

# (placeholder) |     |-Typedef 0x58bec0 '__off64_t'
Int64

alias __ino_t : unsigned long = 
# (placeholder) | `-TypedefType 0x594260 '__ino_t' sugar

# (placeholder) |   |-Typedef 0x58bc90 '__ino_t'
UInt64

alias __dev_t : unsigned long = 
# (placeholder) | `-TypedefType 0x5942f0 '__dev_t' sugar

# (placeholder) |   |-Typedef 0x58bb40 '__dev_t'
UInt64

alias __gid_t : unsigned int = 
# (placeholder) | `-TypedefType 0x594380 '__gid_t' sugar

# (placeholder) |   |-Typedef 0x58bc20 '__gid_t'
UInt32

alias __mode_t : unsigned int = 
# (placeholder) | `-TypedefType 0x594410 '__mode_t' sugar

# (placeholder) |   |-Typedef 0x58bd70 '__mode_t'
UInt32

alias __nlink_t : unsigned long = 
# (placeholder) | `-TypedefType 0x5944a0 '__nlink_t' sugar

# (placeholder) |   |-Typedef 0x58bde0 '__nlink_t'
UInt64

alias __uid_t : unsigned int = 
# (placeholder) | `-TypedefType 0x594530 '__uid_t' sugar

# (placeholder) |   |-Typedef 0x58bbb0 '__uid_t'
UInt32

alias __off_t : long = 
# (placeholder) | `-TypedefType 0x5945c0 '__off_t' sugar

# (placeholder) |   |-Typedef 0x58be50 '__off_t'
Int64

alias __pid_t : int = 
# (placeholder) | `-TypedefType 0x594650 '__pid_t' sugar

# (placeholder) |   |-Typedef 0x58bf30 '__pid_t'
Int32

alias __id_t : unsigned int = 
# (placeholder) | `-TypedefType 0x595f60 '__id_t' sugar

# (placeholder) |   |-Typedef 0x58c350 '__id_t'
UInt32

alias __ssize_t : long = 
# (placeholder) | `-TypedefType 0x595ff0 '__ssize_t' sugar

# (placeholder) |   |-Typedef 0x593a50 '__ssize_t'
Int64

alias __daddr_t : int = 
# (placeholder) | `-TypedefType 0x596080 '__daddr_t' sugar

# (placeholder) |   |-Typedef 0x58c580 '__daddr_t'
Int32

alias __caddr_t : char * = 
# (placeholder) | `-TypedefType 0x596110 '__caddr_t' sugar

# (placeholder) |   |-Typedef 0x593c30 '__caddr_t'
UnsafePointer[Int8]


alias __key_t : int = 
# (placeholder) | `-TypedefType 0x5961a0 '__key_t' sugar

# (placeholder) |   |-Typedef 0x58c5f0 '__key_t'
Int32

alias __clock_t : long = 
# (placeholder) | `-TypedefType 0x596230 '__clock_t' sugar

# (placeholder) |   |-Typedef 0x58c200 '__clock_t'
Int64

alias __clockid_t : int = 
# (placeholder) | `-TypedefType 0x5962c0 '__clockid_t' sugar

# (placeholder) |   |-Typedef 0x58c660 '__clockid_t'
Int32

alias __time_t : long = 
# (placeholder) | `-TypedefType 0x596350 '__time_t' sugar

# (placeholder) |   |-Typedef 0x58c3c0 '__time_t'
Int64

alias __timer_t : void * = 
# (placeholder) | `-TypedefType 0x5963e0 '__timer_t' sugar

# (placeholder) |   |-Typedef 0x58c6d0 '__timer_t'
UnsafePointer[NoneType]


alias unsigned long = UInt64

alias unsigned short = UInt16

alias unsigned int = UInt32

alias __int8_t : signed char = 
# (placeholder) | `-TypedefType 0x56b500 '__int8_t' sugar

# (placeholder) |   |-Typedef 0x56b190 '__int8_t'
Int8

alias __int16_t : short = 
# (placeholder) | `-TypedefType 0x56b620 '__int16_t' sugar

# (placeholder) |   |-Typedef 0x56b270 '__int16_t'
Int16

alias __int32_t : int = 
# (placeholder) | `-TypedefType 0x56b740 '__int32_t' sugar

# (placeholder) |   |-Typedef 0x56b350 '__int32_t'
Int32

alias __int64_t : long = 
# (placeholder) | `-TypedefType 0x58b850 '__int64_t' sugar

# (placeholder) |   |-Typedef 0x56b430 '__int64_t'
Int64

alias __uint8_t : unsigned char = 
# (placeholder) | `-TypedefType 0x56b590 '__uint8_t' sugar

# (placeholder) |   |-Typedef 0x56b200 '__uint8_t'
UInt8

alias __uint16_t : unsigned short = 
# (placeholder) | `-TypedefType 0x56b6b0 '__uint16_t' sugar

# (placeholder) |   |-Typedef 0x56b2e0 '__uint16_t'
UInt16

alias __uint32_t : unsigned int = 
# (placeholder) | `-TypedefType 0x58b7c0 '__uint32_t' sugar

# (placeholder) |   |-Typedef 0x56b3c0 '__uint32_t'
UInt32

alias __uint64_t : unsigned long = 
# (placeholder) | `-TypedefType 0x58b8e0 '__uint64_t' sugar

# (placeholder) |   |-Typedef 0x56b4a0 '__uint64_t'
UInt64

alias long = Int64
# (placeholder) | `-ModeAttr 0x596988 <col:40, col:58> __word__

alias __bswap_16 = fn(used: __uint16_t : short) -> __uint16_t
alias __bswap_32 = fn(used: __uint32_t : int) -> __uint32_t
alias __bswap_64 = fn(used: __uint64_t : long) -> __uint64_t
alias __uint16_identity = fn(used: __uint16_t : short) -> __uint16_t
alias __uint32_identity = fn(used: __uint32_t : int) -> __uint32_t
alias __uint64_identity = fn(used: __uint64_t : long) -> __uint64_t
struct Anonymous_line_5_9:

	var __val: SIMD[UInt64.dtype, 16]


alias struct __sigset_t : __sigset_t = Anonymous_line_5_9

alias __sigset_t : __sigset_t = 
# (placeholder) | `-TypedefType 0x5a5220 '__sigset_t' sugar

# (placeholder) |   |-Typedef 0x5a51a8 '__sigset_t'
Anonymous_line_5_9
struct timeval:

	var tv_sec: __time_t

	var tv_usec: __suseconds_t

struct timespec:

	var tv_sec: __time_t

	var tv_nsec: __syscall_slong_t


alias __suseconds_t : long = 
# (placeholder) | `-TypedefType 0x5a53b0 '__suseconds_t' sugar

# (placeholder) |   |-Typedef 0x58c4a0 '__suseconds_t'
Int64

alias long = Int64
struct Anonymous_line_59_9:

	var __fds_bits: SIMD[__fd_mask.dtype, 16]


alias struct fd_set : fd_set = Anonymous_line_59_9

alias __fd_mask : long = 
# (placeholder) | `-TypedefType 0x5af300 '__fd_mask' sugar

# (placeholder) |   |-Typedef 0x5a5630 '__fd_mask'
Int64
alias select = fn(__nfds: Int32, __readfds: UnsafePointer[fd_set], __writefds: UnsafePointer[fd_set], __exceptfds: UnsafePointer[fd_set], __timeout: UnsafePointer[struct timeval]) -> Int32
alias pselect = fn(__nfds: Int32, __readfds: UnsafePointer[fd_set], __writefds: UnsafePointer[fd_set], __exceptfds: UnsafePointer[fd_set], read __timeout: UnsafePointer[struct timespec], read __sigmask: UnsafePointer[__sigset_t]) -> Int32

alias __blksize_t : long = 
# (placeholder) | `-TypedefType 0x5b0160 '__blksize_t' sugar

# (placeholder) |   |-Typedef 0x5936d0 '__blksize_t'
Int64

alias __blkcnt_t : long = 
# (placeholder) | `-TypedefType 0x5b01f0 '__blkcnt_t' sugar

# (placeholder) |   |-Typedef 0x593740 '__blkcnt_t'
Int64

alias __fsblkcnt_t : unsigned long = 
# (placeholder) | `-TypedefType 0x5b22f0 '__fsblkcnt_t' sugar

# (placeholder) |   |-Typedef 0x593820 '__fsblkcnt_t'
UInt64

alias __fsfilcnt_t : unsigned long = 
# (placeholder) | `-TypedefType 0x5b2380 '__fsfilcnt_t' sugar

# (placeholder) |   |-Typedef 0x593900 '__fsfilcnt_t'
UInt64
struct union:

	var __value64: UInt128

	var __value32: _definition__Anonymous_line_28_3


alias union __atomic_wide_counter : __atomic_wide_counter = union
# ElaboratedTypeNode: Unhandled tokens: __atomic_wide_counter 
struct __pthread_internal_list:

	var __prev: UnsafePointer[__pthread_internal_list]

	var __next: UnsafePointer[__pthread_internal_list]


alias struct __pthread_internal_list : struct __pthread_internal_list = __pthread_internal_list__pthread_internal_list
struct __pthread_internal_slist:

	var __next: UnsafePointer[__pthread_internal_slist]


alias struct __pthread_internal_slist : struct __pthread_internal_slist = __pthread_internal_slist__pthread_internal_slist
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


alias unsigned int = UInt32

alias unsigned long = UInt64
struct Anonymous_line_108_9:

	var __data: Int32


alias struct __once_flag : __once_flag = Anonymous_line_108_9

alias unsigned long = UInt64
struct union:

	var __size: SIMD[Int8.dtype, 4]

	var __align: Int32


alias union pthread_mutexattr_t : pthread_mutexattr_t = union
# ElaboratedTypeNode: Unhandled tokens: pthread_mutexattr_t 
struct union:

	var __size: SIMD[Int8.dtype, 4]

	var __align: Int32


alias union pthread_condattr_t : pthread_condattr_t = union
# ElaboratedTypeNode: Unhandled tokens: pthread_condattr_t 

alias unsigned int = UInt32

alias int = Int32
struct union:

	var __size: SIMD[Int8.dtype, 56]

	var __align: Int64
 # RecordDeclNode Unhandled tokens:  pthread_attr_t

alias union pthread_attr_t : union pthread_attr_t = unionpthread_attr_t
# ElaboratedTypeNode: Unhandled tokens: pthread_attr_t 
struct union:

	var __data: __pthread_mutex_s

	var __size: SIMD[Int8.dtype, 40]

	var __align: Int64


alias union pthread_mutex_t : pthread_mutex_t = union
# ElaboratedTypeNode: Unhandled tokens: pthread_mutex_t 
struct union:

	var __data: __pthread_cond_s

	var __size: SIMD[Int8.dtype, 48]

	var __align: Int128


alias union pthread_cond_t : pthread_cond_t = union
# ElaboratedTypeNode: Unhandled tokens: pthread_cond_t 
struct union:

	var __data: __pthread_rwlock_arch_t

	var __size: SIMD[Int8.dtype, 56]

	var __align: Int64


alias union pthread_rwlock_t : pthread_rwlock_t = union
# ElaboratedTypeNode: Unhandled tokens: pthread_rwlock_t 
struct union:

	var __size: SIMD[Int8.dtype, 8]

	var __align: Int64


alias union pthread_rwlockattr_t : pthread_rwlockattr_t = union
# ElaboratedTypeNode: Unhandled tokens: pthread_rwlockattr_t 

alias volatile int = 
# (placeholder) | `-QualType 0x4e34a4 'volatile int' volatile
Int32
struct union:

	var __size: SIMD[Int8.dtype, 32]

	var __align: Int64


alias union pthread_barrier_t : pthread_barrier_t = union
# ElaboratedTypeNode: Unhandled tokens: pthread_barrier_t 
struct union:

	var __size: SIMD[Int8.dtype, 4]

	var __align: Int32


alias union pthread_barrierattr_t : pthread_barrierattr_t = union
# ElaboratedTypeNode: Unhandled tokens: pthread_barrierattr_t 
alias random = fn() -> Int64
alias srandom = fn(__seed: Int32) -> NoneType
alias initstate = fn(__seed: Int32, __statebuf: UnsafePointer[Int8], __statelen: size_t : long) -> char *(unsigned int, char *, size_t)
alias setstate = fn(__statebuf: UnsafePointer[Int8]) -> char *(char *)
struct random_data:

	var fptr: UnsafePointer[Int32]

	var rptr: UnsafePointer[Int32]

	var state: UnsafePointer[Int32]

	var rand_type: Int32

	var rand_deg: Int32

	var rand_sep: Int32

	var end_ptr: UnsafePointer[Int32]

alias random_r = fn(__buf: UnsafePointer[struct random_data], __result: UnsafePointer[Int32]) -> Int32
alias srandom_r = fn(__seed: Int32, __buf: UnsafePointer[struct random_data]) -> Int32
alias initstate_r = fn(__seed: Int32, __statebuf: UnsafePointer[Int8], __statelen: size_t : long, __buf: UnsafePointer[struct random_data]) -> Int32
alias setstate_r = fn(__statebuf: UnsafePointer[Int8], __buf: UnsafePointer[struct random_data]) -> Int32
alias rand = fn() -> Int32
alias srand = fn(__seed: Int32) -> NoneType
alias rand_r = fn(__seed: UnsafePointer[Int32]) -> Int32
alias drand48 = fn() -> Float64
alias erand48 = fn(__xsubi: UnsafePointer[short  : short]) -> Float64
alias lrand48 = fn() -> Int64
alias nrand48 = fn(__xsubi: UnsafePointer[short  : short]) -> Int64
alias mrand48 = fn() -> Int64
alias jrand48 = fn(__xsubi: UnsafePointer[short  : short]) -> Int64
alias srand48 = fn(__seedval: Int64) -> NoneType
alias seed48 = fn(__seed16v: UnsafePointer[short  : short]) -> unsigned short *(unsigned short *)
alias lcong48 = fn(__param: UnsafePointer[short  : short]) -> NoneType
struct drand48_data:

	var __x: SIMD[UInt16.dtype, 3]

	var __old_x: SIMD[UInt16.dtype, 3]

	var __c: UInt16

	var __init: UInt16

	var __a: UInt128

alias drand48_r = fn(__buffer: UnsafePointer[struct drand48_data], __result: UnsafePointer[Float64]) -> Int32
alias erand48_r = fn(__xsubi: UnsafePointer[short  : short], __buffer: UnsafePointer[struct drand48_data], __result: UnsafePointer[Float64]) -> Int32
alias lrand48_r = fn(__buffer: UnsafePointer[struct drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias nrand48_r = fn(__xsubi: UnsafePointer[short  : short], __buffer: UnsafePointer[struct drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias mrand48_r = fn(__buffer: UnsafePointer[struct drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias jrand48_r = fn(__xsubi: UnsafePointer[short  : short], __buffer: UnsafePointer[struct drand48_data], __result: UnsafePointer[Int64]) -> Int32
alias srand48_r = fn(__seedval: Int64, __buffer: UnsafePointer[struct drand48_data]) -> Int32
alias seed48_r = fn(__seed16v: UnsafePointer[short  : short], __buffer: UnsafePointer[struct drand48_data]) -> Int32
alias lcong48_r = fn(__param: UnsafePointer[short  : short], __buffer: UnsafePointer[struct drand48_data]) -> Int32
alias malloc = fn(Int64) -> void *(unsigned long)
alias malloc = fn(__size: size_t : long) -> void *(unsigned long)
alias calloc = fn(Int64, Int64) -> void *(unsigned long, unsigned long)
alias calloc = fn(__nmemb: size_t : long, __size: size_t : long) -> void *(unsigned long, unsigned long)
alias realloc = fn(UnsafePointer[NoneType], Int64) -> void *(void *, unsigned long)
alias realloc = fn(__ptr: UnsafePointer[NoneType], __size: size_t : long) -> void *(void *, unsigned long)
alias free = fn(UnsafePointer[NoneType]) -> NoneType
alias free = fn(__ptr: UnsafePointer[NoneType]) -> NoneType
alias reallocarray = fn(__ptr: UnsafePointer[NoneType], __nmemb: size_t : long, __size: size_t : long) -> void *(void *, size_t, size_t)
alias reallocarray = fn(__ptr: UnsafePointer[NoneType], __nmemb: size_t : long, __size: size_t : long) -> void *(void *, size_t, size_t)
alias alloca = fn(Int64) -> void *(unsigned long)
alias alloca = fn(__size: size_t : long) -> void *(unsigned long)
alias valloc = fn(__size: size_t : long) -> void *(size_t)
alias posix_memalign = fn(__memptr: UnsafePointer[UnsafePointer[NoneType]], __alignment: size_t : long, __size: size_t : long) -> Int32
alias aligned_alloc = fn(Int64, Int64) -> void *(unsigned long, unsigned long)
alias aligned_alloc = fn(__alignment: size_t : long, __size: size_t : long) -> void *(unsigned long, unsigned long)
alias abort = fn() -> NoneType
alias abort = fn() -> NoneType
alias atexit = fn(__func: UnsafePointer[void (*)(void)]) -> Int32
alias at_quick_exit = fn(__func: UnsafePointer[void (*)(void)]) -> Int32
alias on_exit = fn(__func: UnsafePointer[void (*)(int, void )], __arg: UnsafePointer[NoneType]) -> Int32
alias exit = fn(Int32) -> NoneType
alias exit = fn(__status: Int32) -> NoneType
alias quick_exit = fn(__status: Int32) -> NoneType
alias _Exit = fn(Int32) -> NoneType
alias _Exit = fn(__status: Int32) -> NoneType
alias getenv = fn(read __name: UnsafePointer[Int8]) -> char *(const char *)
alias putenv = fn(__string: UnsafePointer[Int8]) -> Int32
alias setenv = fn(read __name: UnsafePointer[Int8], read __value: UnsafePointer[Int8], __replace: Int32) -> Int32
alias unsetenv = fn(read __name: UnsafePointer[Int8]) -> Int32
alias clearenv = fn() -> Int32
alias mktemp = fn(__template: UnsafePointer[Int8]) -> char *(char *)
alias mkstemp = fn(__template: UnsafePointer[Int8]) -> Int32
alias mkstemps = fn(__template: UnsafePointer[Int8], __suffixlen: Int32) -> Int32
alias mkdtemp = fn(__template: UnsafePointer[Int8]) -> char *(char *)
alias system = fn(read __command: UnsafePointer[Int8]) -> Int32
alias realpath = fn(read __name: UnsafePointer[Int8], __resolved: UnsafePointer[Int8]) -> char *(const char *restrict, char *restrict)

alias int (*)(const void *, const void *) = UnsafePointer[
# (placeholder) |   `-ParenType 0x5d5e60 'int (const void *, const void *)' sugar

# (placeholder) |     `-FunctionProtoType 0x5d5e20 'int (const void *, const void *)' cdecl
Int32UnsafePointer[
# (placeholder) |       | `-QualType 0x4e3401 'const void' const
NoneType]
UnsafePointer[
# (placeholder) |         `-QualType 0x4e3401 'const void' const
NoneType]
]

alias bsearch = fn(read __key: UnsafePointer[NoneType], read __base: UnsafePointer[NoneType], __nmemb: size_t : long, __size: size_t : long, read __compar: UnsafePointer[__compar_fn_t : int (*)(const void , void )]) -> void *(const void *, const void *, size_t, size_t, __compar_fn_t)
alias qsort = fn(__base: UnsafePointer[NoneType], __nmemb: size_t : long, __size: size_t : long, read __compar: UnsafePointer[__compar_fn_t : int (*)(const void , void )]) -> NoneType
alias abs = fn(Int32) -> Int32
alias abs = fn(__x: Int32) -> Int32
alias labs = fn(Int64) -> Int64
alias labs = fn(__x: Int64) -> Int64
alias llabs = fn(Int128) -> Int128
alias llabs = fn(__x: Int128) -> Int128
alias div = fn(__numer: Int32, __denom: Int32) -> div_t
alias ldiv = fn(__numer: Int64, __denom: Int64) -> ldiv_t
alias lldiv = fn(__numer: Int128, __denom: Int128) -> lldiv_t
alias ecvt = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32]) -> char *(double, int, int *restrict, int *restrict)
alias fcvt = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32]) -> char *(double, int, int *restrict, int *restrict)
alias gcvt = fn(__value: Float64, __ndigit: Int32, __buf: UnsafePointer[Int8]) -> char *(double, int, char *)
alias qecvt = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32]) -> char *(long double, int, int *restrict, int *restrict)
alias qfcvt = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32]) -> char *(long double, int, int *restrict, int *restrict)
alias qgcvt = fn(__value: Float64, __ndigit: Int32, __buf: UnsafePointer[Int8]) -> char *(long double, int, char *)
alias ecvt_r = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32], __buf: UnsafePointer[Int8], __len: size_t : long) -> Int32
alias fcvt_r = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32], __buf: UnsafePointer[Int8], __len: size_t : long) -> Int32
alias qecvt_r = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32], __buf: UnsafePointer[Int8], __len: size_t : long) -> Int32
alias qfcvt_r = fn(__value: Float64, __ndigit: Int32, __decpt: UnsafePointer[Int32], __sign: UnsafePointer[Int32], __buf: UnsafePointer[Int8], __len: size_t : long) -> Int32
alias mblen = fn(read __s: UnsafePointer[Int8], __n: size_t : long) -> Int32
alias mbtowc = fn(__pwc: UnsafePointer[wchar_t], read __s: UnsafePointer[Int8], __n: size_t : long) -> Int32
alias wctomb = fn(__s: UnsafePointer[Int8], __wchar: wchar_t : int) -> Int32
alias mbstowcs = fn(__pwcs: UnsafePointer[wchar_t], read __s: UnsafePointer[Int8], __n: size_t : long) -> size_t
alias wcstombs = fn(__s: UnsafePointer[Int8], read __pwcs: UnsafePointer[wchar_t], __n: size_t : long) -> size_t
alias rpmatch = fn(read __response: UnsafePointer[Int8]) -> Int32
alias getsubopt = fn(__optionp: UnsafePointer[UnsafePointer[Int8]], read __tokens: UnsafePointer[Int8], __valuep: UnsafePointer[UnsafePointer[Int8]]) -> Int32
alias getloadavg = fn(__loadavg: UnsafePointer[double  : double], __nelem: Int32) -> Int32

alias float = Float32

alias double = Float64
alias __fpclassify = fn(__value: Float64) -> Int32
alias __signbit = fn(__value: Float64) -> Int32
alias __isinf = fn(__value: Float64) -> Int32
alias __finite = fn(Float64) -> Int32
alias __finite = fn(__value: Float64) -> Int32
alias __isnan = fn(__value: Float64) -> Int32
alias __iseqsig = fn(__x: Float64, __y: Float64) -> Int32
alias __issignaling = fn(__value: Float64) -> Int32
alias acos = fn(Float64) -> Float64
alias acos = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias asin = fn(Float64) -> Float64
alias asin = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias atan = fn(Float64) -> Float64
alias atan = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias atan2 = fn(Float64, Float64) -> Float64
alias atan2 = fn(__y: Float64, __x: Float64) -> Float64
alias <scratch = fn(__y: Float64, __x: Float64) -> Float64
alias cos = fn(Float64) -> Float64
alias cos = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias sin = fn(Float64) -> Float64
alias sin = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias tan = fn(Float64) -> Float64
alias tan = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias cosh = fn(Float64) -> Float64
alias cosh = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias sinh = fn(Float64) -> Float64
alias sinh = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias tanh = fn(Float64) -> Float64
alias tanh = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias acosh = fn(Float64) -> Float64
alias acosh = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias asinh = fn(Float64) -> Float64
alias asinh = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias atanh = fn(Float64) -> Float64
alias atanh = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias exp = fn(Float64) -> Float64
alias exp = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias frexp = fn(Float64, UnsafePointer[Int32]) -> Float64
alias frexp = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
alias <scratch = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
alias ldexp = fn(Float64, Int32) -> Float64
alias ldexp = fn(__x: Float64, __exponent: Int32) -> Float64
alias <scratch = fn(__x: Float64, __exponent: Int32) -> Float64
alias log = fn(Float64) -> Float64
alias log = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias log10 = fn(Float64) -> Float64
alias log10 = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias modf = fn(Float64, UnsafePointer[Float64]) -> Float64
alias modf = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
alias <scratch = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
alias expm1 = fn(Float64) -> Float64
alias expm1 = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias log1p = fn(Float64) -> Float64
alias log1p = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias logb = fn(Float64) -> Float64
alias logb = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias exp2 = fn(Float64) -> Float64
alias exp2 = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias log2 = fn(Float64) -> Float64
alias log2 = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias pow = fn(Float64, Float64) -> Float64
alias pow = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias sqrt = fn(Float64) -> Float64
alias sqrt = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias hypot = fn(Float64, Float64) -> Float64
alias hypot = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias cbrt = fn(Float64) -> Float64
alias cbrt = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias ceil = fn(Float64) -> Float64
alias ceil = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias fabs = fn(Float64) -> Float64
alias fabs = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias floor = fn(Float64) -> Float64
alias floor = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias fmod = fn(Float64, Float64) -> Float64
alias fmod = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias isinf = fn(__value: Float64) -> Int32
alias finite = fn(Float64) -> Int32
alias finite = fn(__value: Float64) -> Int32
alias drem = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias significand = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias copysign = fn(Float64, Float64) -> Float64
alias copysign = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias nan = fn(read UnsafePointer[Int8]) -> Float64
alias nan = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias <scratch = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias isnan = fn(__value: Float64) -> Int32
alias j0 = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias j1 = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias jn = fn(Int32, Float64) -> Float64
alias <scratch = fn(Int32, Float64) -> Float64
alias y0 = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias y1 = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias yn = fn(Int32, Float64) -> Float64
alias <scratch = fn(Int32, Float64) -> Float64
alias erf = fn(Float64) -> Float64
alias erf = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias erfc = fn(Float64) -> Float64
alias erfc = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias lgamma = fn(Float64) -> Float64
alias lgamma = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias tgamma = fn(Float64) -> Float64
alias tgamma = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias gamma = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64, __signgamp: UnsafePointer[Int32]) -> Float64
alias <scratch = fn(Float64, __signgamp: UnsafePointer[Int32]) -> Float64
alias rint = fn(Float64) -> Float64
alias rint = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias nextafter = fn(Float64, Float64) -> Float64
alias nextafter = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias nexttoward = fn(Float64, Float64) -> Float64
alias nexttoward = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias remainder = fn(Float64, Float64) -> Float64
alias remainder = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias scalbn = fn(Float64, Int32) -> Float64
alias scalbn = fn(__x: Float64, __n: Int32) -> Float64
alias <scratch = fn(__x: Float64, __n: Int32) -> Float64
alias ilogb = fn(Float64) -> Int32
alias ilogb = fn(__x: Float64) -> Int32
alias <scratch = fn(__x: Float64) -> Int32
alias scalbln = fn(Float64, Int64) -> Float64
alias scalbln = fn(__x: Float64, __n: Int64) -> Float64
alias <scratch = fn(__x: Float64, __n: Int64) -> Float64
alias nearbyint = fn(Float64) -> Float64
alias nearbyint = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias round = fn(Float64) -> Float64
alias round = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias trunc = fn(Float64) -> Float64
alias trunc = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias remquo = fn(Float64, Float64, UnsafePointer[Int32]) -> Float64
alias remquo = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
alias lrint = fn(Float64) -> Int64
alias lrint = fn(__x: Float64) -> Int64
alias <scratch = fn(__x: Float64) -> Int64
alias llrint = fn(Float64) -> Int128
alias llrint = fn(__x: Float64) -> Int128
alias <scratch = fn(__x: Float64) -> Int128
alias lround = fn(Float64) -> Int64
alias lround = fn(__x: Float64) -> Int64
alias <scratch = fn(__x: Float64) -> Int64
alias llround = fn(Float64) -> Int128
alias llround = fn(__x: Float64) -> Int128
alias <scratch = fn(__x: Float64) -> Int128
alias fdim = fn(Float64, Float64) -> Float64
alias fdim = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias fmax = fn(Float64, Float64) -> Float64
alias fmax = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias fmin = fn(Float64, Float64) -> Float64
alias fmin = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias fma = fn(Float64, Float64, Float64) -> Float64
alias fma = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias scalb = fn(__x: Float64, __n: Float64) -> Float64
alias <scratch = fn(__x: Float64, __n: Float64) -> Float64
alias <scratch = fn(__value: Float32) -> Int32
alias <scratch = fn(__value: Float32) -> Int32
alias <scratch = fn(__value: Float32) -> Int32
alias __finitef = fn(Float32) -> Int32
alias <scratch = fn(__value: Float32) -> Int32
alias <scratch = fn(__value: Float32) -> Int32
alias <scratch = fn(__x: Float32, __y: Float32) -> Int32
alias <scratch = fn(__value: Float32) -> Int32
alias acosf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias asinf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias atanf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias atan2f = fn(Float32, Float32) -> Float32
alias <scratch = fn(__y: Float32, __x: Float32) -> Float32
alias <scratch = fn(__y: Float32, __x: Float32) -> Float32
alias cosf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias sinf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias tanf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias coshf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias sinhf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias tanhf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias acoshf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias asinhf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias atanhf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias expf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias frexpf = fn(Float32, UnsafePointer[Int32]) -> Float32
alias <scratch = fn(__x: Float32, __exponent: UnsafePointer[Int32]) -> Float32
alias <scratch = fn(__x: Float32, __exponent: UnsafePointer[Int32]) -> Float32
alias ldexpf = fn(Float32, Int32) -> Float32
alias <scratch = fn(__x: Float32, __exponent: Int32) -> Float32
alias <scratch = fn(__x: Float32, __exponent: Int32) -> Float32
alias logf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias log10f = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias modff = fn(Float32, UnsafePointer[Float32]) -> Float32
alias <scratch = fn(__x: Float32, __iptr: UnsafePointer[Float32]) -> Float32
alias <scratch = fn(__x: Float32, __iptr: UnsafePointer[Float32]) -> Float32
alias expm1f = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias log1pf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias logbf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias exp2f = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias log2f = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias powf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias sqrtf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias hypotf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias cbrtf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias ceilf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias fabsf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias floorf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias fmodf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__value: Float32) -> Int32
alias finitef = fn(Float32) -> Int32
alias <scratch = fn(__value: Float32) -> Int32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias copysignf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias nanf = fn(read UnsafePointer[Int8]) -> Float32
alias <scratch = fn(read __tagb: UnsafePointer[Int8]) -> Float32
alias <scratch = fn(read __tagb: UnsafePointer[Int8]) -> Float32
alias <scratch = fn(__value: Float32) -> Int32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Int32, Float32) -> Float32
alias <scratch = fn(Int32, Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Int32, Float32) -> Float32
alias <scratch = fn(Int32, Float32) -> Float32
alias erff = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias erfcf = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias lgammaf = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias tgammaf = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32) -> Float32
alias <scratch = fn(Float32, __signgamp: UnsafePointer[Int32]) -> Float32
alias <scratch = fn(Float32, __signgamp: UnsafePointer[Int32]) -> Float32
alias rintf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias nextafterf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias nexttowardf = fn(Float32, Float64) -> Float32
alias <scratch = fn(__x: Float32, __y: Float64) -> Float32
alias <scratch = fn(__x: Float32, __y: Float64) -> Float32
alias remainderf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias scalbnf = fn(Float32, Int32) -> Float32
alias <scratch = fn(__x: Float32, __n: Int32) -> Float32
alias <scratch = fn(__x: Float32, __n: Int32) -> Float32
alias ilogbf = fn(Float32) -> Int32
alias <scratch = fn(__x: Float32) -> Int32
alias <scratch = fn(__x: Float32) -> Int32
alias scalblnf = fn(Float32, Int64) -> Float32
alias <scratch = fn(__x: Float32, __n: Int64) -> Float32
alias <scratch = fn(__x: Float32, __n: Int64) -> Float32
alias nearbyintf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias roundf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias truncf = fn(Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias <scratch = fn(__x: Float32) -> Float32
alias remquof = fn(Float32, Float32, UnsafePointer[Int32]) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32, __quo: UnsafePointer[Int32]) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32, __quo: UnsafePointer[Int32]) -> Float32
alias lrintf = fn(Float32) -> Int64
alias <scratch = fn(__x: Float32) -> Int64
alias <scratch = fn(__x: Float32) -> Int64
alias llrintf = fn(Float32) -> Int128
alias <scratch = fn(__x: Float32) -> Int128
alias <scratch = fn(__x: Float32) -> Int128
alias lroundf = fn(Float32) -> Int64
alias <scratch = fn(__x: Float32) -> Int64
alias <scratch = fn(__x: Float32) -> Int64
alias llroundf = fn(Float32) -> Int128
alias <scratch = fn(__x: Float32) -> Int128
alias <scratch = fn(__x: Float32) -> Int128
alias fdimf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias fmaxf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias fminf = fn(Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32) -> Float32
alias fmaf = fn(Float32, Float32, Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32, __z: Float32) -> Float32
alias <scratch = fn(__x: Float32, __y: Float32, __z: Float32) -> Float32
alias <scratch = fn(__x: Float32, __n: Float32) -> Float32
alias <scratch = fn(__x: Float32, __n: Float32) -> Float32
alias <scratch = fn(__value: Float64) -> Int32
alias <scratch = fn(__value: Float64) -> Int32
alias <scratch = fn(__value: Float64) -> Int32
alias __finitel = fn(Float64) -> Int32
alias <scratch = fn(__value: Float64) -> Int32
alias <scratch = fn(__value: Float64) -> Int32
alias <scratch = fn(__x: Float64, __y: Float64) -> Int32
alias <scratch = fn(__value: Float64) -> Int32
alias acosl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias asinl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias atanl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias atan2l = fn(Float64, Float64) -> Float64
alias <scratch = fn(__y: Float64, __x: Float64) -> Float64
alias <scratch = fn(__y: Float64, __x: Float64) -> Float64
alias cosl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias sinl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias tanl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias coshl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias sinhl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias tanhl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias acoshl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias asinhl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias atanhl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias expl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias frexpl = fn(Float64, UnsafePointer[Int32]) -> Float64
alias <scratch = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
alias <scratch = fn(__x: Float64, __exponent: UnsafePointer[Int32]) -> Float64
alias ldexpl = fn(Float64, Int32) -> Float64
alias <scratch = fn(__x: Float64, __exponent: Int32) -> Float64
alias <scratch = fn(__x: Float64, __exponent: Int32) -> Float64
alias logl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias log10l = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias modfl = fn(Float64, UnsafePointer[Float64]) -> Float64
alias <scratch = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
alias <scratch = fn(__x: Float64, __iptr: UnsafePointer[Float64]) -> Float64
alias expm1l = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias log1pl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias logbl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias exp2l = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias log2l = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias powl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias sqrtl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias hypotl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias cbrtl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias ceill = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias fabsl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias floorl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias fmodl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__value: Float64) -> Int32
alias finitel = fn(Float64) -> Int32
alias <scratch = fn(__value: Float64) -> Int32
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias copysignl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias nanl = fn(read UnsafePointer[Int8]) -> Float64
alias <scratch = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias <scratch = fn(read __tagb: UnsafePointer[Int8]) -> Float64
alias <scratch = fn(__value: Float64) -> Int32
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Int32, Float64) -> Float64
alias <scratch = fn(Int32, Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Int32, Float64) -> Float64
alias <scratch = fn(Int32, Float64) -> Float64
alias erfl = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias erfcl = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias lgammal = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias tgammal = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64) -> Float64
alias <scratch = fn(Float64, __signgamp: UnsafePointer[Int32]) -> Float64
alias <scratch = fn(Float64, __signgamp: UnsafePointer[Int32]) -> Float64
alias rintl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias nextafterl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias nexttowardl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias remainderl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias scalbnl = fn(Float64, Int32) -> Float64
alias <scratch = fn(__x: Float64, __n: Int32) -> Float64
alias <scratch = fn(__x: Float64, __n: Int32) -> Float64
alias ilogbl = fn(Float64) -> Int32
alias <scratch = fn(__x: Float64) -> Int32
alias <scratch = fn(__x: Float64) -> Int32
alias scalblnl = fn(Float64, Int64) -> Float64
alias <scratch = fn(__x: Float64, __n: Int64) -> Float64
alias <scratch = fn(__x: Float64, __n: Int64) -> Float64
alias nearbyintl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias roundl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias truncl = fn(Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias <scratch = fn(__x: Float64) -> Float64
alias remquol = fn(Float64, Float64, UnsafePointer[Int32]) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64, __quo: UnsafePointer[Int32]) -> Float64
alias lrintl = fn(Float64) -> Int64
alias <scratch = fn(__x: Float64) -> Int64
alias <scratch = fn(__x: Float64) -> Int64
alias llrintl = fn(Float64) -> Int128
alias <scratch = fn(__x: Float64) -> Int128
alias <scratch = fn(__x: Float64) -> Int128
alias lroundl = fn(Float64) -> Int64
alias <scratch = fn(__x: Float64) -> Int64
alias <scratch = fn(__x: Float64) -> Int64
alias llroundl = fn(Float64) -> Int128
alias <scratch = fn(__x: Float64) -> Int128
alias <scratch = fn(__x: Float64) -> Int128
alias fdiml = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias fmaxl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias fminl = fn(Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64) -> Float64
alias fmal = fn(Float64, Float64, Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias <scratch = fn(__x: Float64, __y: Float64, __z: Float64) -> Float64
alias <scratch = fn(__x: Float64, __n: Float64) -> Float64
alias <scratch = fn(__x: Float64, __n: Float64) -> Float64

# (placeholder) |-VarDecl 0x660900 </usr/include/math.h:854:1, col:12> col:12 signgam 'int' extern

# (placeholder) |-EnumDecl 0x660968 <line:934:1, line:951:3> line:934:1

# (placeholder) | |-EnumConstantDecl 0x660a70 <line:936:5, line:937:17> line:936:5 FP_NAN 'int'

# (placeholder) | | `-ConstantExpr 0x660a50 <line:937:17> 'int'

# (placeholder) | |   |-value: Int 0

# (placeholder) | |   `-IntegerLiteral 0x660a30 <col:17> 'int' 0

# (placeholder) | |-EnumConstantDecl 0x660b00 <line:939:5, line:940:22> line:939:5 FP_INFINITE 'int'

# (placeholder) | | `-ConstantExpr 0x660ae0 <line:940:22> 'int'

# (placeholder) | |   |-value: Int 1

# (placeholder) | |   `-IntegerLiteral 0x660ac0 <col:22> 'int' 1

# (placeholder) | |-EnumConstantDecl 0x660b90 <line:942:5, line:943:18> line:942:5 FP_ZERO 'int'

# (placeholder) | | `-ConstantExpr 0x660b70 <line:943:18> 'int'

# (placeholder) | |   |-value: Int 2

# (placeholder) | |   `-IntegerLiteral 0x660b50 <col:18> 'int' 2

# (placeholder) | |-EnumConstantDecl 0x660c20 <line:945:5, line:946:23> line:945:5 FP_SUBNORMAL 'int'

# (placeholder) | | `-ConstantExpr 0x660c00 <line:946:23> 'int'

# (placeholder) | |   |-value: Int 3

# (placeholder) | |   `-IntegerLiteral 0x660be0 <col:23> 'int' 3

# (placeholder) | `-EnumConstantDecl 0x660cb0 <line:948:5, line:949:20> line:948:5 FP_NORMAL 'int'

# (placeholder) |   `-ConstantExpr 0x660c90 <line:949:20> 'int'

# (placeholder) |     |-value: Int 4

# (placeholder) |     `-IntegerLiteral 0x660c70 <col:20> 'int' 4

alias long = Int64
struct Anonymous_line_19_9:

	alias __clang_max_align_nonce1: Int128 = 8

	alias __clang_max_align_nonce2: Float64 = 16


alias struct max_align_t : max_align_t = Anonymous_line_19_9

alias __uint8_t : unsigned char = 
# (placeholder) | `-TypedefType 0x56b590 '__uint8_t' sugar

# (placeholder) |   |-Typedef 0x56b200 '__uint8_t'
UInt8

alias __uint16_t : unsigned short = 
# (placeholder) | `-TypedefType 0x56b6b0 '__uint16_t' sugar

# (placeholder) |   |-Typedef 0x56b2e0 '__uint16_t'
UInt16

alias __uint32_t : unsigned int = 
# (placeholder) | `-TypedefType 0x58b7c0 '__uint32_t' sugar

# (placeholder) |   |-Typedef 0x56b3c0 '__uint32_t'
UInt32

alias __uint64_t : unsigned long = 
# (placeholder) | `-TypedefType 0x58b8e0 '__uint64_t' sugar

# (placeholder) |   |-Typedef 0x56b4a0 '__uint64_t'
UInt64

alias __int_least8_t : signed char = 
# (placeholder) | `-TypedefType 0x66db90 '__int_least8_t' sugar

# (placeholder) |   |-Typedef 0x56b530 '__int_least8_t'

# (placeholder) |   `-TypedefType 0x56b500 '__int8_t' sugar

# (placeholder) |     |-Typedef 0x56b190 '__int8_t'
Int8

alias __int_least16_t : short = 
# (placeholder) | `-TypedefType 0x66dc20 '__int_least16_t' sugar

# (placeholder) |   |-Typedef 0x56b650 '__int_least16_t'

# (placeholder) |   `-TypedefType 0x56b620 '__int16_t' sugar

# (placeholder) |     |-Typedef 0x56b270 '__int16_t'
Int16

alias __int_least32_t : int = 
# (placeholder) | `-TypedefType 0x66dcb0 '__int_least32_t' sugar

# (placeholder) |   |-Typedef 0x58b760 '__int_least32_t'

# (placeholder) |   `-TypedefType 0x56b740 '__int32_t' sugar

# (placeholder) |     |-Typedef 0x56b350 '__int32_t'
Int32

alias __int_least64_t : long = 
# (placeholder) | `-TypedefType 0x66dd40 '__int_least64_t' sugar

# (placeholder) |   |-Typedef 0x58b880 '__int_least64_t'

# (placeholder) |   `-TypedefType 0x58b850 '__int64_t' sugar

# (placeholder) |     |-Typedef 0x56b430 '__int64_t'
Int64

alias __uint_least8_t : unsigned char = 
# (placeholder) | `-TypedefType 0x66ddd0 '__uint_least8_t' sugar

# (placeholder) |   |-Typedef 0x56b5c0 '__uint_least8_t'

# (placeholder) |   `-TypedefType 0x56b590 '__uint8_t' sugar

# (placeholder) |     |-Typedef 0x56b200 '__uint8_t'
UInt8

alias __uint_least16_t : unsigned short = 
# (placeholder) | `-TypedefType 0x66de60 '__uint_least16_t' sugar

# (placeholder) |   |-Typedef 0x56b6e0 '__uint_least16_t'

# (placeholder) |   `-TypedefType 0x56b6b0 '__uint16_t' sugar

# (placeholder) |     |-Typedef 0x56b2e0 '__uint16_t'
UInt16

alias __uint_least32_t : unsigned int = 
# (placeholder) | `-TypedefType 0x66def0 '__uint_least32_t' sugar

# (placeholder) |   |-Typedef 0x58b7f0 '__uint_least32_t'

# (placeholder) |   `-TypedefType 0x58b7c0 '__uint32_t' sugar

# (placeholder) |     |-Typedef 0x56b3c0 '__uint32_t'
UInt32

alias __uint_least64_t : unsigned long = 
# (placeholder) | `-TypedefType 0x66df80 '__uint_least64_t' sugar

# (placeholder) |   |-Typedef 0x58b910 '__uint_least64_t'

# (placeholder) |   `-TypedefType 0x58b8e0 '__uint64_t' sugar

# (placeholder) |     |-Typedef 0x56b4a0 '__uint64_t'
UInt64

alias signed char = Int8

alias long = Int64

alias long = Int64

alias long = Int64

alias unsigned char = UInt8

alias unsigned long = UInt64

alias unsigned long = UInt64

alias unsigned long = UInt64

alias long = Int64

alias unsigned long = UInt64

alias __intmax_t : long = 
# (placeholder) | `-TypedefType 0x66e470 '__intmax_t' sugar

# (placeholder) |   |-Typedef 0x58ba60 '__intmax_t'
Int64

alias __uintmax_t : unsigned long = 
# (placeholder) | `-TypedefType 0x66e500 '__uintmax_t' sugar

# (placeholder) |   |-Typedef 0x58bad0 '__uintmax_t'
UInt64

alias double = Float64

alias unsigned char = UInt8
# (placeholder) | `-FullComment 0x7d1ae0 <line:31:3, col:100>

# (placeholder) |   `-ParagraphComment 0x7d1ab0 <col:3, col:100>

# (placeholder) |     `-TextComment 0x7d1a80 <col:3, col:100> Text="-------------------------------------- byte definition -------------------------------------------"


# (placeholder) |-EnumDecl 0x679db8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjmodel.h:50:9, line:70:1> line:50:14 mjtDisableBit_

# (placeholder) | |-FullComment 0x7d1bb0 <line:48:3, col:100>

# (placeholder) | | `-ParagraphComment 0x7d1b80 <col:3, col:100>

# (placeholder) | |   `-TextComment 0x7d1b50 <col:3, col:100> Text="---------------------------------- enum types (mjt) ----------------------------------------------"

# (placeholder) | |-EnumConstantDecl 0x679f28 <line:51:3, col:28> col:3 mjDSBL_CONSTRAINT 'int'

# (placeholder) | | |-ConstantExpr 0x679f08 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 1

# (placeholder) | | | `-BinaryOperator 0x679ee8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x679ea8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x679ec8 <col:28> 'int' 0

# (placeholder) | | `-FullComment 0x7d6c10 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x7d6be0 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x7d6bb0 <col:37, col:61> Text=" entire constraint solver"

# (placeholder) | |-EnumConstantDecl 0x67a028 <line:52:3, col:28> col:3 mjDSBL_EQUALITY 'int'

# (placeholder) | | |-ConstantExpr 0x67a008 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 2

# (placeholder) | | | `-BinaryOperator 0x679fe8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x679fa8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x679fc8 <col:28> 'int' 1

# (placeholder) | | `-FullComment 0x7d6ce0 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x7d6cb0 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x7d6c80 <col:37, col:57> Text=" equality constraints"

# (placeholder) | |-EnumConstantDecl 0x67a128 <line:53:3, col:28> col:3 mjDSBL_FRICTIONLOSS 'int'

# (placeholder) | | |-ConstantExpr 0x67a108 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 4

# (placeholder) | | | `-BinaryOperator 0x67a0e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a0a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a0c8 <col:28> 'int' 2

# (placeholder) | | `-FullComment 0x7d6db0 <col:37, col:78>

# (placeholder) | |   `-ParagraphComment 0x7d6d80 <col:37, col:78>

# (placeholder) | |     `-TextComment 0x7d6d50 <col:37, col:78> Text=" joint and tendon frictionloss constraints"

# (placeholder) | |-EnumConstantDecl 0x67a228 <line:54:3, col:28> col:3 mjDSBL_LIMIT 'int'

# (placeholder) | | |-ConstantExpr 0x67a208 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 8

# (placeholder) | | | `-BinaryOperator 0x67a1e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a1a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a1c8 <col:28> 'int' 3

# (placeholder) | | `-FullComment 0x7d6e80 <col:37, col:71>

# (placeholder) | |   `-ParagraphComment 0x7d6e50 <col:37, col:71>

# (placeholder) | |     `-TextComment 0x7d6e20 <col:37, col:71> Text=" joint and tendon limit constraints"

# (placeholder) | |-EnumConstantDecl 0x67a328 <line:55:3, col:28> col:3 mjDSBL_CONTACT 'int'

# (placeholder) | | |-ConstantExpr 0x67a308 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 16

# (placeholder) | | | `-BinaryOperator 0x67a2e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a2a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a2c8 <col:28> 'int' 4

# (placeholder) | | `-FullComment 0x7d6f50 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7d6f20 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7d6ef0 <col:37, col:56> Text=" contact constraints"

# (placeholder) | |-EnumConstantDecl 0x67a428 <line:56:3, col:28> col:3 mjDSBL_PASSIVE 'int'

# (placeholder) | | |-ConstantExpr 0x67a408 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 32

# (placeholder) | | | `-BinaryOperator 0x67a3e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a3a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a3c8 <col:28> 'int' 5

# (placeholder) | | `-FullComment 0x7d7020 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x7d6ff0 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x7d6fc0 <col:37, col:51> Text=" passive forces"

# (placeholder) | |-EnumConstantDecl 0x67a528 <line:57:3, col:28> col:3 mjDSBL_GRAVITY 'int'

# (placeholder) | | |-ConstantExpr 0x67a508 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 64

# (placeholder) | | | `-BinaryOperator 0x67a4e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a4a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a4c8 <col:28> 'int' 6

# (placeholder) | | `-FullComment 0x7d70f0 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x7d70c0 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x7d7090 <col:37, col:57> Text=" gravitational forces"

# (placeholder) | |-EnumConstantDecl 0x67a628 <line:58:3, col:28> col:3 mjDSBL_CLAMPCTRL 'int'

# (placeholder) | | |-ConstantExpr 0x67a608 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 128

# (placeholder) | | | `-BinaryOperator 0x67a5e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a5a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a5c8 <col:28> 'int' 7

# (placeholder) | | `-FullComment 0x7d71c0 <col:37, col:69>

# (placeholder) | |   `-ParagraphComment 0x7d7190 <col:37, col:69>

# (placeholder) | |     `-TextComment 0x7d7160 <col:37, col:69> Text=" clamp control to specified range"

# (placeholder) | |-EnumConstantDecl 0x67a728 <line:59:3, col:28> col:3 mjDSBL_WARMSTART 'int'

# (placeholder) | | |-ConstantExpr 0x67a708 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 256

# (placeholder) | | | `-BinaryOperator 0x67a6e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a6a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a6c8 <col:28> 'int' 8

# (placeholder) | | `-FullComment 0x7d7290 <col:37, col:64>

# (placeholder) | |   `-ParagraphComment 0x7d7260 <col:37, col:64>

# (placeholder) | |     `-TextComment 0x7d7230 <col:37, col:64> Text=" warmstart constraint solver"

# (placeholder) | |-EnumConstantDecl 0x67a828 <line:60:3, col:28> col:3 mjDSBL_FILTERPARENT 'int'

# (placeholder) | | |-ConstantExpr 0x67a808 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 512

# (placeholder) | | | `-BinaryOperator 0x67a7e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a7a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a7c8 <col:28> 'int' 9

# (placeholder) | | `-FullComment 0x7d7360 <col:37, col:71>

# (placeholder) | |   `-ParagraphComment 0x7d7330 <col:37, col:71>

# (placeholder) | |     `-TextComment 0x7d7300 <col:37, col:71> Text=" remove collisions with parent body"

# (placeholder) | |-EnumConstantDecl 0x67a928 <line:61:3, col:28> col:3 mjDSBL_ACTUATION 'int'

# (placeholder) | | |-ConstantExpr 0x67a908 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 1024

# (placeholder) | | | `-BinaryOperator 0x67a8e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a8a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a8c8 <col:28> 'int' 10

# (placeholder) | | `-FullComment 0x7d7430 <col:37, col:59>

# (placeholder) | |   `-ParagraphComment 0x7d7400 <col:37, col:59>

# (placeholder) | |     `-TextComment 0x7d73d0 <col:37, col:59> Text=" apply actuation forces"

# (placeholder) | |-EnumConstantDecl 0x67aa28 <line:62:3, col:28> col:3 mjDSBL_REFSAFE 'int'

# (placeholder) | | |-ConstantExpr 0x67aa08 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 2048

# (placeholder) | | | `-BinaryOperator 0x67a9e8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67a9a8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67a9c8 <col:28> 'int' 11

# (placeholder) | | `-FullComment 0x7d7500 <col:37, col:79>

# (placeholder) | |   `-ParagraphComment 0x7d74d0 <col:37, col:79>

# (placeholder) | |     `-TextComment 0x7d74a0 <col:37, col:79> Text=" integrator safety: make ref[0]>=2*timestep"

# (placeholder) | |-EnumConstantDecl 0x67ab28 <line:63:3, col:28> col:3 mjDSBL_SENSOR 'int'

# (placeholder) | | |-ConstantExpr 0x67ab08 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 4096

# (placeholder) | | | `-BinaryOperator 0x67aae8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67aaa8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67aac8 <col:28> 'int' 12

# (placeholder) | | `-FullComment 0x7d75d0 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x7d75a0 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x7d7570 <col:37, col:44> Text=" sensors"

# (placeholder) | |-EnumConstantDecl 0x67ac28 <line:64:3, col:28> col:3 mjDSBL_MIDPHASE 'int'

# (placeholder) | | |-ConstantExpr 0x67ac08 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 8192

# (placeholder) | | | `-BinaryOperator 0x67abe8 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67aba8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67abc8 <col:28> 'int' 13

# (placeholder) | | `-FullComment 0x7d76a0 <col:37, col:66>

# (placeholder) | |   `-ParagraphComment 0x7d7670 <col:37, col:66>

# (placeholder) | |     `-TextComment 0x7d7640 <col:37, col:66> Text=" mid-phase collision filtering"

# (placeholder) | |-EnumConstantDecl 0x67ad58 <line:65:3, col:28> col:3 mjDSBL_EULERDAMP 'int'

# (placeholder) | | |-ConstantExpr 0x67ad38 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 16384

# (placeholder) | | | `-BinaryOperator 0x67ad18 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67acd8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67acf8 <col:28> 'int' 14

# (placeholder) | | `-FullComment 0x7d7770 <col:37, col:94>

# (placeholder) | |   `-ParagraphComment 0x7d7740 <col:37, col:94>

# (placeholder) | |     `-TextComment 0x7d7710 <col:37, col:94> Text=" implicit integration of joint damping in Euler integrator"

# (placeholder) | |-EnumConstantDecl 0x67ae58 <line:66:3, col:28> col:3 mjDSBL_AUTORESET 'int'

# (placeholder) | | |-ConstantExpr 0x67ae38 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 32768

# (placeholder) | | | `-BinaryOperator 0x67ae18 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67add8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67adf8 <col:28> 'int' 15

# (placeholder) | | `-FullComment 0x7d7840 <col:37, col:87>

# (placeholder) | |   `-ParagraphComment 0x7d7810 <col:37, col:87>

# (placeholder) | |     `-TextComment 0x7d77e0 <col:37, col:87> Text=" automatic reset when numerical issues are detected"

# (placeholder) | |-EnumConstantDecl 0x67af58 <line:67:3, col:28> col:3 mjDSBL_NATIVECCD 'int'

# (placeholder) | | |-ConstantExpr 0x67af38 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 65536

# (placeholder) | | | `-BinaryOperator 0x67af18 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67aed8 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67aef8 <col:28> 'int' 16

# (placeholder) | | `-FullComment 0x7d7910 <col:37, col:70>

# (placeholder) | |   `-ParagraphComment 0x7d78e0 <col:37, col:70>

# (placeholder) | |     `-TextComment 0x7d78b0 <col:37, col:70> Text=" native convex collision detection"

# (placeholder) | `-EnumConstantDecl 0x67b048 <line:69:3, col:25> col:3 referenced mjNDISABLE 'int'

# (placeholder) |   |-ConstantExpr 0x67b028 <col:25> 'int'

# (placeholder) |   | |-value: Int 17

# (placeholder) |   | `-IntegerLiteral 0x67afd8 <col:25> 'int' 17

# (placeholder) |   `-FullComment 0x7d79e0 <col:37, col:60>

# (placeholder) |     `-ParagraphComment 0x7d79b0 <col:37, col:60>

# (placeholder) |       `-TextComment 0x7d7980 <col:37, col:60> Text=" number of disable flags"

alias enum mjtDisableBit_ : enum mjtDisableBit_ = ' enum mjtDisableBit_ ' sugar
# (placeholder) | | `-EnumType 0x679e60 'enum mjtDisableBit_'

# (placeholder) | |   `-Enum 0x679db8 'mjtDisableBit_'

# ElaboratedTypeNode: Unhandled tokens: mjtDisableBit_ 
# (placeholder) | `-FullComment 0x7d7ab0 <line:48:3, col:100>

# (placeholder) |   `-ParagraphComment 0x7d7a80 <col:3, col:100>

# (placeholder) |     `-TextComment 0x7d7a50 <col:3, col:100> Text="---------------------------------- enum types (mjt) ----------------------------------------------"


# (placeholder) |-EnumDecl 0x67b168 <line:73:9, line:83:1> line:73:14 mjtEnableBit_

# (placeholder) | |-EnumConstantDecl 0x67b2d8 <line:74:3, col:28> col:3 mjENBL_OVERRIDE 'int'

# (placeholder) | | |-ConstantExpr 0x67b2b8 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 1

# (placeholder) | | | `-BinaryOperator 0x67b298 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67b258 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67b278 <col:28> 'int' 0

# (placeholder) | | `-FullComment 0x7d7b80 <col:37, col:64>

# (placeholder) | |   `-ParagraphComment 0x7d7b50 <col:37, col:64>

# (placeholder) | |     `-TextComment 0x7d7b20 <col:37, col:64> Text=" override contact parameters"

# (placeholder) | |-EnumConstantDecl 0x67b3d8 <line:75:3, col:28> col:3 mjENBL_ENERGY 'int'

# (placeholder) | | |-ConstantExpr 0x67b3b8 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 2

# (placeholder) | | | `-BinaryOperator 0x67b398 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67b358 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67b378 <col:28> 'int' 1

# (placeholder) | | `-FullComment 0x7d7c50 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x7d7c20 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x7d7bf0 <col:37, col:55> Text=" energy computation"

# (placeholder) | |-EnumConstantDecl 0x67b4d8 <line:76:3, col:28> col:3 mjENBL_FWDINV 'int'

# (placeholder) | | |-ConstantExpr 0x67b4b8 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 4

# (placeholder) | | | `-BinaryOperator 0x67b498 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67b458 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67b478 <col:28> 'int' 2

# (placeholder) | | `-FullComment 0x7d7d20 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x7d7cf0 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x7d7cc0 <col:37, col:61> Text=" record solver statistics"

# (placeholder) | |-EnumConstantDecl 0x67b5d8 <line:77:3, col:28> col:3 mjENBL_INVDISCRETE 'int'

# (placeholder) | | |-ConstantExpr 0x67b5b8 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 8

# (placeholder) | | | `-BinaryOperator 0x67b598 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67b558 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67b578 <col:28> 'int' 3

# (placeholder) | | `-FullComment 0x7d7e10 <col:37, line:78:59>

# (placeholder) | |   `-ParagraphComment 0x7d7de0 <line:77:37, line:78:59>

# (placeholder) | |     |-TextComment 0x7d7d90 <line:77:37, col:67> Text=" discrete-time inverse dynamics"

# (placeholder) | |     `-TextComment 0x7d7db0 <line:78:37, col:59> Text=" experimental features:"

# (placeholder) | |-EnumConstantDecl 0x67b6d8 <line:79:3, col:28> col:3 mjENBL_MULTICCD 'int'

# (placeholder) | | |-ConstantExpr 0x67b6b8 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 16

# (placeholder) | | | `-BinaryOperator 0x67b698 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67b658 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67b678 <col:28> 'int' 4

# (placeholder) | | `-FullComment 0x7d7ee0 <col:37, col:75>

# (placeholder) | |   `-ParagraphComment 0x7d7eb0 <col:37, col:75>

# (placeholder) | |     `-TextComment 0x7d7e80 <col:37, col:75> Text=" multi-point convex collision detection"

# (placeholder) | |-EnumConstantDecl 0x67b7d8 <line:80:3, col:28> col:3 mjENBL_ISLAND 'int'

# (placeholder) | | |-ConstantExpr 0x67b7b8 <col:25, col:28> 'int'

# (placeholder) | | | |-value: Int 32

# (placeholder) | | | `-BinaryOperator 0x67b798 <col:25, col:28> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x67b758 <col:25> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x67b778 <col:28> 'int' 5

# (placeholder) | | `-FullComment 0x7d7fb0 <col:37, col:64>

# (placeholder) | |   `-ParagraphComment 0x7d7f80 <col:37, col:64>

# (placeholder) | |     `-TextComment 0x7d7f50 <col:37, col:64> Text=" constraint island discovery"

# (placeholder) | `-EnumConstantDecl 0x67b8c8 <line:82:3, col:25> col:3 referenced mjNENABLE 'int'

# (placeholder) |   |-ConstantExpr 0x67b8a8 <col:25> 'int'

# (placeholder) |   | |-value: Int 6

# (placeholder) |   | `-IntegerLiteral 0x67b858 <col:25> 'int' 6

# (placeholder) |   `-FullComment 0x7d8080 <col:37, col:59>

# (placeholder) |     `-ParagraphComment 0x7d8050 <col:37, col:59>

# (placeholder) |       `-TextComment 0x7d8020 <col:37, col:59> Text=" number of enable flags"

alias enum mjtEnableBit_ : enum mjtEnableBit_ = ' enum mjtEnableBit_ ' sugar
# (placeholder) |   `-EnumType 0x67b210 'enum mjtEnableBit_'

# (placeholder) |     `-Enum 0x67b168 'mjtEnableBit_'

# ElaboratedTypeNode: Unhandled tokens: mjtEnableBit_ 

# (placeholder) |-EnumDecl 0x67b9e8 <line:86:9, line:91:1> line:86:14 mjtJoint_

# (placeholder) | |-EnumConstantDecl 0x67bb18 <line:87:3, col:25> col:3 mjJNT_FREE 'int'

# (placeholder) | | |-ConstantExpr 0x67baf8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x67bad8 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7d8150 <col:37, col:85>

# (placeholder) | |   `-ParagraphComment 0x7d8120 <col:37, col:85>

# (placeholder) | |     `-TextComment 0x7d80f0 <col:37, col:85> Text=" global position and orientation (quat)       (7)"

# (placeholder) | |-EnumConstantDecl 0x67bb98 <line:88:3> col:3 mjJNT_BALL 'int'

# (placeholder) | | `-FullComment 0x7d8220 <col:37, col:85>

# (placeholder) | |   `-ParagraphComment 0x7d81f0 <col:37, col:85>

# (placeholder) | |     `-TextComment 0x7d81c0 <col:37, col:85> Text=" orientation (quat) relative to parent        (4)"

# (placeholder) | |-EnumConstantDecl 0x67bc18 <line:89:3> col:3 mjJNT_SLIDE 'int'

# (placeholder) | | `-FullComment 0x7d82f0 <col:37, col:85>

# (placeholder) | |   `-ParagraphComment 0x7d82c0 <col:37, col:85>

# (placeholder) | |     `-TextComment 0x7d8290 <col:37, col:85> Text=" sliding distance along body-fixed axis       (1)"

# (placeholder) | `-EnumConstantDecl 0x67bce8 <line:90:3> col:3 mjJNT_HINGE 'int'

# (placeholder) |   `-FullComment 0x7d83c0 <col:37, col:85>

# (placeholder) |     `-ParagraphComment 0x7d8390 <col:37, col:85>

# (placeholder) |       `-TextComment 0x7d8360 <col:37, col:85> Text=" rotation angle (rad) around body-fixed axis  (1)"

alias enum mjtJoint_ : enum mjtJoint_ = ' enum mjtJoint_ ' sugar
# (placeholder) |   `-EnumType 0x67ba90 'enum mjtJoint_'

# (placeholder) |     `-Enum 0x67b9e8 'mjtJoint_'

# ElaboratedTypeNode: Unhandled tokens: mjtJoint_ 

# (placeholder) |-EnumDecl 0x67be08 <line:94:9, line:120:1> line:94:14 mjtGeom_

# (placeholder) | |-EnumConstantDecl 0x67bf68 <line:96:3, col:25> col:3 mjGEOM_PLANE 'int'

# (placeholder) | | |-ConstantExpr 0x67bf48 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x67bf28 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7d8490 <col:37, col:42>

# (placeholder) | |   `-ParagraphComment 0x7d8460 <col:37, col:42>

# (placeholder) | |     `-TextComment 0x7d8430 <col:37, col:42> Text=" plane"

# (placeholder) | |-EnumConstantDecl 0x67bfe8 <line:97:3> col:3 mjGEOM_HFIELD 'int'

# (placeholder) | | `-FullComment 0x7d8560 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x7d8530 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x7d8500 <col:37, col:49> Text=" height field"

# (placeholder) | |-EnumConstantDecl 0x67c068 <line:98:3> col:3 mjGEOM_SPHERE 'int'

# (placeholder) | | `-FullComment 0x7d8630 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x7d8600 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x7d85d0 <col:37, col:43> Text=" sphere"

# (placeholder) | |-EnumConstantDecl 0x67c0e8 <line:99:3> col:3 mjGEOM_CAPSULE 'int'

# (placeholder) | | `-FullComment 0x7d8700 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x7d86d0 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x7d86a0 <col:37, col:44> Text=" capsule"

# (placeholder) | |-EnumConstantDecl 0x67c168 <line:100:3> col:3 mjGEOM_ELLIPSOID 'int'

# (placeholder) | | `-FullComment 0x7d87d0 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x7d87a0 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x7d8770 <col:37, col:46> Text=" ellipsoid"

# (placeholder) | |-EnumConstantDecl 0x67c1e8 <line:101:3> col:3 mjGEOM_CYLINDER 'int'

# (placeholder) | | `-FullComment 0x7d88a0 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x7d8870 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x7d8840 <col:37, col:45> Text=" cylinder"

# (placeholder) | |-EnumConstantDecl 0x67c268 <line:102:3> col:3 mjGEOM_BOX 'int'

# (placeholder) | | `-FullComment 0x7d8970 <col:37, col:40>

# (placeholder) | |   `-ParagraphComment 0x7d8940 <col:37, col:40>

# (placeholder) | |     `-TextComment 0x7d8910 <col:37, col:40> Text=" box"

# (placeholder) | |-EnumConstantDecl 0x67c2e8 <line:103:3> col:3 mjGEOM_MESH 'int'

# (placeholder) | | `-FullComment 0x7d8a40 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7d8a10 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7d89e0 <col:37, col:41> Text=" mesh"

# (placeholder) | |-EnumConstantDecl 0x67c368 <line:104:3> col:3 mjGEOM_SDF 'int'

# (placeholder) | | `-FullComment 0x7d8b10 <col:37, col:58>

# (placeholder) | |   `-ParagraphComment 0x7d8ae0 <col:37, col:58>

# (placeholder) | |     `-TextComment 0x7d8ab0 <col:37, col:58> Text=" signed distance field"

# (placeholder) | |-EnumConstantDecl 0x67c3e8 <line:106:3> col:3 referenced mjNGEOMTYPES 'int'

# (placeholder) | | `-FullComment 0x7d8c20 <col:37, col:65>

# (placeholder) | |   `-ParagraphComment 0x7d8bf0 <col:37, col:65>

# (placeholder) | |     `-TextComment 0x7d8bc0 <col:37, col:65> Text=" number of regular geom types"

# (placeholder) | |-EnumConstantDecl 0x67c4d8 <line:109:3, col:25> col:3 mjGEOM_ARROW 'int'

# (placeholder) | | |-ConstantExpr 0x67c4b8 <col:25> 'int'

# (placeholder) | | | |-value: Int 100

# (placeholder) | | | `-IntegerLiteral 0x67c498 <col:25> 'int' 100

# (placeholder) | | `-FullComment 0x7d8cf0 <col:37, col:42>

# (placeholder) | |   `-ParagraphComment 0x7d8cc0 <col:37, col:42>

# (placeholder) | |     `-TextComment 0x7d8c90 <col:37, col:42> Text=" arrow"

# (placeholder) | |-EnumConstantDecl 0x67c558 <line:110:3> col:3 mjGEOM_ARROW1 'int'

# (placeholder) | | `-FullComment 0x7d8dc0 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x7d8d90 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x7d8d60 <col:37, col:57> Text=" arrow without wedges"

# (placeholder) | |-EnumConstantDecl 0x67c5d8 <line:111:3> col:3 mjGEOM_ARROW2 'int'

# (placeholder) | | `-FullComment 0x7d8e90 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x7d8e60 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x7d8e30 <col:37, col:61> Text=" arrow in both directions"

# (placeholder) | |-EnumConstantDecl 0x67c658 <line:112:3> col:3 mjGEOM_LINE 'int'

# (placeholder) | | `-FullComment 0x7d8f60 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7d8f30 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7d8f00 <col:37, col:41> Text=" line"

# (placeholder) | |-EnumConstantDecl 0x67c6d8 <line:113:3> col:3 mjGEOM_LINEBOX 'int'

# (placeholder) | | `-FullComment 0x7d9030 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7d9000 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7d8fd0 <col:37, col:56> Text=" box with line edges"

# (placeholder) | |-EnumConstantDecl 0x67c758 <line:114:3> col:3 mjGEOM_FLEX 'int'

# (placeholder) | | `-FullComment 0x7d9100 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7d90d0 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7d90a0 <col:37, col:41> Text=" flex"

# (placeholder) | |-EnumConstantDecl 0x67c7d8 <line:115:3> col:3 mjGEOM_SKIN 'int'

# (placeholder) | | `-FullComment 0x7d91d0 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7d91a0 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7d9170 <col:37, col:41> Text=" skin"

# (placeholder) | |-EnumConstantDecl 0x67c858 <line:116:3> col:3 mjGEOM_LABEL 'int'

# (placeholder) | | `-FullComment 0x7d92a0 <col:37, col:47>

# (placeholder) | |   `-ParagraphComment 0x7d9270 <col:37, col:47>

# (placeholder) | |     `-TextComment 0x7d9240 <col:37, col:47> Text=" text label"

# (placeholder) | |-EnumConstantDecl 0x67c8d8 <line:117:3> col:3 mjGEOM_TRIANGLE 'int'

# (placeholder) | | `-FullComment 0x7d9370 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x7d9340 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x7d9310 <col:37, col:45> Text=" triangle"

# (placeholder) | `-EnumConstantDecl 0x67c9c8 <line:119:3, col:25> col:3 mjGEOM_NONE 'int'

# (placeholder) |   |-ConstantExpr 0x67c9a8 <col:25> 'int'

# (placeholder) |   | |-value: Int 1001

# (placeholder) |   | `-IntegerLiteral 0x67c958 <col:25> 'int' 1001

# (placeholder) |   `-FullComment 0x7d9440 <col:37, col:54>

# (placeholder) |     `-ParagraphComment 0x7d9410 <col:37, col:54>

# (placeholder) |       `-TextComment 0x7d93e0 <col:37, col:54> Text=" missing geom type"

alias enum mjtGeom_ : enum mjtGeom_ = ' enum mjtGeom_ ' sugar
# (placeholder) |   `-EnumType 0x67beb0 'enum mjtGeom_'

# (placeholder) |     `-Enum 0x67be08 'mjtGeom_'

# ElaboratedTypeNode: Unhandled tokens: mjtGeom_ 

# (placeholder) |-EnumDecl 0x67cae8 <line:123:9, line:129:1> line:123:14 mjtCamLight_

# (placeholder) | |-EnumConstantDecl 0x67cc18 <line:124:3, col:25> col:3 mjCAMLIGHT_FIXED 'int'

# (placeholder) | | |-ConstantExpr 0x67cbf8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x67cbd8 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7d9510 <col:37, col:62>

# (placeholder) | |   `-ParagraphComment 0x7d94e0 <col:37, col:62>

# (placeholder) | |     `-TextComment 0x7d94b0 <col:37, col:62> Text=" pos and rot fixed in body"

# (placeholder) | |-EnumConstantDecl 0x680ce0 <line:125:3> col:3 mjCAMLIGHT_TRACK 'int'

# (placeholder) | | `-FullComment 0x7d95e0 <col:37, col:73>

# (placeholder) | |   `-ParagraphComment 0x7d95b0 <col:37, col:73>

# (placeholder) | |     `-TextComment 0x7d9580 <col:37, col:73> Text=" pos tracks body, rot fixed in global"

# (placeholder) | |-EnumConstantDecl 0x680d58 <line:126:3> col:3 mjCAMLIGHT_TRACKCOM 'int'

# (placeholder) | | `-FullComment 0x7d96b0 <col:37, col:78>

# (placeholder) | |   `-ParagraphComment 0x7d9680 <col:37, col:78>

# (placeholder) | |     `-TextComment 0x7d9650 <col:37, col:78> Text=" pos tracks subtree com, rot fixed in body"

# (placeholder) | |-EnumConstantDecl 0x680dd8 <line:127:3> col:3 mjCAMLIGHT_TARGETBODY 'int'

# (placeholder) | | `-FullComment 0x7d9780 <col:37, col:78>

# (placeholder) | |   `-ParagraphComment 0x7d9750 <col:37, col:78>

# (placeholder) | |     `-TextComment 0x7d9720 <col:37, col:78> Text=" pos fixed in body, rot tracks target body"

# (placeholder) | `-EnumConstantDecl 0x680e88 <line:128:3> col:3 mjCAMLIGHT_TARGETBODYCOM 'int'

# (placeholder) |   `-FullComment 0x7d9850 <col:37, col:85>

# (placeholder) |     `-ParagraphComment 0x7d9820 <col:37, col:85>

# (placeholder) |       `-TextComment 0x7d97f0 <col:37, col:85> Text=" pos fixed in body, rot tracks target subtree com"

alias enum mjtCamLight_ : enum mjtCamLight_ = ' enum mjtCamLight_ ' sugar
# (placeholder) |   `-EnumType 0x67cb90 'enum mjtCamLight_'

# (placeholder) |     `-Enum 0x67cae8 'mjtCamLight_'

# ElaboratedTypeNode: Unhandled tokens: mjtCamLight_ 

# (placeholder) |-EnumDecl 0x680fa8 <line:132:9, line:136:1> line:132:14 mjtTexture_

# (placeholder) | |-EnumConstantDecl 0x6810d8 <line:133:3, col:25> col:3 mjTEXTURE_2D 'int'

# (placeholder) | | |-ConstantExpr 0x6810b8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x681098 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7d9920 <col:37, col:80>

# (placeholder) | |   `-ParagraphComment 0x7d98f0 <col:37, col:80>

# (placeholder) | |     `-TextComment 0x7d98c0 <col:37, col:80> Text=" 2d texture, suitable for planes and hfields"

# (placeholder) | |-EnumConstantDecl 0x681158 <line:134:3> col:3 mjTEXTURE_CUBE 'int'

# (placeholder) | | `-FullComment 0x7d99f0 <col:37, col:84>

# (placeholder) | |   `-ParagraphComment 0x7d99c0 <col:37, col:84>

# (placeholder) | |     `-TextComment 0x7d9990 <col:37, col:84> Text=" cube texture, suitable for all other geom types"

# (placeholder) | `-EnumConstantDecl 0x681208 <line:135:3> col:3 mjTEXTURE_SKYBOX 'int'

# (placeholder) |   `-FullComment 0x7d9ac0 <col:37, col:64>

# (placeholder) |     `-ParagraphComment 0x7d9a90 <col:37, col:64>

# (placeholder) |       `-TextComment 0x7d9a60 <col:37, col:64> Text=" cube texture used as skybox"

alias enum mjtTexture_ : enum mjtTexture_ = ' enum mjtTexture_ ' sugar
# (placeholder) |   `-EnumType 0x681050 'enum mjtTexture_'

# (placeholder) |     `-Enum 0x680fa8 'mjtTexture_'

# ElaboratedTypeNode: Unhandled tokens: mjtTexture_ 

# (placeholder) |-EnumDecl 0x681328 <line:139:9, line:151:1> line:139:14 mjtTextureRole_

# (placeholder) | |-EnumConstantDecl 0x681458 <line:140:3, col:25> col:3 mjTEXROLE_USER 'int'

# (placeholder) | | |-ConstantExpr 0x681438 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x681418 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7d9b90 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x7d9b60 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x7d9b30 <col:37, col:48> Text=" unspecified"

# (placeholder) | |-EnumConstantDecl 0x6814d8 <line:141:3> col:3 mjTEXROLE_RGB 'int'

# (placeholder) | | `-FullComment 0x7d9c60 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7d9c30 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7d9c00 <col:37, col:56> Text=" base color (albedo)"

# (placeholder) | |-EnumConstantDecl 0x681558 <line:142:3> col:3 mjTEXROLE_OCCLUSION 'int'

# (placeholder) | | `-FullComment 0x7d9d30 <col:37, col:54>

# (placeholder) | |   `-ParagraphComment 0x7d9d00 <col:37, col:54>

# (placeholder) | |     `-TextComment 0x7d9cd0 <col:37, col:54> Text=" ambient occlusion"

# (placeholder) | |-EnumConstantDecl 0x6815d8 <line:143:3> col:3 mjTEXROLE_ROUGHNESS 'int'

# (placeholder) | | `-FullComment 0x7d9e00 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x7d9dd0 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x7d9da0 <col:37, col:46> Text=" roughness"

# (placeholder) | |-EnumConstantDecl 0x681658 <line:144:3> col:3 mjTEXROLE_METALLIC 'int'

# (placeholder) | | `-FullComment 0x7d9ed0 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x7d9ea0 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x7d9e70 <col:37, col:45> Text=" metallic"

# (placeholder) | |-EnumConstantDecl 0x6816d8 <line:145:3> col:3 mjTEXROLE_NORMAL 'int'

# (placeholder) | | `-FullComment 0x7d9fa0 <col:37, col:54>

# (placeholder) | |   `-ParagraphComment 0x7d9f70 <col:37, col:54>

# (placeholder) | |     `-TextComment 0x7d9f40 <col:37, col:54> Text=" normal (bump) map"

# (placeholder) | |-EnumConstantDecl 0x681758 <line:146:3> col:3 mjTEXROLE_OPACITY 'int'

# (placeholder) | | `-FullComment 0x7da070 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x7da040 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x7da010 <col:37, col:49> Text=" transperancy"

# (placeholder) | |-EnumConstantDecl 0x6817d8 <line:147:3> col:3 mjTEXROLE_EMISSIVE 'int'

# (placeholder) | | `-FullComment 0x7da140 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x7da110 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x7da0e0 <col:37, col:51> Text=" light emission"

# (placeholder) | |-EnumConstantDecl 0x681858 <line:148:3> col:3 mjTEXROLE_RGBA 'int'

# (placeholder) | | `-FullComment 0x7da210 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7da1e0 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7da1b0 <col:37, col:56> Text=" base color, opacity"

# (placeholder) | |-EnumConstantDecl 0x6818d8 <line:149:3> col:3 mjTEXROLE_ORM 'int'

# (placeholder) | | `-FullComment 0x7da2e0 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x7da2b0 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x7da280 <col:37, col:67> Text=" occlusion, roughness, metallic"

# (placeholder) | `-EnumConstantDecl 0x681958 <line:150:3> col:3 referenced mjNTEXROLE 'int'

alias enum mjtTextureRole_ : enum mjtTextureRole_ = ' enum mjtTextureRole_ ' sugar
# (placeholder) |   `-EnumType 0x6813d0 'enum mjtTextureRole_'

# (placeholder) |     `-Enum 0x681328 'mjtTextureRole_'

# ElaboratedTypeNode: Unhandled tokens: mjtTextureRole_ 

# (placeholder) |-EnumDecl 0x681a78 <line:154:9, line:159:1> line:154:14 mjtIntegrator_

# (placeholder) | |-EnumConstantDecl 0x681ba8 <line:155:3, col:25> col:3 mjINT_EULER 'int'

# (placeholder) | | |-ConstantExpr 0x681b88 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x681b68 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7da3b0 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7da380 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7da350 <col:37, col:56> Text=" semi-implicit Euler"

# (placeholder) | |-EnumConstantDecl 0x681c28 <line:156:3> col:3 mjINT_RK4 'int'

# (placeholder) | | `-FullComment 0x7da480 <col:37, col:58>

# (placeholder) | |   `-ParagraphComment 0x7da450 <col:37, col:58>

# (placeholder) | |     `-TextComment 0x7da420 <col:37, col:58> Text=" 4th-order Runge Kutta"

# (placeholder) | |-EnumConstantDecl 0x681cf0 <line:157:3> col:3 mjINT_IMPLICIT 'int'

# (placeholder) | | `-FullComment 0x7da550 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x7da520 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x7da4f0 <col:37, col:57> Text=" implicit in velocity"

# (placeholder) | `-EnumConstantDecl 0x681d98 <line:158:3> col:3 mjINT_IMPLICITFAST 'int'

# (placeholder) |   `-FullComment 0x7da620 <col:37, col:76>

# (placeholder) |     `-ParagraphComment 0x7da5f0 <col:37, col:76>

# (placeholder) |       `-TextComment 0x7da5c0 <col:37, col:76> Text=" implicit in velocity, no rne derivative"

alias enum mjtIntegrator_ : enum mjtIntegrator_ = ' enum mjtIntegrator_ ' sugar
# (placeholder) |   `-EnumType 0x681b20 'enum mjtIntegrator_'

# (placeholder) |     `-Enum 0x681a78 'mjtIntegrator_'

# ElaboratedTypeNode: Unhandled tokens: mjtIntegrator_ 

# (placeholder) |-EnumDecl 0x681eb8 <line:162:9, line:165:1> line:162:14 mjtCone_

# (placeholder) | |-EnumConstantDecl 0x681fe8 <line:163:3, col:26> col:3 mjCONE_PYRAMIDAL 'int'

# (placeholder) | | |-ConstantExpr 0x681fc8 <col:26> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x681fa8 <col:26> 'int' 0

# (placeholder) | | `-FullComment 0x7da6f0 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x7da6c0 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x7da690 <col:37, col:46> Text=" pyramidal"

# (placeholder) | `-EnumConstantDecl 0x682098 <line:164:3> col:3 mjCONE_ELLIPTIC 'int'

# (placeholder) |   `-FullComment 0x7da7c0 <col:37, col:45>

# (placeholder) |     `-ParagraphComment 0x7da790 <col:37, col:45>

# (placeholder) |       `-TextComment 0x7da760 <col:37, col:45> Text=" elliptic"

alias enum mjtCone_ : enum mjtCone_ = ' enum mjtCone_ ' sugar
# (placeholder) |   `-EnumType 0x681f60 'enum mjtCone_'

# (placeholder) |     `-Enum 0x681eb8 'mjtCone_'

# ElaboratedTypeNode: Unhandled tokens: mjtCone_ 

# (placeholder) |-EnumDecl 0x6821b8 <line:168:9, line:172:1> line:168:14 mjtJacobian_

# (placeholder) | |-EnumConstantDecl 0x6822e8 <line:169:3, col:26> col:3 mjJAC_DENSE 'int'

# (placeholder) | | |-ConstantExpr 0x6822c8 <col:26> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6822a8 <col:26> 'int' 0

# (placeholder) | | `-FullComment 0x7da890 <col:37, col:42>

# (placeholder) | |   `-ParagraphComment 0x7da860 <col:37, col:42>

# (placeholder) | |     `-TextComment 0x7da830 <col:37, col:42> Text=" dense"

# (placeholder) | |-EnumConstantDecl 0x682368 <line:170:3> col:3 mjJAC_SPARSE 'int'

# (placeholder) | | `-FullComment 0x7da960 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x7da930 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x7da900 <col:37, col:43> Text=" sparse"

# (placeholder) | `-EnumConstantDecl 0x682418 <line:171:3> col:3 mjJAC_AUTO 'int'

# (placeholder) |   `-FullComment 0x7daa80 <col:37, col:69>

# (placeholder) |     `-ParagraphComment 0x7daa50 <col:37, col:69>

# (placeholder) |       |-TextComment 0x7da9d0 <col:37, col:48> Text=" dense if nv"

# (placeholder) |       |-TextComment 0x7da9f0 <col:49> Text="<"

# (placeholder) |       `-TextComment 0x7daa10 <col:50, col:69> Text="60, sparse otherwise"

alias enum mjtJacobian_ : enum mjtJacobian_ = ' enum mjtJacobian_ ' sugar
# (placeholder) |   `-EnumType 0x682260 'enum mjtJacobian_'

# (placeholder) |     `-Enum 0x6821b8 'mjtJacobian_'

# ElaboratedTypeNode: Unhandled tokens: mjtJacobian_ 

# (placeholder) |-EnumDecl 0x682538 <line:175:9, line:179:1> line:175:14 mjtSolver_

# (placeholder) | |-EnumConstantDecl 0x682668 <line:176:3, col:26> col:3 mjSOL_PGS 'int'

# (placeholder) | | |-ConstantExpr 0x682648 <col:26> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x682628 <col:26> 'int' 0

# (placeholder) | | `-FullComment 0x7dab50 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x7dab20 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x7daaf0 <col:37, col:50> Text=" PGS    (dual)"

# (placeholder) | |-EnumConstantDecl 0x6826e8 <line:177:3> col:3 mjSOL_CG 'int'

# (placeholder) | | `-FullComment 0x7dac30 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x7dac00 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x7dabd0 <col:37, col:52> Text=" CG     (primal)"

# (placeholder) | `-EnumConstantDecl 0x682798 <line:178:3> col:3 mjSOL_NEWTON 'int'

# (placeholder) |   `-FullComment 0x7dad00 <col:37, col:52>

# (placeholder) |     `-ParagraphComment 0x7dacd0 <col:37, col:52>

# (placeholder) |       `-TextComment 0x7daca0 <col:37, col:52> Text=" Newton (primal)"

alias enum mjtSolver_ : enum mjtSolver_ = ' enum mjtSolver_ ' sugar
# (placeholder) |   `-EnumType 0x6825e0 'enum mjtSolver_'

# (placeholder) |     `-Enum 0x682538 'mjtSolver_'

# ElaboratedTypeNode: Unhandled tokens: mjtSolver_ 

# (placeholder) |-EnumDecl 0x6828b8 <line:182:9, line:189:1> line:182:14 mjtEq_

# (placeholder) | |-EnumConstantDecl 0x6829e8 <line:183:3, col:25> col:3 mjEQ_CONNECT 'int'

# (placeholder) | | |-ConstantExpr 0x6829c8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6829a8 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7dadd0 <col:37, col:79>

# (placeholder) | |   `-ParagraphComment 0x7dada0 <col:37, col:79>

# (placeholder) | |     `-TextComment 0x7dad70 <col:37, col:79> Text=" connect two bodies at a point (ball joint)"

# (placeholder) | |-EnumConstantDecl 0x682a68 <line:184:3> col:3 mjEQ_WELD 'int'

# (placeholder) | | `-FullComment 0x7daea0 <col:37, col:88>

# (placeholder) | |   `-ParagraphComment 0x7dae70 <col:37, col:88>

# (placeholder) | |     `-TextComment 0x7dae40 <col:37, col:88> Text=" fix relative position and orientation of two bodies"

# (placeholder) | |-EnumConstantDecl 0x682ae8 <line:185:3> col:3 mjEQ_JOINT 'int'

# (placeholder) | | `-FullComment 0x7daf70 <col:37, col:86>

# (placeholder) | |   `-ParagraphComment 0x7daf40 <col:37, col:86>

# (placeholder) | |     `-TextComment 0x7daf10 <col:37, col:86> Text=" couple the values of two scalar joints with cubic"

# (placeholder) | |-EnumConstantDecl 0x682b68 <line:186:3> col:3 mjEQ_TENDON 'int'

# (placeholder) | | `-FullComment 0x7db040 <col:37, col:81>

# (placeholder) | |   `-ParagraphComment 0x7db010 <col:37, col:81>

# (placeholder) | |     `-TextComment 0x7dafe0 <col:37, col:81> Text=" couple the lengths of two tendons with cubic"

# (placeholder) | |-EnumConstantDecl 0x682be8 <line:187:3> col:3 mjEQ_FLEX 'int'

# (placeholder) | | `-FullComment 0x7db110 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x7db0e0 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x7db0b0 <col:37, col:67> Text=" fix all edge lengths of a flex"

# (placeholder) | `-EnumConstantDecl 0x682c98 <line:188:3> col:3 mjEQ_DISTANCE 'int'

# (placeholder) |   `-FullComment 0x7db1e0 <col:37, col:77>

# (placeholder) |     `-ParagraphComment 0x7db1b0 <col:37, col:77>

# (placeholder) |       `-TextComment 0x7db180 <col:37, col:77> Text=" unsupported, will cause an error if used"

alias enum mjtEq_ : enum mjtEq_ = ' enum mjtEq_ ' sugar
# (placeholder) |   `-EnumType 0x682960 'enum mjtEq_'

# (placeholder) |     `-Enum 0x6828b8 'mjtEq_'

# ElaboratedTypeNode: Unhandled tokens: mjtEq_ 

# (placeholder) |-EnumDecl 0x682dc8 <line:192:9, line:199:1> line:192:14 mjtWrap_

# (placeholder) | |-EnumConstantDecl 0x682ef8 <line:193:3, col:25> col:3 mjWRAP_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x682ed8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x682eb8 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7db2b0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x7db280 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x7db250 <col:37, col:48> Text=" null object"

# (placeholder) | |-EnumConstantDecl 0x682f78 <line:194:3> col:3 mjWRAP_JOINT 'int'

# (placeholder) | | `-FullComment 0x7db380 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7db350 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7db320 <col:37, col:56> Text=" constant moment arm"

# (placeholder) | |-EnumConstantDecl 0x682ff8 <line:195:3> col:3 mjWRAP_PULLEY 'int'

# (placeholder) | | `-FullComment 0x7db450 <col:37, col:64>

# (placeholder) | |   `-ParagraphComment 0x7db420 <col:37, col:64>

# (placeholder) | |     `-TextComment 0x7db3f0 <col:37, col:64> Text=" pulley used to split tendon"

# (placeholder) | |-EnumConstantDecl 0x683078 <line:196:3> col:3 mjWRAP_SITE 'int'

# (placeholder) | | `-FullComment 0x7db520 <col:37, col:54>

# (placeholder) | |   `-ParagraphComment 0x7db4f0 <col:37, col:54>

# (placeholder) | |     `-TextComment 0x7db4c0 <col:37, col:54> Text=" pass through site"

# (placeholder) | |-EnumConstantDecl 0x6830f8 <line:197:3> col:3 mjWRAP_SPHERE 'int'

# (placeholder) | | `-FullComment 0x7db5f0 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x7db5c0 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x7db590 <col:37, col:55> Text=" wrap around sphere"

# (placeholder) | `-EnumConstantDecl 0x6831a8 <line:198:3> col:3 mjWRAP_CYLINDER 'int'

# (placeholder) |   `-FullComment 0x7db6c0 <col:37, col:68>

# (placeholder) |     `-ParagraphComment 0x7db690 <col:37, col:68>

# (placeholder) |       `-TextComment 0x7db660 <col:37, col:68> Text=" wrap around (infinite) cylinder"

alias enum mjtWrap_ : enum mjtWrap_ = ' enum mjtWrap_ ' sugar
# (placeholder) |   `-EnumType 0x682e70 'enum mjtWrap_'

# (placeholder) |     `-Enum 0x682dc8 'mjtWrap_'

# ElaboratedTypeNode: Unhandled tokens: mjtWrap_ 

# (placeholder) |-EnumDecl 0x6832c8 <line:202:9, line:211:1> line:202:14 mjtTrn_

# (placeholder) | |-EnumConstantDecl 0x6833f8 <line:203:3, col:25> col:3 mjTRN_JOINT 'int'

# (placeholder) | | |-ConstantExpr 0x6833d8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6833b8 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7db790 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x7db760 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x7db730 <col:37, col:51> Text=" force on joint"

# (placeholder) | |-EnumConstantDecl 0x683478 <line:204:3> col:3 mjTRN_JOINTINPARENT 'int'

# (placeholder) | | `-FullComment 0x7db860 <col:37, col:78>

# (placeholder) | |   `-ParagraphComment 0x7db830 <col:37, col:78>

# (placeholder) | |     `-TextComment 0x7db800 <col:37, col:78> Text=" force on joint, expressed in parent frame"

# (placeholder) | |-EnumConstantDecl 0x6834f8 <line:205:3> col:3 mjTRN_SLIDERCRANK 'int'

# (placeholder) | | `-FullComment 0x7db930 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x7db900 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x7db8d0 <col:37, col:67> Text=" force via slider-crank linkage"

# (placeholder) | |-EnumConstantDecl 0x683578 <line:206:3> col:3 mjTRN_TENDON 'int'

# (placeholder) | | `-FullComment 0x7dba00 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x7db9d0 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x7db9a0 <col:37, col:52> Text=" force on tendon"

# (placeholder) | |-EnumConstantDecl 0x6835f8 <line:207:3> col:3 mjTRN_SITE 'int'

# (placeholder) | | `-FullComment 0x7dbad0 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x7dbaa0 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x7dba70 <col:37, col:50> Text=" force on site"

# (placeholder) | |-EnumConstantDecl 0x683678 <line:208:3> col:3 mjTRN_BODY 'int'

# (placeholder) | | `-FullComment 0x7dbba0 <col:37, col:69>

# (placeholder) | |   `-ParagraphComment 0x7dbb70 <col:37, col:69>

# (placeholder) | |     `-TextComment 0x7dbb40 <col:37, col:69> Text=" adhesion force on a body's geoms"

# (placeholder) | `-EnumConstantDecl 0x683768 <line:210:3, col:25> col:3 mjTRN_UNDEFINED 'int'

# (placeholder) |   |-ConstantExpr 0x683748 <col:25> 'int'

# (placeholder) |   | |-value: Int 1000

# (placeholder) |   | `-IntegerLiteral 0x6836f8 <col:25> 'int' 1000

# (placeholder) |   `-FullComment 0x7dbc70 <col:37, col:64>

# (placeholder) |     `-ParagraphComment 0x7dbc40 <col:37, col:64>

# (placeholder) |       `-TextComment 0x7dbc10 <col:37, col:64> Text=" undefined transmission type"

alias enum mjtTrn_ : enum mjtTrn_ = ' enum mjtTrn_ ' sugar
# (placeholder) |   `-EnumType 0x683370 'enum mjtTrn_'

# (placeholder) |     `-Enum 0x6832c8 'mjtTrn_'

# ElaboratedTypeNode: Unhandled tokens: mjtTrn_ 

# (placeholder) |-EnumDecl 0x683888 <line:214:9, line:221:1> line:214:14 mjtDyn_

# (placeholder) | |-EnumConstantDecl 0x6839b8 <line:215:3, col:25> col:3 mjDYN_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x683998 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x683978 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7dbd40 <col:37, col:79>

# (placeholder) | |   `-ParagraphComment 0x7dbd10 <col:37, col:79>

# (placeholder) | |     `-TextComment 0x7dbce0 <col:37, col:79> Text=" no internal dynamics; ctrl specifies force"

# (placeholder) | |-EnumConstantDecl 0x683a38 <line:216:3> col:3 mjDYN_INTEGRATOR 'int'

# (placeholder) | | `-FullComment 0x7dbe10 <col:37, col:58>

# (placeholder) | |   `-ParagraphComment 0x7dbde0 <col:37, col:58>

# (placeholder) | |     `-TextComment 0x7dbdb0 <col:37, col:58> Text=" integrator: da/dt = u"

# (placeholder) | |-EnumConstantDecl 0x683ab8 <line:217:3> col:3 mjDYN_FILTER 'int'

# (placeholder) | | `-FullComment 0x7dbee0 <col:37, col:71>

# (placeholder) | |   `-ParagraphComment 0x7dbeb0 <col:37, col:71>

# (placeholder) | |     `-TextComment 0x7dbe80 <col:37, col:71> Text=" linear filter: da/dt = (u-a) / tau"

# (placeholder) | |-EnumConstantDecl 0x683b38 <line:218:3> col:3 mjDYN_FILTEREXACT 'int'

# (placeholder) | | `-FullComment 0x7dbfb0 <col:37, col:95>

# (placeholder) | |   `-ParagraphComment 0x7dbf80 <col:37, col:95>

# (placeholder) | |     `-TextComment 0x7dbf50 <col:37, col:95> Text=" linear filter: da/dt = (u-a) / tau, with exact integration"

# (placeholder) | |-EnumConstantDecl 0x683bb8 <line:219:3> col:3 mjDYN_MUSCLE 'int'

# (placeholder) | | `-FullComment 0x7dc080 <col:37, col:85>

# (placeholder) | |   `-ParagraphComment 0x7dc050 <col:37, col:85>

# (placeholder) | |     `-TextComment 0x7dc020 <col:37, col:85> Text=" piece-wise linear filter with two time constants"

# (placeholder) | `-EnumConstantDecl 0x683c68 <line:220:3> col:3 mjDYN_USER 'int'

# (placeholder) |   `-FullComment 0x7dc150 <col:37, col:63>

# (placeholder) |     `-ParagraphComment 0x7dc120 <col:37, col:63>

# (placeholder) |       `-TextComment 0x7dc0f0 <col:37, col:63> Text=" user-defined dynamics type"

alias enum mjtDyn_ : enum mjtDyn_ = ' enum mjtDyn_ ' sugar
# (placeholder) |   `-EnumType 0x683930 'enum mjtDyn_'

# (placeholder) |     `-Enum 0x683888 'mjtDyn_'

# ElaboratedTypeNode: Unhandled tokens: mjtDyn_ 

# (placeholder) |-EnumDecl 0x684eb0 <line:224:9, line:229:1> line:224:14 mjtGain_

# (placeholder) | |-EnumConstantDecl 0x684fd8 <line:225:3, col:25> col:3 mjGAIN_FIXED 'int'

# (placeholder) | | |-ConstantExpr 0x684fb8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x684f98 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7dc220 <col:37, col:47>

# (placeholder) | |   `-ParagraphComment 0x7dc1f0 <col:37, col:47>

# (placeholder) | |     `-TextComment 0x7dc1c0 <col:37, col:47> Text=" fixed gain"

# (placeholder) | |-EnumConstantDecl 0x685058 <line:226:3> col:3 mjGAIN_AFFINE 'int'

# (placeholder) | | `-FullComment 0x7dc2f0 <col:37, col:68>

# (placeholder) | |   `-ParagraphComment 0x7dc2c0 <col:37, col:68>

# (placeholder) | |     `-TextComment 0x7dc290 <col:37, col:68> Text=" const + kp*length + kv*velocity"

# (placeholder) | |-EnumConstantDecl 0x6850d8 <line:227:3> col:3 mjGAIN_MUSCLE 'int'

# (placeholder) | | `-FullComment 0x7dc3c0 <col:37, col:82>

# (placeholder) | |   `-ParagraphComment 0x7dc390 <col:37, col:82>

# (placeholder) | |     `-TextComment 0x7dc360 <col:37, col:82> Text=" muscle FLV curve computed by mju_muscleGain()"

# (placeholder) | `-EnumConstantDecl 0x685188 <line:228:3> col:3 mjGAIN_USER 'int'

# (placeholder) |   `-FullComment 0x7dc490 <col:37, col:59>

# (placeholder) |     `-ParagraphComment 0x7dc460 <col:37, col:59>

# (placeholder) |       `-TextComment 0x7dc430 <col:37, col:59> Text=" user-defined gain type"

alias enum mjtGain_ : enum mjtGain_ = ' enum mjtGain_ ' sugar
# (placeholder) |   `-EnumType 0x684f50 'enum mjtGain_'

# (placeholder) |     `-Enum 0x684eb0 'mjtGain_'

# ElaboratedTypeNode: Unhandled tokens: mjtGain_ 

# (placeholder) |-EnumDecl 0x6852a8 <line:232:9, line:237:1> line:232:14 mjtBias_

# (placeholder) | |-EnumConstantDecl 0x6853d8 <line:233:3, col:25> col:3 mjBIAS_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x6853b8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x685398 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7dc560 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x7dc530 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x7dc500 <col:37, col:44> Text=" no bias"

# (placeholder) | |-EnumConstantDecl 0x685458 <line:234:3> col:3 mjBIAS_AFFINE 'int'

# (placeholder) | | `-FullComment 0x7dc630 <col:37, col:68>

# (placeholder) | |   `-ParagraphComment 0x7dc600 <col:37, col:68>

# (placeholder) | |     `-TextComment 0x7dc5d0 <col:37, col:68> Text=" const + kp*length + kv*velocity"

# (placeholder) | |-EnumConstantDecl 0x6854d8 <line:235:3> col:3 mjBIAS_MUSCLE 'int'

# (placeholder) | | `-FullComment 0x7dc700 <col:37, col:86>

# (placeholder) | |   `-ParagraphComment 0x7dc6d0 <col:37, col:86>

# (placeholder) | |     `-TextComment 0x7dc6a0 <col:37, col:86> Text=" muscle passive force computed by mju_muscleBias()"

# (placeholder) | `-EnumConstantDecl 0x685588 <line:236:3> col:3 mjBIAS_USER 'int'

# (placeholder) |   `-FullComment 0x7dc7d0 <col:37, col:59>

# (placeholder) |     `-ParagraphComment 0x7dc7a0 <col:37, col:59>

# (placeholder) |       `-TextComment 0x7dc770 <col:37, col:59> Text=" user-defined bias type"

alias enum mjtBias_ : enum mjtBias_ = ' enum mjtBias_ ' sugar
# (placeholder) |   `-EnumType 0x685350 'enum mjtBias_'

# (placeholder) |     `-Enum 0x6852a8 'mjtBias_'

# ElaboratedTypeNode: Unhandled tokens: mjtBias_ 

# (placeholder) |-EnumDecl 0x6856a8 <line:240:9, line:275:1> line:240:14 mjtObj_

# (placeholder) | |-EnumConstantDecl 0x6857d8 <line:241:3, col:25> col:3 mjOBJ_UNKNOWN 'int'

# (placeholder) | | |-ConstantExpr 0x6857b8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x685798 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7dc8a0 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7dc870 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7dc840 <col:37, col:56> Text=" unknown object type"

# (placeholder) | |-EnumConstantDecl 0x685858 <line:242:3> col:3 mjOBJ_BODY 'int'

# (placeholder) | | `-FullComment 0x7dc970 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7dc940 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7dc910 <col:37, col:41> Text=" body"

# (placeholder) | |-EnumConstantDecl 0x6858d8 <line:243:3> col:3 mjOBJ_XBODY 'int'

# (placeholder) | | `-FullComment 0x7dca40 <col:37, col:90>

# (placeholder) | |   `-ParagraphComment 0x7dca10 <col:37, col:90>

# (placeholder) | |     `-TextComment 0x7dc9e0 <col:37, col:90> Text=" body, used to access regular frame instead of i-frame"

# (placeholder) | |-EnumConstantDecl 0x685958 <line:244:3> col:3 mjOBJ_JOINT 'int'

# (placeholder) | | `-FullComment 0x7dcb10 <col:37, col:42>

# (placeholder) | |   `-ParagraphComment 0x7dcae0 <col:37, col:42>

# (placeholder) | |     `-TextComment 0x7dcab0 <col:37, col:42> Text=" joint"

# (placeholder) | |-EnumConstantDecl 0x6859d8 <line:245:3> col:3 mjOBJ_DOF 'int'

# (placeholder) | | `-FullComment 0x7ddc10 <col:37, col:40>

# (placeholder) | |   `-ParagraphComment 0x7ddbe0 <col:37, col:40>

# (placeholder) | |     `-TextComment 0x7ddbb0 <col:37, col:40> Text=" dof"

# (placeholder) | |-EnumConstantDecl 0x685a58 <line:246:3> col:3 mjOBJ_GEOM 'int'

# (placeholder) | | `-FullComment 0x7ddce0 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7ddcb0 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7ddc80 <col:37, col:41> Text=" geom"

# (placeholder) | |-EnumConstantDecl 0x685ad8 <line:247:3> col:3 mjOBJ_SITE 'int'

# (placeholder) | | `-FullComment 0x7dddb0 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7ddd80 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7ddd50 <col:37, col:41> Text=" site"

# (placeholder) | |-EnumConstantDecl 0x685b58 <line:248:3> col:3 mjOBJ_CAMERA 'int'

# (placeholder) | | `-FullComment 0x7dde80 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x7dde50 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x7dde20 <col:37, col:43> Text=" camera"

# (placeholder) | |-EnumConstantDecl 0x685bd8 <line:249:3> col:3 mjOBJ_LIGHT 'int'

# (placeholder) | | `-FullComment 0x7ddf50 <col:37, col:42>

# (placeholder) | |   `-ParagraphComment 0x7ddf20 <col:37, col:42>

# (placeholder) | |     `-TextComment 0x7ddef0 <col:37, col:42> Text=" light"

# (placeholder) | |-EnumConstantDecl 0x685c58 <line:250:3> col:3 mjOBJ_FLEX 'int'

# (placeholder) | | `-FullComment 0x7de020 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7ddff0 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7ddfc0 <col:37, col:41> Text=" flex"

# (placeholder) | |-EnumConstantDecl 0x685cd8 <line:251:3> col:3 mjOBJ_MESH 'int'

# (placeholder) | | `-FullComment 0x7de0f0 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7de0c0 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7de090 <col:37, col:41> Text=" mesh"

# (placeholder) | |-EnumConstantDecl 0x685d58 <line:252:3> col:3 mjOBJ_SKIN 'int'

# (placeholder) | | `-FullComment 0x7de1c0 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7de190 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7de160 <col:37, col:41> Text=" skin"

# (placeholder) | |-EnumConstantDecl 0x6863f0 <line:253:3> col:3 mjOBJ_HFIELD 'int'

# (placeholder) | | `-FullComment 0x7de290 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x7de260 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x7de230 <col:37, col:48> Text=" heightfield"

# (placeholder) | |-EnumConstantDecl 0x686468 <line:254:3> col:3 mjOBJ_TEXTURE 'int'

# (placeholder) | | `-FullComment 0x7de360 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x7de330 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x7de300 <col:37, col:44> Text=" texture"

# (placeholder) | |-EnumConstantDecl 0x6864e8 <line:255:3> col:3 mjOBJ_MATERIAL 'int'

# (placeholder) | | `-FullComment 0x7de430 <col:37, col:59>

# (placeholder) | |   `-ParagraphComment 0x7de400 <col:37, col:59>

# (placeholder) | |     `-TextComment 0x7de3d0 <col:37, col:59> Text=" material for rendering"

# (placeholder) | |-EnumConstantDecl 0x686568 <line:256:3> col:3 mjOBJ_PAIR 'int'

# (placeholder) | | `-FullComment 0x7de500 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x7de4d0 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x7de4a0 <col:37, col:57> Text=" geom pair to include"

# (placeholder) | |-EnumConstantDecl 0x6865e8 <line:257:3> col:3 mjOBJ_EXCLUDE 'int'

# (placeholder) | | `-FullComment 0x7de5d0 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x7de5a0 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x7de570 <col:37, col:57> Text=" body pair to exclude"

# (placeholder) | |-EnumConstantDecl 0x686668 <line:258:3> col:3 mjOBJ_EQUALITY 'int'

# (placeholder) | | `-FullComment 0x7de6a0 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7de670 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7de640 <col:37, col:56> Text=" equality constraint"

# (placeholder) | |-EnumConstantDecl 0x6866e8 <line:259:3> col:3 mjOBJ_TENDON 'int'

# (placeholder) | | `-FullComment 0x7de770 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x7de740 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x7de710 <col:37, col:43> Text=" tendon"

# (placeholder) | |-EnumConstantDecl 0x686768 <line:260:3> col:3 mjOBJ_ACTUATOR 'int'

# (placeholder) | | `-FullComment 0x7de840 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x7de810 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x7de7e0 <col:37, col:45> Text=" actuator"

# (placeholder) | |-EnumConstantDecl 0x6867e8 <line:261:3> col:3 mjOBJ_SENSOR 'int'

# (placeholder) | | `-FullComment 0x7de910 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x7de8e0 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x7de8b0 <col:37, col:43> Text=" sensor"

# (placeholder) | |-EnumConstantDecl 0x686868 <line:262:3> col:3 mjOBJ_NUMERIC 'int'

# (placeholder) | | `-FullComment 0x7de9e0 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x7de9b0 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x7de980 <col:37, col:44> Text=" numeric"

# (placeholder) | |-EnumConstantDecl 0x6868e8 <line:263:3> col:3 mjOBJ_TEXT 'int'

# (placeholder) | | `-FullComment 0x7deab0 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x7dea80 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x7dea50 <col:37, col:41> Text=" text"

# (placeholder) | |-EnumConstantDecl 0x686968 <line:264:3> col:3 mjOBJ_TUPLE 'int'

# (placeholder) | | `-FullComment 0x7deb80 <col:37, col:42>

# (placeholder) | |   `-ParagraphComment 0x7deb50 <col:37, col:42>

# (placeholder) | |     `-TextComment 0x7deb20 <col:37, col:42> Text=" tuple"

# (placeholder) | |-EnumConstantDecl 0x6869e8 <line:265:3> col:3 mjOBJ_KEY 'int'

# (placeholder) | | `-FullComment 0x7dec50 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x7dec20 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x7debf0 <col:37, col:45> Text=" keyframe"

# (placeholder) | |-EnumConstantDecl 0x686a68 <line:266:3> col:3 mjOBJ_PLUGIN 'int'

# (placeholder) | | `-FullComment 0x7ded20 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x7decf0 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x7decc0 <col:37, col:52> Text=" plugin instance"

# (placeholder) | |-EnumConstantDecl 0x686ae8 <line:268:3> col:3 mjNOBJECT 'int'

# (placeholder) | | `-FullComment 0x7dedf0 <col:37, col:59>

# (placeholder) | |   `-ParagraphComment 0x7dedc0 <col:37, col:59>

# (placeholder) | |     `-TextComment 0x7ded90 <col:37, col:59> Text=" number of object types"

# (placeholder) | |-EnumConstantDecl 0x686bd8 <line:271:3, col:25> col:3 mjOBJ_FRAME 'int'

# (placeholder) | | |-ConstantExpr 0x686bb8 <col:25> 'int'

# (placeholder) | | | |-value: Int 100

# (placeholder) | | | `-IntegerLiteral 0x686b98 <col:25> 'int' 100

# (placeholder) | | `-FullComment 0x7deec0 <col:37, col:42>

# (placeholder) | |   `-ParagraphComment 0x7dee90 <col:37, col:42>

# (placeholder) | |     `-TextComment 0x7dee60 <col:37, col:42> Text=" frame"

# (placeholder) | |-EnumConstantDecl 0x686c58 <line:272:3> col:3 mjOBJ_DEFAULT 'int'

# (placeholder) | | `-FullComment 0x7def90 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x7def60 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x7def30 <col:37, col:44> Text=" default"

# (placeholder) | `-EnumConstantDecl 0x686d08 <line:273:3> col:3 mjOBJ_MODEL 'int'

# (placeholder) |   `-FullComment 0x7df060 <col:37, col:49>

# (placeholder) |     `-ParagraphComment 0x7df030 <col:37, col:49>

# (placeholder) |       `-TextComment 0x7df000 <col:37, col:49> Text=" entire model"

alias enum mjtObj_ : enum mjtObj_ = ' enum mjtObj_ ' sugar
# (placeholder) |   `-EnumType 0x685750 'enum mjtObj_'

# (placeholder) |     `-Enum 0x6856a8 'mjtObj_'

# ElaboratedTypeNode: Unhandled tokens: mjtObj_ 

# (placeholder) |-EnumDecl 0x686e28 <line:278:9, line:287:1> line:278:14 mjtConstraint_

# (placeholder) | |-EnumConstantDecl 0x686f58 <line:279:3, col:25> col:3 mjCNSTR_EQUALITY 'int'

# (placeholder) | | |-ConstantExpr 0x686f38 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x686f18 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7df130 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7df100 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7df0d0 <col:37, col:56> Text=" equality constraint"

# (placeholder) | |-EnumConstantDecl 0x686fd8 <line:280:3> col:3 mjCNSTR_FRICTION_DOF 'int'

# (placeholder) | | `-FullComment 0x7df200 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x7df1d0 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x7df1a0 <col:37, col:49> Text=" dof friction"

# (placeholder) | |-EnumConstantDecl 0x687058 <line:281:3> col:3 mjCNSTR_FRICTION_TENDON 'int'

# (placeholder) | | `-FullComment 0x7df2d0 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x7df2a0 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x7df270 <col:37, col:52> Text=" tendon friction"

# (placeholder) | |-EnumConstantDecl 0x6870d8 <line:282:3> col:3 mjCNSTR_LIMIT_JOINT 'int'

# (placeholder) | | `-FullComment 0x7df3a0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x7df370 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x7df340 <col:37, col:48> Text=" joint limit"

# (placeholder) | |-EnumConstantDecl 0x687158 <line:283:3> col:3 mjCNSTR_LIMIT_TENDON 'int'

# (placeholder) | | `-FullComment 0x7df470 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x7df440 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x7df410 <col:37, col:49> Text=" tendon limit"

# (placeholder) | |-EnumConstantDecl 0x6871d8 <line:284:3> col:3 mjCNSTR_CONTACT_FRICTIONLESS 'int'

# (placeholder) | | `-FullComment 0x7df540 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x7df510 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x7df4e0 <col:37, col:57> Text=" frictionless contact"

# (placeholder) | |-EnumConstantDecl 0x687258 <line:285:3> col:3 mjCNSTR_CONTACT_PYRAMIDAL 'int'

# (placeholder) | | `-FullComment 0x7df610 <col:37, col:80>

# (placeholder) | |   `-ParagraphComment 0x7df5e0 <col:37, col:80>

# (placeholder) | |     `-TextComment 0x7df5b0 <col:37, col:80> Text=" frictional contact, pyramidal friction cone"

# (placeholder) | `-EnumConstantDecl 0x687308 <line:286:3> col:3 mjCNSTR_CONTACT_ELLIPTIC 'int'

# (placeholder) |   `-FullComment 0x7df6e0 <col:37, col:79>

# (placeholder) |     `-ParagraphComment 0x7df6b0 <col:37, col:79>

# (placeholder) |       `-TextComment 0x7df680 <col:37, col:79> Text=" frictional contact, elliptic friction cone"

alias enum mjtConstraint_ : enum mjtConstraint_ = ' enum mjtConstraint_ ' sugar
# (placeholder) |   `-EnumType 0x686ed0 'enum mjtConstraint_'

# (placeholder) |     `-Enum 0x686e28 'mjtConstraint_'

# ElaboratedTypeNode: Unhandled tokens: mjtConstraint_ 

# (placeholder) |-EnumDecl 0x687b70 <line:290:9, line:296:1> line:290:14 mjtConstraintState_

# (placeholder) | |-EnumConstantDecl 0x687c98 <line:291:3, col:28> col:3 mjCNSTRSTATE_SATISFIED 'int'

# (placeholder) | | |-ConstantExpr 0x687c78 <col:28> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x687c58 <col:28> 'int' 0

# (placeholder) | | `-FullComment 0x7df7b0 <col:39, col:87>

# (placeholder) | |   `-ParagraphComment 0x7df780 <col:39, col:87>

# (placeholder) | |     `-TextComment 0x7df750 <col:39, col:87> Text=" constraint satisfied, zero cost (limit, contact)"

# (placeholder) | |-EnumConstantDecl 0x687d18 <line:292:3> col:3 mjCNSTRSTATE_QUADRATIC 'int'

# (placeholder) | | `-FullComment 0x7df880 <col:39, col:90>

# (placeholder) | |   `-ParagraphComment 0x7df850 <col:39, col:90>

# (placeholder) | |     `-TextComment 0x7df820 <col:39, col:90> Text=" quadratic cost (equality, friction, limit, contact)"

# (placeholder) | |-EnumConstantDecl 0x687d98 <line:293:3> col:3 mjCNSTRSTATE_LINEARNEG 'int'

# (placeholder) | | `-FullComment 0x7df950 <col:39, col:76>

# (placeholder) | |   `-ParagraphComment 0x7df920 <col:39, col:76>

# (placeholder) | |     `-TextComment 0x7df8f0 <col:39, col:76> Text=" linear cost, negative side (friction)"

# (placeholder) | |-EnumConstantDecl 0x687e18 <line:294:3> col:3 mjCNSTRSTATE_LINEARPOS 'int'

# (placeholder) | | `-FullComment 0x7dfa20 <col:39, col:76>

# (placeholder) | |   `-ParagraphComment 0x7df9f0 <col:39, col:76>

# (placeholder) | |     `-TextComment 0x7df9c0 <col:39, col:76> Text=" linear cost, positive side (friction)"

# (placeholder) | `-EnumConstantDecl 0x687ec8 <line:295:3> col:3 mjCNSTRSTATE_CONE 'int'

# (placeholder) |   `-FullComment 0x7dfaf0 <col:39, col:87>

# (placeholder) |     `-ParagraphComment 0x7dfac0 <col:39, col:87>

# (placeholder) |       `-TextComment 0x7dfa90 <col:39, col:87> Text=" squared distance to cone cost (elliptic contact)"

alias enum mjtConstraintState_ : enum mjtConstraintState_ = ' enum mjtConstraintState_ ' sugar
# (placeholder) |   `-EnumType 0x687c10 'enum mjtConstraintState_'

# (placeholder) |     `-Enum 0x687b70 'mjtConstraintState_'

# ElaboratedTypeNode: Unhandled tokens: mjtConstraintState_ 

# (placeholder) |-EnumDecl 0x687fe8 <line:299:9, line:364:1> line:299:14 mjtSensor_

# (placeholder) | |-EnumConstantDecl 0x688148 <line:301:3, col:25> col:3 mjSENS_TOUCH 'int'

# (placeholder) | | |-ConstantExpr 0x688128 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x688108 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7dfbd0 <col:37, col:89>

# (placeholder) | |   `-ParagraphComment 0x7dfb90 <col:37, col:89>

# (placeholder) | |     `-TextComment 0x7dfb60 <col:37, col:89> Text=" scalar contact normal forces summed over sensor zone"

# (placeholder) | |-EnumConstantDecl 0x6881c8 <line:302:3> col:3 mjSENS_ACCELEROMETER 'int'

# (placeholder) | | `-FullComment 0x7dfca0 <col:37, col:75>

# (placeholder) | |   `-ParagraphComment 0x7dfc70 <col:37, col:75>

# (placeholder) | |     `-TextComment 0x7dfc40 <col:37, col:75> Text=" 3D linear acceleration, in local frame"

# (placeholder) | |-EnumConstantDecl 0x688248 <line:303:3> col:3 mjSENS_VELOCIMETER 'int'

# (placeholder) | | `-FullComment 0x7dfd70 <col:37, col:71>

# (placeholder) | |   `-ParagraphComment 0x7dfd40 <col:37, col:71>

# (placeholder) | |     `-TextComment 0x7dfd10 <col:37, col:71> Text=" 3D linear velocity, in local frame"

# (placeholder) | |-EnumConstantDecl 0x6882c8 <line:304:3> col:3 mjSENS_GYRO 'int'

# (placeholder) | | `-FullComment 0x7dfe40 <col:37, col:72>

# (placeholder) | |   `-ParagraphComment 0x7dfe10 <col:37, col:72>

# (placeholder) | |     `-TextComment 0x7dfde0 <col:37, col:72> Text=" 3D angular velocity, in local frame"

# (placeholder) | |-EnumConstantDecl 0x688348 <line:305:3> col:3 mjSENS_FORCE 'int'

# (placeholder) | | `-FullComment 0x7dff10 <col:37, col:85>

# (placeholder) | |   `-ParagraphComment 0x7dfee0 <col:37, col:85>

# (placeholder) | |     `-TextComment 0x7dfeb0 <col:37, col:85> Text=" 3D force between site's body and its parent body"

# (placeholder) | |-EnumConstantDecl 0x6883c8 <line:306:3> col:3 mjSENS_TORQUE 'int'

# (placeholder) | | `-FullComment 0x7dffe0 <col:37, col:86>

# (placeholder) | |   `-ParagraphComment 0x7dffb0 <col:37, col:86>

# (placeholder) | |     `-TextComment 0x7dff80 <col:37, col:86> Text=" 3D torque between site's body and its parent body"

# (placeholder) | |-EnumConstantDecl 0x688448 <line:307:3> col:3 mjSENS_MAGNETOMETER 'int'

# (placeholder) | | `-FullComment 0x7e00b0 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x7e0080 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x7e0050 <col:37, col:52> Text=" 3D magnetometer"

# (placeholder) | |-EnumConstantDecl 0x6884c8 <line:308:3> col:3 mjSENS_RANGEFINDER 'int'

# (placeholder) | | `-FullComment 0x7e0180 <col:37, col:89>

# (placeholder) | |   `-ParagraphComment 0x7e0150 <col:37, col:89>

# (placeholder) | |     `-TextComment 0x7e0120 <col:37, col:89> Text=" scalar distance to nearest geom or site along z-axis"

# (placeholder) | |-EnumConstantDecl 0x688548 <line:309:3> col:3 mjSENS_CAMPROJECTION 'int'

# (placeholder) | | `-FullComment 0x7e0250 <col:37, col:84>

# (placeholder) | |   `-ParagraphComment 0x7e0220 <col:37, col:84>

# (placeholder) | |     `-TextComment 0x7e01f0 <col:37, col:84> Text=" pixel coordinates of a site in the camera image"

# (placeholder) | |-EnumConstantDecl 0x6885f8 <line:312:3> col:3 mjSENS_JOINTPOS 'int'

# (placeholder) | | `-FullComment 0x7e0320 <col:37, col:81>

# (placeholder) | |   `-ParagraphComment 0x7e02f0 <col:37, col:81>

# (placeholder) | |     `-TextComment 0x7e02c0 <col:37, col:81> Text=" scalar joint position (hinge and slide only)"

# (placeholder) | |-EnumConstantDecl 0x688678 <line:313:3> col:3 mjSENS_JOINTVEL 'int'

# (placeholder) | | `-FullComment 0x7e03f0 <col:37, col:81>

# (placeholder) | |   `-ParagraphComment 0x7e03c0 <col:37, col:81>

# (placeholder) | |     `-TextComment 0x7e0390 <col:37, col:81> Text=" scalar joint velocity (hinge and slide only)"

# (placeholder) | |-EnumConstantDecl 0x6886f8 <line:314:3> col:3 mjSENS_TENDONPOS 'int'

# (placeholder) | | `-FullComment 0x7e04c0 <col:37, col:59>

# (placeholder) | |   `-ParagraphComment 0x7e0490 <col:37, col:59>

# (placeholder) | |     `-TextComment 0x7e0460 <col:37, col:59> Text=" scalar tendon position"

# (placeholder) | |-EnumConstantDecl 0x688778 <line:315:3> col:3 mjSENS_TENDONVEL 'int'

# (placeholder) | | `-FullComment 0x7e0590 <col:37, col:59>

# (placeholder) | |   `-ParagraphComment 0x7e0560 <col:37, col:59>

# (placeholder) | |     `-TextComment 0x7e0530 <col:37, col:59> Text=" scalar tendon velocity"

# (placeholder) | |-EnumConstantDecl 0x6887f8 <line:316:3> col:3 mjSENS_ACTUATORPOS 'int'

# (placeholder) | | `-FullComment 0x7e0660 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x7e0630 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x7e0600 <col:37, col:61> Text=" scalar actuator position"

# (placeholder) | |-EnumConstantDecl 0x688878 <line:317:3> col:3 mjSENS_ACTUATORVEL 'int'

# (placeholder) | | `-FullComment 0x7e0730 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x7e0700 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x7e06d0 <col:37, col:61> Text=" scalar actuator velocity"

# (placeholder) | |-EnumConstantDecl 0x6888f8 <line:318:3> col:3 mjSENS_ACTUATORFRC 'int'

# (placeholder) | | `-FullComment 0x7e0800 <col:37, col:58>

# (placeholder) | |   `-ParagraphComment 0x7e07d0 <col:37, col:58>

# (placeholder) | |     `-TextComment 0x7e07a0 <col:37, col:58> Text=" scalar actuator force"

# (placeholder) | |-EnumConstantDecl 0x688978 <line:319:3> col:3 mjSENS_JOINTACTFRC 'int'

# (placeholder) | | `-FullComment 0x7e08d0 <col:37, col:81>

# (placeholder) | |   `-ParagraphComment 0x7e08a0 <col:37, col:81>

# (placeholder) | |     `-TextComment 0x7e0870 <col:37, col:81> Text=" scalar actuator force, measured at the joint"

# (placeholder) | |-EnumConstantDecl 0x688a28 <line:322:3> col:3 mjSENS_BALLQUAT 'int'

# (placeholder) | | `-FullComment 0x7e09a0 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x7e0970 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x7e0940 <col:37, col:61> Text=" 4D ball joint quaternion"

# (placeholder) | |-EnumConstantDecl 0x688aa8 <line:323:3> col:3 mjSENS_BALLANGVEL 'int'

# (placeholder) | | `-FullComment 0x7e0a70 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x7e0a40 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x7e0a10 <col:37, col:67> Text=" 3D ball joint angular velocity"

# (placeholder) | |-EnumConstantDecl 0x68a278 <line:326:3> col:3 mjSENS_JOINTLIMITPOS 'int'

# (placeholder) | | `-FullComment 0x7e0b40 <col:37, col:64>

# (placeholder) | |   `-ParagraphComment 0x7e0b10 <col:37, col:64>

# (placeholder) | |     `-TextComment 0x7e0ae0 <col:37, col:64> Text=" joint limit distance-margin"

# (placeholder) | |-EnumConstantDecl 0x68a2f8 <line:327:3> col:3 mjSENS_JOINTLIMITVEL 'int'

# (placeholder) | | `-FullComment 0x7e0c10 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x7e0be0 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x7e0bb0 <col:37, col:57> Text=" joint limit velocity"

# (placeholder) | |-EnumConstantDecl 0x68a378 <line:328:3> col:3 mjSENS_JOINTLIMITFRC 'int'

# (placeholder) | | `-FullComment 0x7e0ce0 <col:37, col:54>

# (placeholder) | |   `-ParagraphComment 0x7e0cb0 <col:37, col:54>

# (placeholder) | |     `-TextComment 0x7e0c80 <col:37, col:54> Text=" joint limit force"

# (placeholder) | |-EnumConstantDecl 0x68a3f8 <line:329:3> col:3 mjSENS_TENDONLIMITPOS 'int'

# (placeholder) | | `-FullComment 0x7e0db0 <col:37, col:65>

# (placeholder) | |   `-ParagraphComment 0x7e0d80 <col:37, col:65>

# (placeholder) | |     `-TextComment 0x7e0d50 <col:37, col:65> Text=" tendon limit distance-margin"

# (placeholder) | |-EnumConstantDecl 0x68a478 <line:330:3> col:3 mjSENS_TENDONLIMITVEL 'int'

# (placeholder) | | `-FullComment 0x7e0e80 <col:37, col:58>

# (placeholder) | |   `-ParagraphComment 0x7e0e50 <col:37, col:58>

# (placeholder) | |     `-TextComment 0x7e0e20 <col:37, col:58> Text=" tendon limit velocity"

# (placeholder) | |-EnumConstantDecl 0x68a4f8 <line:331:3> col:3 mjSENS_TENDONLIMITFRC 'int'

# (placeholder) | | `-FullComment 0x7e0f50 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x7e0f20 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x7e0ef0 <col:37, col:55> Text=" tendon limit force"

# (placeholder) | |-EnumConstantDecl 0x68a5a8 <line:334:3> col:3 mjSENS_FRAMEPOS 'int'

# (placeholder) | | `-FullComment 0x7e1020 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x7e0ff0 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x7e0fc0 <col:37, col:48> Text=" 3D position"

# (placeholder) | |-EnumConstantDecl 0x68a628 <line:335:3> col:3 mjSENS_FRAMEQUAT 'int'

# (placeholder) | | `-FullComment 0x7e10f0 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x7e10c0 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x7e1090 <col:37, col:67> Text=" 4D unit quaternion orientation"

# (placeholder) | |-EnumConstantDecl 0x68a6a8 <line:336:3> col:3 mjSENS_FRAMEXAXIS 'int'

# (placeholder) | | `-FullComment 0x7e11c0 <col:37, col:77>

# (placeholder) | |   `-ParagraphComment 0x7e1190 <col:37, col:77>

# (placeholder) | |     `-TextComment 0x7e1160 <col:37, col:77> Text=" 3D unit vector: x-axis of object's frame"

# (placeholder) | |-EnumConstantDecl 0x68a728 <line:337:3> col:3 mjSENS_FRAMEYAXIS 'int'

# (placeholder) | | `-FullComment 0x7e1290 <col:37, col:77>

# (placeholder) | |   `-ParagraphComment 0x7e1260 <col:37, col:77>

# (placeholder) | |     `-TextComment 0x7e1230 <col:37, col:77> Text=" 3D unit vector: y-axis of object's frame"

# (placeholder) | |-EnumConstantDecl 0x68a7a8 <line:338:3> col:3 mjSENS_FRAMEZAXIS 'int'

# (placeholder) | | `-FullComment 0x7e1360 <col:37, col:77>

# (placeholder) | |   `-ParagraphComment 0x7e1330 <col:37, col:77>

# (placeholder) | |     `-TextComment 0x7e1300 <col:37, col:77> Text=" 3D unit vector: z-axis of object's frame"

# (placeholder) | |-EnumConstantDecl 0x68a828 <line:339:3> col:3 mjSENS_FRAMELINVEL 'int'

# (placeholder) | | `-FullComment 0x7e1430 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x7e1400 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x7e13d0 <col:37, col:55> Text=" 3D linear velocity"

# (placeholder) | |-EnumConstantDecl 0x68a8a8 <line:340:3> col:3 mjSENS_FRAMEANGVEL 'int'

# (placeholder) | | `-FullComment 0x7e1500 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7e14d0 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7e14a0 <col:37, col:56> Text=" 3D angular velocity"

# (placeholder) | |-EnumConstantDecl 0x68a928 <line:341:3> col:3 mjSENS_FRAMELINACC 'int'

# (placeholder) | | `-FullComment 0x7e15d0 <col:37, col:59>

# (placeholder) | |   `-ParagraphComment 0x7e15a0 <col:37, col:59>

# (placeholder) | |     `-TextComment 0x7e1570 <col:37, col:59> Text=" 3D linear acceleration"

# (placeholder) | |-EnumConstantDecl 0x68a9a8 <line:342:3> col:3 mjSENS_FRAMEANGACC 'int'

# (placeholder) | | `-FullComment 0x7e16a0 <col:37, col:60>

# (placeholder) | |   `-ParagraphComment 0x7e1670 <col:37, col:60>

# (placeholder) | |     `-TextComment 0x7e1640 <col:37, col:60> Text=" 3D angular acceleration"

# (placeholder) | |-EnumConstantDecl 0x68aa58 <line:345:3> col:3 mjSENS_SUBTREECOM 'int'

# (placeholder) | | `-FullComment 0x7e1770 <col:37, col:65>

# (placeholder) | |   `-ParagraphComment 0x7e1740 <col:37, col:65>

# (placeholder) | |     `-TextComment 0x7e1710 <col:37, col:65> Text=" 3D center of mass of subtree"

# (placeholder) | |-EnumConstantDecl 0x68aad8 <line:346:3> col:3 mjSENS_SUBTREELINVEL 'int'

# (placeholder) | | `-FullComment 0x7e1840 <col:37, col:66>

# (placeholder) | |   `-ParagraphComment 0x7e1810 <col:37, col:66>

# (placeholder) | |     `-TextComment 0x7e17e0 <col:37, col:66> Text=" 3D linear velocity of subtree"

# (placeholder) | |-EnumConstantDecl 0x68ab58 <line:347:3> col:3 mjSENS_SUBTREEANGMOM 'int'

# (placeholder) | | `-FullComment 0x7e1910 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x7e18e0 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x7e18b0 <col:37, col:67> Text=" 3D angular momentum of subtree"

# (placeholder) | |-EnumConstantDecl 0x68ac08 <line:350:3> col:3 mjSENS_GEOMDIST 'int'

# (placeholder) | | `-FullComment 0x7e19e0 <col:37, col:70>

# (placeholder) | |   `-ParagraphComment 0x7e19b0 <col:37, col:70>

# (placeholder) | |     `-TextComment 0x7e1980 <col:37, col:70> Text=" signed distance between two geoms"

# (placeholder) | |-EnumConstantDecl 0x68ac88 <line:351:3> col:3 mjSENS_GEOMNORMAL 'int'

# (placeholder) | | `-FullComment 0x7e1ab0 <col:37, col:71>

# (placeholder) | |   `-ParagraphComment 0x7e1a80 <col:37, col:71>

# (placeholder) | |     `-TextComment 0x7e1a50 <col:37, col:71> Text=" normal direction between two geoms"

# (placeholder) | |-EnumConstantDecl 0x68ad08 <line:352:3> col:3 mjSENS_GEOMFROMTO 'int'

# (placeholder) | | `-FullComment 0x7e1b80 <col:37, col:62>

# (placeholder) | |   `-ParagraphComment 0x7e1b50 <col:37, col:62>

# (placeholder) | |     `-TextComment 0x7e1b20 <col:37, col:62> Text=" segment between two geoms"

# (placeholder) | |-EnumConstantDecl 0x68adb8 <line:355:3> col:3 mjSENS_E_POTENTIAL 'int'

# (placeholder) | | `-FullComment 0x7e3c80 <col:37, col:53>

# (placeholder) | |   `-ParagraphComment 0x7e3c50 <col:37, col:53>

# (placeholder) | |     `-TextComment 0x7e3c20 <col:37, col:53> Text=" potential energy"

# (placeholder) | |-EnumConstantDecl 0x68ae38 <line:356:3> col:3 mjSENS_E_KINETIC 'int'

# (placeholder) | | `-FullComment 0x7e3d50 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x7e3d20 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x7e3cf0 <col:37, col:51> Text=" kinetic energy"

# (placeholder) | |-EnumConstantDecl 0x68aeb8 <line:357:3> col:3 mjSENS_CLOCK 'int'

# (placeholder) | | `-FullComment 0x7e3e20 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x7e3df0 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x7e3dc0 <col:37, col:52> Text=" simulation time"

# (placeholder) | |-EnumConstantDecl 0x68af68 <line:360:3> col:3 mjSENS_PLUGIN 'int'

# (placeholder) | | `-FullComment 0x7e3ef0 <col:37, col:54>

# (placeholder) | |   `-ParagraphComment 0x7e3ec0 <col:37, col:54>

# (placeholder) | |     `-TextComment 0x7e3e90 <col:37, col:54> Text=" plugin-controlled"

# (placeholder) | `-EnumConstantDecl 0x68b048 <line:363:3> col:3 mjSENS_USER 'int'

# (placeholder) |   `-FullComment 0x7e3fc0 <col:37, col:81>

# (placeholder) |     `-ParagraphComment 0x7e3f90 <col:37, col:81>

# (placeholder) |       `-TextComment 0x7e3f60 <col:37, col:81> Text=" sensor data provided by mjcb_sensor callback"

alias enum mjtSensor_ : enum mjtSensor_ = ' enum mjtSensor_ ' sugar
# (placeholder) |   `-EnumType 0x688090 'enum mjtSensor_'

# (placeholder) |     `-Enum 0x687fe8 'mjtSensor_'

# ElaboratedTypeNode: Unhandled tokens: mjtSensor_ 

# (placeholder) |-EnumDecl 0x68b168 <line:367:9, line:372:1> line:367:14 mjtStage_

# (placeholder) | |-EnumConstantDecl 0x68b6b8 <line:368:3, col:25> col:3 mjSTAGE_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x68b698 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x68b678 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7e4090 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x7e4060 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x7e4030 <col:37, col:52> Text=" no computations"

# (placeholder) | |-EnumConstantDecl 0x68b738 <line:369:3> col:3 mjSTAGE_POS 'int'

# (placeholder) | | `-FullComment 0x7e4160 <col:37, col:68>

# (placeholder) | |   `-ParagraphComment 0x7e4130 <col:37, col:68>

# (placeholder) | |     `-TextComment 0x7e4100 <col:37, col:68> Text=" position-dependent computations"

# (placeholder) | |-EnumConstantDecl 0x68b7b8 <line:370:3> col:3 mjSTAGE_VEL 'int'

# (placeholder) | | `-FullComment 0x7e4230 <col:37, col:68>

# (placeholder) | |   `-ParagraphComment 0x7e4200 <col:37, col:68>

# (placeholder) | |     `-TextComment 0x7e41d0 <col:37, col:68> Text=" velocity-dependent computations"

# (placeholder) | `-EnumConstantDecl 0x68b868 <line:371:3> col:3 mjSTAGE_ACC 'int'

# (placeholder) |   `-FullComment 0x7e4300 <col:37, col:78>

# (placeholder) |     `-ParagraphComment 0x7e42d0 <col:37, col:78>

# (placeholder) |       `-TextComment 0x7e42a0 <col:37, col:78> Text=" acceleration/force-dependent computations"

alias enum mjtStage_ : enum mjtStage_ = ' enum mjtStage_ ' sugar
# (placeholder) |   `-EnumType 0x68b630 'enum mjtStage_'

# (placeholder) |     `-Enum 0x68b168 'mjtStage_'

# ElaboratedTypeNode: Unhandled tokens: mjtStage_ 

# (placeholder) |-EnumDecl 0x68b988 <line:375:9, line:380:1> line:375:14 mjtDataType_

# (placeholder) | |-EnumConstantDecl 0x68bab8 <line:376:3, col:25> col:3 mjDATATYPE_REAL 'int'

# (placeholder) | | |-ConstantExpr 0x68ba98 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x68ba78 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7e43d0 <col:37, col:64>

# (placeholder) | |   `-ParagraphComment 0x7e43a0 <col:37, col:64>

# (placeholder) | |     `-TextComment 0x7e4370 <col:37, col:64> Text=" real values, no constraints"

# (placeholder) | |-EnumConstantDecl 0x68bb38 <line:377:3> col:3 mjDATATYPE_POSITIVE 'int'

# (placeholder) | | `-FullComment 0x7e44a0 <col:37, col:77>

# (placeholder) | |   `-ParagraphComment 0x7e4470 <col:37, col:77>

# (placeholder) | |     `-TextComment 0x7e4440 <col:37, col:77> Text=" positive values; 0 or negative: inactive"

# (placeholder) | |-EnumConstantDecl 0x68bbb8 <line:378:3> col:3 mjDATATYPE_AXIS 'int'

# (placeholder) | | `-FullComment 0x7e4570 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x7e4540 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x7e4510 <col:37, col:51> Text=" 3D unit vector"

# (placeholder) | `-EnumConstantDecl 0x68bc68 <line:379:3> col:3 mjDATATYPE_QUATERNION 'int'

# (placeholder) |   `-FullComment 0x7e4640 <col:37, col:52>

# (placeholder) |     `-ParagraphComment 0x7e4610 <col:37, col:52>

# (placeholder) |       `-TextComment 0x7e45e0 <col:37, col:52> Text=" unit quaternion"

alias enum mjtDataType_ : enum mjtDataType_ = ' enum mjtDataType_ ' sugar
# (placeholder) |   `-EnumType 0x68ba30 'enum mjtDataType_'

# (placeholder) |     `-Enum 0x68b988 'mjtDataType_'

# ElaboratedTypeNode: Unhandled tokens: mjtDataType_ 

# (placeholder) |-EnumDecl 0x68bd88 <line:383:9, line:389:1> line:383:14 mjtSameFrame_

# (placeholder) | |-EnumConstantDecl 0x68beb8 <line:384:3, col:25> col:3 mjSAMEFRAME_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x68be98 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x68be78 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x7e4710 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x7e46e0 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x7e46b0 <col:37, col:49> Text=" no alignment"

# (placeholder) | |-EnumConstantDecl 0x68bf38 <line:385:3> col:3 mjSAMEFRAME_BODY 'int'

# (placeholder) | | `-FullComment 0x7e47e0 <col:37, col:64>

# (placeholder) | |   `-ParagraphComment 0x7e47b0 <col:37, col:64>

# (placeholder) | |     `-TextComment 0x7e4780 <col:37, col:64> Text=" frame is same as body frame"

# (placeholder) | |-EnumConstantDecl 0x68bfb8 <line:386:3> col:3 mjSAMEFRAME_INERTIA 'int'

# (placeholder) | | `-FullComment 0x7e48b0 <col:37, col:68>

# (placeholder) | |   `-ParagraphComment 0x7e4880 <col:37, col:68>

# (placeholder) | |     `-TextComment 0x7e4850 <col:37, col:68> Text=" frame is same as inertial frame"

# (placeholder) | |-EnumConstantDecl 0x68c038 <line:387:3> col:3 mjSAMEFRAME_BODYROT 'int'

# (placeholder) | | `-FullComment 0x7e4980 <col:37, col:82>

# (placeholder) | |   `-ParagraphComment 0x7e4950 <col:37, col:82>

# (placeholder) | |     `-TextComment 0x7e4920 <col:37, col:82> Text=" frame orientation is same as body orientation"

# (placeholder) | `-EnumConstantDecl 0x68c0e8 <line:388:3> col:3 mjSAMEFRAME_INERTIAROT 'int'

# (placeholder) |   `-FullComment 0x7e4a50 <col:37, col:85>

# (placeholder) |     `-ParagraphComment 0x7e4a20 <col:37, col:85>

# (placeholder) |       `-TextComment 0x7e49f0 <col:37, col:85> Text=" frame orientation is same as inertia orientation"

alias enum mjtSameFrame_ : enum mjtSameFrame_ = ' enum mjtSameFrame_ ' sugar
# (placeholder) |   `-EnumType 0x68be30 'enum mjtSameFrame_'

# (placeholder) |     `-Enum 0x68bd88 'mjtSameFrame_'

# ElaboratedTypeNode: Unhandled tokens: mjtSameFrame_ 

# (placeholder) |-EnumDecl 0x68c208 <line:392:9, line:397:1> line:392:14 mjtLRMode_

# (placeholder) | |-EnumConstantDecl 0x68c338 <line:393:3, col:21> col:3 mjLRMODE_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x68c318 <col:21> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x68c2f8 <col:21> 'int' 0

# (placeholder) | | `-FullComment 0x7e4b20 <col:37, col:65>

# (placeholder) | |   `-ParagraphComment 0x7e4af0 <col:37, col:65>

# (placeholder) | |     `-TextComment 0x7e4ac0 <col:37, col:65> Text=" do not process any actuators"

# (placeholder) | |-EnumConstantDecl 0x68c3b8 <line:394:3> col:3 mjLRMODE_MUSCLE 'int'

# (placeholder) | | `-FullComment 0x7e4bf0 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x7e4bc0 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x7e4b90 <col:37, col:61> Text=" process muscle actuators"

# (placeholder) | |-EnumConstantDecl 0x68c438 <line:395:3> col:3 mjLRMODE_MUSCLEUSER 'int'

# (placeholder) | | `-FullComment 0x7e4cc0 <col:37, col:70>

# (placeholder) | |   `-ParagraphComment 0x7e4c90 <col:37, col:70>

# (placeholder) | |     `-TextComment 0x7e4c60 <col:37, col:70> Text=" process muscle and user actuators"

# (placeholder) | `-EnumConstantDecl 0x68c4e8 <line:396:3> col:3 mjLRMODE_ALL 'int'

# (placeholder) |   `-FullComment 0x7e4d90 <col:37, col:58>

# (placeholder) |     `-ParagraphComment 0x7e4d60 <col:37, col:58>

# (placeholder) |       `-TextComment 0x7e4d30 <col:37, col:58> Text=" process all actuators"

alias enum mjtLRMode_ : enum mjtLRMode_ = ' enum mjtLRMode_ ' sugar
# (placeholder) |   `-EnumType 0x68c2b0 'enum mjtLRMode_'

# (placeholder) |     `-Enum 0x68c208 'mjtLRMode_'

# ElaboratedTypeNode: Unhandled tokens: mjtLRMode_ 

# (placeholder) |-EnumDecl 0x68db90 <line:400:9, line:406:1> line:400:14 mjtFlexSelf_

# (placeholder) | |-EnumConstantDecl 0x68dcb8 <line:401:3, col:23> col:3 mjFLEXSELF_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x68dc98 <col:23> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x68dc78 <col:23> 'int' 0

# (placeholder) | | `-FullComment 0x7e4e60 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x7e4e30 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x7e4e00 <col:37, col:55> Text=" no self-collisions"

# (placeholder) | |-EnumConstantDecl 0x68dd38 <line:402:3> col:3 mjFLEXSELF_NARROW 'int'

# (placeholder) | | `-FullComment 0x7e4f30 <col:37, col:78>

# (placeholder) | |   `-ParagraphComment 0x7e4f00 <col:37, col:78>

# (placeholder) | |     `-TextComment 0x7e4ed0 <col:37, col:78> Text=" skip midphase, go directly to narrowphase"

# (placeholder) | |-EnumConstantDecl 0x68ddb8 <line:403:3> col:3 mjFLEXSELF_BVH 'int'

# (placeholder) | | `-FullComment 0x7e5000 <col:37, col:78>

# (placeholder) | |   `-ParagraphComment 0x7e4fd0 <col:37, col:78>

# (placeholder) | |     `-TextComment 0x7e4fa0 <col:37, col:78> Text=" use BVH in midphase (if midphase enabled)"

# (placeholder) | |-EnumConstantDecl 0x68de38 <line:404:3> col:3 mjFLEXSELF_SAP 'int'

# (placeholder) | | `-FullComment 0x7e50d0 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x7e50a0 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x7e5070 <col:37, col:56> Text=" use SAP in midphase"

# (placeholder) | `-EnumConstantDecl 0x68dee8 <line:405:3> col:3 mjFLEXSELF_AUTO 'int'

# (placeholder) |   `-FullComment 0x7e51a0 <col:37, col:77>

# (placeholder) |     `-ParagraphComment 0x7e5170 <col:37, col:77>

# (placeholder) |       `-TextComment 0x7e5140 <col:37, col:77> Text=" choose between BVH and SAP automatically"

alias enum mjtFlexSelf_ : enum mjtFlexSelf_ = ' enum mjtFlexSelf_ ' sugar
# (placeholder) |   `-EnumType 0x68dc30 'enum mjtFlexSelf_'

# (placeholder) |     `-Enum 0x68db90 'mjtFlexSelf_'

# ElaboratedTypeNode: Unhandled tokens: mjtFlexSelf_ 
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


alias struct mjLROpt_ : struct mjLROpt_ = mjLROpt_mjLROpt_
struct mjVFS_:

	var impl_: UnsafePointer[NoneType]


alias struct mjVFS_ : struct mjVFS_ = mjVFS_mjVFS_
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


alias struct mjOption_ : struct mjOption_ = mjOption_mjOption_
struct mjVisual_:

	var `global`: _mjVisual___Anonymous_line_486_3

	var quality: _mjVisual___Anonymous_line_501_3

	var headlight: _mjVisual___Anonymous_line_509_3

	var map: _mjVisual___Anonymous_line_516_3

	var scale: _mjVisual___Anonymous_line_532_3

	var rgba: _mjVisual___Anonymous_line_552_3


alias struct mjVisual_ : struct mjVisual_ = mjVisual_mjVisual_
struct mjStatistic_:

	var meaninertia: mjtNum

	var meanmass: mjtNum

	var meansize: mjtNum

	var extent: mjtNum

	var center: SIMD[mjtNum.dtype, 3]


alias struct mjStatistic_ : struct mjStatistic_ = mjStatistic_mjStatistic_
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


alias struct mjModel_ : struct mjModel_ = mjModel_mjModel_

# (placeholder) |-EnumDecl 0x6b9d08 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjthread.h:20:9, line:24:1> line:20:14 mjtTaskStatus_

# (placeholder) | |-EnumConstantDecl 0x6b9e38 <line:21:3, col:16> col:3 mjTASK_NEW 'int'

# (placeholder) | | |-ConstantExpr 0x6b9e18 <col:16> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6b9df8 <col:16> 'int' 0

# (placeholder) | | `-FullComment 0x80cc60 <col:34, col:47>

# (placeholder) | |   `-ParagraphComment 0x80cc30 <col:34, col:47>

# (placeholder) | |     `-TextComment 0x80cc00 <col:34, col:47> Text=" newly created"

# (placeholder) | |-EnumConstantDecl 0x6b9eb8 <line:22:3> col:3 mjTASK_QUEUED 'int'

# (placeholder) | | `-FullComment 0x80cd30 <col:34, col:59>

# (placeholder) | |   `-ParagraphComment 0x80cd00 <col:34, col:59>

# (placeholder) | |     `-TextComment 0x80ccd0 <col:34, col:59> Text=" enqueued in a thread pool"

# (placeholder) | `-EnumConstantDecl 0x6b9f68 <line:23:3> col:3 mjTASK_COMPLETED 'int'

# (placeholder) |   `-FullComment 0x80ce00 <col:34, col:53>

# (placeholder) |     `-ParagraphComment 0x80cdd0 <col:34, col:53>

# (placeholder) |       `-TextComment 0x80cda0 <col:34, col:53> Text=" completed execution"

alias enum mjtTaskStatus_ : enum mjtTaskStatus_ = ' enum mjtTaskStatus_ ' sugar
# (placeholder) |   `-EnumType 0x6b9db0 'enum mjtTaskStatus_'

# (placeholder) |     `-Enum 0x6b9d08 'mjtTaskStatus_'

# ElaboratedTypeNode: Unhandled tokens: mjtTaskStatus_ 

alias void *(*)(void *) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6ba160 'void *(void *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6ba130 'void *(void *)' cdecl
UnsafePointer[NoneType]
UnsafePointer[NoneType]
]

# (placeholder) | `-FullComment 0x80ced0 <line:26:3, col:35>

# (placeholder) |   `-ParagraphComment 0x80cea0 <col:3, col:35>

# (placeholder) |     `-TextComment 0x80ce70 <col:3, col:35> Text=" function pointer type for mjTask"

struct mjThreadPool_:

	var nworker: Int32


alias struct mjThreadPool_ : struct mjThreadPool_ = mjThreadPool_mjThreadPool_
struct mjTask_:

	var func: mjfTask

	var args: UnsafePointer[NoneType]

	var status: volatile int


alias struct mjTask_ : struct mjTask_ = mjTask_mjTask_

# (placeholder) |-EnumDecl 0x6b4638 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjdata.h:27:9, line:51:1> line:27:14 mjtState_

# (placeholder) | |-FullComment 0x80d3b0 <line:25:3, col:100>

# (placeholder) | | `-ParagraphComment 0x80d380 <col:3, col:100>

# (placeholder) | |   `-TextComment 0x80d350 <col:3, col:100> Text="---------------------------------- primitive types (mjt) -----------------------------------------"

# (placeholder) | |-EnumConstantDecl 0x6b47a8 <line:28:3, col:30> col:3 referenced mjSTATE_TIME 'int'

# (placeholder) | | |-ConstantExpr 0x6b4788 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 1

# (placeholder) | | | `-BinaryOperator 0x6b4768 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4728 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4748 <col:30> 'int' 0

# (placeholder) | | `-FullComment 0x80d480 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x80d450 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x80d420 <col:37, col:41> Text=" time"

# (placeholder) | |-EnumConstantDecl 0x6b48a8 <line:29:3, col:30> col:3 referenced mjSTATE_QPOS 'int'

# (placeholder) | | |-ConstantExpr 0x6b4888 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 2

# (placeholder) | | | `-BinaryOperator 0x6b4868 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4828 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4848 <col:30> 'int' 1

# (placeholder) | | `-FullComment 0x80d550 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x80d520 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x80d4f0 <col:37, col:45> Text=" position"

# (placeholder) | |-EnumConstantDecl 0x6b49a8 <line:30:3, col:30> col:3 referenced mjSTATE_QVEL 'int'

# (placeholder) | | |-ConstantExpr 0x6b4988 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 4

# (placeholder) | | | `-BinaryOperator 0x6b4968 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4928 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4948 <col:30> 'int' 2

# (placeholder) | | `-FullComment 0x80d620 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x80d5f0 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x80d5c0 <col:37, col:45> Text=" velocity"

# (placeholder) | |-EnumConstantDecl 0x6b4aa8 <line:31:3, col:30> col:3 referenced mjSTATE_ACT 'int'

# (placeholder) | | |-ConstantExpr 0x6b4a88 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 8

# (placeholder) | | | `-BinaryOperator 0x6b4a68 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4a28 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4a48 <col:30> 'int' 3

# (placeholder) | | `-FullComment 0x80d6f0 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x80d6c0 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x80d690 <col:37, col:56> Text=" actuator activation"

# (placeholder) | |-EnumConstantDecl 0x6b4ba8 <line:32:3, col:30> col:3 referenced mjSTATE_WARMSTART 'int'

# (placeholder) | | |-ConstantExpr 0x6b4b88 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 16

# (placeholder) | | | `-BinaryOperator 0x6b4b68 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4b28 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4b48 <col:30> 'int' 4

# (placeholder) | | `-FullComment 0x80d7c0 <col:37, col:68>

# (placeholder) | |   `-ParagraphComment 0x80d790 <col:37, col:68>

# (placeholder) | |     `-TextComment 0x80d760 <col:37, col:68> Text=" acceleration used for warmstart"

# (placeholder) | |-EnumConstantDecl 0x6b4ca8 <line:33:3, col:30> col:3 referenced mjSTATE_CTRL 'int'

# (placeholder) | | |-ConstantExpr 0x6b4c88 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 32

# (placeholder) | | | `-BinaryOperator 0x6b4c68 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4c28 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4c48 <col:30> 'int' 5

# (placeholder) | | `-FullComment 0x80d890 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x80d860 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x80d830 <col:37, col:44> Text=" control"

# (placeholder) | |-EnumConstantDecl 0x6b4da8 <line:34:3, col:30> col:3 referenced mjSTATE_QFRC_APPLIED 'int'

# (placeholder) | | |-ConstantExpr 0x6b4d88 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 64

# (placeholder) | | | `-BinaryOperator 0x6b4d68 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4d28 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4d48 <col:30> 'int' 6

# (placeholder) | | `-FullComment 0x80d960 <col:37, col:62>

# (placeholder) | |   `-ParagraphComment 0x80d930 <col:37, col:62>

# (placeholder) | |     `-TextComment 0x80d900 <col:37, col:62> Text=" applied generalized force"

# (placeholder) | |-EnumConstantDecl 0x6b4ea8 <line:35:3, col:30> col:3 referenced mjSTATE_XFRC_APPLIED 'int'

# (placeholder) | | |-ConstantExpr 0x6b4e88 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 128

# (placeholder) | | | `-BinaryOperator 0x6b4e68 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4e28 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4e48 <col:30> 'int' 7

# (placeholder) | | `-FullComment 0x80da30 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x80da00 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x80d9d0 <col:37, col:67> Text=" applied Cartesian force/torque"

# (placeholder) | |-EnumConstantDecl 0x6b4fa8 <line:36:3, col:30> col:3 referenced mjSTATE_EQ_ACTIVE 'int'

# (placeholder) | | |-ConstantExpr 0x6b4f88 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 256

# (placeholder) | | | `-BinaryOperator 0x6b4f68 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b4f28 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b4f48 <col:30> 'int' 8

# (placeholder) | | `-FullComment 0x80db00 <col:37, col:63>

# (placeholder) | |   `-ParagraphComment 0x80dad0 <col:37, col:63>

# (placeholder) | |     `-TextComment 0x80daa0 <col:37, col:63> Text=" enable/disable constraints"

# (placeholder) | |-EnumConstantDecl 0x6b50a8 <line:37:3, col:30> col:3 referenced mjSTATE_MOCAP_POS 'int'

# (placeholder) | | |-ConstantExpr 0x6b5088 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 512

# (placeholder) | | | `-BinaryOperator 0x6b5068 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b5028 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b5048 <col:30> 'int' 9

# (placeholder) | | `-FullComment 0x80dbd0 <col:37, col:62>

# (placeholder) | |   `-ParagraphComment 0x80dba0 <col:37, col:62>

# (placeholder) | |     `-TextComment 0x80db70 <col:37, col:62> Text=" positions of mocap bodies"

# (placeholder) | |-EnumConstantDecl 0x6b51a8 <line:38:3, col:30> col:3 referenced mjSTATE_MOCAP_QUAT 'int'

# (placeholder) | | |-ConstantExpr 0x6b5188 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 1024

# (placeholder) | | | `-BinaryOperator 0x6b5168 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b5128 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b5148 <col:30> 'int' 10

# (placeholder) | | `-FullComment 0x80dca0 <col:37, col:65>

# (placeholder) | |   `-ParagraphComment 0x80dc70 <col:37, col:65>

# (placeholder) | |     `-TextComment 0x80dc40 <col:37, col:65> Text=" orientations of mocap bodies"

# (placeholder) | |-EnumConstantDecl 0x6b52a8 <line:39:3, col:30> col:3 referenced mjSTATE_USERDATA 'int'

# (placeholder) | | |-ConstantExpr 0x6b5288 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 2048

# (placeholder) | | | `-BinaryOperator 0x6b5268 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b5228 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b5248 <col:30> 'int' 11

# (placeholder) | | `-FullComment 0x80dd90 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x80dd60 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x80dd30 <col:37, col:46> Text=" user data"

# (placeholder) | |-EnumConstantDecl 0x6b53a8 <line:40:3, col:30> col:3 referenced mjSTATE_PLUGIN 'int'

# (placeholder) | | |-ConstantExpr 0x6b5388 <col:27, col:30> 'int'

# (placeholder) | | | |-value: Int 4096

# (placeholder) | | | `-BinaryOperator 0x6b5368 <col:27, col:30> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6b5328 <col:27> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6b5348 <col:30> 'int' 12

# (placeholder) | | `-FullComment 0x80de60 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x80de30 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x80de00 <col:37, col:49> Text=" plugin state"

# (placeholder) | |-EnumConstantDecl 0x6b5468 <line:42:3, col:27> col:3 mjNSTATE 'int'

# (placeholder) | | |-ConstantExpr 0x6b5448 <col:27> 'int'

# (placeholder) | | | |-value: Int 13

# (placeholder) | | | `-IntegerLiteral 0x6b5428 <col:27> 'int' 13

# (placeholder) | | `-FullComment 0x80df30 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x80df00 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x80ded0 <col:37, col:61> Text=" number of state elements"

# (placeholder) | |-EnumConstantDecl 0x6b55d8 <line:45:3, col:57> col:3 referenced mjSTATE_PHYSICS 'int'

# (placeholder) | | |-ConstantExpr 0x6b55b8 <col:27, col:57> 'int'

# (placeholder) | | | |-value: Int 14

# (placeholder) | | | `-BinaryOperator 0x6b5598 <col:27, col:57> 'int' '|'

# (placeholder) | | |   |-BinaryOperator 0x6b5558 <col:27, col:42> 'int' '|'

# (placeholder) | | |   | |-DeclRefExpr 0x6b5518 <col:27> 'int' EnumConstant 0x6b48a8 'mjSTATE_QPOS' 'int'

# (placeholder) | | |   | `-DeclRefExpr 0x6b5538 <col:42> 'int' EnumConstant 0x6b49a8 'mjSTATE_QVEL' 'int'

# (placeholder) | | |   `-DeclRefExpr 0x6b5578 <col:57> 'int' EnumConstant 0x6b4aa8 'mjSTATE_ACT' 'int'

# (placeholder) | | `-FullComment 0x80e000 <line:44:5, col:62>

# (placeholder) | |   `-ParagraphComment 0x80dfd0 <col:5, col:62>

# (placeholder) | |     `-TextComment 0x80dfa0 <col:5, col:62> Text=" convenience values for commonly used state specifications"

# (placeholder) | |-EnumConstantDecl 0x6b56e8 <line:46:3, col:60> col:3 referenced mjSTATE_FULLPHYSICS 'int'

# (placeholder) | | |-ConstantExpr 0x6b56c8 <col:27, col:60> 'int'

# (placeholder) | | | |-value: Int 4111

# (placeholder) | | | `-BinaryOperator 0x6b56a8 <col:27, col:60> 'int' '|'

# (placeholder) | | |   |-BinaryOperator 0x6b5668 <col:27, col:42> 'int' '|'

# (placeholder) | | |   | |-DeclRefExpr 0x6b5628 <col:27> 'int' EnumConstant 0x6b47a8 'mjSTATE_TIME' 'int'

# (placeholder) | | |   | `-DeclRefExpr 0x6b5648 <col:42> 'int' EnumConstant 0x6b55d8 'mjSTATE_PHYSICS' 'int'

# (placeholder) | | |   `-DeclRefExpr 0x6b5688 <col:60> 'int' EnumConstant 0x6b53a8 'mjSTATE_PLUGIN' 'int'

# (placeholder) | | `-FullComment 0x80e0d0 <line:44:5, col:62>

# (placeholder) | |   `-ParagraphComment 0x80e0a0 <col:5, col:62>

# (placeholder) | |     `-TextComment 0x80e070 <col:5, col:62> Text=" convenience values for commonly used state specifications"

# (placeholder) | |-EnumConstantDecl 0x6b58f8 <line:47:3, line:49:27> line:47:3 referenced mjSTATE_USER 'int'

# (placeholder) | | |-ConstantExpr 0x6b58d8 <col:27, line:49:27> 'int'

# (placeholder) | | | |-value: Int 4064

# (placeholder) | | | `-BinaryOperator 0x6b58b8 <line:47:27, line:49:27> 'int' '|'

# (placeholder) | | |   |-BinaryOperator 0x6b5878 <line:47:27, line:48:67> 'int' '|'

# (placeholder) | | |   | |-BinaryOperator 0x6b5838 <line:47:27, line:48:47> 'int' '|'

# (placeholder) | | |   | | |-BinaryOperator 0x6b57f8 <line:47:27, line:48:27> 'int' '|'

# (placeholder) | | |   | | | |-BinaryOperator 0x6b57b8 <line:47:27, col:65> 'int' '|'

# (placeholder) | | |   | | | | |-BinaryOperator 0x6b5778 <col:27, col:42> 'int' '|'

# (placeholder) | | |   | | | | | |-DeclRefExpr 0x6b5738 <col:27> 'int' EnumConstant 0x6b4ca8 'mjSTATE_CTRL' 'int'

# (placeholder) | | |   | | | | | `-DeclRefExpr 0x6b5758 <col:42> 'int' EnumConstant 0x6b4da8 'mjSTATE_QFRC_APPLIED' 'int'

# (placeholder) | | |   | | | | `-DeclRefExpr 0x6b5798 <col:65> 'int' EnumConstant 0x6b4ea8 'mjSTATE_XFRC_APPLIED' 'int'

# (placeholder) | | |   | | | `-DeclRefExpr 0x6b57d8 <line:48:27> 'int' EnumConstant 0x6b4fa8 'mjSTATE_EQ_ACTIVE' 'int'

# (placeholder) | | |   | | `-DeclRefExpr 0x6b5818 <col:47> 'int' EnumConstant 0x6b50a8 'mjSTATE_MOCAP_POS' 'int'

# (placeholder) | | |   | `-DeclRefExpr 0x6b5858 <col:67> 'int' EnumConstant 0x6b51a8 'mjSTATE_MOCAP_QUAT' 'int'

# (placeholder) | | |   `-DeclRefExpr 0x6b5898 <line:49:27> 'int' EnumConstant 0x6b52a8 'mjSTATE_USERDATA' 'int'

# (placeholder) | | `-FullComment 0x80e1a0 <line:44:5, col:62>

# (placeholder) | |   `-ParagraphComment 0x80e170 <col:5, col:62>

# (placeholder) | |     `-TextComment 0x80e140 <col:5, col:62> Text=" convenience values for commonly used state specifications"

# (placeholder) | `-EnumConstantDecl 0x6b5a08 <line:50:3, col:64> col:3 mjSTATE_INTEGRATION 'int'

# (placeholder) |   |-ConstantExpr 0x6b59e8 <col:27, col:64> 'int'

# (placeholder) |   | |-value: Int 8191

# (placeholder) |   | `-BinaryOperator 0x6b59c8 <col:27, col:64> 'int' '|'

# (placeholder) |   |   |-BinaryOperator 0x6b5988 <col:27, col:49> 'int' '|'

# (placeholder) |   |   | |-DeclRefExpr 0x6b5948 <col:27> 'int' EnumConstant 0x6b56e8 'mjSTATE_FULLPHYSICS' 'int'

# (placeholder) |   |   | `-DeclRefExpr 0x6b5968 <col:49> 'int' EnumConstant 0x6b58f8 'mjSTATE_USER' 'int'

# (placeholder) |   |   `-DeclRefExpr 0x6b59a8 <col:64> 'int' EnumConstant 0x6b4ba8 'mjSTATE_WARMSTART' 'int'

# (placeholder) |   `-FullComment 0x80e270 <line:44:5, col:62>

# (placeholder) |     `-ParagraphComment 0x80e240 <col:5, col:62>

# (placeholder) |       `-TextComment 0x80e210 <col:5, col:62> Text=" convenience values for commonly used state specifications"

alias enum mjtState_ : enum mjtState_ = ' enum mjtState_ ' sugar
# (placeholder) | | `-EnumType 0x6b46e0 'enum mjtState_'

# (placeholder) | |   `-Enum 0x6b4638 'mjtState_'

# ElaboratedTypeNode: Unhandled tokens: mjtState_ 
# (placeholder) | `-FullComment 0x80e340 <line:25:3, col:100>

# (placeholder) |   `-ParagraphComment 0x80e310 <col:3, col:100>

# (placeholder) |     `-TextComment 0x80e2e0 <col:3, col:100> Text="---------------------------------- primitive types (mjt) -----------------------------------------"


# (placeholder) |-EnumDecl 0x6b5b28 <line:54:9, line:65:1> line:54:14 mjtWarning_

# (placeholder) | |-EnumConstantDecl 0x6b5c58 <line:55:3, col:25> col:3 mjWARN_INERTIA 'int'

# (placeholder) | | |-ConstantExpr 0x6b5c38 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6b5c18 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x80e410 <col:32, col:62>

# (placeholder) | |   `-ParagraphComment 0x80e3e0 <col:32, col:62>

# (placeholder) | |     `-TextComment 0x80e3b0 <col:32, col:62> Text=" (near) singular inertia matrix"

# (placeholder) | |-EnumConstantDecl 0x6b5cd8 <line:56:3> col:3 mjWARN_CONTACTFULL 'int'

# (placeholder) | | `-FullComment 0x80e4e0 <col:32, col:65>

# (placeholder) | |   `-ParagraphComment 0x80e4b0 <col:32, col:65>

# (placeholder) | |     `-TextComment 0x80e480 <col:32, col:65> Text=" too many contacts in contact list"

# (placeholder) | |-EnumConstantDecl 0x6b5d58 <line:57:3> col:3 mjWARN_CNSTRFULL 'int'

# (placeholder) | | `-FullComment 0x80e5b0 <col:32, col:52>

# (placeholder) | |   `-ParagraphComment 0x80e580 <col:32, col:52>

# (placeholder) | |     `-TextComment 0x80e550 <col:32, col:52> Text=" too many constraints"

# (placeholder) | |-EnumConstantDecl 0x6b5dd8 <line:58:3> col:3 mjWARN_VGEOMFULL 'int'

# (placeholder) | | `-FullComment 0x80e680 <col:32, col:53>

# (placeholder) | |   `-ParagraphComment 0x80e650 <col:32, col:53>

# (placeholder) | |     `-TextComment 0x80e620 <col:32, col:53> Text=" too many visual geoms"

# (placeholder) | |-EnumConstantDecl 0x6b5e58 <line:59:3> col:3 mjWARN_BADQPOS 'int'

# (placeholder) | | `-FullComment 0x80e750 <col:32, col:50>

# (placeholder) | |   `-ParagraphComment 0x80e720 <col:32, col:50>

# (placeholder) | |     `-TextComment 0x80e6f0 <col:32, col:50> Text=" bad number in qpos"

# (placeholder) | |-EnumConstantDecl 0x6b5ed8 <line:60:3> col:3 mjWARN_BADQVEL 'int'

# (placeholder) | | `-FullComment 0x80e820 <col:32, col:50>

# (placeholder) | |   `-ParagraphComment 0x80e7f0 <col:32, col:50>

# (placeholder) | |     `-TextComment 0x80e7c0 <col:32, col:50> Text=" bad number in qvel"

# (placeholder) | |-EnumConstantDecl 0x6b5f58 <line:61:3> col:3 mjWARN_BADQACC 'int'

# (placeholder) | | `-FullComment 0x80e8f0 <col:32, col:50>

# (placeholder) | |   `-ParagraphComment 0x80e8c0 <col:32, col:50>

# (placeholder) | |     `-TextComment 0x80e890 <col:32, col:50> Text=" bad number in qacc"

# (placeholder) | |-EnumConstantDecl 0x6b5fd8 <line:62:3> col:3 mjWARN_BADCTRL 'int'

# (placeholder) | | `-FullComment 0x80e9c0 <col:32, col:50>

# (placeholder) | |   `-ParagraphComment 0x80e990 <col:32, col:50>

# (placeholder) | |     `-TextComment 0x80e960 <col:32, col:50> Text=" bad number in ctrl"

# (placeholder) | `-EnumConstantDecl 0x6b6088 <line:64:3> col:3 referenced mjNWARNING 'int'

# (placeholder) |   `-FullComment 0x80ea90 <col:32, col:50>

# (placeholder) |     `-ParagraphComment 0x80ea60 <col:32, col:50>

# (placeholder) |       `-TextComment 0x80ea30 <col:32, col:50> Text=" number of warnings"

alias enum mjtWarning_ : enum mjtWarning_ = ' enum mjtWarning_ ' sugar
# (placeholder) |   `-EnumType 0x6b5bd0 'enum mjtWarning_'

# (placeholder) |     `-Enum 0x6b5b28 'mjtWarning_'

# ElaboratedTypeNode: Unhandled tokens: mjtWarning_ 

# (placeholder) |-EnumDecl 0x6c0780 <line:68:9, line:93:1> line:68:14 mjtTimer_

# (placeholder) | |-EnumConstantDecl 0x6c08d8 <line:70:3, col:25> col:3 mjTIMER_STEP 'int'

# (placeholder) | | |-ConstantExpr 0x6c08b8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6c0898 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x80eb60 <col:32, col:36>

# (placeholder) | |   `-ParagraphComment 0x80eb30 <col:32, col:36>

# (placeholder) | |     `-TextComment 0x80eb00 <col:32, col:36> Text=" step"

# (placeholder) | |-EnumConstantDecl 0x6c0958 <line:71:3> col:3 mjTIMER_FORWARD 'int'

# (placeholder) | | `-FullComment 0x80ec30 <col:32, col:39>

# (placeholder) | |   `-ParagraphComment 0x80ec00 <col:32, col:39>

# (placeholder) | |     `-TextComment 0x80ebd0 <col:32, col:39> Text=" forward"

# (placeholder) | |-EnumConstantDecl 0x6c09d8 <line:72:3> col:3 mjTIMER_INVERSE 'int'

# (placeholder) | | `-FullComment 0x80ed00 <col:32, col:39>

# (placeholder) | |   `-ParagraphComment 0x80ecd0 <col:32, col:39>

# (placeholder) | |     `-TextComment 0x80eca0 <col:32, col:39> Text=" inverse"

# (placeholder) | |-EnumConstantDecl 0x6c0a88 <line:75:3> col:3 mjTIMER_POSITION 'int'

# (placeholder) | | `-FullComment 0x80edd0 <col:32, col:43>

# (placeholder) | |   `-ParagraphComment 0x80eda0 <col:32, col:43>

# (placeholder) | |     `-TextComment 0x80ed70 <col:32, col:43> Text=" fwdPosition"

# (placeholder) | |-EnumConstantDecl 0x6c0b08 <line:76:3> col:3 mjTIMER_VELOCITY 'int'

# (placeholder) | | `-FullComment 0x80eea0 <col:32, col:43>

# (placeholder) | |   `-ParagraphComment 0x80ee70 <col:32, col:43>

# (placeholder) | |     `-TextComment 0x80ee40 <col:32, col:43> Text=" fwdVelocity"

# (placeholder) | |-EnumConstantDecl 0x6c0b88 <line:77:3> col:3 mjTIMER_ACTUATION 'int'

# (placeholder) | | `-FullComment 0x80ef70 <col:32, col:44>

# (placeholder) | |   `-ParagraphComment 0x80ef40 <col:32, col:44>

# (placeholder) | |     `-TextComment 0x80ef10 <col:32, col:44> Text=" fwdActuation"

# (placeholder) | |-EnumConstantDecl 0x6c0c08 <line:78:3> col:3 mjTIMER_CONSTRAINT 'int'

# (placeholder) | | `-FullComment 0x80f040 <col:32, col:45>

# (placeholder) | |   `-ParagraphComment 0x80f010 <col:32, col:45>

# (placeholder) | |     `-TextComment 0x80efe0 <col:32, col:45> Text=" fwdConstraint"

# (placeholder) | |-EnumConstantDecl 0x6c0c88 <line:79:3> col:3 mjTIMER_ADVANCE 'int'

# (placeholder) | | `-FullComment 0x80f110 <col:32, col:53>

# (placeholder) | |   `-ParagraphComment 0x80f0e0 <col:32, col:53>

# (placeholder) | |     `-TextComment 0x80f0b0 <col:32, col:53> Text=" mj_Euler, mj_implicit"

# (placeholder) | |-EnumConstantDecl 0x6c0d38 <line:82:3> col:3 mjTIMER_POS_KINEMATICS 'int'

# (placeholder) | | `-FullComment 0x80f1e0 <col:32, col:69>

# (placeholder) | |   `-ParagraphComment 0x80f1b0 <col:32, col:69>

# (placeholder) | |     `-TextComment 0x80f180 <col:32, col:69> Text=" kinematics, com, tendon, transmission"

# (placeholder) | |-EnumConstantDecl 0x6c0db8 <line:83:3> col:3 mjTIMER_POS_INERTIA 'int'

# (placeholder) | | `-FullComment 0x80f2b0 <col:32, col:52>

# (placeholder) | |   `-ParagraphComment 0x80f280 <col:32, col:52>

# (placeholder) | |     `-TextComment 0x80f250 <col:32, col:52> Text=" inertia computations"

# (placeholder) | |-EnumConstantDecl 0x6c0e38 <line:84:3> col:3 mjTIMER_POS_COLLISION 'int'

# (placeholder) | | `-FullComment 0x80f380 <col:32, col:51>

# (placeholder) | |   `-ParagraphComment 0x80f350 <col:32, col:51>

# (placeholder) | |     `-TextComment 0x80f320 <col:32, col:51> Text=" collision detection"

# (placeholder) | |-EnumConstantDecl 0x6c0eb8 <line:85:3> col:3 mjTIMER_POS_MAKE 'int'

# (placeholder) | | `-FullComment 0x80f450 <col:32, col:48>

# (placeholder) | |   `-ParagraphComment 0x80f420 <col:32, col:48>

# (placeholder) | |     `-TextComment 0x80f3f0 <col:32, col:48> Text=" make constraints"

# (placeholder) | |-EnumConstantDecl 0x6c0f38 <line:86:3> col:3 mjTIMER_POS_PROJECT 'int'

# (placeholder) | | `-FullComment 0x80f520 <col:32, col:51>

# (placeholder) | |   `-ParagraphComment 0x80f4f0 <col:32, col:51>

# (placeholder) | |     `-TextComment 0x80f4c0 <col:32, col:51> Text=" project constraints"

# (placeholder) | |-EnumConstantDecl 0x6c0fe8 <line:89:3> col:3 mjTIMER_COL_BROAD 'int'

# (placeholder) | | `-FullComment 0x80f5f0 <col:32, col:42>

# (placeholder) | |   `-ParagraphComment 0x80f5c0 <col:32, col:42>

# (placeholder) | |     `-TextComment 0x80f590 <col:32, col:42> Text=" broadphase"

# (placeholder) | |-EnumConstantDecl 0x6c1068 <line:90:3> col:3 mjTIMER_COL_NARROW 'int'

# (placeholder) | | `-FullComment 0x80f6c0 <col:32, col:43>

# (placeholder) | |   `-ParagraphComment 0x80f690 <col:32, col:43>

# (placeholder) | |     `-TextComment 0x80f660 <col:32, col:43> Text=" narrowphase"

# (placeholder) | `-EnumConstantDecl 0x6c1118 <line:92:3> col:3 referenced mjNTIMER 'int'

# (placeholder) |   `-FullComment 0x80f790 <col:32, col:48>

# (placeholder) |     `-ParagraphComment 0x80f760 <col:32, col:48>

# (placeholder) |       `-TextComment 0x80f730 <col:32, col:48> Text=" number of timers"

alias enum mjtTimer_ : enum mjtTimer_ = ' enum mjtTimer_ ' sugar
# (placeholder) |   `-EnumType 0x6c0820 'enum mjtTimer_'

# (placeholder) |     `-Enum 0x6c0780 'mjtTimer_'

# ElaboratedTypeNode: Unhandled tokens: mjtTimer_ 
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


alias struct mjContact_ : struct mjContact_ = mjContact_mjContact_
struct mjWarningStat_:

	var lastinfo: Int32

	var number: Int32


alias struct mjWarningStat_ : struct mjWarningStat_ = mjWarningStat_mjWarningStat_
struct mjTimerStat_:

	var duration: mjtNum

	var number: Int32


alias struct mjTimerStat_ : struct mjTimerStat_ = mjTimerStat_mjTimerStat_
struct mjSolverStat_:

	var improvement: mjtNum

	var gradient: mjtNum

	var lineslope: mjtNum

	var nactive: Int32

	var nchange: Int32

	var neval: Int32

	var nupdate: Int32


alias struct mjSolverStat_ : struct mjSolverStat_ = mjSolverStat_mjSolverStat_
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


alias struct mjData_ : struct mjData_ = mjData_mjData_

alias void (*)(const mjModel *, mjData *) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d2b50 'void (const mjModel *, mjData *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d2b10 'void (const mjModel *, mjData *)' cdecl
NoneTypeUnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const

# (placeholder) | |     |   `-TypedefType 0x6d0920 'mjModel' sugar

# (placeholder) | |     |     |-Typedef 0x6b9c20 'mjModel'
mjModel_mjModel_]
UnsafePointer[
# (placeholder) | |       `-TypedefType 0x6d0a10 'mjData' sugar

# (placeholder) | |         |-Typedef 0x6d0860 'mjData'
mjData_mjData_]
]

# (placeholder) | `-FullComment 0x81a330 <line:454:3, col:26>

# (placeholder) |   `-ParagraphComment 0x81a300 <col:3, col:26>

# (placeholder) |     `-TextComment 0x81a2d0 <col:3, col:26> Text=" generic MuJoCo function"


alias int (*)(const mjModel *, mjData *, int, int) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d2f30 'int (const mjModel *, mjData *, int, int)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d2ee0 'int (const mjModel *, mjData *, int, int)' cdecl
Int32UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const

# (placeholder) | |     |   `-TypedefType 0x6d0920 'mjModel' sugar

# (placeholder) | |     |     |-Typedef 0x6b9c20 'mjModel'
mjModel_mjModel_]
UnsafePointer[
# (placeholder) | |     | `-TypedefType 0x6d0a10 'mjData' sugar

# (placeholder) | |     |   |-Typedef 0x6d0860 'mjData'
mjData_mjData_]
Int32Int32]

# (placeholder) | `-FullComment 0x81a400 <line:457:3, col:41>

# (placeholder) |   `-ParagraphComment 0x81a3d0 <col:3, col:41>

# (placeholder) |     `-TextComment 0x81a3a0 <col:3, col:41> Text=" contact filter: 1- discard, 0- collide"


alias void (*)(const mjModel *, mjData *, int) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d3290 'void (const mjModel *, mjData *, int)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d3250 'void (const mjModel *, mjData *, int)' cdecl
NoneTypeUnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const

# (placeholder) | |     |   `-TypedefType 0x6d0920 'mjModel' sugar

# (placeholder) | |     |     |-Typedef 0x6b9c20 'mjModel'
mjModel_mjModel_]
UnsafePointer[
# (placeholder) | |     | `-TypedefType 0x6d0a10 'mjData' sugar

# (placeholder) | |     |   |-Typedef 0x6d0860 'mjData'
mjData_mjData_]
Int32]

# (placeholder) | `-FullComment 0x81a4d0 <line:460:3, col:20>

# (placeholder) |   `-ParagraphComment 0x81a4a0 <col:3, col:20>

# (placeholder) |     `-TextComment 0x81a470 <col:3, col:20> Text=" sensor simulation"


alias mjtNum (*)(void) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d3490 'mjtNum (void)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d3460 'mjtNum (void)' cdecl

# (placeholder) | |     `-TypedefType 0x68e310 'mjtNum' sugar

# (placeholder) | |       |-Typedef 0x66e630 'mjtNum'
Float64]

# (placeholder) | `-FullComment 0x81a5a0 <line:463:3, col:8>

# (placeholder) |   `-ParagraphComment 0x81a570 <col:3, col:8>

# (placeholder) |     `-TextComment 0x81a540 <col:3, col:8> Text=" timer"


alias mjtNum (*)(const mjModel *, const mjData *, int) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d3810 'mjtNum (const mjModel *, const mjData *, int)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d37d0 'mjtNum (const mjModel *, const mjData *, int)' cdecl

# (placeholder) | |     |-TypedefType 0x68e310 'mjtNum' sugar

# (placeholder) | |     | |-Typedef 0x66e630 'mjtNum'
Float64UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const

# (placeholder) | |     |   `-TypedefType 0x6d0920 'mjModel' sugar

# (placeholder) | |     |     |-Typedef 0x6b9c20 'mjModel'
mjModel_mjModel_]
UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0a11 'const mjData' const

# (placeholder) | |     |   `-TypedefType 0x6d0a10 'mjData' sugar

# (placeholder) | |     |     |-Typedef 0x6d0860 'mjData'
mjData_mjData_]
Int32]

# (placeholder) | `-FullComment 0x81a670 <line:466:3, col:32>

# (placeholder) |   `-ParagraphComment 0x81a640 <col:3, col:32>

# (placeholder) |     `-TextComment 0x81a610 <col:3, col:32> Text=" actuator dynamics, gain, bias"


alias int (*)(const mjModel *, const mjData *, mjContact *, int, int, mjtNum) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6d3d10 'int (const mjModel *, const mjData *, mjContact *, int, int, mjtNum)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6d3cb0 'int (const mjModel *, const mjData *, mjContact *, int, int, mjtNum)' cdecl
Int32UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0921 'const mjModel' const

# (placeholder) | |     |   `-TypedefType 0x6d0920 'mjModel' sugar

# (placeholder) | |     |     |-Typedef 0x6b9c20 'mjModel'
mjModel_mjModel_]
UnsafePointer[
# (placeholder) | |     | `-QualType 0x6d0a11 'const mjData' const

# (placeholder) | |     |   `-TypedefType 0x6d0a10 'mjData' sugar

# (placeholder) | |     |     |-Typedef 0x6d0860 'mjData'
mjData_mjData_]
UnsafePointer[
# (placeholder) | |     | `-TypedefType 0x6cef00 'mjContact' sugar

# (placeholder) | |     |   |-Typedef 0x6c23c0 'mjContact'
mjContact_mjContact_]
Int32Int32
# (placeholder) | |     `-TypedefType 0x68e310 'mjtNum' sugar

# (placeholder) | |       |-Typedef 0x66e630 'mjtNum'
Float64]

# (placeholder) | `-FullComment 0x81a740 <line:469:3, col:22>

# (placeholder) |   `-ParagraphComment 0x81a710 <col:3, col:22>

# (placeholder) |     `-TextComment 0x81a6e0 <col:3, col:22> Text=" collision detection"


# (placeholder) |-EnumDecl 0x6d41b8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjvisualize.h:33:9, line:38:1> line:33:14 mjtCatBit_

# (placeholder) | |-FullComment 0x81a810 <line:31:3, col:100>

# (placeholder) | | `-ParagraphComment 0x81a7e0 <col:3, col:100>

# (placeholder) | |   `-TextComment 0x81a7b0 <col:3, col:100> Text="---------------------------------- primitive types (mjt) -----------------------------------------"

# (placeholder) | |-EnumConstantDecl 0x6d42e8 <line:34:3, col:25> col:3 mjCAT_STATIC 'int'

# (placeholder) | | |-ConstantExpr 0x6d42c8 <col:25> 'int'

# (placeholder) | | | |-value: Int 1

# (placeholder) | | | `-IntegerLiteral 0x6d42a8 <col:25> 'int' 1

# (placeholder) | | `-FullComment 0x81a8e0 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x81a8b0 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x81a880 <col:37, col:61> Text=" model elements in body 0"

# (placeholder) | |-EnumConstantDecl 0x6d43a8 <line:35:3, col:25> col:3 mjCAT_DYNAMIC 'int'

# (placeholder) | | |-ConstantExpr 0x6d4388 <col:25> 'int'

# (placeholder) | | | |-value: Int 2

# (placeholder) | | | `-IntegerLiteral 0x6d4368 <col:25> 'int' 2

# (placeholder) | | `-FullComment 0x81a9b0 <col:37, col:71>

# (placeholder) | |   `-ParagraphComment 0x81a980 <col:37, col:71>

# (placeholder) | |     `-TextComment 0x81a950 <col:37, col:71> Text=" model elements in all other bodies"

# (placeholder) | |-EnumConstantDecl 0x6d4468 <line:36:3, col:25> col:3 mjCAT_DECOR 'int'

# (placeholder) | | |-ConstantExpr 0x6d4448 <col:25> 'int'

# (placeholder) | | | |-value: Int 4

# (placeholder) | | | `-IntegerLiteral 0x6d4428 <col:25> 'int' 4

# (placeholder) | | `-FullComment 0x81aa80 <col:37, col:53>

# (placeholder) | |   `-ParagraphComment 0x81aa50 <col:37, col:53>

# (placeholder) | |     `-TextComment 0x81aa20 <col:37, col:53> Text=" decorative geoms"

# (placeholder) | `-EnumConstantDecl 0x6d4558 <line:37:3, col:25> col:3 mjCAT_ALL 'int'

# (placeholder) |   |-ConstantExpr 0x6d4538 <col:25> 'int'

# (placeholder) |   | |-value: Int 7

# (placeholder) |   | `-IntegerLiteral 0x6d44e8 <col:25> 'int' 7

# (placeholder) |   `-FullComment 0x81ab50 <col:37, col:58>

# (placeholder) |     `-ParagraphComment 0x81ab20 <col:37, col:58>

# (placeholder) |       `-TextComment 0x81aaf0 <col:37, col:58> Text=" select all categories"

alias enum mjtCatBit_ : enum mjtCatBit_ = ' enum mjtCatBit_ ' sugar
# (placeholder) | | `-EnumType 0x6d4260 'enum mjtCatBit_'

# (placeholder) | |   `-Enum 0x6d41b8 'mjtCatBit_'

# ElaboratedTypeNode: Unhandled tokens: mjtCatBit_ 
# (placeholder) | `-FullComment 0x81ac20 <line:31:3, col:100>

# (placeholder) |   `-ParagraphComment 0x81abf0 <col:3, col:100>

# (placeholder) |     `-TextComment 0x81abc0 <col:3, col:100> Text="---------------------------------- primitive types (mjt) -----------------------------------------"


# (placeholder) |-EnumDecl 0x6d4678 <line:41:9, line:49:1> line:41:14 mjtMouse_

# (placeholder) | |-EnumConstantDecl 0x6d47a8 <line:42:3, col:25> col:3 mjMOUSE_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x6d4788 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6d4768 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x81acf0 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x81acc0 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x81ac90 <col:37, col:46> Text=" no action"

# (placeholder) | |-EnumConstantDecl 0x6d4828 <line:43:3> col:3 mjMOUSE_ROTATE_V 'int'

# (placeholder) | | `-FullComment 0x81adc0 <col:37, col:59>

# (placeholder) | |   `-ParagraphComment 0x81ad90 <col:37, col:59>

# (placeholder) | |     `-TextComment 0x81ad60 <col:37, col:59> Text=" rotate, vertical plane"

# (placeholder) | |-EnumConstantDecl 0x6d48a8 <line:44:3> col:3 mjMOUSE_ROTATE_H 'int'

# (placeholder) | | `-FullComment 0x81ae90 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x81ae60 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x81ae30 <col:37, col:61> Text=" rotate, horizontal plane"

# (placeholder) | |-EnumConstantDecl 0x6d4928 <line:45:3> col:3 mjMOUSE_MOVE_V 'int'

# (placeholder) | | `-FullComment 0x81af60 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x81af30 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x81af00 <col:37, col:57> Text=" move, vertical plane"

# (placeholder) | |-EnumConstantDecl 0x6d49a8 <line:46:3> col:3 mjMOUSE_MOVE_H 'int'

# (placeholder) | | `-FullComment 0x81b030 <col:37, col:59>

# (placeholder) | |   `-ParagraphComment 0x81b000 <col:37, col:59>

# (placeholder) | |     `-TextComment 0x81afd0 <col:37, col:59> Text=" move, horizontal plane"

# (placeholder) | |-EnumConstantDecl 0x6e3040 <line:47:3> col:3 mjMOUSE_ZOOM 'int'

# (placeholder) | | `-FullComment 0x81b100 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x81b0d0 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x81b0a0 <col:37, col:41> Text=" zoom"

# (placeholder) | `-EnumConstantDecl 0x6e30e8 <line:48:3> col:3 mjMOUSE_SELECT 'int'

# (placeholder) |   `-FullComment 0x81b1d0 <col:37, col:46>

# (placeholder) |     `-ParagraphComment 0x81b1a0 <col:37, col:46>

# (placeholder) |       `-TextComment 0x81b170 <col:37, col:46> Text=" selection"

alias enum mjtMouse_ : enum mjtMouse_ = ' enum mjtMouse_ ' sugar
# (placeholder) |   `-EnumType 0x6d4720 'enum mjtMouse_'

# (placeholder) |     `-Enum 0x6d4678 'mjtMouse_'

# ElaboratedTypeNode: Unhandled tokens: mjtMouse_ 

# (placeholder) |-EnumDecl 0x6e3208 <line:52:9, line:55:1> line:52:14 mjtPertBit_

# (placeholder) | |-EnumConstantDecl 0x6e3338 <line:53:3, col:25> col:3 mjPERT_TRANSLATE 'int'

# (placeholder) | | |-ConstantExpr 0x6e3318 <col:25> 'int'

# (placeholder) | | | |-value: Int 1

# (placeholder) | | | `-IntegerLiteral 0x6e32f8 <col:25> 'int' 1

# (placeholder) | | `-FullComment 0x81b2a0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81b270 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81b240 <col:37, col:48> Text=" translation"

# (placeholder) | `-EnumConstantDecl 0x6e3428 <line:54:3, col:25> col:3 mjPERT_ROTATE 'int'

# (placeholder) |   |-ConstantExpr 0x6e3408 <col:25> 'int'

# (placeholder) |   | |-value: Int 2

# (placeholder) |   | `-IntegerLiteral 0x6e33b8 <col:25> 'int' 2

# (placeholder) |   `-FullComment 0x81b370 <col:37, col:45>

# (placeholder) |     `-ParagraphComment 0x81b340 <col:37, col:45>

# (placeholder) |       `-TextComment 0x81b310 <col:37, col:45> Text=" rotation"

alias enum mjtPertBit_ : enum mjtPertBit_ = ' enum mjtPertBit_ ' sugar
# (placeholder) |   `-EnumType 0x6e32b0 'enum mjtPertBit_'

# (placeholder) |     `-Enum 0x6e3208 'mjtPertBit_'

# ElaboratedTypeNode: Unhandled tokens: mjtPertBit_ 

# (placeholder) |-EnumDecl 0x6e3548 <line:58:9, line:63:1> line:58:14 mjtCamera_

# (placeholder) | |-EnumConstantDecl 0x6e3678 <line:59:3, col:25> col:3 mjCAMERA_FREE 'int'

# (placeholder) | | |-ConstantExpr 0x6e3658 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6e3638 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x81b440 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81b410 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81b3e0 <col:37, col:48> Text=" free camera"

# (placeholder) | |-EnumConstantDecl 0x6e36f8 <line:60:3> col:3 mjCAMERA_TRACKING 'int'

# (placeholder) | | `-FullComment 0x81b510 <col:37, col:70>

# (placeholder) | |   `-ParagraphComment 0x81b4e0 <col:37, col:70>

# (placeholder) | |     `-TextComment 0x81b4b0 <col:37, col:70> Text=" tracking camera; uses trackbodyid"

# (placeholder) | |-EnumConstantDecl 0x6e3778 <line:61:3> col:3 mjCAMERA_FIXED 'int'

# (placeholder) | | `-FullComment 0x81b5e0 <col:37, col:66>

# (placeholder) | |   `-ParagraphComment 0x81b5b0 <col:37, col:66>

# (placeholder) | |     `-TextComment 0x81b580 <col:37, col:66> Text=" fixed camera; uses fixedcamid"

# (placeholder) | `-EnumConstantDecl 0x6e3828 <line:62:3> col:3 mjCAMERA_USER 'int'

# (placeholder) |   `-FullComment 0x81b6b0 <col:37, col:82>

# (placeholder) |     `-ParagraphComment 0x81b680 <col:37, col:82>

# (placeholder) |       `-TextComment 0x81b650 <col:37, col:82> Text=" user is responsible for setting OpenGL camera"

alias enum mjtCamera_ : enum mjtCamera_ = ' enum mjtCamera_ ' sugar
# (placeholder) |   `-EnumType 0x6e35f0 'enum mjtCamera_'

# (placeholder) |     `-Enum 0x6e3548 'mjtCamera_'

# ElaboratedTypeNode: Unhandled tokens: mjtCamera_ 

# (placeholder) |-EnumDecl 0x6e3948 <line:66:9, line:86:1> line:66:14 mjtLabel_

# (placeholder) | |-EnumConstantDecl 0x6e3a78 <line:67:3, col:25> col:3 mjLABEL_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x6e3a58 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6e3a38 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x81b780 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x81b750 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x81b720 <col:37, col:44> Text=" nothing"

# (placeholder) | |-EnumConstantDecl 0x6e3af8 <line:68:3> col:3 mjLABEL_BODY 'int'

# (placeholder) | | `-FullComment 0x81b850 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81b820 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81b7f0 <col:37, col:48> Text=" body labels"

# (placeholder) | |-EnumConstantDecl 0x6e3b78 <line:69:3> col:3 mjLABEL_JOINT 'int'

# (placeholder) | | `-FullComment 0x81b920 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x81b8f0 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x81b8c0 <col:37, col:49> Text=" joint labels"

# (placeholder) | |-EnumConstantDecl 0x6e3bf8 <line:70:3> col:3 mjLABEL_GEOM 'int'

# (placeholder) | | `-FullComment 0x81b9f0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81b9c0 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81b990 <col:37, col:48> Text=" geom labels"

# (placeholder) | |-EnumConstantDecl 0x6e3c78 <line:71:3> col:3 mjLABEL_SITE 'int'

# (placeholder) | | `-FullComment 0x81bac0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81ba90 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81ba60 <col:37, col:48> Text=" site labels"

# (placeholder) | |-EnumConstantDecl 0x6e3cf8 <line:72:3> col:3 mjLABEL_CAMERA 'int'

# (placeholder) | | `-FullComment 0x81bb90 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x81bb60 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x81bb30 <col:37, col:50> Text=" camera labels"

# (placeholder) | |-EnumConstantDecl 0x6e3d78 <line:73:3> col:3 mjLABEL_LIGHT 'int'

# (placeholder) | | `-FullComment 0x81bc60 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x81bc30 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x81bc00 <col:37, col:49> Text=" light labels"

# (placeholder) | |-EnumConstantDecl 0x6e3df8 <line:74:3> col:3 mjLABEL_TENDON 'int'

# (placeholder) | | `-FullComment 0x81bd60 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x81bd00 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x81bcd0 <col:37, col:50> Text=" tendon labels"

# (placeholder) | |-EnumConstantDecl 0x6e3e78 <line:75:3> col:3 mjLABEL_ACTUATOR 'int'

# (placeholder) | | `-FullComment 0x81be30 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x81be00 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x81bdd0 <col:37, col:52> Text=" actuator labels"

# (placeholder) | |-EnumConstantDecl 0x6e3ef8 <line:76:3> col:3 mjLABEL_CONSTRAINT 'int'

# (placeholder) | | `-FullComment 0x81bf00 <col:37, col:54>

# (placeholder) | |   `-ParagraphComment 0x81bed0 <col:37, col:54>

# (placeholder) | |     `-TextComment 0x81bea0 <col:37, col:54> Text=" constraint labels"

# (placeholder) | |-EnumConstantDecl 0x6e3f78 <line:77:3> col:3 mjLABEL_FLEX 'int'

# (placeholder) | | `-FullComment 0x81bfd0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81bfa0 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81bf70 <col:37, col:48> Text=" flex labels"

# (placeholder) | |-EnumConstantDecl 0x6e3ff8 <line:78:3> col:3 mjLABEL_SKIN 'int'

# (placeholder) | | `-FullComment 0x81c0a0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81c070 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81c040 <col:37, col:48> Text=" skin labels"

# (placeholder) | |-EnumConstantDecl 0x6e4078 <line:79:3> col:3 mjLABEL_SELECTION 'int'

# (placeholder) | | `-FullComment 0x81c170 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x81c140 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x81c110 <col:37, col:52> Text=" selected object"

# (placeholder) | |-EnumConstantDecl 0x6e40f8 <line:80:3> col:3 mjLABEL_SELPNT 'int'

# (placeholder) | | `-FullComment 0x81c240 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x81c210 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x81c1e0 <col:37, col:67> Text=" coordinates of selection point"

# (placeholder) | |-EnumConstantDecl 0x6e4178 <line:81:3> col:3 mjLABEL_CONTACTPOINT 'int'

# (placeholder) | | `-FullComment 0x81c310 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x81c2e0 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x81c2b0 <col:37, col:56> Text=" contact information"

# (placeholder) | |-EnumConstantDecl 0x6e41f8 <line:82:3> col:3 mjLABEL_CONTACTFORCE 'int'

# (placeholder) | | `-FullComment 0x81c3e0 <col:37, col:63>

# (placeholder) | |   `-ParagraphComment 0x81c3b0 <col:37, col:63>

# (placeholder) | |     `-TextComment 0x81c380 <col:37, col:63> Text=" magnitude of contact force"

# (placeholder) | |-EnumConstantDecl 0x6e4278 <line:83:3> col:3 mjLABEL_ISLAND 'int'

# (placeholder) | | `-FullComment 0x81c4b0 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x81c480 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x81c450 <col:37, col:49> Text=" id of island"

# (placeholder) | `-EnumConstantDecl 0x6e4328 <line:85:3> col:3 referenced mjNLABEL 'int'

# (placeholder) |   `-FullComment 0x81c580 <col:37, col:58>

# (placeholder) |     `-ParagraphComment 0x81c550 <col:37, col:58>

# (placeholder) |       `-TextComment 0x81c520 <col:37, col:58> Text=" number of label types"

alias enum mjtLabel_ : enum mjtLabel_ = ' enum mjtLabel_ ' sugar
# (placeholder) |   `-EnumType 0x6e39f0 'enum mjtLabel_'

# (placeholder) |     `-Enum 0x6e3948 'mjtLabel_'

# ElaboratedTypeNode: Unhandled tokens: mjtLabel_ 

# (placeholder) |-EnumDecl 0x6e4448 <line:89:9, line:100:1> line:89:14 mjtFrame_

# (placeholder) | |-EnumConstantDecl 0x6e4578 <line:90:3, col:25> col:3 mjFRAME_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x6e4558 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6e4538 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x81c650 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x81c620 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x81c5f0 <col:37, col:46> Text=" no frames"

# (placeholder) | |-EnumConstantDecl 0x6e45f8 <line:91:3> col:3 mjFRAME_BODY 'int'

# (placeholder) | | `-FullComment 0x81c720 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81c6f0 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81c6c0 <col:37, col:48> Text=" body frames"

# (placeholder) | |-EnumConstantDecl 0x6e4678 <line:92:3> col:3 mjFRAME_GEOM 'int'

# (placeholder) | | `-FullComment 0x81c7f0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81c7c0 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81c790 <col:37, col:48> Text=" geom frames"

# (placeholder) | |-EnumConstantDecl 0x6e46f8 <line:93:3> col:3 mjFRAME_SITE 'int'

# (placeholder) | | `-FullComment 0x81c8c0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81c890 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81c860 <col:37, col:48> Text=" site frames"

# (placeholder) | |-EnumConstantDecl 0x6e4778 <line:94:3> col:3 mjFRAME_CAMERA 'int'

# (placeholder) | | `-FullComment 0x81c990 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x81c960 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x81c930 <col:37, col:50> Text=" camera frames"

# (placeholder) | |-EnumConstantDecl 0x6e47f8 <line:95:3> col:3 mjFRAME_LIGHT 'int'

# (placeholder) | | `-FullComment 0x81ca60 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x81ca30 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x81ca00 <col:37, col:49> Text=" light frames"

# (placeholder) | |-EnumConstantDecl 0x6e4878 <line:96:3> col:3 mjFRAME_CONTACT 'int'

# (placeholder) | | `-FullComment 0x81cb30 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x81cb00 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x81cad0 <col:37, col:51> Text=" contact frames"

# (placeholder) | |-EnumConstantDecl 0x6e48f8 <line:97:3> col:3 mjFRAME_WORLD 'int'

# (placeholder) | | `-FullComment 0x81cc00 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81cbd0 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81cba0 <col:37, col:48> Text=" world frame"

# (placeholder) | `-EnumConstantDecl 0x6e49a8 <line:99:3> col:3 referenced mjNFRAME 'int'

# (placeholder) |   `-FullComment 0x81ccd0 <col:37, col:67>

# (placeholder) |     `-ParagraphComment 0x81cca0 <col:37, col:67>

# (placeholder) |       `-TextComment 0x81cc70 <col:37, col:67> Text=" number of visualization frames"

alias enum mjtFrame_ : enum mjtFrame_ = ' enum mjtFrame_ ' sugar
# (placeholder) |   `-EnumType 0x6e44f0 'enum mjtFrame_'

# (placeholder) |     `-Enum 0x6e4448 'mjtFrame_'

# ElaboratedTypeNode: Unhandled tokens: mjtFrame_ 

# (placeholder) |-EnumDecl 0x6e4ac8 <line:103:9, line:138:1> line:103:14 mjtVisFlag_

# (placeholder) | |-EnumConstantDecl 0x6e4bf8 <line:104:3, col:25> col:3 mjVIS_CONVEXHULL 'int'

# (placeholder) | | |-ConstantExpr 0x6e4bd8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6e4bb8 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x81cda0 <col:37, col:53>

# (placeholder) | |   `-ParagraphComment 0x81cd70 <col:37, col:53>

# (placeholder) | |     `-TextComment 0x81cd40 <col:37, col:53> Text=" mesh convex hull"

# (placeholder) | |-EnumConstantDecl 0x6e4c78 <line:105:3> col:3 mjVIS_TEXTURE 'int'

# (placeholder) | | `-FullComment 0x81ce70 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x81ce40 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x81ce10 <col:37, col:45> Text=" textures"

# (placeholder) | |-EnumConstantDecl 0x6e4cf8 <line:106:3> col:3 mjVIS_JOINT 'int'

# (placeholder) | | `-FullComment 0x81cf40 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x81cf10 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x81cee0 <col:37, col:43> Text=" joints"

# (placeholder) | |-EnumConstantDecl 0x6e4d78 <line:107:3> col:3 mjVIS_CAMERA 'int'

# (placeholder) | | `-FullComment 0x81d010 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x81cfe0 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x81cfb0 <col:37, col:44> Text=" cameras"

# (placeholder) | |-EnumConstantDecl 0x6e4df8 <line:108:3> col:3 mjVIS_ACTUATOR 'int'

# (placeholder) | | `-FullComment 0x81d0e0 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x81d0b0 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x81d080 <col:37, col:46> Text=" actuators"

# (placeholder) | |-EnumConstantDecl 0x6e4e78 <line:109:3> col:3 mjVIS_ACTIVATION 'int'

# (placeholder) | | `-FullComment 0x81d1b0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81d180 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81d150 <col:37, col:48> Text=" activations"

# (placeholder) | |-EnumConstantDecl 0x6e4ef8 <line:110:3> col:3 mjVIS_LIGHT 'int'

# (placeholder) | | `-FullComment 0x81d280 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x81d250 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x81d220 <col:37, col:43> Text=" lights"

# (placeholder) | |-EnumConstantDecl 0x6e4f78 <line:111:3> col:3 mjVIS_TENDON 'int'

# (placeholder) | | `-FullComment 0x81d350 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x81d320 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x81d2f0 <col:37, col:44> Text=" tendons"

# (placeholder) | |-EnumConstantDecl 0x6e5110 <line:112:3> col:3 mjVIS_RANGEFINDER 'int'

# (placeholder) | | `-FullComment 0x81d420 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x81d3f0 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x81d3c0 <col:37, col:56> Text=" rangefinder sensors"

# (placeholder) | |-EnumConstantDecl 0x6e5188 <line:113:3> col:3 mjVIS_CONSTRAINT 'int'

# (placeholder) | | `-FullComment 0x81d4f0 <col:37, col:54>

# (placeholder) | |   `-ParagraphComment 0x81d4c0 <col:37, col:54>

# (placeholder) | |     `-TextComment 0x81d490 <col:37, col:54> Text=" point constraints"

# (placeholder) | |-EnumConstantDecl 0x6e5208 <line:114:3> col:3 mjVIS_INERTIA 'int'

# (placeholder) | | `-FullComment 0x81d5c0 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x81d590 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x81d560 <col:37, col:61> Text=" equivalent inertia boxes"

# (placeholder) | |-EnumConstantDecl 0x6e5288 <line:115:3> col:3 mjVIS_SCLINERTIA 'int'

# (placeholder) | | `-FullComment 0x81d690 <col:37, col:77>

# (placeholder) | |   `-ParagraphComment 0x81d660 <col:37, col:77>

# (placeholder) | |     `-TextComment 0x81d630 <col:37, col:77> Text=" scale equivalent inertia boxes with mass"

# (placeholder) | |-EnumConstantDecl 0x6e5308 <line:116:3> col:3 mjVIS_PERTFORCE 'int'

# (placeholder) | | `-FullComment 0x81d760 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x81d730 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x81d700 <col:37, col:55> Text=" perturbation force"

# (placeholder) | |-EnumConstantDecl 0x6e5388 <line:117:3> col:3 mjVIS_PERTOBJ 'int'

# (placeholder) | | `-FullComment 0x81d830 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x81d800 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x81d7d0 <col:37, col:56> Text=" perturbation object"

# (placeholder) | |-EnumConstantDecl 0x6e5408 <line:118:3> col:3 mjVIS_CONTACTPOINT 'int'

# (placeholder) | | `-FullComment 0x81d900 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x81d8d0 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x81d8a0 <col:37, col:51> Text=" contact points"

# (placeholder) | |-EnumConstantDecl 0x6e5488 <line:119:3> col:3 mjVIS_ISLAND 'int'

# (placeholder) | | `-FullComment 0x81d9d0 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x81d9a0 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x81d970 <col:37, col:55> Text=" constraint islands"

# (placeholder) | |-EnumConstantDecl 0x6e5508 <line:120:3> col:3 mjVIS_CONTACTFORCE 'int'

# (placeholder) | | `-FullComment 0x81daa0 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x81da70 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x81da40 <col:37, col:50> Text=" contact force"

# (placeholder) | |-EnumConstantDecl 0x6e5588 <line:121:3> col:3 mjVIS_CONTACTSPLIT 'int'

# (placeholder) | | `-FullComment 0x81db70 <col:37, col:80>

# (placeholder) | |   `-ParagraphComment 0x81db40 <col:37, col:80>

# (placeholder) | |     `-TextComment 0x81db10 <col:37, col:80> Text=" split contact force into normal and tangent"

# (placeholder) | |-EnumConstantDecl 0x6e5608 <line:122:3> col:3 mjVIS_TRANSPARENT 'int'

# (placeholder) | | `-FullComment 0x81dc40 <col:37, col:72>

# (placeholder) | |   `-ParagraphComment 0x81dc10 <col:37, col:72>

# (placeholder) | |     `-TextComment 0x81dbe0 <col:37, col:72> Text=" make dynamic geoms more transparent"

# (placeholder) | |-EnumConstantDecl 0x6e5688 <line:123:3> col:3 mjVIS_AUTOCONNECT 'int'

# (placeholder) | | `-FullComment 0x81dd10 <col:37, col:70>

# (placeholder) | |   `-ParagraphComment 0x81dce0 <col:37, col:70>

# (placeholder) | |     `-TextComment 0x81dcb0 <col:37, col:70> Text=" auto connect joints and body coms"

# (placeholder) | |-EnumConstantDecl 0x6e5708 <line:124:3> col:3 mjVIS_COM 'int'

# (placeholder) | | `-FullComment 0x81de10 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x81dde0 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x81ddb0 <col:37, col:51> Text=" center of mass"

# (placeholder) | |-EnumConstantDecl 0x6e5788 <line:125:3> col:3 mjVIS_SELECT 'int'

# (placeholder) | | `-FullComment 0x81dee0 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x81deb0 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x81de80 <col:37, col:52> Text=" selection point"

# (placeholder) | |-EnumConstantDecl 0x6e5808 <line:126:3> col:3 mjVIS_STATIC 'int'

# (placeholder) | | `-FullComment 0x81dfb0 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x81df80 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x81df50 <col:37, col:50> Text=" static bodies"

# (placeholder) | |-EnumConstantDecl 0x6e5888 <line:127:3> col:3 mjVIS_SKIN 'int'

# (placeholder) | | `-FullComment 0x81e080 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x81e050 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x81e020 <col:37, col:41> Text=" skin"

# (placeholder) | |-EnumConstantDecl 0x6e5908 <line:128:3> col:3 mjVIS_FLEXVERT 'int'

# (placeholder) | | `-FullComment 0x81e150 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x81e120 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x81e0f0 <col:37, col:50> Text=" flex vertices"

# (placeholder) | |-EnumConstantDecl 0x6e5988 <line:129:3> col:3 mjVIS_FLEXEDGE 'int'

# (placeholder) | | `-FullComment 0x81e220 <col:37, col:47>

# (placeholder) | |   `-ParagraphComment 0x81e1f0 <col:37, col:47>

# (placeholder) | |     `-TextComment 0x81e1c0 <col:37, col:47> Text=" flex edges"

# (placeholder) | |-EnumConstantDecl 0x6e5a08 <line:130:3> col:3 mjVIS_FLEXFACE 'int'

# (placeholder) | | `-FullComment 0x81e2f0 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x81e2c0 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x81e290 <col:37, col:55> Text=" flex element faces"

# (placeholder) | |-EnumConstantDecl 0x6e5a88 <line:131:3> col:3 mjVIS_FLEXSKIN 'int'

# (placeholder) | | `-FullComment 0x81e3c0 <col:37, col:73>

# (placeholder) | |   `-ParagraphComment 0x81e390 <col:37, col:73>

# (placeholder) | |     `-TextComment 0x81e360 <col:37, col:73> Text=" flex smooth skin (disables the rest)"

# (placeholder) | |-EnumConstantDecl 0x6e5b08 <line:132:3> col:3 mjVIS_BODYBVH 'int'

# (placeholder) | | `-FullComment 0x81e490 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x81e460 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x81e430 <col:37, col:67> Text=" body bounding volume hierarchy"

# (placeholder) | |-EnumConstantDecl 0x6e5b88 <line:133:3> col:3 mjVIS_FLEXBVH 'int'

# (placeholder) | | `-FullComment 0x81e560 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x81e530 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x81e500 <col:37, col:67> Text=" flex bounding volume hierarchy"

# (placeholder) | |-EnumConstantDecl 0x6e5c08 <line:134:3> col:3 mjVIS_MESHBVH 'int'

# (placeholder) | | `-FullComment 0x81e630 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x81e600 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x81e5d0 <col:37, col:67> Text=" mesh bounding volume hierarchy"

# (placeholder) | |-EnumConstantDecl 0x6e5c88 <line:135:3> col:3 mjVIS_SDFITER 'int'

# (placeholder) | | `-FullComment 0x81e700 <col:37, col:71>

# (placeholder) | |   `-ParagraphComment 0x81e6d0 <col:37, col:71>

# (placeholder) | |     `-TextComment 0x81e6a0 <col:37, col:71> Text=" iterations of SDF gradient descent"

# (placeholder) | `-EnumConstantDecl 0x6e5d38 <line:137:3> col:3 referenced mjNVISFLAG 'int'

# (placeholder) |   `-FullComment 0x81e7d0 <col:37, col:66>

# (placeholder) |     `-ParagraphComment 0x81e7a0 <col:37, col:66>

# (placeholder) |       `-TextComment 0x81e770 <col:37, col:66> Text=" number of visualization flags"

alias enum mjtVisFlag_ : enum mjtVisFlag_ = ' enum mjtVisFlag_ ' sugar
# (placeholder) |   `-EnumType 0x6e4b70 'enum mjtVisFlag_'

# (placeholder) |     `-Enum 0x6e4ac8 'mjtVisFlag_'

# ElaboratedTypeNode: Unhandled tokens: mjtVisFlag_ 

# (placeholder) |-EnumDecl 0x6e5e58 <line:141:9, line:154:1> line:141:14 mjtRndFlag_

# (placeholder) | |-EnumConstantDecl 0x6e5f88 <line:142:3, col:25> col:3 mjRND_SHADOW 'int'

# (placeholder) | | |-ConstantExpr 0x6e5f68 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6e5f48 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x81e8a0 <col:37, col:44>

# (placeholder) | |   `-ParagraphComment 0x81e870 <col:37, col:44>

# (placeholder) | |     `-TextComment 0x81e840 <col:37, col:44> Text=" shadows"

# (placeholder) | |-EnumConstantDecl 0x6e6008 <line:143:3> col:3 mjRND_WIREFRAME 'int'

# (placeholder) | | `-FullComment 0x81e970 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x81e940 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x81e910 <col:37, col:46> Text=" wireframe"

# (placeholder) | |-EnumConstantDecl 0x6e6088 <line:144:3> col:3 mjRND_REFLECTION 'int'

# (placeholder) | | `-FullComment 0x81ea40 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x81ea10 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x81e9e0 <col:37, col:48> Text=" reflections"

# (placeholder) | |-EnumConstantDecl 0x6e6108 <line:145:3> col:3 mjRND_ADDITIVE 'int'

# (placeholder) | | `-FullComment 0x81eb10 <col:37, col:58>

# (placeholder) | |   `-ParagraphComment 0x81eae0 <col:37, col:58>

# (placeholder) | |     `-TextComment 0x81eab0 <col:37, col:58> Text=" additive transparency"

# (placeholder) | |-EnumConstantDecl 0x6e6188 <line:146:3> col:3 mjRND_SKYBOX 'int'

# (placeholder) | | `-FullComment 0x81ebe0 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x81ebb0 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x81eb80 <col:37, col:43> Text=" skybox"

# (placeholder) | |-EnumConstantDecl 0x6e6208 <line:147:3> col:3 mjRND_FOG 'int'

# (placeholder) | | `-FullComment 0x81ecb0 <col:37, col:40>

# (placeholder) | |   `-ParagraphComment 0x81ec80 <col:37, col:40>

# (placeholder) | |     `-TextComment 0x81ec50 <col:37, col:40> Text=" fog"

# (placeholder) | |-EnumConstantDecl 0x6e6288 <line:148:3> col:3 mjRND_HAZE 'int'

# (placeholder) | | `-FullComment 0x81ed80 <col:37, col:41>

# (placeholder) | |   `-ParagraphComment 0x81ed50 <col:37, col:41>

# (placeholder) | |     `-TextComment 0x81ed20 <col:37, col:41> Text=" haze"

# (placeholder) | |-EnumConstantDecl 0x6e6308 <line:149:3> col:3 mjRND_SEGMENT 'int'

# (placeholder) | | `-FullComment 0x81ee50 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x81ee20 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x81edf0 <col:37, col:67> Text=" segmentation with random color"

# (placeholder) | |-EnumConstantDecl 0x6e6388 <line:150:3> col:3 mjRND_IDCOLOR 'int'

# (placeholder) | | `-FullComment 0x81ef20 <col:37, col:68>

# (placeholder) | |   `-ParagraphComment 0x81eef0 <col:37, col:68>

# (placeholder) | |     `-TextComment 0x81eec0 <col:37, col:68> Text=" segmentation with segid+1 color"

# (placeholder) | |-EnumConstantDecl 0x6e6408 <line:151:3> col:3 mjRND_CULL_FACE 'int'

# (placeholder) | | `-FullComment 0x81eff0 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x81efc0 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x81ef90 <col:37, col:56> Text=" cull backward faces"

# (placeholder) | `-EnumConstantDecl 0x6e64b8 <line:153:3> col:3 referenced mjNRNDFLAG 'int'

# (placeholder) |   `-FullComment 0x81f0c0 <col:37, col:62>

# (placeholder) |     `-ParagraphComment 0x81f090 <col:37, col:62>

# (placeholder) |       `-TextComment 0x81f060 <col:37, col:62> Text=" number of rendering flags"

alias enum mjtRndFlag_ : enum mjtRndFlag_ = ' enum mjtRndFlag_ ' sugar
# (placeholder) |   `-EnumType 0x6e5f00 'enum mjtRndFlag_'

# (placeholder) |     `-Enum 0x6e5e58 'mjtRndFlag_'

# ElaboratedTypeNode: Unhandled tokens: mjtRndFlag_ 

# (placeholder) |-EnumDecl 0x6e65d8 <line:157:9, line:161:1> line:157:14 mjtStereo_

# (placeholder) | |-EnumConstantDecl 0x6e6708 <line:158:3, col:25> col:3 mjSTEREO_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x6e66e8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x6e66c8 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x81f190 <col:37, col:65>

# (placeholder) | |   `-ParagraphComment 0x81f160 <col:37, col:65>

# (placeholder) | |     `-TextComment 0x81f130 <col:37, col:65> Text=" no stereo; use left eye only"

# (placeholder) | |-EnumConstantDecl 0x6e6788 <line:159:3> col:3 mjSTEREO_QUADBUFFERED 'int'

# (placeholder) | | `-FullComment 0x81f260 <col:37, col:97>

# (placeholder) | |   `-ParagraphComment 0x81f230 <col:37, col:97>

# (placeholder) | |     `-TextComment 0x81f200 <col:37, col:97> Text=" quad buffered; revert to side-by-side if no hardware support"

# (placeholder) | `-EnumConstantDecl 0x6e6838 <line:160:3> col:3 mjSTEREO_SIDEBYSIDE 'int'

# (placeholder) |   `-FullComment 0x81f330 <col:37, col:49>

# (placeholder) |     `-ParagraphComment 0x81f300 <col:37, col:49>

# (placeholder) |       `-TextComment 0x81f2d0 <col:37, col:49> Text=" side-by-side"

alias enum mjtStereo_ : enum mjtStereo_ = ' enum mjtStereo_ ' sugar
# (placeholder) |   `-EnumType 0x6e6680 'enum mjtStereo_'

# (placeholder) |     `-Enum 0x6e65d8 'mjtStereo_'

# ElaboratedTypeNode: Unhandled tokens: mjtStereo_ 
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


alias struct mjvPerturb_ : struct mjvPerturb_ = mjvPerturb_mjvPerturb_
struct mjvCamera_:

	var type: Int32

	var fixedcamid: Int32

	var trackbodyid: Int32

	var lookat: SIMD[mjtNum.dtype, 3]

	var distance: mjtNum

	var azimuth: mjtNum

	var elevation: mjtNum

	var orthographic: Int32


alias struct mjvCamera_ : struct mjvCamera_ = mjvCamera_mjvCamera_
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


alias struct mjvGLCamera_ : struct mjvGLCamera_ = mjvGLCamera_mjvGLCamera_
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


alias struct mjvGeom_ : struct mjvGeom_ = mjvGeom_mjvGeom_
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


alias struct mjvLight_ : struct mjvLight_ = mjvLight_mjvLight_
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


alias struct mjvOption_ : struct mjvOption_ = mjvOption_mjvOption_
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


alias struct mjvScene_ : struct mjvScene_ = mjvScene_mjvScene_
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


alias struct mjvFigure_ : struct mjvFigure_ = mjvFigure_mjvFigure_
struct mjvSceneState_:

	var nbuffer: Int32

	var buffer: UnsafePointer[NoneType]

	var maxgeom: Int32

	var scratch: mjvScene

	var model: _mjvSceneState___Anonymous_line_417_3

	var data: _mjvSceneState___Anonymous_line_634_3


alias struct mjvSceneState_ : struct mjvSceneState_ = mjvSceneState_mjvSceneState_
struct mjResource_:

	var name: UnsafePointer[Int8]

	var data: UnsafePointer[NoneType]

	var timestamp: SIMD[Int8.dtype, 512]

	var provider: UnsafePointer[const mjpResourceProvider]


alias struct mjResource_ : struct mjResource_ = mjResource_mjResource_

alias int (*)(mjResource *) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fdae0 'int (mjResource *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fdab0 'int (mjResource *)' cdecl
Int32UnsafePointer[
# (placeholder) | |       `-TypedefType 0x6fd990 'mjResource' sugar

# (placeholder) | |         |-Typedef 0x6fd900 'mjResource'
mjResource_mjResource_]
]

# (placeholder) | `-FullComment 0x827960 <line:34:3, col:59>

# (placeholder) |   `-ParagraphComment 0x827930 <col:3, col:59>

# (placeholder) |     `-TextComment 0x827900 <col:3, col:59> Text=" callback for opening a resource, returns zero on failure"


alias int (*)(mjResource *, const void **) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fddd0 'int (mjResource *, const void **)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fdd90 'int (mjResource *, const void **)' cdecl
Int32UnsafePointer[
# (placeholder) | |     | `-TypedefType 0x6fd990 'mjResource' sugar

# (placeholder) | |     |   |-Typedef 0x6fd900 'mjResource'
mjResource_mjResource_]
UnsafePointer[UnsafePointer[
# (placeholder) | |         `-QualType 0x4e3401 'const void' const
NoneType]
]
]

# (placeholder) | `-FullComment 0x827a50 <line:37:3, line:38:62>

# (placeholder) |   `-ParagraphComment 0x827a20 <line:37:3, line:38:62>

# (placeholder) |     |-TextComment 0x8279d0 <line:37:3, col:34> Text=" callback for reading a resource"

# (placeholder) |     `-TextComment 0x8279f0 <line:38:3, col:62> Text=" return number of bytes stored in buffer, return -1 if error"


alias void (*)(mjResource *) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fe000 'void (mjResource *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fdfd0 'void (mjResource *)' cdecl
NoneTypeUnsafePointer[
# (placeholder) | |       `-TypedefType 0x6fd990 'mjResource' sugar

# (placeholder) | |         |-Typedef 0x6fd900 'mjResource'
mjResource_mjResource_]
]

# (placeholder) | `-FullComment 0x827b20 <line:41:3, col:81>

# (placeholder) |   `-ParagraphComment 0x827af0 <col:3, col:81>

# (placeholder) |     `-TextComment 0x827ac0 <col:3, col:81> Text=" callback for closing a resource (responsible for freeing any allocated memory)"


alias void (*)(mjResource *, const char **, int *) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fe370 'void (mjResource *, const char **, int *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fe330 'void (mjResource *, const char **, int *)' cdecl
NoneTypeUnsafePointer[
# (placeholder) | |     | `-TypedefType 0x6fd990 'mjResource' sugar

# (placeholder) | |     |   |-Typedef 0x6fd900 'mjResource'
mjResource_mjResource_]
UnsafePointer[UnsafePointer[
# (placeholder) | |     |   `-QualType 0x4e3441 'const char' const
Int8]
]
UnsafePointer[Int32]
]

# (placeholder) | `-FullComment 0x827c10 <line:44:3, line:45:72>

# (placeholder) |   `-ParagraphComment 0x827be0 <line:44:3, line:45:72>

# (placeholder) |     |-TextComment 0x827b90 <line:44:3, col:53> Text=" callback for returning the directory of a resource"

# (placeholder) |     `-TextComment 0x827bb0 <line:45:3, col:72> Text=" sets dir to directory string with ndir being size of directory string"


alias int (*)(const mjResource *, const char *) = UnsafePointer[
# (placeholder) | | `-ParenType 0x6fe6a0 'int (const mjResource *, const char *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x6fe660 'int (const mjResource *, const char *)' cdecl
Int32UnsafePointer[
# (placeholder) | |     | `-QualType 0x6fd991 'const mjResource' const

# (placeholder) | |     |   `-TypedefType 0x6fd990 'mjResource' sugar

# (placeholder) | |     |     |-Typedef 0x6fd900 'mjResource'
mjResource_mjResource_]
UnsafePointer[
# (placeholder) | |       `-QualType 0x4e3441 'const char' const
Int8]
]

# (placeholder) | `-FullComment 0x827dd0 <line:48:3, line:52:64>

# (placeholder) |   `-ParagraphComment 0x827da0 <line:48:3, line:52:64>

# (placeholder) |     |-TextComment 0x827c80 <line:48:3, col:75> Text=" callback for checking if the current resource was modified from the time"

# (placeholder) |     |-TextComment 0x827ca0 <line:49:3, col:29> Text=" specified by the timestamp"

# (placeholder) |     |-TextComment 0x827cc0 <line:50:3, col:71> Text=" returns 0 if the resource's timestamp matches the provided timestamp"

# (placeholder) |     |-TextComment 0x827ce0 <line:51:3, col:66> Text=" returns > 0 if the resource is younger than the given timestamp"

# (placeholder) |     |-TextComment 0x827d00 <line:52:3, col:11> Text=" returns "

# (placeholder) |     |-TextComment 0x827d20 <col:12> Text="<"

# (placeholder) |     `-TextComment 0x827d40 <col:13, col:64> Text=" 0 if the resource is older than the given timestamp"

struct mjpResourceProvider:

	var prefix: UnsafePointer[const char]

	var open: mjfOpenResource

	var read: mjfReadResource

	var close: mjfCloseResource

	var getdir: mjfGetResourceDir

	var modified: mjfResourceModified

	var data: UnsafePointer[NoneType]


alias struct mjpResourceProvider : struct mjpResourceProvider = mjpResourceProvidermjpResourceProvider

# (placeholder) |-EnumDecl 0x6fede8 <line:70:9, line:75:1> line:70:14 mjtPluginCapabilityBit_

# (placeholder) | |-FullComment 0x828520 <line:68:3, col:100>

# (placeholder) | | `-ParagraphComment 0x8284f0 <col:3, col:100>

# (placeholder) | |   `-TextComment 0x8284c0 <col:3, col:100> Text="---------------------------------- Plugins -------------------------------------------------------"

# (placeholder) | |-EnumConstantDecl 0x6fef30 <line:71:3, col:26> col:3 mjPLUGIN_ACTUATOR 'int'

# (placeholder) | | |-ConstantExpr 0x6fef10 <col:23, col:26> 'int'

# (placeholder) | | | |-value: Int 1

# (placeholder) | | | `-BinaryOperator 0x6feef0 <col:23, col:26> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6feeb0 <col:23> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6feed0 <col:26> 'int' 0

# (placeholder) | | `-FullComment 0x8285f0 <col:37, col:52>

# (placeholder) | |   `-ParagraphComment 0x8285c0 <col:37, col:52>

# (placeholder) | |     `-TextComment 0x828590 <col:37, col:52> Text=" actuator forces"

# (placeholder) | |-EnumConstantDecl 0x6ff028 <line:72:3, col:26> col:3 mjPLUGIN_SENSOR 'int'

# (placeholder) | | |-ConstantExpr 0x6ff008 <col:23, col:26> 'int'

# (placeholder) | | | |-value: Int 2

# (placeholder) | | | `-BinaryOperator 0x6fefe8 <col:23, col:26> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6fefa8 <col:23> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6fefc8 <col:26> 'int' 1

# (placeholder) | | `-FullComment 0x8286c0 <col:37, col:56>

# (placeholder) | |   `-ParagraphComment 0x828690 <col:37, col:56>

# (placeholder) | |     `-TextComment 0x828660 <col:37, col:56> Text=" sensor measurements"

# (placeholder) | |-EnumConstantDecl 0x6ff128 <line:73:3, col:26> col:3 mjPLUGIN_PASSIVE 'int'

# (placeholder) | | |-ConstantExpr 0x6ff108 <col:23, col:26> 'int'

# (placeholder) | | | |-value: Int 4

# (placeholder) | | | `-BinaryOperator 0x6ff0e8 <col:23, col:26> 'int' '<<'

# (placeholder) | | |   |-IntegerLiteral 0x6ff0a8 <col:23> 'int' 1

# (placeholder) | | |   `-IntegerLiteral 0x6ff0c8 <col:26> 'int' 2

# (placeholder) | | `-FullComment 0x828790 <col:37, col:51>

# (placeholder) | |   `-ParagraphComment 0x828760 <col:37, col:51>

# (placeholder) | |     `-TextComment 0x828730 <col:37, col:51> Text=" passive forces"

# (placeholder) | `-EnumConstantDecl 0x6ff228 <line:74:3, col:26> col:3 mjPLUGIN_SDF 'int'

# (placeholder) |   |-ConstantExpr 0x6ff208 <col:23, col:26> 'int'

# (placeholder) |   | |-value: Int 8

# (placeholder) |   | `-BinaryOperator 0x6ff1e8 <col:23, col:26> 'int' '<<'

# (placeholder) |   |   |-IntegerLiteral 0x6ff1a8 <col:23> 'int' 1

# (placeholder) |   |   `-IntegerLiteral 0x6ff1c8 <col:26> 'int' 3

# (placeholder) |   `-FullComment 0x828860 <col:37, col:59>

# (placeholder) |     `-ParagraphComment 0x828830 <col:37, col:59>

# (placeholder) |       `-TextComment 0x828800 <col:37, col:59> Text=" signed distance fields"

alias enum mjtPluginCapabilityBit_ : enum mjtPluginCapabilityBit_ = ' enum mjtPluginCapabilityBit_ ' sugar
# (placeholder) | | `-EnumType 0x6fee90 'enum mjtPluginCapabilityBit_'

# (placeholder) | |   `-Enum 0x6fede8 'mjtPluginCapabilityBit_'

# ElaboratedTypeNode: Unhandled tokens: mjtPluginCapabilityBit_ 
# (placeholder) | `-FullComment 0x828930 <line:68:3, col:100>

# (placeholder) |   `-ParagraphComment 0x828900 <col:3, col:100>

# (placeholder) |     `-TextComment 0x8288d0 <col:3, col:100> Text="---------------------------------- Plugins -------------------------------------------------------"

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


alias struct mjpPlugin_ : struct mjpPlugin_ = mjpPlugin_mjpPlugin_

alias void (*)(const char *, int, int) = UnsafePointer[
# (placeholder) | | `-ParenType 0x7030b0 'void (const char *, int, int)' sugar

# (placeholder) | |   `-FunctionProtoType 0x703070 'void (const char *, int, int)' cdecl
NoneTypeUnsafePointer[
# (placeholder) | |     | `-QualType 0x4e3441 'const char' const
Int8]
Int32Int32]

# (placeholder) | `-FullComment 0x829a60 <line:172:3, col:63>

# (placeholder) |   `-ParagraphComment 0x829a30 <col:3, col:63>

# (placeholder) |     `-TextComment 0x829a00 <col:3, col:63> Text=" function pointer type for mj_loadAllPluginLibraries callback"


# (placeholder) |-EnumDecl 0x7032f8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjrender.h:30:9, line:39:1> line:30:14 mjtGridPos_

# (placeholder) | |-FullComment 0x829b30 <line:28:3, col:100>

# (placeholder) | | `-ParagraphComment 0x829b00 <col:3, col:100>

# (placeholder) | |   `-TextComment 0x829ad0 <col:3, col:100> Text="---------------------------------- primitive types (mjt) -----------------------------------------"

# (placeholder) | |-EnumConstantDecl 0x703428 <line:31:3, col:25> col:3 mjGRID_TOPLEFT 'int'

# (placeholder) | | |-ConstantExpr 0x703408 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x7033e8 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x829c00 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x829bd0 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x829ba0 <col:37, col:45> Text=" top left"

# (placeholder) | |-EnumConstantDecl 0x7034a8 <line:32:3> col:3 mjGRID_TOPRIGHT 'int'

# (placeholder) | | `-FullComment 0x829cd0 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x829ca0 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x829c70 <col:37, col:46> Text=" top right"

# (placeholder) | |-EnumConstantDecl 0x703528 <line:33:3> col:3 mjGRID_BOTTOMLEFT 'int'

# (placeholder) | | `-FullComment 0x829db0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x829d70 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x829d40 <col:37, col:48> Text=" bottom left"

# (placeholder) | |-EnumConstantDecl 0x7035a8 <line:34:3> col:3 mjGRID_BOTTOMRIGHT 'int'

# (placeholder) | | `-FullComment 0x829e80 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x829e50 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x829e20 <col:37, col:49> Text=" bottom right"

# (placeholder) | |-EnumConstantDecl 0x703628 <line:35:3> col:3 mjGRID_TOP 'int'

# (placeholder) | | `-FullComment 0x829f50 <col:37, col:47>

# (placeholder) | |   `-ParagraphComment 0x829f20 <col:37, col:47>

# (placeholder) | |     `-TextComment 0x829ef0 <col:37, col:47> Text=" top center"

# (placeholder) | |-EnumConstantDecl 0x7036a8 <line:36:3> col:3 mjGRID_BOTTOM 'int'

# (placeholder) | | `-FullComment 0x82a020 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x829ff0 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x829fc0 <col:37, col:50> Text=" bottom center"

# (placeholder) | |-EnumConstantDecl 0x703728 <line:37:3> col:3 mjGRID_LEFT 'int'

# (placeholder) | | `-FullComment 0x82a0f0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x82a0c0 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x82a090 <col:37, col:48> Text=" left center"

# (placeholder) | `-EnumConstantDecl 0x706808 <line:38:3> col:3 mjGRID_RIGHT 'int'

# (placeholder) |   `-FullComment 0x82a1c0 <col:37, col:49>

# (placeholder) |     `-ParagraphComment 0x82a190 <col:37, col:49>

# (placeholder) |       `-TextComment 0x82a160 <col:37, col:49> Text=" right center"

alias enum mjtGridPos_ : enum mjtGridPos_ = ' enum mjtGridPos_ ' sugar
# (placeholder) | | `-EnumType 0x7033a0 'enum mjtGridPos_'

# (placeholder) | |   `-Enum 0x7032f8 'mjtGridPos_'

# ElaboratedTypeNode: Unhandled tokens: mjtGridPos_ 
# (placeholder) | `-FullComment 0x82a290 <line:28:3, col:100>

# (placeholder) |   `-ParagraphComment 0x82a260 <col:3, col:100>

# (placeholder) |     `-TextComment 0x82a230 <col:3, col:100> Text="---------------------------------- primitive types (mjt) -----------------------------------------"


# (placeholder) |-EnumDecl 0x706928 <line:42:9, line:45:1> line:42:14 mjtFramebuffer_

# (placeholder) | |-EnumConstantDecl 0x706a58 <line:43:3, col:25> col:3 mjFB_WINDOW 'int'

# (placeholder) | | |-ConstantExpr 0x706a38 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x706a18 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x82a360 <col:37, col:58>

# (placeholder) | |   `-ParagraphComment 0x82a330 <col:37, col:58>

# (placeholder) | |     `-TextComment 0x82a300 <col:37, col:58> Text=" default/window buffer"

# (placeholder) | `-EnumConstantDecl 0x706b08 <line:44:3> col:3 mjFB_OFFSCREEN 'int'

# (placeholder) |   `-FullComment 0x82a430 <col:37, col:53>

# (placeholder) |     `-ParagraphComment 0x82a400 <col:37, col:53>

# (placeholder) |       `-TextComment 0x82a3d0 <col:37, col:53> Text=" offscreen buffer"

alias enum mjtFramebuffer_ : enum mjtFramebuffer_ = ' enum mjtFramebuffer_ ' sugar
# (placeholder) |   `-EnumType 0x7069d0 'enum mjtFramebuffer_'

# (placeholder) |     `-Enum 0x706928 'mjtFramebuffer_'

# ElaboratedTypeNode: Unhandled tokens: mjtFramebuffer_ 

# (placeholder) |-EnumDecl 0x706c28 <line:47:9, line:50:1> line:47:14 mjtDepthMap_

# (placeholder) | |-EnumConstantDecl 0x706d58 <line:48:3, col:25> col:3 mjDEPTH_ZERONEAR 'int'

# (placeholder) | | |-ConstantExpr 0x706d38 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x706d18 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x82a500 <col:37, col:74>

# (placeholder) | |   `-ParagraphComment 0x82a4d0 <col:37, col:74>

# (placeholder) | |     `-TextComment 0x82a4a0 <col:37, col:74> Text=" standard depth map; 0: znear, 1: zfar"

# (placeholder) | `-EnumConstantDecl 0x706e48 <line:49:3, col:25> col:3 mjDEPTH_ZEROFAR 'int'

# (placeholder) |   |-ConstantExpr 0x706e28 <col:25> 'int'

# (placeholder) |   | |-value: Int 1

# (placeholder) |   | `-IntegerLiteral 0x706dd8 <col:25> 'int' 1

# (placeholder) |   `-FullComment 0x82a5d0 <col:37, col:74>

# (placeholder) |     `-ParagraphComment 0x82a5a0 <col:37, col:74>

# (placeholder) |       `-TextComment 0x82a570 <col:37, col:74> Text=" reversed depth map; 1: znear, 0: zfar"

alias enum mjtDepthMap_ : enum mjtDepthMap_ = ' enum mjtDepthMap_ ' sugar
# (placeholder) |   `-EnumType 0x706cd0 'enum mjtDepthMap_'

# (placeholder) |     `-Enum 0x706c28 'mjtDepthMap_'

# ElaboratedTypeNode: Unhandled tokens: mjtDepthMap_ 

# (placeholder) |-EnumDecl 0x706f68 <line:52:9, line:59:1> line:52:14 mjtFontScale_

# (placeholder) | |-EnumConstantDecl 0x707098 <line:53:3, col:25> col:3 mjFONTSCALE_50 'int'

# (placeholder) | | |-ConstantExpr 0x707078 <col:25> 'int'

# (placeholder) | | | |-value: Int 50

# (placeholder) | | | `-IntegerLiteral 0x707058 <col:25> 'int' 50

# (placeholder) | | `-FullComment 0x82a6a0 <col:37, col:78>

# (placeholder) | |   `-ParagraphComment 0x82a670 <col:37, col:78>

# (placeholder) | |     `-TextComment 0x82a640 <col:37, col:78> Text=" 50% scale, suitable for low-res rendering"

# (placeholder) | |-EnumConstantDecl 0x707158 <line:54:3, col:25> col:3 mjFONTSCALE_100 'int'

# (placeholder) | | |-ConstantExpr 0x707138 <col:25> 'int'

# (placeholder) | | | |-value: Int 100

# (placeholder) | | | `-IntegerLiteral 0x707118 <col:25> 'int' 100

# (placeholder) | | `-FullComment 0x82a770 <col:37, col:89>

# (placeholder) | |   `-ParagraphComment 0x82a740 <col:37, col:89>

# (placeholder) | |     `-TextComment 0x82a710 <col:37, col:89> Text=" normal scale, suitable in the absence of DPI scaling"

# (placeholder) | |-EnumConstantDecl 0x707218 <line:55:3, col:25> col:3 mjFONTSCALE_150 'int'

# (placeholder) | | |-ConstantExpr 0x7071f8 <col:25> 'int'

# (placeholder) | | | |-value: Int 150

# (placeholder) | | | `-IntegerLiteral 0x7071d8 <col:25> 'int' 150

# (placeholder) | | `-FullComment 0x82a840 <col:37, col:47>

# (placeholder) | |   `-ParagraphComment 0x82a810 <col:37, col:47>

# (placeholder) | |     `-TextComment 0x82a7e0 <col:37, col:47> Text=" 150% scale"

# (placeholder) | |-EnumConstantDecl 0x7072d8 <line:56:3, col:25> col:3 mjFONTSCALE_200 'int'

# (placeholder) | | |-ConstantExpr 0x7072b8 <col:25> 'int'

# (placeholder) | | | |-value: Int 200

# (placeholder) | | | `-IntegerLiteral 0x707298 <col:25> 'int' 200

# (placeholder) | | `-FullComment 0x82a910 <col:37, col:47>

# (placeholder) | |   `-ParagraphComment 0x82a8e0 <col:37, col:47>

# (placeholder) | |     `-TextComment 0x82a8b0 <col:37, col:47> Text=" 200% scale"

# (placeholder) | |-EnumConstantDecl 0x707398 <line:57:3, col:25> col:3 mjFONTSCALE_250 'int'

# (placeholder) | | |-ConstantExpr 0x707378 <col:25> 'int'

# (placeholder) | | | |-value: Int 250

# (placeholder) | | | `-IntegerLiteral 0x707358 <col:25> 'int' 250

# (placeholder) | | `-FullComment 0x82a9e0 <col:37, col:47>

# (placeholder) | |   `-ParagraphComment 0x82a9b0 <col:37, col:47>

# (placeholder) | |     `-TextComment 0x82a980 <col:37, col:47> Text=" 250% scale"

# (placeholder) | `-EnumConstantDecl 0x707488 <line:58:3, col:25> col:3 mjFONTSCALE_300 'int'

# (placeholder) |   |-ConstantExpr 0x707468 <col:25> 'int'

# (placeholder) |   | |-value: Int 300

# (placeholder) |   | `-IntegerLiteral 0x707418 <col:25> 'int' 300

# (placeholder) |   `-FullComment 0x82aab0 <col:37, col:47>

# (placeholder) |     `-ParagraphComment 0x82aa80 <col:37, col:47>

# (placeholder) |       `-TextComment 0x82aa50 <col:37, col:47> Text=" 300% scale"

alias enum mjtFontScale_ : enum mjtFontScale_ = ' enum mjtFontScale_ ' sugar
# (placeholder) |   `-EnumType 0x707010 'enum mjtFontScale_'

# (placeholder) |     `-Enum 0x706f68 'mjtFontScale_'

# ElaboratedTypeNode: Unhandled tokens: mjtFontScale_ 

# (placeholder) |-EnumDecl 0x7075a8 <line:62:9, line:66:1> line:62:14 mjtFont_

# (placeholder) | |-EnumConstantDecl 0x7076d8 <line:63:3, col:25> col:3 mjFONT_NORMAL 'int'

# (placeholder) | | |-ConstantExpr 0x7076b8 <col:25> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x707698 <col:25> 'int' 0

# (placeholder) | | `-FullComment 0x82ab80 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x82ab50 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x82ab20 <col:37, col:48> Text=" normal font"

# (placeholder) | |-EnumConstantDecl 0x707758 <line:64:3> col:3 mjFONT_SHADOW 'int'

# (placeholder) | | `-FullComment 0x82ac50 <col:37, col:82>

# (placeholder) | |   `-ParagraphComment 0x82ac20 <col:37, col:82>

# (placeholder) | |     `-TextComment 0x82abf0 <col:37, col:82> Text=" normal font with shadow (for higher contrast)"

# (placeholder) | `-EnumConstantDecl 0x707808 <line:65:3> col:3 mjFONT_BIG 'int'

# (placeholder) |   `-FullComment 0x82ad20 <col:37, col:63>

# (placeholder) |     `-ParagraphComment 0x82acf0 <col:37, col:63>

# (placeholder) |       `-TextComment 0x82acc0 <col:37, col:63> Text=" big font (for user alerts)"

alias enum mjtFont_ : enum mjtFont_ = ' enum mjtFont_ ' sugar
# (placeholder) |   `-EnumType 0x707650 'enum mjtFont_'

# (placeholder) |     `-Enum 0x7075a8 'mjtFont_'

# ElaboratedTypeNode: Unhandled tokens: mjtFont_ 
struct mjrRect_:

	var left: Int32

	var bottom: Int32

	var width: Int32

	var height: Int32


alias struct mjrRect_ : struct mjrRect_ = mjrRect_mjrRect_
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


alias struct mjrContext_ : struct mjrContext_ = mjrContext_mjrContext_

alias void = NoneType
# (placeholder) | `-FullComment 0x82e3a0 <line:46:5, col:20>

# (placeholder) |   `-ParagraphComment 0x82e370 <col:5, col:20>

# (placeholder) |     `-TextComment 0x82e340 <col:5, col:20> Text=" C: opaque types"


alias void = NoneType

alias void = NoneType

alias void = NoneType

alias void = NoneType

alias void = NoneType

alias void = NoneType

alias void = NoneType

# (placeholder) |-EnumDecl 0x70e198 <line:60:9, line:63:1> line:60:14 mjtGeomInertia_

# (placeholder) | |-FullComment 0x82e470 <line:58:3, col:100>

# (placeholder) | | `-ParagraphComment 0x82e440 <col:3, col:100>

# (placeholder) | |   `-TextComment 0x82e410 <col:3, col:100> Text="-------------------------------- enum types (mjt) ------------------------------------------------"

# (placeholder) | |-EnumConstantDecl 0x70e2c8 <line:61:3, col:22> col:3 mjINERTIA_VOLUME 'int'

# (placeholder) | | |-ConstantExpr 0x70e2a8 <col:22> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x70e288 <col:22> 'int' 0

# (placeholder) | | `-FullComment 0x82e540 <col:38, col:68>

# (placeholder) | |   `-ParagraphComment 0x82e510 <col:38, col:68>

# (placeholder) | |     `-TextComment 0x82e4e0 <col:38, col:68> Text=" mass distributed in the volume"

# (placeholder) | `-EnumConstantDecl 0x70e348 <line:62:3> col:3 mjINERTIA_SHELL 'int'

# (placeholder) |   `-FullComment 0x82e610 <col:38, col:69>

# (placeholder) |     `-ParagraphComment 0x82e5e0 <col:38, col:69>

# (placeholder) |       `-TextComment 0x82e5b0 <col:38, col:69> Text=" mass distributed on the surface"

alias enum mjtGeomInertia_ : enum mjtGeomInertia_ = ' enum mjtGeomInertia_ ' sugar
# (placeholder) | | `-EnumType 0x70e240 'enum mjtGeomInertia_'

# (placeholder) | |   `-Enum 0x70e198 'mjtGeomInertia_'

# ElaboratedTypeNode: Unhandled tokens: mjtGeomInertia_ 
# (placeholder) | `-FullComment 0x82e6e0 <line:58:3, col:100>

# (placeholder) |   `-ParagraphComment 0x82e6b0 <col:3, col:100>

# (placeholder) |     `-TextComment 0x82e680 <col:3, col:100> Text="-------------------------------- enum types (mjt) ------------------------------------------------"


# (placeholder) |-EnumDecl 0x70e498 <line:66:9, line:71:1> line:66:14 mjtMeshInertia_

# (placeholder) | |-EnumConstantDecl 0x70e5c8 <line:67:3, col:27> col:3 mjMESH_INERTIA_CONVEX 'int'

# (placeholder) | | |-ConstantExpr 0x70e5a8 <col:27> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x70e588 <col:27> 'int' 0

# (placeholder) | | `-FullComment 0x82e7b0 <col:39, col:58>

# (placeholder) | |   `-ParagraphComment 0x82e780 <col:39, col:58>

# (placeholder) | |     `-TextComment 0x82e750 <col:39, col:58> Text=" convex mesh inertia"

# (placeholder) | |-EnumConstantDecl 0x70e648 <line:68:3> col:3 mjMESH_INERTIA_EXACT 'int'

# (placeholder) | | `-FullComment 0x82e880 <col:39, col:57>

# (placeholder) | |   `-ParagraphComment 0x82e850 <col:39, col:57>

# (placeholder) | |     `-TextComment 0x82e820 <col:39, col:57> Text=" exact mesh inertia"

# (placeholder) | |-EnumConstantDecl 0x70e6c8 <line:69:3> col:3 mjMESH_INERTIA_LEGACY 'int'

# (placeholder) | | `-FullComment 0x82e950 <col:39, col:58>

# (placeholder) | |   `-ParagraphComment 0x82e920 <col:39, col:58>

# (placeholder) | |     `-TextComment 0x82e8f0 <col:39, col:58> Text=" legacy mesh inertia"

# (placeholder) | `-EnumConstantDecl 0x70e778 <line:70:3> col:3 mjMESH_INERTIA_SHELL 'int'

# (placeholder) |   `-FullComment 0x82ea20 <col:39, col:57>

# (placeholder) |     `-ParagraphComment 0x82e9f0 <col:39, col:57>

# (placeholder) |       `-TextComment 0x82e9c0 <col:39, col:57> Text=" shell mesh inertia"

alias enum mjtMeshInertia_ : enum mjtMeshInertia_ = ' enum mjtMeshInertia_ ' sugar
# (placeholder) |   `-EnumType 0x70e540 'enum mjtMeshInertia_'

# (placeholder) |     `-Enum 0x70e498 'mjtMeshInertia_'

# ElaboratedTypeNode: Unhandled tokens: mjtMeshInertia_ 

# (placeholder) |-EnumDecl 0x70e898 <line:74:9, line:79:1> line:74:14 mjtBuiltin_

# (placeholder) | |-EnumConstantDecl 0x70e9c8 <line:75:3, col:20> col:3 mjBUILTIN_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x70e9a8 <col:20> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x70e988 <col:20> 'int' 0

# (placeholder) | | `-FullComment 0x82eaf0 <col:38, col:57>

# (placeholder) | |   `-ParagraphComment 0x82eac0 <col:38, col:57>

# (placeholder) | |     `-TextComment 0x82ea90 <col:38, col:57> Text=" no built-in texture"

# (placeholder) | |-EnumConstantDecl 0x70ea48 <line:76:3> col:3 mjBUILTIN_GRADIENT 'int'

# (placeholder) | | `-FullComment 0x82ebc0 <col:38, col:58>

# (placeholder) | |   `-ParagraphComment 0x82eb90 <col:38, col:58>

# (placeholder) | |     `-TextComment 0x82eb60 <col:38, col:58> Text=" gradient: rgb1->rgb2"

# (placeholder) | |-EnumConstantDecl 0x70eac8 <line:77:3> col:3 mjBUILTIN_CHECKER 'int'

# (placeholder) | | `-FullComment 0x82ec90 <col:38, col:65>

# (placeholder) | |   `-ParagraphComment 0x82ec60 <col:38, col:65>

# (placeholder) | |     `-TextComment 0x82ec30 <col:38, col:65> Text=" checker pattern: rgb1, rgb2"

# (placeholder) | `-EnumConstantDecl 0x70eb78 <line:78:3> col:3 mjBUILTIN_FLAT 'int'

# (placeholder) |   `-FullComment 0x82ed60 <col:38, col:83>

# (placeholder) |     `-ParagraphComment 0x82ed30 <col:38, col:83>

# (placeholder) |       `-TextComment 0x82ed00 <col:38, col:83> Text=" 2d: rgb1; cube: rgb1-up, rgb2-side, rgb3-down"

alias enum mjtBuiltin_ : enum mjtBuiltin_ = ' enum mjtBuiltin_ ' sugar
# (placeholder) |   `-EnumType 0x70e940 'enum mjtBuiltin_'

# (placeholder) |     `-Enum 0x70e898 'mjtBuiltin_'

# ElaboratedTypeNode: Unhandled tokens: mjtBuiltin_ 

# (placeholder) |-EnumDecl 0x70ec98 <line:82:9, line:87:1> line:82:14 mjtMark_

# (placeholder) | |-EnumConstantDecl 0x70edc8 <line:83:3, col:17> col:3 mjMARK_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x70eda8 <col:17> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x70ed88 <col:17> 'int' 0

# (placeholder) | | `-FullComment 0x82ee30 <col:38, col:45>

# (placeholder) | |   `-ParagraphComment 0x82ee00 <col:38, col:45>

# (placeholder) | |     `-TextComment 0x82edd0 <col:38, col:45> Text=" no mark"

# (placeholder) | |-EnumConstantDecl 0x70ee48 <line:84:3> col:3 mjMARK_EDGE 'int'

# (placeholder) | | `-FullComment 0x82ef00 <col:38, col:43>

# (placeholder) | |   `-ParagraphComment 0x82eed0 <col:38, col:43>

# (placeholder) | |     `-TextComment 0x82eea0 <col:38, col:43> Text=" edges"

# (placeholder) | |-EnumConstantDecl 0x70eec8 <line:85:3> col:3 mjMARK_CROSS 'int'

# (placeholder) | | `-FullComment 0x82efd0 <col:38, col:43>

# (placeholder) | |   `-ParagraphComment 0x82efa0 <col:38, col:43>

# (placeholder) | |     `-TextComment 0x82ef70 <col:38, col:43> Text=" cross"

# (placeholder) | `-EnumConstantDecl 0x70ef78 <line:86:3> col:3 mjMARK_RANDOM 'int'

# (placeholder) |   `-FullComment 0x82f0a0 <col:38, col:49>

# (placeholder) |     `-ParagraphComment 0x82f070 <col:38, col:49>

# (placeholder) |       `-TextComment 0x82f040 <col:38, col:49> Text=" random dots"

alias enum mjtMark_ : enum mjtMark_ = ' enum mjtMark_ ' sugar
# (placeholder) |   `-EnumType 0x70ed40 'enum mjtMark_'

# (placeholder) |     `-Enum 0x70ec98 'mjtMark_'

# ElaboratedTypeNode: Unhandled tokens: mjtMark_ 

# (placeholder) |-EnumDecl 0x70f098 <line:90:9, line:94:1> line:90:14 mjtLimited_

# (placeholder) | |-EnumConstantDecl 0x70f1c8 <line:91:3, col:21> col:3 mjLIMITED_FALSE 'int'

# (placeholder) | | |-ConstantExpr 0x70f1a8 <col:21> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x70f188 <col:21> 'int' 0

# (placeholder) | | `-FullComment 0x82f170 <col:38, col:49>

# (placeholder) | |   `-ParagraphComment 0x82f140 <col:38, col:49>

# (placeholder) | |     `-TextComment 0x82f110 <col:38, col:49> Text=" not limited"

# (placeholder) | |-EnumConstantDecl 0x70f248 <line:92:3> col:3 mjLIMITED_TRUE 'int'

# (placeholder) | | `-FullComment 0x82f240 <col:38, col:45>

# (placeholder) | |   `-ParagraphComment 0x82f210 <col:38, col:45>

# (placeholder) | |     `-TextComment 0x82f1e0 <col:38, col:45> Text=" limited"

# (placeholder) | `-EnumConstantDecl 0x70f2c8 <line:93:3> col:3 mjLIMITED_AUTO 'int'

# (placeholder) |   `-FullComment 0x82f310 <col:38, col:77>

# (placeholder) |     `-ParagraphComment 0x82f2e0 <col:38, col:77>

# (placeholder) |       `-TextComment 0x82f2b0 <col:38, col:77> Text=" limited inferred from presence of range"

alias enum mjtLimited_ : enum mjtLimited_ = ' enum mjtLimited_ ' sugar
# (placeholder) |   `-EnumType 0x70f140 'enum mjtLimited_'

# (placeholder) |     `-Enum 0x70f098 'mjtLimited_'

# ElaboratedTypeNode: Unhandled tokens: mjtLimited_ 

# (placeholder) |-EnumDecl 0x70f418 <line:96:9, line:100:1> line:96:14 mjtAlignFree_

# (placeholder) | |-EnumConstantDecl 0x70f548 <line:97:3, col:23> col:3 mjALIGNFREE_FALSE 'int'

# (placeholder) | | |-ConstantExpr 0x70f528 <col:23> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x70f508 <col:23> 'int' 0

# (placeholder) | | `-FullComment 0x82f3e0 <col:38, col:49>

# (placeholder) | |   `-ParagraphComment 0x82f3b0 <col:38, col:49>

# (placeholder) | |     `-TextComment 0x82f380 <col:38, col:49> Text=" don't align"

# (placeholder) | |-EnumConstantDecl 0x70f5c8 <line:98:3> col:3 mjALIGNFREE_TRUE 'int'

# (placeholder) | | `-FullComment 0x82f4b0 <col:38, col:43>

# (placeholder) | |   `-ParagraphComment 0x82f480 <col:38, col:43>

# (placeholder) | |     `-TextComment 0x82f450 <col:38, col:43> Text=" align"

# (placeholder) | `-EnumConstantDecl 0x70f648 <line:99:3> col:3 mjALIGNFREE_AUTO 'int'

# (placeholder) |   `-FullComment 0x82f580 <col:38, col:70>

# (placeholder) |     `-ParagraphComment 0x82f550 <col:38, col:70>

# (placeholder) |       `-TextComment 0x82f520 <col:38, col:70> Text=" respect the global compiler flag"

alias enum mjtAlignFree_ : enum mjtAlignFree_ = ' enum mjtAlignFree_ ' sugar
# (placeholder) |   `-EnumType 0x70f4c0 'enum mjtAlignFree_'

# (placeholder) |     `-Enum 0x70f418 'mjtAlignFree_'

# ElaboratedTypeNode: Unhandled tokens: mjtAlignFree_ 

# (placeholder) |-EnumDecl 0x70f798 <line:103:9, line:107:1> line:103:14 mjtInertiaFromGeom_

# (placeholder) | |-EnumConstantDecl 0x70f8c8 <line:104:3, col:29> col:3 mjINERTIAFROMGEOM_FALSE 'int'

# (placeholder) | | |-ConstantExpr 0x70f8a8 <col:29> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x70f888 <col:29> 'int' 0

# (placeholder) | | `-FullComment 0x82f650 <col:38, col:75>

# (placeholder) | |   `-ParagraphComment 0x82f620 <col:38, col:75>

# (placeholder) | |     `-TextComment 0x82f5f0 <col:38, col:75> Text=" do not use; inertial element required"

# (placeholder) | |-EnumConstantDecl 0x70f948 <line:105:3> col:3 mjINERTIAFROMGEOM_TRUE 'int'

# (placeholder) | | `-FullComment 0x82f720 <col:38, col:76>

# (placeholder) | |   `-ParagraphComment 0x82f6f0 <col:38, col:76>

# (placeholder) | |     `-TextComment 0x82f6c0 <col:38, col:76> Text=" always use; overwrite inertial element"

# (placeholder) | `-EnumConstantDecl 0x711478 <line:106:3> col:3 mjINERTIAFROMGEOM_AUTO 'int'

# (placeholder) |   `-FullComment 0x82f7f0 <col:38, col:77>

# (placeholder) |     `-ParagraphComment 0x82f7c0 <col:38, col:77>

# (placeholder) |       `-TextComment 0x82f790 <col:38, col:77> Text=" use only if inertial element is missing"

alias enum mjtInertiaFromGeom_ : enum mjtInertiaFromGeom_ = ' enum mjtInertiaFromGeom_ ' sugar
# (placeholder) |   `-EnumType 0x70f840 'enum mjtInertiaFromGeom_'

# (placeholder) |     `-Enum 0x70f798 'mjtInertiaFromGeom_'

# ElaboratedTypeNode: Unhandled tokens: mjtInertiaFromGeom_ 

# (placeholder) |-EnumDecl 0x711598 <line:110:9, line:116:1> line:110:14 mjtOrientation_

# (placeholder) | |-EnumConstantDecl 0x7116c8 <line:111:3, col:24> col:3 mjORIENTATION_QUAT 'int'

# (placeholder) | | |-ConstantExpr 0x7116a8 <col:24> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x711688 <col:24> 'int' 0

# (placeholder) | | `-FullComment 0x82f8c0 <col:38, col:48>

# (placeholder) | |   `-ParagraphComment 0x82f890 <col:38, col:48>

# (placeholder) | |     `-TextComment 0x82f860 <col:38, col:48> Text=" quaternion"

# (placeholder) | |-EnumConstantDecl 0x711748 <line:112:3> col:3 mjORIENTATION_AXISANGLE 'int'

# (placeholder) | | `-FullComment 0x82f990 <col:38, col:52>

# (placeholder) | |   `-ParagraphComment 0x82f960 <col:38, col:52>

# (placeholder) | |     `-TextComment 0x82f930 <col:38, col:52> Text=" axis and angle"

# (placeholder) | |-EnumConstantDecl 0x7117c8 <line:113:3> col:3 mjORIENTATION_XYAXES 'int'

# (placeholder) | | `-FullComment 0x82fa60 <col:38, col:50>

# (placeholder) | |   `-ParagraphComment 0x82fa30 <col:38, col:50>

# (placeholder) | |     `-TextComment 0x82fa00 <col:38, col:50> Text=" x and y axes"

# (placeholder) | |-EnumConstantDecl 0x711848 <line:114:3> col:3 mjORIENTATION_ZAXIS 'int'

# (placeholder) | | `-FullComment 0x82fb30 <col:38, col:63>

# (placeholder) | |   `-ParagraphComment 0x82fb00 <col:38, col:63>

# (placeholder) | |     `-TextComment 0x82fad0 <col:38, col:63> Text=" z axis (minimal rotation)"

# (placeholder) | `-EnumConstantDecl 0x7118c8 <line:115:3> col:3 mjORIENTATION_EULER 'int'

# (placeholder) |   `-FullComment 0x82fc00 <col:38, col:50>

# (placeholder) |     `-ParagraphComment 0x82fbd0 <col:38, col:50>

# (placeholder) |       `-TextComment 0x82fba0 <col:38, col:50> Text=" Euler angles"

alias enum mjtOrientation_ : enum mjtOrientation_ = ' enum mjtOrientation_ ' sugar
# (placeholder) |   `-EnumType 0x711640 'enum mjtOrientation_'

# (placeholder) |     `-Enum 0x711598 'mjtOrientation_'

# ElaboratedTypeNode: Unhandled tokens: mjtOrientation_ 
struct mjsElement_:

	var elemtype: mjtObj

	var signature: uint64_t


alias struct mjsElement_ : struct mjsElement_ = mjsElement_mjsElement_
# (placeholder) | `-FullComment 0x82ff40 <line:119:3, col:100>

# (placeholder) |   `-ParagraphComment 0x82ff10 <col:3, col:100>

# (placeholder) |     `-TextComment 0x82fee0 <col:3, col:100> Text="-------------------------------- attribute structs (mjs) -----------------------------------------"

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


alias struct mjsCompiler_ : struct mjsCompiler_ = mjsCompiler_mjsCompiler_
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


alias struct mjSpec_ : struct mjSpec_ = mjSpec_mjSpec_
struct mjsOrientation_:

	var type: mjtOrientation

	var axisangle: SIMD[Float64.dtype, 4]

	var xyaxes: SIMD[Float64.dtype, 6]

	var zaxis: SIMD[Float64.dtype, 3]

	var euler: SIMD[Float64.dtype, 3]


alias struct mjsOrientation_ : struct mjsOrientation_ = mjsOrientation_mjsOrientation_
struct mjsPlugin_:

	var element: UnsafePointer[mjsElement]

	var name: UnsafePointer[mjString]

	var plugin_name: UnsafePointer[mjString]

	var active: mjtByte

	var info: UnsafePointer[mjString]


alias struct mjsPlugin_ : struct mjsPlugin_ = mjsPlugin_mjsPlugin_
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


alias struct mjsBody_ : struct mjsBody_ = mjsBody_mjsBody_
struct mjsFrame_:

	var element: UnsafePointer[mjsElement]

	var name: UnsafePointer[mjString]

	var childclass: UnsafePointer[mjString]

	var pos: SIMD[Float64.dtype, 3]

	var quat: SIMD[Float64.dtype, 4]

	var alt: mjsOrientation

	var info: UnsafePointer[mjString]


alias struct mjsFrame_ : struct mjsFrame_ = mjsFrame_mjsFrame_
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


alias struct mjsJoint_ : struct mjsJoint_ = mjsJoint_mjsJoint_
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


alias struct mjsGeom_ : struct mjsGeom_ = mjsGeom_mjsGeom_
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


alias struct mjsSite_ : struct mjsSite_ = mjsSite_mjsSite_
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


alias struct mjsCamera_ : struct mjsCamera_ = mjsCamera_mjsCamera_
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


alias struct mjsLight_ : struct mjsLight_ = mjsLight_mjsLight_
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


alias struct mjsFlex_ : struct mjsFlex_ = mjsFlex_mjsFlex_
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


alias struct mjsMesh_ : struct mjsMesh_ = mjsMesh_mjsMesh_
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


alias struct mjsHField_ : struct mjsHField_ = mjsHField_mjsHField_
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


alias struct mjsSkin_ : struct mjsSkin_ = mjsSkin_mjsSkin_
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


alias struct mjsTexture_ : struct mjsTexture_ = mjsTexture_mjsTexture_
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


alias struct mjsMaterial_ : struct mjsMaterial_ = mjsMaterial_mjsMaterial_
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


alias struct mjsPair_ : struct mjsPair_ = mjsPair_mjsPair_
struct mjsExclude_:

	var element: UnsafePointer[mjsElement]

	var name: UnsafePointer[mjString]

	var bodyname1: UnsafePointer[mjString]

	var bodyname2: UnsafePointer[mjString]

	var info: UnsafePointer[mjString]


alias struct mjsExclude_ : struct mjsExclude_ = mjsExclude_mjsExclude_
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


alias struct mjsEquality_ : struct mjsEquality_ = mjsEquality_mjsEquality_
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


alias struct mjsTendon_ : struct mjsTendon_ = mjsTendon_mjsTendon_
struct mjsWrap_:

	var element: UnsafePointer[mjsElement]

	var info: UnsafePointer[mjString]


alias struct mjsWrap_ : struct mjsWrap_ = mjsWrap_mjsWrap_
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


alias struct mjsActuator_ : struct mjsActuator_ = mjsActuator_mjsActuator_
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


alias struct mjsSensor_ : struct mjsSensor_ = mjsSensor_mjsSensor_
struct mjsNumeric_:

	var element: UnsafePointer[mjsElement]

	var name: UnsafePointer[mjString]

	var data: UnsafePointer[mjDoubleVec]

	var size: Int32

	var info: UnsafePointer[mjString]


alias struct mjsNumeric_ : struct mjsNumeric_ = mjsNumeric_mjsNumeric_
struct mjsText_:

	var element: UnsafePointer[mjsElement]

	var name: UnsafePointer[mjString]

	var data: UnsafePointer[mjString]

	var info: UnsafePointer[mjString]


alias struct mjsText_ : struct mjsText_ = mjsText_mjsText_
struct mjsTuple_:

	var element: UnsafePointer[mjsElement]

	var name: UnsafePointer[mjString]

	var objtype: UnsafePointer[mjIntVec]

	var objname: UnsafePointer[mjStringVec]

	var objprm: UnsafePointer[mjDoubleVec]

	var info: UnsafePointer[mjString]


alias struct mjsTuple_ : struct mjsTuple_ = mjsTuple_mjsTuple_
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


alias struct mjsKey_ : struct mjsKey_ = mjsKey_mjsKey_
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


alias struct mjsDefault_ : struct mjsDefault_ = mjsDefault_mjsDefault_

# (placeholder) |-EnumDecl 0x732bc0 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjui.h:65:9, line:70:1> line:65:14 mjtButton_

# (placeholder) | |-FullComment 0x851dc0 <line:63:3, col:100>

# (placeholder) | | `-ParagraphComment 0x851d90 <col:3, col:100>

# (placeholder) | |   `-TextComment 0x851d60 <col:3, col:100> Text="---------------------------------- primitive types (mjt) -----------------------------------------"

# (placeholder) | |-EnumConstantDecl 0x73cb00 <line:66:3, col:19> col:3 mjBUTTON_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x73cae0 <col:19> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x732ca8 <col:19> 'int' 0

# (placeholder) | | `-FullComment 0x851eb0 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x851e80 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x851e50 <col:37, col:46> Text=" no button"

# (placeholder) | |-EnumConstantDecl 0x73cb78 <line:67:3> col:3 mjBUTTON_LEFT 'int'

# (placeholder) | | `-FullComment 0x851f80 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x851f50 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x851f20 <col:37, col:48> Text=" left button"

# (placeholder) | |-EnumConstantDecl 0x73cbf8 <line:68:3> col:3 mjBUTTON_RIGHT 'int'

# (placeholder) | | `-FullComment 0x852050 <col:37, col:49>

# (placeholder) | |   `-ParagraphComment 0x852020 <col:37, col:49>

# (placeholder) | |     `-TextComment 0x851ff0 <col:37, col:49> Text=" right button"

# (placeholder) | `-EnumConstantDecl 0x73cca8 <line:69:3> col:3 mjBUTTON_MIDDLE 'int'

# (placeholder) |   `-FullComment 0x852120 <col:37, col:50>

# (placeholder) |     `-ParagraphComment 0x8520f0 <col:37, col:50>

# (placeholder) |       `-TextComment 0x8520c0 <col:37, col:50> Text=" middle button"

alias enum mjtButton_ : enum mjtButton_ = ' enum mjtButton_ ' sugar
# (placeholder) | | `-EnumType 0x732c60 'enum mjtButton_'

# (placeholder) | |   `-Enum 0x732bc0 'mjtButton_'

# ElaboratedTypeNode: Unhandled tokens: mjtButton_ 
# (placeholder) | `-FullComment 0x8521f0 <line:63:3, col:100>

# (placeholder) |   `-ParagraphComment 0x8521c0 <col:3, col:100>

# (placeholder) |     `-TextComment 0x852190 <col:3, col:100> Text="---------------------------------- primitive types (mjt) -----------------------------------------"


# (placeholder) |-EnumDecl 0x73cdc8 <line:73:9, line:83:1> line:73:14 mjtEvent_

# (placeholder) | |-EnumConstantDecl 0x73cef8 <line:74:3, col:18> col:3 mjEVENT_NONE 'int'

# (placeholder) | | |-ConstantExpr 0x73ced8 <col:18> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x73ceb8 <col:18> 'int' 0

# (placeholder) | | `-FullComment 0x8522c0 <col:37, col:45>

# (placeholder) | |   `-ParagraphComment 0x852290 <col:37, col:45>

# (placeholder) | |     `-TextComment 0x852260 <col:37, col:45> Text=" no event"

# (placeholder) | |-EnumConstantDecl 0x73cf78 <line:75:3> col:3 mjEVENT_MOVE 'int'

# (placeholder) | | `-FullComment 0x852390 <col:37, col:47>

# (placeholder) | |   `-ParagraphComment 0x852360 <col:37, col:47>

# (placeholder) | |     `-TextComment 0x852330 <col:37, col:47> Text=" mouse move"

# (placeholder) | |-EnumConstantDecl 0x73cff8 <line:76:3> col:3 mjEVENT_PRESS 'int'

# (placeholder) | | `-FullComment 0x852460 <col:37, col:55>

# (placeholder) | |   `-ParagraphComment 0x852430 <col:37, col:55>

# (placeholder) | |     `-TextComment 0x852400 <col:37, col:55> Text=" mouse button press"

# (placeholder) | |-EnumConstantDecl 0x73d078 <line:77:3> col:3 mjEVENT_RELEASE 'int'

# (placeholder) | | `-FullComment 0x852530 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x852500 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x8524d0 <col:37, col:57> Text=" mouse button release"

# (placeholder) | |-EnumConstantDecl 0x73d0f8 <line:78:3> col:3 mjEVENT_SCROLL 'int'

# (placeholder) | | `-FullComment 0x852600 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x8525d0 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x8525a0 <col:37, col:43> Text=" scroll"

# (placeholder) | |-EnumConstantDecl 0x73d178 <line:79:3> col:3 mjEVENT_KEY 'int'

# (placeholder) | | `-FullComment 0x8526d0 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x8526a0 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x852670 <col:37, col:46> Text=" key press"

# (placeholder) | |-EnumConstantDecl 0x73d1f8 <line:80:3> col:3 mjEVENT_RESIZE 'int'

# (placeholder) | | `-FullComment 0x8527a0 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x852770 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x852740 <col:37, col:43> Text=" resize"

# (placeholder) | |-EnumConstantDecl 0x73d278 <line:81:3> col:3 mjEVENT_REDRAW 'int'

# (placeholder) | | `-FullComment 0x852870 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x852840 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x852810 <col:37, col:43> Text=" redraw"

# (placeholder) | `-EnumConstantDecl 0x73d328 <line:82:3> col:3 mjEVENT_FILESDROP 'int'

# (placeholder) |   `-FullComment 0x852940 <col:37, col:47>

# (placeholder) |     `-ParagraphComment 0x852910 <col:37, col:47>

# (placeholder) |       `-TextComment 0x8528e0 <col:37, col:47> Text=" files drop"

alias enum mjtEvent_ : enum mjtEvent_ = ' enum mjtEvent_ ' sugar
# (placeholder) |   `-EnumType 0x73ce70 'enum mjtEvent_'

# (placeholder) |     `-Enum 0x73cdc8 'mjtEvent_'

# ElaboratedTypeNode: Unhandled tokens: mjtEvent_ 

# (placeholder) |-EnumDecl 0x73d448 <line:86:9, line:107:1> line:86:14 mjtItem_

# (placeholder) | |-EnumConstantDecl 0x73d590 <line:87:3, col:17> col:3 mjITEM_END 'int'

# (placeholder) | | |-ConstantExpr 0x73d570 <col:16, col:17> 'int'

# (placeholder) | | | |-value: Int -2

# (placeholder) | | | `-UnaryOperator 0x73d558 <col:16, col:17> 'int' prefix '-'

# (placeholder) | | |   `-IntegerLiteral 0x73d538 <col:17> 'int' 2

# (placeholder) | | `-FullComment 0x852a10 <col:37, col:73>

# (placeholder) | |   `-ParagraphComment 0x8529e0 <col:37, col:73>

# (placeholder) | |     `-TextComment 0x8529b0 <col:37, col:73> Text=" end of definition list (not an item)"

# (placeholder) | |-EnumConstantDecl 0x73d660 <line:88:3, col:21> col:3 mjITEM_SECTION 'int'

# (placeholder) | | |-ConstantExpr 0x73d640 <col:20, col:21> 'int'

# (placeholder) | | | |-value: Int -1

# (placeholder) | | | `-UnaryOperator 0x73d628 <col:20, col:21> 'int' prefix '-'

# (placeholder) | | |   `-IntegerLiteral 0x73d608 <col:21> 'int' 1

# (placeholder) | | `-FullComment 0x852ae0 <col:37, col:58>

# (placeholder) | |   `-ParagraphComment 0x852ab0 <col:37, col:58>

# (placeholder) | |     `-TextComment 0x852a80 <col:37, col:58> Text=" section (not an item)"

# (placeholder) | |-EnumConstantDecl 0x73d718 <line:89:3, col:22> col:3 mjITEM_SEPARATOR 'int'

# (placeholder) | | |-ConstantExpr 0x73d6f8 <col:22> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x73d6d8 <col:22> 'int' 0

# (placeholder) | | `-FullComment 0x852bb0 <col:37, col:46>

# (placeholder) | |   `-ParagraphComment 0x852b80 <col:37, col:46>

# (placeholder) | |     `-TextComment 0x852b50 <col:37, col:46> Text=" separator"

# (placeholder) | |-EnumConstantDecl 0x73d798 <line:90:3> col:3 mjITEM_STATIC 'int'

# (placeholder) | | `-FullComment 0x852c80 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x852c50 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x852c20 <col:37, col:48> Text=" static text"

# (placeholder) | |-EnumConstantDecl 0x73d818 <line:91:3> col:3 mjITEM_BUTTON 'int'

# (placeholder) | | `-FullComment 0x852d50 <col:37, col:43>

# (placeholder) | |   `-ParagraphComment 0x852d20 <col:37, col:43>

# (placeholder) | |     `-TextComment 0x852cf0 <col:37, col:43> Text=" button"

# (placeholder) | |-EnumConstantDecl 0x73d8c8 <line:94:3> col:3 mjITEM_CHECKINT 'int'

# (placeholder) | | `-FullComment 0x852e20 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x852df0 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x852dc0 <col:37, col:57> Text=" check box, int value"

# (placeholder) | |-EnumConstantDecl 0x73d948 <line:95:3> col:3 mjITEM_CHECKBYTE 'int'

# (placeholder) | | `-FullComment 0x852ef0 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x852ec0 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x852e90 <col:37, col:61> Text=" check box, mjtByte value"

# (placeholder) | |-EnumConstantDecl 0x73d9c8 <line:96:3> col:3 mjITEM_RADIO 'int'

# (placeholder) | | `-FullComment 0x852fc0 <col:37, col:48>

# (placeholder) | |   `-ParagraphComment 0x852f90 <col:37, col:48>

# (placeholder) | |     `-TextComment 0x852f60 <col:37, col:48> Text=" radio group"

# (placeholder) | |-EnumConstantDecl 0x73da48 <line:97:3> col:3 mjITEM_RADIOLINE 'int'

# (placeholder) | | `-FullComment 0x853090 <col:37, col:61>

# (placeholder) | |   `-ParagraphComment 0x853060 <col:37, col:61>

# (placeholder) | |     `-TextComment 0x853030 <col:37, col:61> Text=" radio group, single line"

# (placeholder) | |-EnumConstantDecl 0x73dac8 <line:98:3> col:3 mjITEM_SELECT 'int'

# (placeholder) | | `-FullComment 0x853160 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x853130 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x853100 <col:37, col:50> Text=" selection box"

# (placeholder) | |-EnumConstantDecl 0x73db48 <line:99:3> col:3 mjITEM_SLIDERINT 'int'

# (placeholder) | | `-FullComment 0x853230 <col:37, col:54>

# (placeholder) | |   `-ParagraphComment 0x853200 <col:37, col:54>

# (placeholder) | |     `-TextComment 0x8531d0 <col:37, col:54> Text=" slider, int value"

# (placeholder) | |-EnumConstantDecl 0x73dbc8 <line:100:3> col:3 mjITEM_SLIDERNUM 'int'

# (placeholder) | | `-FullComment 0x853300 <col:37, col:57>

# (placeholder) | |   `-ParagraphComment 0x8532d0 <col:37, col:57>

# (placeholder) | |     `-TextComment 0x8532a0 <col:37, col:57> Text=" slider, mjtNum value"

# (placeholder) | |-EnumConstantDecl 0x73dc48 <line:101:3> col:3 mjITEM_EDITINT 'int'

# (placeholder) | | `-FullComment 0x8533d0 <col:37, col:63>

# (placeholder) | |   `-ParagraphComment 0x8533a0 <col:37, col:63>

# (placeholder) | |     `-TextComment 0x853370 <col:37, col:63> Text=" editable array, int values"

# (placeholder) | |-EnumConstantDecl 0x73dcc8 <line:102:3> col:3 mjITEM_EDITNUM 'int'

# (placeholder) | | `-FullComment 0x8534a0 <col:37, col:66>

# (placeholder) | |   `-ParagraphComment 0x853470 <col:37, col:66>

# (placeholder) | |     `-TextComment 0x853440 <col:37, col:66> Text=" editable array, mjtNum values"

# (placeholder) | |-EnumConstantDecl 0x73dd48 <line:103:3> col:3 mjITEM_EDITFLOAT 'int'

# (placeholder) | | `-FullComment 0x853570 <col:37, col:65>

# (placeholder) | |   `-ParagraphComment 0x853540 <col:37, col:65>

# (placeholder) | |     `-TextComment 0x853510 <col:37, col:65> Text=" editable array, float values"

# (placeholder) | |-EnumConstantDecl 0x73ddc8 <line:104:3> col:3 mjITEM_EDITTXT 'int'

# (placeholder) | | `-FullComment 0x853640 <col:37, col:50>

# (placeholder) | |   `-ParagraphComment 0x853610 <col:37, col:50>

# (placeholder) | |     `-TextComment 0x8535e0 <col:37, col:50> Text=" editable text"

# (placeholder) | `-EnumConstantDecl 0x73de78 <line:106:3> col:3 mjNITEM 'int'

# (placeholder) |   `-FullComment 0x853710 <col:37, col:57>

# (placeholder) |     `-ParagraphComment 0x8536e0 <col:37, col:57>

# (placeholder) |       `-TextComment 0x8536b0 <col:37, col:57> Text=" number of item types"

alias enum mjtItem_ : enum mjtItem_ = ' enum mjtItem_ ' sugar
# (placeholder) |   `-EnumType 0x73d4f0 'enum mjtItem_'

# (placeholder) |     `-Enum 0x73d448 'mjtItem_'

# ElaboratedTypeNode: Unhandled tokens: mjtItem_ 

# (placeholder) |-EnumDecl 0x73df98 <line:110:9, line:114:1> line:110:14 mjtSection_

# (placeholder) | |-EnumConstantDecl 0x73e0c8 <line:111:3, col:19> col:3 mjSECT_CLOSED 'int'

# (placeholder) | | |-ConstantExpr 0x73e0a8 <col:19> 'int'

# (placeholder) | | | |-value: Int 0

# (placeholder) | | | `-IntegerLiteral 0x73e088 <col:19> 'int' 0

# (placeholder) | | `-FullComment 0x8537e0 <col:37, col:67>

# (placeholder) | |   `-ParagraphComment 0x8537b0 <col:37, col:67>

# (placeholder) | |     `-TextComment 0x853780 <col:37, col:67> Text=" closed state (regular section)"

# (placeholder) | |-EnumConstantDecl 0x73e148 <line:112:3> col:3 mjSECT_OPEN 'int'

# (placeholder) | | `-FullComment 0x8538b0 <col:37, col:65>

# (placeholder) | |   `-ParagraphComment 0x853880 <col:37, col:65>

# (placeholder) | |     `-TextComment 0x853850 <col:37, col:65> Text=" open state (regular section)"

# (placeholder) | `-EnumConstantDecl 0x73e1f8 <line:113:3> col:3 mjSECT_FIXED 'int'

# (placeholder) |   `-FullComment 0x853980 <col:37, col:73>

# (placeholder) |     `-ParagraphComment 0x853950 <col:37, col:73>

# (placeholder) |       `-TextComment 0x853920 <col:37, col:73> Text=" fixed section: always open, no title"

alias enum mjtSection_ : enum mjtSection_ = ' enum mjtSection_ ' sugar
# (placeholder) |   `-EnumType 0x73e040 'enum mjtSection_'

# (placeholder) |     `-Enum 0x73df98 'mjtSection_'

# ElaboratedTypeNode: Unhandled tokens: mjtSection_ 

alias int (*)(int, void *) = UnsafePointer[
# (placeholder) | | `-ParenType 0x73e480 'int (int, void *)' sugar

# (placeholder) | |   `-FunctionProtoType 0x73e440 'int (int, void *)' cdecl
Int32Int32UnsafePointer[NoneType]
]

# (placeholder) | `-FullComment 0x853a50 <line:117:3, col:64>

# (placeholder) |   `-ParagraphComment 0x853a20 <col:3, col:64>

# (placeholder) |     `-TextComment 0x8539f0 <col:3, col:64> Text=" predicate function: set enable/disable based on item category"

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

	var droppaths: UnsafePointer[const char *]


alias struct mjuiState_ : struct mjuiState_ = mjuiState_mjuiState_
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


alias struct mjuiThemeSpacing_ : struct mjuiThemeSpacing_ = mjuiThemeSpacing_mjuiThemeSpacing_
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


alias struct mjuiThemeColor_ : struct mjuiThemeColor_ = mjuiThemeColor_mjuiThemeColor_
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

struct mjuiItem_:

	var type: Int32

	var name: SIMD[Int8.dtype, 40]

	var state: Int32

	var pdata: UnsafePointer[NoneType]

	var sectionid: Int32

	var itemid: Int32

	var userid: Int32

	var implicit: mjuiItem

	var rect: mjrRect

	var skip: Int32


alias struct mjuiItem_ : struct mjuiItem_ = mjuiItem_mjuiItem_
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


alias struct mjuiSection_ : struct mjuiSection_ = mjuiSection_mjuiSection_
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


alias struct mjUI_ : struct mjUI_ = mjUI_mjUI_
struct mjuiDef_:

	var type: Int32

	var name: SIMD[Int8.dtype, 40]

	var state: Int32

	var pdata: UnsafePointer[NoneType]

	var other: SIMD[Int8.dtype, 300]

	var otherint: Int32


alias struct mjuiDef_ : struct mjuiDef_ = mjuiDef_mjuiDef_

# (placeholder) |-VarDecl 0x74a200 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:45:49> col:22 mju_user_error 'void (*)(const char *)' extern

# (placeholder) | |-VisibilityAttr 0x74a268 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) | `-FullComment 0x85a9c0 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:44:3, col:33>

# (placeholder) |   `-ParagraphComment 0x85a990 <col:3, col:33>

# (placeholder) |     `-TextComment 0x85a960 <col:3, col:33> Text=" user error and memory handlers"

# (placeholder) |-VarDecl 0x74a398 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:46:51> col:22 mju_user_warning 'void (*)(const char *)' extern

# (placeholder) | `-VisibilityAttr 0x74a400 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74a5b8 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:47:45> col:22 mju_user_malloc 'void *(*)(size_t)' extern

# (placeholder) | `-VisibilityAttr 0x74a620 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74a7e0 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:48:42> col:22 mju_user_free 'void (*)(void *)' extern

# (placeholder) | `-VisibilityAttr 0x74a848 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74a920 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:52:26> col:26 mjcb_passive 'mjfGeneric':'void (*)(const mjModel *, mjData *)' extern

# (placeholder) | |-VisibilityAttr 0x74a988 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) | `-FullComment 0x85aa90 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:51:3, col:43>

# (placeholder) |   `-ParagraphComment 0x85aa60 <col:3, col:43>

# (placeholder) |     `-TextComment 0x85aa30 <col:3, col:43> Text=" callbacks extending computation pipeline"

# (placeholder) |-VarDecl 0x74aa10 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:53:26> col:26 mjcb_control 'mjfGeneric':'void (*)(const mjModel *, mjData *)' extern

# (placeholder) | `-VisibilityAttr 0x74aa78 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74ab20 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:54:26> col:26 mjcb_contactfilter 'mjfConFilt':'int (*)(const mjModel *, mjData *, int, int)' extern

# (placeholder) | `-VisibilityAttr 0x74ab88 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74ac30 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:55:26> col:26 mjcb_sensor 'mjfSensor':'void (*)(const mjModel *, mjData *, int)' extern

# (placeholder) | `-VisibilityAttr 0x74ac98 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74ad40 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:56:26> col:26 mjcb_time 'mjfTime':'mjtNum (*)(void)' extern

# (placeholder) | `-VisibilityAttr 0x74ada8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74ae50 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:57:26> col:26 mjcb_act_dyn 'mjfAct':'mjtNum (*)(const mjModel *, const mjData *, int)' extern

# (placeholder) | `-VisibilityAttr 0x74aeb8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74af40 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:58:26> col:26 mjcb_act_gain 'mjfAct':'mjtNum (*)(const mjModel *, const mjData *, int)' extern

# (placeholder) | `-VisibilityAttr 0x74afa8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74b030 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:59:26> col:26 mjcb_act_bias 'mjfAct':'mjtNum (*)(const mjModel *, const mjData *, int)' extern

# (placeholder) | `-VisibilityAttr 0x74b098 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74f3d8 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:63:69> col:27 mjCOLLISIONFUNC 'mjfCollision[9][9]' extern

# (placeholder) | |-VisibilityAttr 0x74f440 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) | `-FullComment 0x85ab60 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:62:3, col:27>

# (placeholder) |   `-ParagraphComment 0x85ab30 <col:3, col:27>

# (placeholder) |     `-TextComment 0x85ab00 <col:3, col:27> Text=" collision function table"

# (placeholder) |-VarDecl 0x74f590 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:67:52> col:26 mjDISABLESTRING 'const char *[17]' extern

# (placeholder) | |-VisibilityAttr 0x74f5f8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) | `-FullComment 0x85ac30 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:66:3, col:15>

# (placeholder) |   `-ParagraphComment 0x85ac00 <col:3, col:15>

# (placeholder) |     `-TextComment 0x85abd0 <col:3, col:15> Text=" string names"

# (placeholder) |-VarDecl 0x74f710 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:68:50> col:26 mjENABLESTRING 'const char *[6]' extern

# (placeholder) | `-VisibilityAttr 0x74f778 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74f890 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:69:48> col:26 mjTIMERSTRING 'const char *[15]' extern

# (placeholder) | `-VisibilityAttr 0x74f8f8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74f9d8 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:70:48> col:26 mjLABELSTRING 'const char *[17]' extern

# (placeholder) | `-VisibilityAttr 0x74fa40 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74fb60 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:71:48> col:26 mjFRAMESTRING 'const char *[8]' extern

# (placeholder) | `-VisibilityAttr 0x74fbc8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74fd70 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:72:51> col:26 mjVISSTRING 'const char *[32][3]' extern

# (placeholder) | `-VisibilityAttr 0x74fdd8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default

# (placeholder) |-VarDecl 0x74ff40 <col:38, /home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h:73:51> col:26 mjRNDSTRING 'const char *[10][3]' extern

# (placeholder) | `-VisibilityAttr 0x74ffa8 </home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mjexport.h:24:54, col:75> Default
alias mj_defaultVFS = fn(vfs: UnsafePointer[mjVFS]) -> NoneType
alias mj_addFileVFS = fn(vfs: UnsafePointer[mjVFS], read directory: UnsafePointer[Int8], read filename: UnsafePointer[Int8]) -> Int32
alias mj_addBufferVFS = fn(vfs: UnsafePointer[mjVFS], read name: UnsafePointer[Int8], read buffer: UnsafePointer[NoneType], nbuffer: Int32) -> Int32
alias mj_deleteFileVFS = fn(vfs: UnsafePointer[mjVFS], read filename: UnsafePointer[Int8]) -> Int32
alias mj_deleteVFS = fn(vfs: UnsafePointer[mjVFS]) -> NoneType
alias mj_loadXML = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> mjModel *(const char *, const mjVFS *, char *, int)
alias mj_parseXML = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> mjSpec *(const char *, const mjVFS *, char *, int)
alias mj_parseXMLString = fn(read xml: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS], error: UnsafePointer[Int8], error_sz: Int32) -> mjSpec *(const char *, const mjVFS *, char *, int)
alias mj_compile = fn(s: UnsafePointer[mjSpec], read vfs: UnsafePointer[mjVFS]) -> mjModel *(mjSpec *, const mjVFS *)
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
alias mj_copyModel = fn(dest: UnsafePointer[mjModel], read src: UnsafePointer[mjModel]) -> mjModel *(mjModel *, const mjModel *)
alias mj_saveModel = fn(read m: UnsafePointer[mjModel], read filename: UnsafePointer[Int8], buffer: UnsafePointer[NoneType], buffer_sz: Int32) -> NoneType
alias mj_loadModel = fn(read filename: UnsafePointer[Int8], read vfs: UnsafePointer[mjVFS]) -> mjModel *(const char *, const mjVFS *)
alias mj_deleteModel = fn(m: UnsafePointer[mjModel]) -> NoneType
alias mj_sizeModel = fn(read m: UnsafePointer[mjModel]) -> Int32
alias mj_makeData = fn(read m: UnsafePointer[mjModel]) -> mjData *(const mjModel *)
alias mj_copyData = fn(dest: UnsafePointer[mjData], read m: UnsafePointer[mjModel], read src: UnsafePointer[mjData]) -> mjData *(mjData *, const mjModel *, const mjData *)
alias mj_resetData = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_resetDataDebug = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], debug_value: Int8) -> NoneType
alias mj_resetDataKeyframe = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], key: Int32) -> NoneType
alias mj_markStack = fn(d: UnsafePointer[mjData]) -> NoneType
alias mj_freeStack = fn(d: UnsafePointer[mjData]) -> NoneType
alias mj_stackAllocByte = fn(d: UnsafePointer[mjData], bytes: size_t : long, alignment: size_t : long) -> void *(mjData *, size_t, size_t)
alias mj_stackAllocNum = fn(d: UnsafePointer[mjData], size: size_t : long) -> mjtNum *(mjData *, size_t)
alias mj_stackAllocInt = fn(d: UnsafePointer[mjData], size: size_t : long) -> int *(mjData *, size_t)
alias mj_deleteData = fn(d: UnsafePointer[mjData]) -> NoneType
alias mj_resetCallbacks = fn() -> NoneType
alias mj_setConst = fn(m: UnsafePointer[mjModel], d: UnsafePointer[mjData]) -> NoneType
alias mj_setLengthRange = fn(m: UnsafePointer[mjModel], d: UnsafePointer[mjData], index: Int32, read opt: UnsafePointer[mjLROpt], error: UnsafePointer[Int8], error_sz: Int32) -> Int32
alias mj_makeSpec = fn() -> mjSpec *(void)
alias mj_copySpec = fn(read s: UnsafePointer[mjSpec]) -> mjSpec *(const mjSpec *)
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
alias mj_constraintUpdate = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read jar: UnsafePointer[mjtNum], cost: UnsafePointer[mjtNum  : mjtNum], flg_coneHessian: Int32) -> NoneType
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
alias mj_jac = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], read point: UnsafePointer[mjtNum  : mjtNum], body: Int32) -> NoneType
alias mj_jacBody = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_jacBodyCom = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_jacSubtreeCom = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_jacGeom = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], geom: Int32) -> NoneType
alias mj_jacSite = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], site: Int32) -> NoneType
alias mj_jacPointAxis = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], jacPoint: UnsafePointer[mjtNum], jacAxis: UnsafePointer[mjtNum], read point: UnsafePointer[mjtNum  : mjtNum], read axis: UnsafePointer[mjtNum  : mjtNum], body: Int32) -> NoneType
alias mj_jacDot = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], jacp: UnsafePointer[mjtNum], jacr: UnsafePointer[mjtNum], read point: UnsafePointer[mjtNum  : mjtNum], body: Int32) -> NoneType
alias mj_angmomMat = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], mat: UnsafePointer[mjtNum], body: Int32) -> NoneType
alias mj_name2id = fn(read m: UnsafePointer[mjModel], type: Int32, read name: UnsafePointer[Int8]) -> Int32
alias mj_id2name = fn(read m: UnsafePointer[mjModel], type: Int32, id: Int32) -> const char *(const mjModel *, int, int)
alias mj_fullM = fn(read m: UnsafePointer[mjModel], dst: UnsafePointer[mjtNum], read M: UnsafePointer[mjtNum]) -> NoneType
alias mj_mulM = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mj_mulM2 = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum]) -> NoneType
alias mj_addM = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], dst: UnsafePointer[mjtNum], rownnz: UnsafePointer[Int32], rowadr: UnsafePointer[Int32], colind: UnsafePointer[Int32]) -> NoneType
alias mj_applyFT = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read force: UnsafePointer[mjtNum  : mjtNum], read torque: UnsafePointer[mjtNum  : mjtNum], read point: UnsafePointer[mjtNum  : mjtNum], body: Int32, qfrc_target: UnsafePointer[mjtNum]) -> NoneType
alias mj_objectVelocity = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], objtype: Int32, objid: Int32, res: UnsafePointer[mjtNum  : mjtNum], flg_local: Int32) -> NoneType
alias mj_objectAcceleration = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], objtype: Int32, objid: Int32, res: UnsafePointer[mjtNum  : mjtNum], flg_local: Int32) -> NoneType
alias mj_geomDistance = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], geom1: Int32, geom2: Int32, distmax: mjtNum : double, fromto: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mj_contactForce = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], id: Int32, result: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mj_differentiatePos = fn(read m: UnsafePointer[mjModel], qvel: UnsafePointer[mjtNum], dt: mjtNum : double, read qpos1: UnsafePointer[mjtNum], read qpos2: UnsafePointer[mjtNum]) -> NoneType
alias mj_integratePos = fn(read m: UnsafePointer[mjModel], qpos: UnsafePointer[mjtNum], read qvel: UnsafePointer[mjtNum], dt: mjtNum : double) -> NoneType
alias mj_normalizeQuat = fn(read m: UnsafePointer[mjModel], qpos: UnsafePointer[mjtNum]) -> NoneType
alias mj_local2Global = fn(d: UnsafePointer[mjData], xpos: UnsafePointer[mjtNum  : mjtNum], xmat: UnsafePointer[mjtNum  : mjtNum], read pos: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum], body: Int32, sameframe: mjtByte : char) -> NoneType
alias mj_getTotalmass = fn(read m: UnsafePointer[mjModel]) -> mjtNum
alias mj_setTotalmass = fn(m: UnsafePointer[mjModel], newmass: mjtNum : double) -> NoneType
alias mj_getPluginConfig = fn(read m: UnsafePointer[mjModel], plugin_id: Int32, read attrib: UnsafePointer[Int8]) -> const char *(const mjModel *, int, const char *)
alias mj_loadPluginLibrary = fn(read path: UnsafePointer[Int8]) -> NoneType
alias mj_loadAllPluginLibraries = fn(read directory: UnsafePointer[Int8], callback: UnsafePointer[mjfPluginLibraryLoadCallback : void (*)(const char , int, int)]) -> NoneType
alias mj_version = fn() -> Int32
alias mj_versionString = fn() -> const char *(void)
alias mj_multiRay = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read pnt: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum], read geomgroup: UnsafePointer[mjtByte], flg_static: mjtByte : char, bodyexclude: Int32, geomid: UnsafePointer[Int32], dist: UnsafePointer[mjtNum], nray: Int32, cutoff: mjtNum : double) -> NoneType
alias mj_ray = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read pnt: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum], read geomgroup: UnsafePointer[mjtByte], flg_static: mjtByte : char, bodyexclude: Int32, geomid: UnsafePointer[int  : int]) -> mjtNum
alias mj_rayHfield = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], geomid: Int32, read pnt: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mj_rayMesh = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], geomid: Int32, read pnt: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_rayGeom = fn(read pos: UnsafePointer[mjtNum  : mjtNum], read mat: UnsafePointer[mjtNum  : mjtNum], read size: UnsafePointer[mjtNum  : mjtNum], read pnt: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum], geomtype: Int32) -> mjtNum
alias mju_rayFlex = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], flex_layer: Int32, flg_vert: mjtByte : char, flg_edge: mjtByte : char, flg_face: mjtByte : char, flg_skin: mjtByte : char, flexid: Int32, read pnt: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], vertid: UnsafePointer[int  : int]) -> mjtNum
alias mju_raySkin = fn(nface: Int32, nvert: Int32, read face: UnsafePointer[Int32], read vert: UnsafePointer[Float32], read pnt: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum], vertid: UnsafePointer[int  : int]) -> mjtNum
alias mjv_defaultCamera = fn(cam: UnsafePointer[mjvCamera]) -> NoneType
alias mjv_defaultFreeCamera = fn(read m: UnsafePointer[mjModel], cam: UnsafePointer[mjvCamera]) -> NoneType
alias mjv_defaultPerturb = fn(pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_room2model = fn(modelpos: UnsafePointer[mjtNum  : mjtNum], modelquat: UnsafePointer[mjtNum  : mjtNum], read roompos: UnsafePointer[mjtNum  : mjtNum], read roomquat: UnsafePointer[mjtNum  : mjtNum], read scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_model2room = fn(roompos: UnsafePointer[mjtNum  : mjtNum], roomquat: UnsafePointer[mjtNum  : mjtNum], read modelpos: UnsafePointer[mjtNum  : mjtNum], read modelquat: UnsafePointer[mjtNum  : mjtNum], read scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_cameraInModel = fn(headpos: UnsafePointer[mjtNum  : mjtNum], forward: UnsafePointer[mjtNum  : mjtNum], up: UnsafePointer[mjtNum  : mjtNum], read scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_cameraInRoom = fn(headpos: UnsafePointer[mjtNum  : mjtNum], forward: UnsafePointer[mjtNum  : mjtNum], up: UnsafePointer[mjtNum  : mjtNum], read scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_frustumHeight = fn(read scn: UnsafePointer[mjvScene]) -> mjtNum
alias mjv_alignToCamera = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum], read forward: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mjv_moveCamera = fn(read m: UnsafePointer[mjModel], action: Int32, reldx: mjtNum : double, reldy: mjtNum : double, read scn: UnsafePointer[mjvScene], cam: UnsafePointer[mjvCamera]) -> NoneType
alias mjv_moveCameraFromState = fn(read scnstate: UnsafePointer[mjvSceneState], action: Int32, reldx: mjtNum : double, reldy: mjtNum : double, read scn: UnsafePointer[mjvScene], cam: UnsafePointer[mjvCamera]) -> NoneType
alias mjv_movePerturb = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], action: Int32, reldx: mjtNum : double, reldy: mjtNum : double, read scn: UnsafePointer[mjvScene], pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_movePerturbFromState = fn(read scnstate: UnsafePointer[mjvSceneState], action: Int32, reldx: mjtNum : double, reldy: mjtNum : double, read scn: UnsafePointer[mjvScene], pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_moveModel = fn(read m: UnsafePointer[mjModel], action: Int32, reldx: mjtNum : double, reldy: mjtNum : double, read roomup: UnsafePointer[mjtNum  : mjtNum], scn: UnsafePointer[mjvScene]) -> NoneType
alias mjv_initPerturb = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read scn: UnsafePointer[mjvScene], pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_applyPerturbPose = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read pert: UnsafePointer[mjvPerturb], flg_paused: Int32) -> NoneType
alias mjv_applyPerturbForce = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], read pert: UnsafePointer[mjvPerturb]) -> NoneType
alias mjv_averageCamera = fn(read cam1: UnsafePointer[mjvGLCamera], read cam2: UnsafePointer[mjvGLCamera]) -> mjvGLCamera
alias mjv_select = fn(read m: UnsafePointer[mjModel], read d: UnsafePointer[mjData], read vopt: UnsafePointer[mjvOption], aspectratio: mjtNum : double, relx: mjtNum : double, rely: mjtNum : double, read scn: UnsafePointer[mjvScene], selpnt: UnsafePointer[mjtNum  : mjtNum], geomid: UnsafePointer[int  : int], flexid: UnsafePointer[int  : int], skinid: UnsafePointer[int  : int]) -> Int32
alias mjv_defaultOption = fn(opt: UnsafePointer[mjvOption]) -> NoneType
alias mjv_defaultFigure = fn(fig: UnsafePointer[mjvFigure]) -> NoneType
alias mjv_initGeom = fn(geom: UnsafePointer[mjvGeom], type: Int32, read size: UnsafePointer[mjtNum  : mjtNum], read pos: UnsafePointer[mjtNum  : mjtNum], read mat: UnsafePointer[mjtNum  : mjtNum], read rgba: UnsafePointer[float  : float]) -> NoneType
alias mjv_connector = fn(geom: UnsafePointer[mjvGeom], type: Int32, width: mjtNum : double, read from: UnsafePointer[mjtNum  : mjtNum], read to: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
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
alias mjr_readPixels = fn(rgb: UnsafePointer[Int8], depth: UnsafePointer[Float32], viewport: mjrRect : struct mjrRect_, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_drawPixels = fn(read rgb: UnsafePointer[Int8], read depth: UnsafePointer[Float32], viewport: mjrRect : struct mjrRect_, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_blitBuffer = fn(src: mjrRect : struct mjrRect_, dst: mjrRect : struct mjrRect_, flg_color: Int32, flg_depth: Int32, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_setAux = fn(index: Int32, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_blitAux = fn(index: Int32, src: mjrRect : struct mjrRect_, left: Int32, bottom: Int32, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_text = fn(font: Int32, read txt: UnsafePointer[Int8], read con: UnsafePointer[mjrContext], x: Float32, y: Float32, r: Float32, g: Float32, b: Float32) -> NoneType
alias mjr_overlay = fn(font: Int32, gridpos: Int32, viewport: mjrRect : struct mjrRect_, read overlay: UnsafePointer[Int8], read overlay2: UnsafePointer[Int8], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_maxViewport = fn(read con: UnsafePointer[mjrContext]) -> mjrRect
alias mjr_rectangle = fn(viewport: mjrRect : struct mjrRect_, r: Float32, g: Float32, b: Float32, a: Float32) -> NoneType
alias mjr_label = fn(viewport: mjrRect : struct mjrRect_, font: Int32, read txt: UnsafePointer[Int8], r: Float32, g: Float32, b: Float32, a: Float32, rt: Float32, gt: Float32, bt: Float32, read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_figure = fn(viewport: mjrRect : struct mjrRect_, fig: UnsafePointer[mjvFigure], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_render = fn(viewport: mjrRect : struct mjrRect_, scn: UnsafePointer[mjvScene], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjr_finish = fn() -> NoneType
alias mjr_getError = fn() -> Int32
alias mjr_findRect = fn(x: Int32, y: Int32, nrect: Int32, read rect: UnsafePointer[mjrRect]) -> Int32
alias mjui_themeSpacing = fn(ind: Int32) -> mjuiThemeSpacing
alias mjui_themeColor = fn(ind: Int32) -> mjuiThemeColor
alias mjui_add = fn(ui: UnsafePointer[mjUI], read def: UnsafePointer[mjuiDef]) -> NoneType
alias mjui_addToSection = fn(ui: UnsafePointer[mjUI], sect: Int32, read def: UnsafePointer[mjuiDef]) -> NoneType
alias mjui_resize = fn(ui: UnsafePointer[mjUI], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjui_update = fn(section: Int32, item: Int32, read ui: UnsafePointer[mjUI], read state: UnsafePointer[mjuiState], read con: UnsafePointer[mjrContext]) -> NoneType
alias mjui_event = fn(ui: UnsafePointer[mjUI], state: UnsafePointer[mjuiState], read con: UnsafePointer[mjrContext]) -> mjuiItem *(mjUI *, mjuiState *, const mjrContext *)
alias mjui_render = fn(ui: UnsafePointer[mjUI], read state: UnsafePointer[mjuiState], read con: UnsafePointer[mjrContext]) -> NoneType
alias mju_error = fn(read msg: UnsafePointer[Int8]) -> NoneType
alias mju_error_i = fn(read msg: UnsafePointer[Int8], i: Int32) -> NoneType
alias mju_error_s = fn(read msg: UnsafePointer[Int8], read text: UnsafePointer[Int8]) -> NoneType
alias mju_warning = fn(read msg: UnsafePointer[Int8]) -> NoneType
alias mju_warning_i = fn(read msg: UnsafePointer[Int8], i: Int32) -> NoneType
alias mju_warning_s = fn(read msg: UnsafePointer[Int8], read text: UnsafePointer[Int8]) -> NoneType
alias mju_clearHandlers = fn() -> NoneType
alias mju_malloc = fn(size: size_t : long) -> void *(size_t)
alias mju_free = fn(ptr: UnsafePointer[NoneType]) -> NoneType
alias mj_warning = fn(d: UnsafePointer[mjData], warning: Int32, info: Int32) -> NoneType
alias mju_writeLog = fn(read type: UnsafePointer[Int8], read msg: UnsafePointer[Int8]) -> NoneType
alias mjs_getError = fn(s: UnsafePointer[mjSpec]) -> const char *(mjSpec *)
alias mjs_isWarning = fn(s: UnsafePointer[mjSpec]) -> Int32
alias mju_zero3 = fn(res: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_copy3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read data: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_scl3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum], scl: mjtNum : double) -> NoneType
alias mju_add3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec1: UnsafePointer[mjtNum  : mjtNum], read vec2: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_sub3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec1: UnsafePointer[mjtNum  : mjtNum], read vec2: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_addTo3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_subFrom3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_addToScl3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum], scl: mjtNum : double) -> NoneType
alias mju_addScl3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec1: UnsafePointer[mjtNum  : mjtNum], read vec2: UnsafePointer[mjtNum  : mjtNum], scl: mjtNum : double) -> NoneType
alias mju_normalize3 = fn(vec: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_norm3 = fn(read vec: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_dot3 = fn(read vec1: UnsafePointer[mjtNum  : mjtNum], read vec2: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_dist3 = fn(read pos1: UnsafePointer[mjtNum  : mjtNum], read pos2: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_mulMatVec3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read mat: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_mulMatTVec3 = fn(res: UnsafePointer[mjtNum  : mjtNum], read mat: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_cross = fn(res: UnsafePointer[mjtNum  : mjtNum], read a: UnsafePointer[mjtNum  : mjtNum], read b: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_zero4 = fn(res: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_unit4 = fn(res: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_copy4 = fn(res: UnsafePointer[mjtNum  : mjtNum], read data: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_normalize4 = fn(vec: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_zero = fn(res: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_fill = fn(res: UnsafePointer[mjtNum], val: mjtNum : double, n: Int32) -> NoneType
alias mju_copy = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_sum = fn(read vec: UnsafePointer[mjtNum], n: Int32) -> mjtNum
alias mju_L1 = fn(read vec: UnsafePointer[mjtNum], n: Int32) -> mjtNum
alias mju_scl = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], scl: mjtNum : double, n: Int32) -> NoneType
alias mju_add = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_sub = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_addTo = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_subFrom = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_addToScl = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], scl: mjtNum : double, n: Int32) -> NoneType
alias mju_addScl = fn(res: UnsafePointer[mjtNum], read vec1: UnsafePointer[mjtNum], read vec2: UnsafePointer[mjtNum], scl: mjtNum : double, n: Int32) -> NoneType
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
alias mju_transformSpatial = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum], flg_force: Int32, read newpos: UnsafePointer[mjtNum  : mjtNum], read oldpos: UnsafePointer[mjtNum  : mjtNum], read rotnew2old: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_dense2sparse = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], nr: Int32, nc: Int32, rownnz: UnsafePointer[Int32], rowadr: UnsafePointer[Int32], colind: UnsafePointer[Int32], nnz: Int32) -> Int32
alias mju_sparse2dense = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], nr: Int32, nc: Int32, read rownnz: UnsafePointer[Int32], read rowadr: UnsafePointer[Int32], read colind: UnsafePointer[Int32]) -> NoneType
alias mju_rotVecQuat = fn(res: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_negQuat = fn(res: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_mulQuat = fn(res: UnsafePointer[mjtNum  : mjtNum], read quat1: UnsafePointer[mjtNum  : mjtNum], read quat2: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_mulQuatAxis = fn(res: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum], read axis: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_axisAngle2Quat = fn(res: UnsafePointer[mjtNum  : mjtNum], read axis: UnsafePointer[mjtNum  : mjtNum], angle: mjtNum : double) -> NoneType
alias mju_quat2Vel = fn(res: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum], dt: mjtNum : double) -> NoneType
alias mju_subQuat = fn(res: UnsafePointer[mjtNum  : mjtNum], read qa: UnsafePointer[mjtNum  : mjtNum], read qb: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_quat2Mat = fn(res: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_mat2Quat = fn(quat: UnsafePointer[mjtNum  : mjtNum], read mat: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_derivQuat = fn(res: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum], read vel: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_quatIntegrate = fn(quat: UnsafePointer[mjtNum  : mjtNum], read vel: UnsafePointer[mjtNum  : mjtNum], scale: mjtNum : double) -> NoneType
alias mju_quatZ2Vec = fn(quat: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_mat2Rot = fn(quat: UnsafePointer[mjtNum  : mjtNum], read mat: UnsafePointer[mjtNum  : mjtNum]) -> Int32
alias mju_euler2Quat = fn(quat: UnsafePointer[mjtNum  : mjtNum], read euler: UnsafePointer[mjtNum  : mjtNum], read seq: UnsafePointer[Int8]) -> NoneType
alias mju_mulPose = fn(posres: UnsafePointer[mjtNum  : mjtNum], quatres: UnsafePointer[mjtNum  : mjtNum], read pos1: UnsafePointer[mjtNum  : mjtNum], read quat1: UnsafePointer[mjtNum  : mjtNum], read pos2: UnsafePointer[mjtNum  : mjtNum], read quat2: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_negPose = fn(posres: UnsafePointer[mjtNum  : mjtNum], quatres: UnsafePointer[mjtNum  : mjtNum], read pos: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_trnVecPose = fn(res: UnsafePointer[mjtNum  : mjtNum], read pos: UnsafePointer[mjtNum  : mjtNum], read quat: UnsafePointer[mjtNum  : mjtNum], read vec: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mju_cholFactor = fn(mat: UnsafePointer[mjtNum], n: Int32, mindiag: mjtNum : double) -> Int32
alias mju_cholSolve = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_cholUpdate = fn(mat: UnsafePointer[mjtNum], x: UnsafePointer[mjtNum], n: Int32, flg_plus: Int32) -> Int32
alias mju_cholFactorBand = fn(mat: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32, diagadd: mjtNum : double, diagmul: mjtNum : double) -> mjtNum
alias mju_cholSolveBand = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32) -> NoneType
alias mju_band2Dense = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32, flg_sym: mjtByte : char) -> NoneType
alias mju_dense2Band = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32) -> NoneType
alias mju_bandMulMatVec = fn(res: UnsafePointer[mjtNum], read mat: UnsafePointer[mjtNum], read vec: UnsafePointer[mjtNum], ntotal: Int32, nband: Int32, ndense: Int32, nvec: Int32, flg_sym: mjtByte : char) -> NoneType
alias mju_bandDiag = fn(i: Int32, ntotal: Int32, nband: Int32, ndense: Int32) -> Int32
alias mju_eig3 = fn(eigval: UnsafePointer[mjtNum  : mjtNum], eigvec: UnsafePointer[mjtNum  : mjtNum], quat: UnsafePointer[mjtNum  : mjtNum], read mat: UnsafePointer[mjtNum  : mjtNum]) -> Int32
alias mju_boxQP = fn(res: UnsafePointer[mjtNum], R: UnsafePointer[mjtNum], index: UnsafePointer[Int32], read H: UnsafePointer[mjtNum], read g: UnsafePointer[mjtNum], n: Int32, read lower: UnsafePointer[mjtNum], read upper: UnsafePointer[mjtNum]) -> Int32
alias mju_boxQPmalloc = fn(res: UnsafePointer[UnsafePointer[mjtNum]], R: UnsafePointer[UnsafePointer[mjtNum]], index: UnsafePointer[UnsafePointer[Int32]], H: UnsafePointer[UnsafePointer[mjtNum]], g: UnsafePointer[UnsafePointer[mjtNum]], n: Int32, lower: UnsafePointer[UnsafePointer[mjtNum]], upper: UnsafePointer[UnsafePointer[mjtNum]]) -> NoneType
alias mju_muscleGain = fn(len: mjtNum : double, vel: mjtNum : double, read lengthrange: UnsafePointer[mjtNum  : mjtNum], acc0: mjtNum : double, read prm: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_muscleBias = fn(len: mjtNum : double, read lengthrange: UnsafePointer[mjtNum  : mjtNum], acc0: mjtNum : double, read prm: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_muscleDynamics = fn(ctrl: mjtNum : double, act: mjtNum : double, read prm: UnsafePointer[mjtNum  : mjtNum]) -> mjtNum
alias mju_encodePyramid = fn(pyramid: UnsafePointer[mjtNum], read force: UnsafePointer[mjtNum], read mu: UnsafePointer[mjtNum], dim: Int32) -> NoneType
alias mju_decodePyramid = fn(force: UnsafePointer[mjtNum], read pyramid: UnsafePointer[mjtNum], read mu: UnsafePointer[mjtNum], dim: Int32) -> NoneType
alias mju_springDamper = fn(pos0: mjtNum : double, vel0: mjtNum : double, Kp: mjtNum : double, Kv: mjtNum : double, dt: mjtNum : double) -> mjtNum
alias mju_min = fn(a: mjtNum : double, b: mjtNum : double) -> mjtNum
alias mju_max = fn(a: mjtNum : double, b: mjtNum : double) -> mjtNum
alias mju_clip = fn(x: mjtNum : double, min: mjtNum : double, max: mjtNum : double) -> mjtNum
alias mju_sign = fn(x: mjtNum : double) -> mjtNum
alias mju_round = fn(x: mjtNum : double) -> Int32
alias mju_type2Str = fn(type: Int32) -> const char *(int)
alias mju_str2Type = fn(read str: UnsafePointer[Int8]) -> Int32
alias mju_writeNumBytes = fn(nbytes: size_t : long) -> const char *(size_t)
alias mju_warningText = fn(warning: Int32, info: size_t : long) -> const char *(int, size_t)
alias mju_isBad = fn(x: mjtNum : double) -> Int32
alias mju_isZero = fn(vec: UnsafePointer[mjtNum], n: Int32) -> Int32
alias mju_standardNormal = fn(num2: UnsafePointer[mjtNum]) -> mjtNum
alias mju_f2n = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[Float32], n: Int32) -> NoneType
alias mju_n2f = fn(res: UnsafePointer[Float32], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_d2n = fn(res: UnsafePointer[mjtNum], read vec: UnsafePointer[Float64], n: Int32) -> NoneType
alias mju_n2d = fn(res: UnsafePointer[Float64], read vec: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_insertionSort = fn(list: UnsafePointer[mjtNum], n: Int32) -> NoneType
alias mju_insertionSortInt = fn(list: UnsafePointer[Int32], n: Int32) -> NoneType
alias mju_Halton = fn(index: Int32, base: Int32) -> mjtNum
alias mju_strncpy = fn(dst: UnsafePointer[Int8], read src: UnsafePointer[Int8], n: Int32) -> char *(char *, const char *, int)
alias mju_sigmoid = fn(x: mjtNum : double) -> mjtNum
alias mjd_transitionFD = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], eps: mjtNum : double, flg_centered: mjtByte : char, A: UnsafePointer[mjtNum], B: UnsafePointer[mjtNum], C: UnsafePointer[mjtNum], D: UnsafePointer[mjtNum]) -> NoneType
alias mjd_inverseFD = fn(read m: UnsafePointer[mjModel], d: UnsafePointer[mjData], eps: mjtNum : double, flg_actuation: mjtByte : char, DfDq: UnsafePointer[mjtNum], DfDv: UnsafePointer[mjtNum], DfDa: UnsafePointer[mjtNum], DsDq: UnsafePointer[mjtNum], DsDv: UnsafePointer[mjtNum], DsDa: UnsafePointer[mjtNum], DmDq: UnsafePointer[mjtNum]) -> NoneType
alias mjd_subQuat = fn(read qa: UnsafePointer[mjtNum  : mjtNum], read qb: UnsafePointer[mjtNum  : mjtNum], Da: UnsafePointer[mjtNum  : mjtNum], Db: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mjd_quatIntegrate = fn(read vel: UnsafePointer[mjtNum  : mjtNum], scale: mjtNum : double, Dquat: UnsafePointer[mjtNum  : mjtNum], Dvel: UnsafePointer[mjtNum  : mjtNum], Dscale: UnsafePointer[mjtNum  : mjtNum]) -> NoneType
alias mjp_defaultPlugin = fn(plugin: UnsafePointer[mjpPlugin]) -> NoneType
alias mjp_registerPlugin = fn(read plugin: UnsafePointer[mjpPlugin]) -> Int32
alias mjp_pluginCount = fn() -> Int32
alias mjp_getPlugin = fn(read name: UnsafePointer[Int8], slot: UnsafePointer[Int32]) -> const mjpPlugin *(const char *, int *)
alias mjp_getPluginAtSlot = fn(slot: Int32) -> const mjpPlugin *(int)
alias mjp_defaultResourceProvider = fn(provider: UnsafePointer[mjpResourceProvider]) -> NoneType
alias mjp_registerResourceProvider = fn(read provider: UnsafePointer[mjpResourceProvider]) -> Int32
alias mjp_resourceProviderCount = fn() -> Int32
alias mjp_getResourceProvider = fn(read resource_name: UnsafePointer[Int8]) -> const mjpResourceProvider *(const char *)
alias mjp_getResourceProviderAtSlot = fn(slot: Int32) -> const mjpResourceProvider *(int)
alias mju_threadPoolCreate = fn(number_of_threads: size_t : long) -> mjThreadPool *(size_t)
alias mju_bindThreadPool = fn(d: UnsafePointer[mjData], thread_pool: UnsafePointer[NoneType]) -> NoneType
alias mju_threadPoolEnqueue = fn(thread_pool: UnsafePointer[mjThreadPool], task: UnsafePointer[mjTask]) -> NoneType
alias mju_threadPoolDestroy = fn(thread_pool: UnsafePointer[mjThreadPool]) -> NoneType
alias mju_defaultTask = fn(task: UnsafePointer[mjTask]) -> NoneType
alias mju_taskJoin = fn(task: UnsafePointer[mjTask]) -> NoneType
alias mjs_attach = fn(parent: UnsafePointer[mjsElement], read child: UnsafePointer[mjsElement], read prefix: UnsafePointer[Int8], read suffix: UnsafePointer[Int8]) -> mjsElement *(mjsElement *, const mjsElement *, const char *, const char *)
alias mjs_detachBody = fn(s: UnsafePointer[mjSpec], b: UnsafePointer[mjsBody]) -> Int32
alias mjs_detachDefault = fn(s: UnsafePointer[mjSpec], d: UnsafePointer[mjsDefault]) -> Int32
alias mjs_addBody = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> mjsBody *(mjsBody *, const mjsDefault *)
alias mjs_addSite = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> mjsSite *(mjsBody *, const mjsDefault *)
alias mjs_addJoint = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> mjsJoint *(mjsBody *, const mjsDefault *)
alias mjs_addFreeJoint = fn(body: UnsafePointer[mjsBody]) -> mjsJoint *(mjsBody *)
alias mjs_addGeom = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> mjsGeom *(mjsBody *, const mjsDefault *)
alias mjs_addCamera = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> mjsCamera *(mjsBody *, const mjsDefault *)
alias mjs_addLight = fn(body: UnsafePointer[mjsBody], read def: UnsafePointer[mjsDefault]) -> mjsLight *(mjsBody *, const mjsDefault *)
alias mjs_addFrame = fn(body: UnsafePointer[mjsBody], parentframe: UnsafePointer[mjsFrame]) -> mjsFrame *(mjsBody *, mjsFrame *)
alias mjs_delete = fn(element: UnsafePointer[mjsElement]) -> Int32
alias mjs_addActuator = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> mjsActuator *(mjSpec *, const mjsDefault *)
alias mjs_addSensor = fn(s: UnsafePointer[mjSpec]) -> mjsSensor *(mjSpec *)
alias mjs_addFlex = fn(s: UnsafePointer[mjSpec]) -> mjsFlex *(mjSpec *)
alias mjs_addPair = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> mjsPair *(mjSpec *, const mjsDefault *)
alias mjs_addExclude = fn(s: UnsafePointer[mjSpec]) -> mjsExclude *(mjSpec *)
alias mjs_addEquality = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> mjsEquality *(mjSpec *, const mjsDefault *)
alias mjs_addTendon = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> mjsTendon *(mjSpec *, const mjsDefault *)
alias mjs_wrapSite = fn(tendon: UnsafePointer[mjsTendon], read name: UnsafePointer[Int8]) -> mjsWrap *(mjsTendon *, const char *)
alias mjs_wrapGeom = fn(tendon: UnsafePointer[mjsTendon], read name: UnsafePointer[Int8], read sidesite: UnsafePointer[Int8]) -> mjsWrap *(mjsTendon *, const char *, const char *)
alias mjs_wrapJoint = fn(tendon: UnsafePointer[mjsTendon], read name: UnsafePointer[Int8], coef: Float64) -> mjsWrap *(mjsTendon *, const char *, double)
alias mjs_wrapPulley = fn(tendon: UnsafePointer[mjsTendon], divisor: Float64) -> mjsWrap *(mjsTendon *, double)
alias mjs_addNumeric = fn(s: UnsafePointer[mjSpec]) -> mjsNumeric *(mjSpec *)
alias mjs_addText = fn(s: UnsafePointer[mjSpec]) -> mjsText *(mjSpec *)
alias mjs_addTuple = fn(s: UnsafePointer[mjSpec]) -> mjsTuple *(mjSpec *)
alias mjs_addKey = fn(s: UnsafePointer[mjSpec]) -> mjsKey *(mjSpec *)
alias mjs_addPlugin = fn(s: UnsafePointer[mjSpec]) -> mjsPlugin *(mjSpec *)
alias mjs_addDefault = fn(s: UnsafePointer[mjSpec], read classname: UnsafePointer[Int8], read parent: UnsafePointer[mjsDefault]) -> mjsDefault *(mjSpec *, const char *, const mjsDefault *)
alias mjs_addMesh = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> mjsMesh *(mjSpec *, const mjsDefault *)
alias mjs_addHField = fn(s: UnsafePointer[mjSpec]) -> mjsHField *(mjSpec *)
alias mjs_addSkin = fn(s: UnsafePointer[mjSpec]) -> mjsSkin *(mjSpec *)
alias mjs_addTexture = fn(s: UnsafePointer[mjSpec]) -> mjsTexture *(mjSpec *)
alias mjs_addMaterial = fn(s: UnsafePointer[mjSpec], read def: UnsafePointer[mjsDefault]) -> mjsMaterial *(mjSpec *, const mjsDefault *)
alias mjs_getSpec = fn(element: UnsafePointer[mjsElement]) -> mjSpec *(mjsElement *)
alias mjs_findSpec = fn(spec: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> mjSpec *(mjSpec *, const char *)
alias mjs_findBody = fn(s: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> mjsBody *(mjSpec *, const char *)
alias mjs_findElement = fn(s: UnsafePointer[mjSpec], type: mjtObj : enum mjtObj_, read name: UnsafePointer[Int8]) -> mjsElement *(mjSpec *, mjtObj, const char *)
alias mjs_findChild = fn(body: UnsafePointer[mjsBody], read name: UnsafePointer[Int8]) -> mjsBody *(mjsBody *, const char *)
alias mjs_getParent = fn(element: UnsafePointer[mjsElement]) -> mjsBody *(mjsElement *)
alias mjs_getFrame = fn(element: UnsafePointer[mjsElement]) -> mjsFrame *(mjsElement *)
alias mjs_findFrame = fn(s: UnsafePointer[mjSpec], read name: UnsafePointer[Int8]) -> mjsFrame *(mjSpec *, const char *)
alias mjs_getDefault = fn(element: UnsafePointer[mjsElement]) -> mjsDefault *(mjsElement *)
alias mjs_findDefault = fn(s: UnsafePointer[mjSpec], read classname: UnsafePointer[Int8]) -> mjsDefault *(mjSpec *, const char *)
alias mjs_getSpecDefault = fn(s: UnsafePointer[mjSpec]) -> mjsDefault *(mjSpec *)
alias mjs_getId = fn(element: UnsafePointer[mjsElement]) -> Int32
alias mjs_firstChild = fn(body: UnsafePointer[mjsBody], type: mjtObj : enum mjtObj_, recurse: Int32) -> mjsElement *(mjsBody *, mjtObj, int)
alias mjs_nextChild = fn(body: UnsafePointer[mjsBody], child: UnsafePointer[mjsElement], recurse: Int32) -> mjsElement *(mjsBody *, mjsElement *, int)
alias mjs_firstElement = fn(s: UnsafePointer[mjSpec], type: mjtObj : enum mjtObj_) -> mjsElement *(mjSpec *, mjtObj)
alias mjs_nextElement = fn(s: UnsafePointer[mjSpec], element: UnsafePointer[mjsElement]) -> mjsElement *(mjSpec *, mjsElement *)
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
alias mjs_getString = fn(read source: UnsafePointer[mjString]) -> const char *(const mjString *)
alias mjs_getDouble = fn(read source: UnsafePointer[mjDoubleVec], size: UnsafePointer[Int32]) -> const double *(const mjDoubleVec *, int *)
alias mjs_setDefault = fn(element: UnsafePointer[mjsElement], read def: UnsafePointer[mjsDefault]) -> NoneType
alias mjs_setFrame = fn(dest: UnsafePointer[mjsElement], frame: UnsafePointer[mjsFrame]) -> Int32
alias mjs_resolveOrientation = fn(quat: UnsafePointer[double  : double], degree: mjtByte : char, read sequence: UnsafePointer[Int8], read orientation: UnsafePointer[mjsOrientation]) -> const char *(double *, mjtByte, const char *, const mjsOrientation *)
alias mjs_bodyToFrame = fn(body: UnsafePointer[UnsafePointer[mjsBody]]) -> mjsFrame *(mjsBody **)
alias mjs_setUserValue = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8], read data: UnsafePointer[NoneType]) -> NoneType
alias mjs_getUserValue = fn(element: UnsafePointer[mjsElement], read key: UnsafePointer[Int8]) -> const void *(mjsElement *, const char *)
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
alias mjs_asBody = fn(element: UnsafePointer[mjsElement]) -> mjsBody *(mjsElement *)
alias mjs_asGeom = fn(element: UnsafePointer[mjsElement]) -> mjsGeom *(mjsElement *)
alias mjs_asJoint = fn(element: UnsafePointer[mjsElement]) -> mjsJoint *(mjsElement *)
alias mjs_asSite = fn(element: UnsafePointer[mjsElement]) -> mjsSite *(mjsElement *)
alias mjs_asCamera = fn(element: UnsafePointer[mjsElement]) -> mjsCamera *(mjsElement *)
alias mjs_asLight = fn(element: UnsafePointer[mjsElement]) -> mjsLight *(mjsElement *)
alias mjs_asFrame = fn(element: UnsafePointer[mjsElement]) -> mjsFrame *(mjsElement *)
alias mjs_asActuator = fn(element: UnsafePointer[mjsElement]) -> mjsActuator *(mjsElement *)
alias mjs_asSensor = fn(element: UnsafePointer[mjsElement]) -> mjsSensor *(mjsElement *)
alias mjs_asFlex = fn(element: UnsafePointer[mjsElement]) -> mjsFlex *(mjsElement *)
alias mjs_asPair = fn(element: UnsafePointer[mjsElement]) -> mjsPair *(mjsElement *)
alias mjs_asEquality = fn(element: UnsafePointer[mjsElement]) -> mjsEquality *(mjsElement *)
alias mjs_asExclude = fn(element: UnsafePointer[mjsElement]) -> mjsExclude *(mjsElement *)
alias mjs_asTendon = fn(element: UnsafePointer[mjsElement]) -> mjsTendon *(mjsElement *)
alias mjs_asNumeric = fn(element: UnsafePointer[mjsElement]) -> mjsNumeric *(mjsElement *)
alias mjs_asText = fn(element: UnsafePointer[mjsElement]) -> mjsText *(mjsElement *)
alias mjs_asTuple = fn(element: UnsafePointer[mjsElement]) -> mjsTuple *(mjsElement *)
alias mjs_asKey = fn(element: UnsafePointer[mjsElement]) -> mjsKey *(mjsElement *)
alias mjs_asMesh = fn(element: UnsafePointer[mjsElement]) -> mjsMesh *(mjsElement *)
alias mjs_asHField = fn(element: UnsafePointer[mjsElement]) -> mjsHField *(mjsElement *)
alias mjs_asSkin = fn(element: UnsafePointer[mjsElement]) -> mjsSkin *(mjsElement *)
alias mjs_asTexture = fn(element: UnsafePointer[mjsElement]) -> mjsTexture *(mjsElement *)
alias mjs_asMaterial = fn(element: UnsafePointer[mjsElement]) -> mjsMaterial *(mjsElement *)
alias mjs_asPlugin = fn(element: UnsafePointer[mjsElement]) -> mjsPlugin *(mjsElement *)


# (placeholder) C_BINDER_MOJO_END_FILE
