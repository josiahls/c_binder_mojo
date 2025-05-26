
# (placeholder) TranslationUnitDecl 0x4e3518 <<invalid sloc>> <invalid sloc>

# (placeholder) |-TypedefDecl 0x4e3d40 <<invalid sloc>> <invalid sloc> implicit __int128_t '__int128'

# (placeholder) | `-BuiltinType 0x4e3ae0 '__int128'

# (placeholder) |-TypedefDecl 0x4e3db0 <<invalid sloc>> <invalid sloc> implicit __uint128_t 'unsigned __int128'

# (placeholder) | `-BuiltinType 0x4e3b00 'unsigned __int128'

# (placeholder) |-TypedefDecl 0x4e40b8 <<invalid sloc>> <invalid sloc> implicit __NSConstantString 'struct __NSConstantString_tag'

# (placeholder) | `-RecordType 0x4e3e90 'struct __NSConstantString_tag'

# (placeholder) |   `-Record 0x4e3e08 '__NSConstantString_tag'

# (placeholder) |-TypedefDecl 0x4e4150 <<invalid sloc>> <invalid sloc> implicit __builtin_ms_va_list 'char *'

# (placeholder) | `-PointerType 0x4e4110 'char *'

# (placeholder) |   `-BuiltinType 0x4e35c0 'char'

# (placeholder) |-TypedefDecl 0x4e4448 <<invalid sloc>> <invalid sloc> implicit __builtin_va_list 'struct __va_list_tag[1]'

# (placeholder) | `-ConstantArrayType 0x4e43f0 'struct __va_list_tag[1]' 1 

# (placeholder) |   `-RecordType 0x4e4230 'struct __va_list_tag'

# (placeholder) |     `-Record 0x4e41a8 '__va_list_tag'
struct Point:
	# Basic struct declarations

	var x: Int

	var y: Int

struct Person:
	var name: String

	var age: Int

struct Empty:
	# Empty struct
	pass

struct _Complex_Inner:
	# Nested struct 

	var data: Float64


struct Complex:
	# Multi-line struct with comments

	var id: Int

	var value: Float32

	var nested: Inner

struct _Anonymous:
	# Anonymous struct in typedef

	var flags: UInt8


# (placeholder) |-TypedefDecl 0x53bb08 <line:29:1, line:31:3> col:3 Flags 'struct Flags':'Flags'

# (placeholder) | |-ElaboratedType 0x53bab0 'struct Flags' sugar

# (placeholder) | | `-RecordType 0x53ba20 'Flags'

# (placeholder) | |   `-Record 0x53b998 ''

# Anonymous struct in typedef
struct BitFields:
	# Struct with bit fields

	alias a: UInt = 1

	alias b: UInt = 2

	alias c: UInt = 3

