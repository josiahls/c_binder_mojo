from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e33d8 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer
struct __Anonymous_line_1_9_definition:
	var __wch: UInt32

	var __wchb: SIMD[Int8.dtype, 4]


struct _Anonymous_line_1_9:
	var __count: Int32

	var __value: OpaquePointer


alias __mbstate_t = _Anonymous_line_1_9
