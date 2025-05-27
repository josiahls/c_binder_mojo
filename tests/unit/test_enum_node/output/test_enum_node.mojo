
# (placeholder) TranslationUnitDecl 0x4e3508 <<invalid sloc>> <invalid sloc>

# (placeholder) |-TypedefDecl 0x4e3d30 <<invalid sloc>> <invalid sloc> implicit __int128_t '__int128'

# (placeholder) | `-BuiltinType 0x4e3ad0 '__int128'

# (placeholder) |-TypedefDecl 0x4e3da0 <<invalid sloc>> <invalid sloc> implicit __uint128_t 'unsigned __int128'

# (placeholder) | `-BuiltinType 0x4e3af0 'unsigned __int128'

# (placeholder) |-TypedefDecl 0x4e40a8 <<invalid sloc>> <invalid sloc> implicit __NSConstantString 'struct __NSConstantString_tag'

# (placeholder) | `-RecordType 0x4e3e80 'struct __NSConstantString_tag'

# (placeholder) |   `-Record 0x4e3df8 '__NSConstantString_tag'

# (placeholder) |-TypedefDecl 0x4e4140 <<invalid sloc>> <invalid sloc> implicit __builtin_ms_va_list 'char *'

# (placeholder) | `-PointerType 0x4e4100 'char *'

# (placeholder) |   `-BuiltinType 0x4e35b0 'char'

# (placeholder) |-TypedefDecl 0x4e4438 <<invalid sloc>> <invalid sloc> implicit __builtin_va_list 'struct __va_list_tag[1]'

# (placeholder) | `-ConstantArrayType 0x4e43e0 'struct __va_list_tag[1]' 1 

# (placeholder) |   `-RecordType 0x4e4220 'struct __va_list_tag'

# (placeholder) |     `-Record 0x4e4198 '__va_list_tag'
struct Color:
	# Basic enum with values

	alias RED: Int = 0

	alias GREEN: Int = 1

	alias BLUE: Int = 2

struct Direction:
	# Enum with auto-incrementing values

	alias NORTH: Int = 

	alias SOUTH: Int = 

	alias EAST: Int = 

	alias WEST: Int = 

struct Status:
	# Enum with mixed explicit and implicit values

	alias OK: Int = 200

	alias NOT_FOUND: Int = 404

	alias SERVER_ERROR: Int = 500

	alias UNAVAILABLE: Int = 

	alias TIMEOUT: Int = 

struct Empty:
	# Enum with name but no values (empty enum)
	pass

struct Flags:
	# Enum with hex values and comments

	alias READ: Int = 1

	alias WRITE: Int = 2

	alias EXECUTE: Int = 4

struct ByteValues:
	# Enum with byte values

	alias BYTE_0: Int = 1

	alias BYTE_1: Int = 2

	alias BYTE_2: Int = 4

	alias BYTE_3: Int = 8

