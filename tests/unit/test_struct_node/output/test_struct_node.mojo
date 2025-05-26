
<invalid sloc>

<invalid sloc> implicit __int128_t '__int128'

'__int128'

<invalid sloc> implicit __uint128_t 'unsigned __int128'

'unsigned __int128'

<invalid sloc> implicit __NSConstantString 'struct __NSConstantString_tag'

'struct __NSConstantString_tag'

'__NSConstantString_tag'

<invalid sloc> implicit __builtin_ms_va_list 'char *'

'char *'

'char'

<invalid sloc> implicit __builtin_va_list 'struct __va_list_tag[1]'

'struct __va_list_tag[1]' 1 

'struct __va_list_tag'

'__va_list_tag'

struct Point:
	# Basic struct declarations

	x 'int'	

	y 'int'	


struct Person:
	name 'char *'	

	age 'int'	


struct Empty:
	# Empty struct


struct Complex:
	# Multi-line struct with comments

	id 'int'	

	# Basic types

	value 'float'	

struct Inner:
		# Nested struct 

		data 'double'		


	nested 'struct Inner':'struct Inner'	


struct _Anonymous:
	# Anonymous struct in typedef

	flags 'unsigned char'	


Flags 'struct Flags':'Flags'

'struct Flags' sugar

'Flags'

''

# Anonymous struct in typedef

struct BitFields:
	# Struct with bit fields

	a 'unsigned int'	

	'int'	

	Int 1	

	'int' 1	

	b 'unsigned int'	

	'int'	

	Int 2	

	'int' 2	

	c 'unsigned int'	

	'int'	

	Int 3	

	'int' 3	

