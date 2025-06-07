from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e3508 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer
struct Color:
	# Basic enum with values

	alias RED: Int32 = 0

	alias GREEN: Int32 = 1

	alias BLUE: Int32 = 2

struct Direction:
	# Enum with auto-incrementing values

	alias NORTH: Int32 = 0

	alias SOUTH: Int32 = 1

	alias EAST: Int32 = 2

	alias WEST: Int32 = 3

struct Status:
	# Enum with mixed explicit and implicit values

	alias OK: Int32 = 200

	alias NOT_FOUND: Int32 = 404

	alias SERVER_ERROR: Int32 = 500

	alias UNAVAILABLE: Int32 = 501

	alias TIMEOUT: Int32 = 502

struct Empty:
	# Enum with name but no values (empty enum)
	pass

struct Flags:
	# Enum with hex values and comments

	alias READ: Int32 = 1

	alias WRITE: Int32 = 2

	alias EXECUTE: Int32 = 4

struct ByteValues:
	# Enum with byte values

	alias BYTE_0: Int32 = 1

	alias BYTE_1: Int32 = 2

	alias BYTE_2: Int32 = 4

	alias BYTE_3: Int32 = 8

