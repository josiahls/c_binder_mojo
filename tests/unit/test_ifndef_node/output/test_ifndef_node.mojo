
# (placeholder) TranslationUnitDecl 0x398962a8 <<invalid sloc>> <invalid sloc>

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

alias inner_guard_variable: Int =  42 # `inner_guard_variable` was not originally const in the original code

alias outer_guard_variable: Int =  100 # `outer_guard_variable` was not originally const in the original code

# (placeholder) |-FunctionDecl 0x3993b0e8 <line:26:5, line:31:5> line:26:10 test_function 'void ()'

# (placeholder) | `-CompoundStmt 0x39964a18 <col:26, line:31:5>

# (placeholder) |   |-DeclStmt 0x3993b228 <line:27:9, col:19>

var used: Int

# (placeholder) |   `-IfStmt 0x3993b330 <line:28:9, line:30:9>

# (placeholder) |     |-BinaryOperator 0x3993b298 <line:28:13, col:17> 'int' '>'

# (placeholder) |     | |-ImplicitCastExpr 0x3993b280 <col:13> 'int' <LValueToRValue>

# (placeholder) |     | | `-DeclRefExpr 0x3993b240 <col:13> 'int' lvalue Var 0x3993b1a0 'x' 'int'

# (placeholder) |     | `-IntegerLiteral 0x3993b260 <col:17> 'int' 5

# (placeholder) |     `-CompoundStmt 0x3993b318 <col:20, line:30:9>

# (placeholder) |       `-BinaryOperator 0x3993b2f8 <line:29:13, col:17> 'int' '='

# (placeholder) |         |-DeclRefExpr 0x3993b2b8 <col:13> 'int' lvalue Var 0x3993b1a0 'x' 'int'

# (placeholder) |         `-IntegerLiteral 0x3993b2d8 <col:17> 'int' 5

alias complex_variable: Int =  200 # `complex_variable` was not originally const in the original code

alias uint_t = unsigned int 
