from sys.ffi import _Global, UnsafePointer, OpaquePointer

# (placeholder) TranslationUnitDecl 0x39c43238 <<invalid sloc>> <invalid sloc>

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

