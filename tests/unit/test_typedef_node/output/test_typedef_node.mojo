
# (placeholder) TranslationUnitDecl 0x3873d2a8 <<invalid sloc>> <invalid sloc>

alias <invalid = sloc> implicit __int128_t __int128 

alias <invalid = sloc> implicit __uint128_t unsigned __int128 

alias <invalid = sloc> implicit __NSConstantString __NSConstantString_tag 

alias <invalid = sloc> implicit __SVInt8_t __SVInt8_t 

alias <invalid = sloc> implicit __SVInt16_t __SVInt16_t 

alias <invalid = sloc> implicit __SVInt32_t __SVInt32_t 

alias <invalid = sloc> implicit __SVInt64_t __SVInt64_t 

alias <invalid = sloc> implicit __SVUint8_t __SVUint8_t 

alias <invalid = sloc> implicit __SVUint16_t __SVUint16_t 

alias <invalid = sloc> implicit __SVUint32_t __SVUint32_t 

alias <invalid = sloc> implicit __SVUint64_t __SVUint64_t 

alias <invalid = sloc> implicit __SVFloat16_t __SVFloat16_t 

alias <invalid = sloc> implicit __SVFloat32_t __SVFloat32_t 

alias <invalid = sloc> implicit __SVFloat64_t __SVFloat64_t 

alias <invalid = sloc> implicit __SVBFloat16_t __SVBFloat16_t 

alias <invalid = sloc> implicit __clang_svint8x2_t __clang_svint8x2_t 

alias <invalid = sloc> implicit __clang_svint16x2_t __clang_svint16x2_t 

alias <invalid = sloc> implicit __clang_svint32x2_t __clang_svint32x2_t 

alias <invalid = sloc> implicit __clang_svint64x2_t __clang_svint64x2_t 

alias <invalid = sloc> implicit __clang_svuint8x2_t __clang_svuint8x2_t 

alias <invalid = sloc> implicit __clang_svuint16x2_t __clang_svuint16x2_t 

alias <invalid = sloc> implicit __clang_svuint32x2_t __clang_svuint32x2_t 

alias <invalid = sloc> implicit __clang_svuint64x2_t __clang_svuint64x2_t 

alias <invalid = sloc> implicit __clang_svfloat16x2_t __clang_svfloat16x2_t 

alias <invalid = sloc> implicit __clang_svfloat32x2_t __clang_svfloat32x2_t 

alias <invalid = sloc> implicit __clang_svfloat64x2_t __clang_svfloat64x2_t 

alias <invalid = sloc> implicit __clang_svbfloat16x2_t __clang_svbfloat16x2_t 

alias <invalid = sloc> implicit __clang_svint8x3_t __clang_svint8x3_t 

alias <invalid = sloc> implicit __clang_svint16x3_t __clang_svint16x3_t 

alias <invalid = sloc> implicit __clang_svint32x3_t __clang_svint32x3_t 

alias <invalid = sloc> implicit __clang_svint64x3_t __clang_svint64x3_t 

alias <invalid = sloc> implicit __clang_svuint8x3_t __clang_svuint8x3_t 

alias <invalid = sloc> implicit __clang_svuint16x3_t __clang_svuint16x3_t 

alias <invalid = sloc> implicit __clang_svuint32x3_t __clang_svuint32x3_t 

alias <invalid = sloc> implicit __clang_svuint64x3_t __clang_svuint64x3_t 

alias <invalid = sloc> implicit __clang_svfloat16x3_t __clang_svfloat16x3_t 

alias <invalid = sloc> implicit __clang_svfloat32x3_t __clang_svfloat32x3_t 

alias <invalid = sloc> implicit __clang_svfloat64x3_t __clang_svfloat64x3_t 

alias <invalid = sloc> implicit __clang_svbfloat16x3_t __clang_svbfloat16x3_t 

alias <invalid = sloc> implicit __clang_svint8x4_t __clang_svint8x4_t 

alias <invalid = sloc> implicit __clang_svint16x4_t __clang_svint16x4_t 

alias <invalid = sloc> implicit __clang_svint32x4_t __clang_svint32x4_t 

alias <invalid = sloc> implicit __clang_svint64x4_t __clang_svint64x4_t 

alias <invalid = sloc> implicit __clang_svuint8x4_t __clang_svuint8x4_t 

alias <invalid = sloc> implicit __clang_svuint16x4_t __clang_svuint16x4_t 

alias <invalid = sloc> implicit __clang_svuint32x4_t __clang_svuint32x4_t 

alias <invalid = sloc> implicit __clang_svuint64x4_t __clang_svuint64x4_t 

alias <invalid = sloc> implicit __clang_svfloat16x4_t __clang_svfloat16x4_t 

alias <invalid = sloc> implicit __clang_svfloat32x4_t __clang_svfloat32x4_t 

alias <invalid = sloc> implicit __clang_svfloat64x4_t __clang_svfloat64x4_t 

alias <invalid = sloc> implicit __clang_svbfloat16x4_t __clang_svbfloat16x4_t 

alias <invalid = sloc> implicit __SVBool_t __SVBool_t 

alias <invalid = sloc> implicit __builtin_ms_va_list char * 

alias <invalid = sloc> implicit __builtin_va_list std 

alias uint_t = unsigned int 

alias int64_t = long long 

alias byte_t = unsigned char 
struct NodeState_:
	# Enum typedef

	alias STATE_NONE: Int = 0

	alias STATE_COLLECTING: Int = 1

	alias STATE_BUILDING: Int = 2

	alias STATE_COMPLETE: Int = 3


alias NodeState = NodeState_ 
struct TestStruct:
	# This struct should not collect the typedefs that follow

	var value: Int


alias integer_t = int 

alias float_t = float 
struct _Anonymous:
	# Struct typedefs - testing nested typedef handling

	var x: Int

	var y: Int


alias Point2D = Point2D 
struct Rectangle_:
	# Test typedef and struct interaction

	var top_left: Point2D:Point2D

	var bottom_right: Point2D:Point2D

	var width: Int

	var height: Int


alias Rectangle = Rectangle_ 
struct _Anonymous:
	var data: Int


alias NestedStruct = NestedStruct 

alias NestedPtr = NestedStruct * 
