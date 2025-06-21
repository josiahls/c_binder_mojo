from sys.ffi import _Global, UnsafePointer, OpaquePointer
from sys import ffi

# (placeholder) TranslationUnitDecl 0x4e3518 <<invalid sloc>> <invalid sloc>

alias __int128_t = Int128

alias __uint128_t = UInt128

alias __NSConstantString = StaticString

alias __builtin_ms_va_list = UnsafePointer[Int8]

alias __builtin_va_list = OpaquePointer

alias uint_t = UInt32

alias int64_t = Int128

alias byte_t = UInt8
struct NodeState_:
	# Enum typedef

	alias STATE_NONE: Int32 = 0

	alias STATE_COLLECTING: Int32 = 1

	alias STATE_BUILDING: Int32 = 2

	alias STATE_COMPLETE: Int32 = 3


alias NodeState = NodeState_
struct TestStruct:
	# This struct should not collect the typedefs that follow

	var value: Int32


alias integer_t = Int32

alias float_t = Float32
struct _Anonymous_line_29_9:
	# Struct typedefs - testing nested typedef handling

	var x: Int32

	var y: Int32


alias Point2D = _Anonymous_line_29_9
struct Rectangle_:
	# Test typedef and struct interaction

	var top_left: Point2D

	var bottom_right: Point2D

	var width: Int32

	var height: Int32


alias Rectangle = Rectangle_
struct _Anonymous_line_49_9:
	var data: Int32


alias NestedStruct = _Anonymous_line_49_9

alias NestedPtr = _Anonymous_line_49_9
