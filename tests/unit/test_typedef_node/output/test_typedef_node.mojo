
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

uint_t 'unsigned int'

'unsigned int'

# Basic type typedefs

int64_t 'long long'

'long long'

byte_t 'unsigned char'

'unsigned char'

NodeState_

# Enum typedef

STATE_NONE 'int'

'int'

Int 0

'int' 0

# Initial state

STATE_COLLECTING 'int'

# Collecting tokens

STATE_BUILDING 'int'

# Building children

STATE_COMPLETE 'int'

# Node is complete

NodeState 'enum NodeState_':'enum NodeState_'

'enum NodeState_' sugar

'enum NodeState_'

'NodeState_'

# Enum typedef

struct TestStruct definition

# This struct should not collect the typedefs that follow

value 'int'

integer_t 'int'

'int'

float_t 'float'

'float'

struct definition

# Struct typedefs - testing nested typedef handling

x 'int'

y 'int'

referenced Point2D 'struct Point2D':'Point2D'

'struct Point2D' sugar

'Point2D'

''

# Struct typedefs - testing nested typedef handling

struct Rectangle_ definition

# Test typedef and struct interaction

top_left 'Point2D':'Point2D'

bottom_right 'Point2D':'Point2D'

width 'int'

height 'int'

Rectangle 'struct Rectangle_':'struct Rectangle_'

'struct Rectangle_' sugar

'struct Rectangle_'

'Rectangle_'

# This typedef should be independent of the struct above

struct definition

data 'int'

referenced NestedStruct 'struct NestedStruct':'NestedStruct'

'struct NestedStruct' sugar

'NestedStruct'

''

NestedPtr 'NestedStruct *'

'NestedStruct *'

'NestedStruct' sugar

'NestedStruct'

'struct NestedStruct' sugar

'NestedStruct'

''
