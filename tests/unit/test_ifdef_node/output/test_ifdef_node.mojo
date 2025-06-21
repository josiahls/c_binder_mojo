from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e3cc8 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer

alias a: Int32 =  1 # `a` was not originally const in the original code

alias nested_var: Int32 =  42 # `nested_var` was not originally const in the original code

alias mixed_var: Int32 =  1 # `mixed_var` was not originally const in the original code
struct Config:
	var special_var: Int32

	var special_double_var: Float64

	var special_int_var: Int32

	var special_char_var: Int8

	var special_float_var: Float32

	var special_bool_var: Int32

	var special_void_var: UnsafePointer[NoneType]

	var special_array_var: SIMD[Int32.dtype, 10]

	var special_struct_var: UnsafePointer[Config]

