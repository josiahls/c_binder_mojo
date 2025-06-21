from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e3958 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer

alias function = fn () -> Int32
