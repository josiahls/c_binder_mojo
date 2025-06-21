from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e3518 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer
struct Point:
	# Basic struct declarations

	var x: Int32

	var y: Int32

struct Person:
	var name: UnsafePointer[Int8]

	var age: Int32

struct Empty:
	# Empty struct
	pass

# Forward declaration of SuperEmpty
	# An even more empty struct
	pass

struct _Complex__Anonymous_line_32_5:
	# Nested anonymous struct 

	var x: Int32

	var y: Int32


struct _Complex_Inner:
	# Nested struct 

	var data: Float64


struct Complex:
	# Multi-line struct with comments

	var id: Int32

	var value: Float32

	var nested: _Complex_Inner

	var nested_anonymous: _Complex__Anonymous_line_32_5

struct _Anonymous_line_39_9:
	# Anonymous struct in typedef

	var flags: UInt8


alias Flags = _Anonymous_line_39_9
struct BitFields:
	# Struct with bit fields

	alias a: UInt32 = 1

	alias b: UInt32 = 2

	alias c: UInt32 = 3

