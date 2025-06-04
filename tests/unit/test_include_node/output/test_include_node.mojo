from sys.ffi import _Global, UnsafePointer, OpaquePointer

# (placeholder) TranslationUnitDecl 0x18310248 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

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

alias __SVBFloat16_t = Float16

alias __clang_svint8x2_t = Int8

alias __clang_svint16x2_t = Int16

alias __clang_svint32x2_t = Int32

alias __clang_svint64x2_t = Int64

alias __clang_svuint8x2_t = UInt8

alias __clang_svuint16x2_t = UInt16

alias __clang_svuint32x2_t = UInt32

alias __clang_svuint64x2_t = UInt64

alias __clang_svfloat16x2_t = Float16

alias __clang_svfloat32x2_t = Float32

alias __clang_svfloat64x2_t = Float64

alias __clang_svbfloat16x2_t = Float16

alias __clang_svint8x3_t = Int8

alias __clang_svint16x3_t = Int16

alias __clang_svint32x3_t = Int32

alias __clang_svint64x3_t = Int64

alias __clang_svuint8x3_t = UInt8

alias __clang_svuint16x3_t = UInt16

alias __clang_svuint32x3_t = UInt32

alias __clang_svuint64x3_t = UInt64

alias __clang_svfloat16x3_t = Float16

alias __clang_svfloat32x3_t = Float32

alias __clang_svfloat64x3_t = Float64

alias __clang_svbfloat16x3_t = Float16

alias __clang_svint8x4_t = Int8

alias __clang_svint16x4_t = Int16

alias __clang_svint32x4_t = Int32

alias __clang_svint64x4_t = Int64

alias __clang_svuint8x4_t = UInt8

alias __clang_svuint16x4_t = UInt16

alias __clang_svuint32x4_t = UInt32

alias __clang_svuint64x4_t = UInt64

alias __clang_svfloat16x4_t = Float16

alias __clang_svfloat32x4_t = Float32

alias __clang_svfloat64x4_t = Float64

alias __clang_svbfloat16x4_t = Float16

alias __SVBool_t = Bool

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias referenced = __builtin_va_list std::__va_list

alias size_t = UInt64

alias va_list = __builtin_va_list:struct std::__va_list

alias __gnuc_va_list = __builtin_va_list:struct std::__va_list

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

alias __uint_least8_t = Int8

alias __int_least16_t = Int16

alias __uint_least16_t = Int16

alias __int_least32_t = Int32

alias __uint_least32_t = Int32

alias __int_least64_t = Int64

alias __uint_least64_t = Int64

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
struct _Anonymous_col_24:
	var __val: SIMD[Int32, 2]


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

alias __loff_t = __off64_t

alias __caddr_t = UnsafePointer[Int8]

alias __intptr_t = Int64

alias __socklen_t = UInt32

alias __sig_atomic_t = Int32
struct __Anonymous_line_13_9_definition:
	var __wch: UInt32

	var __wchb: SIMD[Int8, 4]


struct _Anonymous_line_13_9:
	var __count: Int32

	var __value: union (unnamed union at /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h:16:3):union __mbstate_t::(unnamed at /usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h:16:3)


alias __mbstate_t = _Anonymous_line_13_9
struct _G_fpos_t:
	var __pos: __off_t

	var __state: __mbstate_t


alias __fpos_t = _G_fpos_t
struct _G_fpos64_t:
	var __pos: __off64_t

	var __state: __mbstate_t


alias __fpos64_t = _G_fpos64_t
# Forward declaration of _IO_FILE	pass


alias __FILE = _IO_FILE
# Forward declaration of _IO_FILE	pass


alias FILE = _IO_FILE
# Forward declaration of _IO_FILE	pass

# Forward declaration of _IO_marker	pass

# Forward declaration of _IO_codecvt	pass

# Forward declaration of _IO_wide_data	pass


alias _IO_lock_t = NoneType
struct _IO_FILE:
	var _flags: Int32

	var _IO_read_ptr: UnsafePointer[Int8]

	var _IO_read_end: UnsafePointer[Int8]

	var _IO_read_base: UnsafePointer[Int8]

	var _IO_write_base: UnsafePointer[Int8]

	var _IO_write_ptr: UnsafePointer[Int8]

	var _IO_write_end: UnsafePointer[Int8]

	var _IO_buf_base: UnsafePointer[Int8]

	var _IO_buf_end: UnsafePointer[Int8]

	var _IO_save_base: UnsafePointer[Int8]

	var _IO_backup_base: UnsafePointer[Int8]

	var _IO_save_end: UnsafePointer[Int8]

	var _markers: UnsafePointer[_IO_marker]

	var _chain: UnsafePointer[_IO_FILE]

	var _fileno: Int32

	var _flags2: Int32

	var _old_offset: __off_t

	var _cur_column: UInt16

	var _vtable_offset: Int8

	var _shortbuf: SIMD[Int8, 1]

	var _lock: UnsafePointer[_IO_lock_t]

	var _offset: __off64_t

	var _codecvt: UnsafePointer[_IO_codecvt]

	var _wide_data: UnsafePointer[_IO_wide_data]

	var _freeres_list: UnsafePointer[_IO_FILE]

	var _freeres_buf: UnsafePointer[NoneType]

	var __pad5: size_t

	var _mode: Int32

	var _unused2: SIMD[Int8, 20]


alias va_list = __gnuc_va_list:struct std::__va_list

alias off_t = __off_t

alias ssize_t = __ssize_t

alias fpos_t = _G_fpos_t

alias stdin: FILE # extern

alias stdout: FILE # extern

alias stderr: FILE # extern

alias remove = fn (__filename: const) -> Int32

alias rename = fn (__old: const, __new: const) -> Int32

alias renameat = fn (__oldfd: Int32, __old: const, __newfd: Int32, __new: const) -> Int32

alias fclose = fn (__stream: FILE) -> Int32

alias tmpfile = fn () -> FILE *(void) extern

alias tmpnam = fn ('char: Int8) -> char *(char *) extern

alias tmpnam_r = fn (__s: Int8) -> char *(char *) extern

alias tempnam = fn (__dir: const, __pfx: const) -> char *(const char *, const char *) extern

alias fflush = fn (__stream: FILE) -> Int32

alias fflush_unlocked = fn (__stream: FILE) -> Int32

alias implicit = fn ('const: Int8, 'const: Int8) -> fopen FILE *(const char *, const char *) extern

alias fopen = fn (__filename: const, __modes: const) -> FILE *(const char *, const char *) extern

alias freopen = fn (__filename: const, __modes: const, __stream: FILE) -> FILE *(const char *restrict, const char *restrict, FILE *restrict) extern

alias fdopen = fn (__fd: Int32, __modes: const) -> FILE *(int, const char *) extern

alias fmemopen = fn (__s: NoneType, __len: size_t:unsigned, __modes: const) -> FILE *(void *, size_t, const char *) extern

alias open_memstream = fn (__bufloc: Int8, __sizeloc: size_t) -> FILE *(char **, size_t *) extern

alias setbuf = fn (__stream: FILE, __buf: Int8) -> NoneType

alias setvbuf = fn (__stream: FILE, __buf: Int8, __modes: Int32, __n: size_t:unsigned) -> Int32

alias setbuffer = fn (__stream: FILE, __buf: Int8, __size: size_t:unsigned) -> NoneType

alias setlinebuf = fn (__stream: FILE) -> NoneType

alias implicit = fn ('FILE: *, 'const: Int8) -> Int32

alias fprintf = fn (__stream: FILE, __format: const) -> Int32

alias implicit = fn ('const: Int8) -> Int32

alias printf = fn (__format: const) -> Int32

alias implicit = fn ('char: *, 'const: Int8) -> Int32

alias sprintf = fn (__s: Int8, __format: const) -> Int32

alias implicit = fn ('FILE: *, 'const: Int8, '__builtin_va_list':'struct: OpaquePointer) -> Int32

alias vfprintf = fn (__s: FILE, __format: const, __arg: __gnuc_va_list:struct) -> Int32

alias implicit = fn ('const: Int8, '__builtin_va_list':'struct: OpaquePointer) -> Int32

alias vprintf = fn (__format: const, __arg: __gnuc_va_list:struct) -> Int32

alias implicit = fn ('char: *, 'const: Int8, '__builtin_va_list':'struct: OpaquePointer) -> Int32

alias vsprintf = fn (__s: Int8, __format: const, __arg: __gnuc_va_list:struct) -> Int32

alias implicit = fn ('char: *, 'unsigned: Int64, 'const: Int8) -> Int32

alias snprintf = fn (__s: Int8, __maxlen: size_t:unsigned, __format: const) -> Int32

alias implicit = fn ('char: *, 'unsigned: Int64, 'const: Int8, '__builtin_va_list':'struct: OpaquePointer) -> Int32

alias vsnprintf = fn (__s: Int8, __maxlen: size_t:unsigned, __format: const, __arg: __gnuc_va_list:struct) -> Int32

alias vdprintf = fn (__fd: Int32, __fmt: const, __arg: __gnuc_va_list:struct) -> Int32

alias dprintf = fn (__fd: Int32, __fmt: const) -> Int32

alias implicit = fn ('FILE: *restrict, 'const: Int8) -> Int32

alias fscanf = fn (__stream: FILE, __format: const) -> Int32

alias implicit = fn ('const: Int8) -> Int32

alias scanf = fn (__format: const) -> Int32

alias implicit = fn ('const: Int8, 'const: Int8) -> Int32

alias sscanf = fn (__s: const, __format: const) -> Int32

alias _Float128 = Float64

alias _Float32 = Float32

alias _Float64 = Float64

alias _Float32x = Float64

alias _Float64x = Float64

alias fscanf = fn (__stream: FILE, __format: const) -> Int32

alias scanf = fn (__format: const) -> Int32

alias sscanf = fn (__s: const, __format: const) -> Int32

alias implicit = fn ('FILE: *restrict, 'const: Int8, '__builtin_va_list':'struct: OpaquePointer) -> Int32

alias vfscanf = fn (__s: FILE, __format: const, __arg: __gnuc_va_list:struct) -> Int32

alias implicit = fn ('const: Int8, '__builtin_va_list':'struct: OpaquePointer) -> Int32

alias vscanf = fn (__format: const, __arg: __gnuc_va_list:struct) -> Int32

alias implicit = fn ('const: Int8, 'const: Int8, '__builtin_va_list':'struct: OpaquePointer) -> Int32

alias vsscanf = fn (__s: const, __format: const, __arg: __gnuc_va_list:struct) -> Int32

alias vfscanf = fn (__s: FILE, __format: const, __arg: __gnuc_va_list:struct) -> Int32

alias vscanf = fn (__format: const, __arg: __gnuc_va_list:struct) -> Int32

alias vsscanf = fn (__s: const, __format: const, __arg: __gnuc_va_list:struct) -> Int32

alias fgetc = fn (__stream: FILE) -> Int32

alias getc = fn (__stream: FILE) -> Int32

alias getchar = fn () -> Int32

alias getc_unlocked = fn (__stream: FILE) -> Int32

alias getchar_unlocked = fn () -> Int32

alias fgetc_unlocked = fn (__stream: FILE) -> Int32

alias fputc = fn (__c: Int32, __stream: FILE) -> Int32

alias putc = fn (__c: Int32, __stream: FILE) -> Int32

alias putchar = fn (__c: Int32) -> Int32

alias fputc_unlocked = fn (__c: Int32, __stream: FILE) -> Int32

alias putc_unlocked = fn (__c: Int32, __stream: FILE) -> Int32

alias putchar_unlocked = fn (__c: Int32) -> Int32

alias getw = fn (__stream: FILE) -> Int32

alias putw = fn (__w: Int32, __stream: FILE) -> Int32

alias fgets = fn (__s: Int8, __n: Int32, __stream: FILE) -> char *(char *restrict, int, FILE *restrict) extern

alias __getdelim = fn (__lineptr: Int8, __n: size_t, __delimiter: Int32, __stream: FILE) -> __ssize_t

alias getdelim = fn (__lineptr: Int8, __n: size_t, __delimiter: Int32, __stream: FILE) -> __ssize_t

alias getline = fn (__lineptr: Int8, __n: size_t, __stream: FILE) -> __ssize_t

alias fputs = fn (__s: const, __stream: FILE) -> Int32

alias puts = fn (__s: const) -> Int32

alias ungetc = fn (__c: Int32, __stream: FILE) -> Int32

alias implicit = fn ('void: *, 'unsigned: Int64, 'unsigned: Int64, 'FILE: *) -> Int64

alias fread = fn (__ptr: NoneType, __size: size_t:unsigned, __n: size_t:unsigned, __stream: FILE) -> UInt64

alias implicit = fn ('const: NoneType, 'unsigned: Int64, 'unsigned: Int64, 'FILE: *) -> Int64

alias fwrite = fn (__ptr: const, __size: size_t:unsigned, __n: size_t:unsigned, __s: FILE) -> UInt64

alias fread_unlocked = fn (__ptr: NoneType, __size: size_t:unsigned, __n: size_t:unsigned, __stream: FILE) -> size_t

alias fwrite_unlocked = fn (__ptr: const, __size: size_t:unsigned, __n: size_t:unsigned, __stream: FILE) -> size_t

alias fseek = fn (__stream: FILE, __off: Int64, __whence: Int32) -> Int32

alias ftell = fn (__stream: FILE) -> Int64

alias rewind = fn (__stream: FILE) -> NoneType

alias fseeko = fn (__stream: FILE, __off: Int64, __whence: Int32) -> Int32

alias ftello = fn (__stream: FILE) -> __off_t

alias fgetpos = fn (__stream: FILE, __pos: fpos_t) -> Int32

alias fsetpos = fn (__stream: FILE, __pos: const) -> Int32

alias clearerr = fn (__stream: FILE) -> NoneType

alias feof = fn (__stream: FILE) -> Int32

alias ferror = fn (__stream: FILE) -> Int32

alias clearerr_unlocked = fn (__stream: FILE) -> NoneType

alias feof_unlocked = fn (__stream: FILE) -> Int32

alias ferror_unlocked = fn (__stream: FILE) -> Int32

alias perror = fn (__s: const) -> NoneType

alias fileno = fn (__stream: FILE) -> Int32

alias fileno_unlocked = fn (__stream: FILE) -> Int32

alias pclose = fn (__stream: FILE) -> Int32

alias popen = fn (__command: const, __modes: const) -> FILE *(const char *, const char *) extern

alias ctermid = fn (__s: Int8) -> char *(char *) extern

alias flockfile = fn (__stream: FILE) -> NoneType

alias ftrylockfile = fn (__stream: FILE) -> Int32

alias funlockfile = fn (__stream: FILE) -> NoneType

alias __uflow = fn ('FILE: *) -> Int32

alias __overflow = fn ('FILE: *, Int32) -> Int32
