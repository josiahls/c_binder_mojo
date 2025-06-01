
# (placeholder) TranslationUnitDecl 0x3c457248 <<invalid sloc>> <invalid sloc>

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
struct Point:
	# Basic struct declarations

	var x: Int

	var y: Int

struct Person:
	var name: char 

	var age: Int

struct Empty:
	# Empty struct
	pass

struct SuperEmpty:
	# An even more empty struct
	pass

struct _Complex__Anonymous_75:
	# Nested anonymous struct 

	var x: Int

	var y: Int


struct _Complex_Inner:
	# Nested struct 

	var data: Float64


struct Complex:
	# Multi-line struct with comments

	var id: Int

	var value: Float32

	var nested: _Complex_Inner

	var nested_anonymous: _Complex__Anonymous_75

struct _Anonymous:
	# Anonymous struct in typedef

	var flags: UInt8


alias Flags = Flags 
struct BitFields:
	# Struct with bit fields

	alias a: UInt = 1

	alias b: UInt = 2

	alias c: UInt = 3

