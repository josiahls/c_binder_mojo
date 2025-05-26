
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

	# (placeholder) | |-FieldDecl 0x53b2a8 <line:3:5, col:9> col:9 x 'int'

	# (placeholder) | `-FieldDecl 0x53b310 <line:4:5, col:9> col:9 y 'int'
struct Person:
	# (placeholder) | |-FieldDecl 0x53b418 <line:8:5, col:11> col:11 name 'char *'

	# (placeholder) | `-FieldDecl 0x53b480 <line:9:5, col:9> col:9 age 'int'
struct Empty:
	# Empty struct
struct Complex:
	# Multi-line struct with comments

	# (placeholder) | |-FieldDecl 0x53b6b0 <line:19:5, col:9> col:9 id 'int'

	# Basic types

	# (placeholder) | |-FieldDecl 0x53b718 <line:20:5, col:11> col:11 value 'float'
	struct Inner:
		# Nested struct 

		# (placeholder) | | `-FieldDecl 0x53b868 <line:24:9, col:16> col:16 data 'double'

	# (placeholder) | `-FieldDecl 0x53b918 <line:23:5, line:25:7> col:7 nested 'struct Inner':'struct Inner'
struct _Anonymous:
	# Anonymous struct in typedef

	# (placeholder) | `-FieldDecl 0x53ba58 <line:30:5, col:19> col:19 flags 'unsigned char'

# (placeholder) |-TypedefDecl 0x53bb08 <line:29:1, line:31:3> col:3 Flags 'struct Flags':'Flags'

# (placeholder) | |-ElaboratedType 0x53bab0 'struct Flags' sugar

# (placeholder) | | `-RecordType 0x53ba20 'Flags'

# (placeholder) | |   `-Record 0x53b998 ''

# Anonymous struct in typedef
struct BitFields:
	# Struct with bit fields

	# (placeholder)   |-FieldDecl 0x53bc98 <line:35:5, col:22> col:18 a 'unsigned int'

	# (placeholder)   | `-ConstantExpr 0x53bc78 <col:22> 'int'

	# (placeholder)   |   |-value: Int 1

	# (placeholder)   |   `-IntegerLiteral 0x53bc40 <col:22> 'int' 1

	# (placeholder)   |-FieldDecl 0x53bd40 <line:36:5, col:22> col:18 b 'unsigned int'

	# (placeholder)   | `-ConstantExpr 0x53bd20 <col:22> 'int'

	# (placeholder)   |   |-value: Int 2

	# (placeholder)   |   `-IntegerLiteral 0x53bce8 <col:22> 'int' 2

	# (placeholder)   `-FieldDecl 0x53bde8 <line:37:5, col:22> col:18 c 'unsigned int'

	# (placeholder)     `-ConstantExpr 0x53bdc8 <col:22> 'int'

	# (placeholder)       |-value: Int 3

	# (placeholder)       `-IntegerLiteral 0x53bd90 <col:22> 'int' 3
