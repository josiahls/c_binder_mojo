



struct BuiltinTypeMapper:

    @staticmethod
    fn _get_primitive_type(type_name: String, unsigned: Bool) -> Tuple[String, Bool]: # (type_name, was changed)
        was_changed = False
        ########## 8-bit types ##########
        return_type_name = type_name
        if type_name == "char":
            return_type_name = "Int8"
        elif type_name == "signed char":
            return_type_name = "Int8"
        elif type_name == "int8_t":
            return_type_name = "Int8"
        elif type_name == "__SVInt8_t":
            return_type_name = "Int8"

        ########## 16-bit types ##########
        elif type_name == "short":
            return_type_name = "Int16"
        elif type_name == "int16_t":
            return_type_name = "Int16"

        ########## 32-bit types ##########
        elif type_name == "int":
            return_type_name = "Int32"
        elif type_name == "int32_t":
            return_type_name = "Int32"

        ########## 64-bit types ##########
        elif type_name == "long":
            return_type_name = "Int64"
        elif type_name == "int64_t":
            return_type_name = "Int64"

        ########## 128-bit types ##########
        elif type_name == "long long":
            return_type_name = "Int128"
        elif type_name == "__int128":
            return_type_name = "Int128"


        ########## 16-bit floating point types ##########
        elif type_name == "Float16_t":
            return_type_name = "Float16"
        elif type_name == "__SVBFloat16_t":
            return_type_name = "Float16"
        elif type_name == "__SVFloat16_t":
            return_type_name = "Float16"

        ########## 32-bit floating point types ##########
        elif type_name == "float":
            return_type_name = "Float32"
        elif type_name == "float32_t":
            return_type_name = "Float32"
        elif type_name == "__SVFloat32_t":
            return_type_name = "Float32"

        ########## 64-bit floating point types ##########
        elif type_name == "double":
            return_type_name = "Float64"
        elif type_name == "long double":
            return_type_name = "Float64"
        elif type_name == "float64_t":
            return_type_name = "Float64"

        if return_type_name != type_name:
            was_changed = True

        if was_changed and unsigned:
            return_type_name = "U" + return_type_name

        return (return_type_name, was_changed)


    @staticmethod
    fn map_type(type_name: String, unsigned: Bool = False) -> String:

        if type_name == "void":
            return "NoneType"
        elif type_name == "bool" or type_name == "__SVBool_t":
            return "Bool"
        elif type_name.endswith("__NSConstantString_tag"):
            # TODO(josiahls): Not sure this is the current data struct format.
            return "StaticString"

        var (return_type_name, was_changed) = Self._get_primitive_type(type_name, unsigned)
        if was_changed:
            return return_type_name
        else:
            return type_name


    # @staticmethod
    # fn map_type(type_name: String, unsigned: Bool = False) -> String:

    #     if type_name == "void":
    #         return "NoneType"
    #     elif type_name == "bool" or type_name == "__SVBool_t":
    #         return "Bool"
    #     elif type_name.endswith("__NSConstantString_tag"):
    #         # TODO(josiahls): Not sure this is the current data struct format.
    #         return "StaticString"

    #     # Check for numeric types
    #     var numeric_type: String = ""

    #     ########## 8-bit types ##########
    #     if type_name == "char":
    #         numeric_type = "Int8"
    #     elif type_name == "unsigned char":
    #         numeric_type = "UInt8"
    #     elif type_name == "signed char":
    #         numeric_type = "Int8"
    #     elif type_name == "int8_t":
    #         numeric_type = "Int8"
    #     elif type_name == "unsigned int8_t":
    #         numeric_type = "UInt8"
    #     elif type_name == "__SVInt8_t":
    #         numeric_type = "Int8"
    #     elif type_name == "__SVUint8_t":
    #         numeric_type = "UInt8"
    #     elif type_name == "__clang_svint8x2_t":
    #         numeric_type = "SIMD[DType.int8, 2]"
    #     elif type_name == "__clang_svuint8x2_t":
    #         numeric_type = "SIMD[DType.uint8, 2]"
    #     elif type_name == "__clang_svint8x3_t":
    #         numeric_type = "SIMD[DType.int8, 3]"
    #     elif type_name == "__clang_svuint8x3_t":
    #         numeric_type = "SIMD[DType.uint8, 3]"
    #     elif type_name == "__clang_svint8x4_t":
    #         numeric_type = "SIMD[DType.int8, 4]"
    #     elif type_name == "__clang_svuint8x4_t":
    #         numeric_type = "SIMD[DType.uint8, 4]"

    #     ########## 16-bit types ##########
    #     elif type_name == "short":
    #         numeric_type = "Int16"
    #     elif type_name == "unsigned short":
    #         numeric_type = "UInt16"
    #     elif type_name == "int16_t":
    #         numeric_type = "Int16"
    #     elif type_name == "unsigned int16_t":
    #         numeric_type = "UInt16"
    #     elif type_name == "Int16_t":
    #         numeric_type = "Int16"
    #     elif type_name == "__SVInt16_t":
    #         numeric_type = "Int16"
    #     elif type_name == "__SVUint16_t":
    #         numeric_type = "UInt16"
    #     elif type_name == "Int16_t":
    #         numeric_type = "UInt16"
    #     elif type_name == "__clang_svint16x2_t":
    #         numeric_type = "SIMD[DType.int16, 2]"
    #     elif type_name == "__clang_svuint16x2_t":
    #         numeric_type = "SIMD[DType.uint16, 2]"
    #     elif type_name == "__clang_svint16x3_t":
    #         numeric_type = "SIMD[DType.int16, 3]"
    #     elif type_name == "__clang_svuint16x3_t":
    #         numeric_type = "SIMD[DType.uint16, 3]"
    #     elif type_name == "__clang_svint16x4_t":
    #         numeric_type = "SIMD[DType.int16, 4]"
    #     elif type_name == "__clang_svuint16x4_t":
    #         numeric_type = "SIMD[DType.uint16, 4]"

    #     ########## 32-bit types ##########
    #     elif type_name == "int":
    #         numeric_type = "Int32"
    #     elif type_name == "unsigned int":
    #         numeric_type = "UInt32"
    #     elif type_name == "int32_t":
    #         numeric_type = "Int32"
    #     elif type_name == "unsigned int32_t":
    #         numeric_type = "UInt32"
    #     elif type_name == "__SVInt32_t":
    #         numeric_type = "Int32"
    #     elif type_name == "__SVUint32_t":
    #         numeric_type = "UInt32"
    #     elif type_name == "__clang_svint32x2_t":
    #         numeric_type = "SIMD[DType.int32, 2]"
    #     elif type_name == "__clang_svuint32x2_t":
    #         numeric_type = "SIMD[DType.uint32, 2]"
    #     elif type_name == "__clang_svint32x3_t":
    #         numeric_type = "SIMD[DType.int32, 3]"
    #     elif type_name == "__clang_svuint32x3_t":
    #         numeric_type = "SIMD[DType.uint32, 3]"
    #     elif type_name == "__clang_svint32x4_t":
    #         numeric_type = "SIMD[DType.int32, 4]"
    #     elif type_name == "__clang_svuint32x4_t":
    #         numeric_type = "SIMD[DType.uint32, 4]"

    #     ########## 64-bit types ##########
    #     elif type_name == "long":
    #         numeric_type = "Int64"
    #     elif type_name == "unsigned long":
    #         numeric_type = "UInt64"
    #     elif type_name == "int64_t":
    #         numeric_type = "Int64"
    #     elif type_name == "unsigned int64_t":
    #         numeric_type = "UInt64"
    #     elif type_name == "__SVInt64_t":
    #         numeric_type = "Int64"
    #     elif type_name == "__SVUint64_t":
    #         numeric_type = "UInt64"
    #     elif type_name == "__clang_svint64x2_t":
    #         numeric_type = "SIMD[DType.int64, 2]"
    #     elif type_name == "__clang_svuint64x2_t":
    #         numeric_type = "SIMD[DType.uint64, 2]"
    #     elif type_name == "__clang_svint64x3_t":
    #         numeric_type = "SIMD[DType.int64, 3]"
    #     elif type_name == "__clang_svuint64x3_t":
    #         numeric_type = "SIMD[DType.uint64, 3]"
    #     elif type_name == "__clang_svint64x4_t":
    #         numeric_type = "SIMD[DType.int64, 4]"
    #     elif type_name == "__clang_svuint64x4_t":
    #         numeric_type = "SIMD[DType.uint64, 4]"

    #     ########## 128-bit types ##########
    #     elif type_name == "long long":
    #         numeric_type = "Int128"
    #     elif type_name == "unsigned long long":
    #         numeric_type = "UInt128"
    #     elif type_name == "__int128":
    #         numeric_type = "Int128"
    #     elif type_name == "unsigned __int128":
    #         numeric_type = "UInt128"
    #     elif type_name == "__SVInt128_t":
    #         numeric_type = "Int128"
    #     elif type_name == "__SVUint128_t":
    #         numeric_type = "UInt128"
    #     elif type_name == "__clang_svint128x2_t":
    #         numeric_type = "SIMD[DType.int128, 2]"
    #     elif type_name == "__clang_svuint128x2_t":
    #         numeric_type = "SIMD[DType.uint128, 2]"
    #     elif type_name == "__clang_svint128x3_t":
    #         numeric_type = "SIMD[DType.int128, 3]"
    #     elif type_name == "__clang_svuint128x3_t":
    #         numeric_type = "SIMD[DType.uint128, 3]"
    #     elif type_name == "__clang_svint128x4_t":
    #         numeric_type = "SIMD[DType.int128, 4]"
    #     elif type_name == "__clang_svuint128x4_t":
    #         numeric_type = "SIMD[DType.uint128, 4]"

    #     ########## 16-bit floating point types ##########
    #     elif type_name == "Float16_t":
    #         numeric_type = "Float16"
    #     elif type_name == "__SVBFloat16_t":
    #         numeric_type = "Float16"
    #     elif type_name == "__SVFloat16_t":
    #         numeric_type = "Float16"
    #     elif type_name == "__clang_svfloat16x2_t":
    #         numeric_type = "SIMD[DType.float16, 2]"
    #     elif type_name == "__clang_svfloat16x3_t":
    #         numeric_type = "SIMD[DType.float16, 3]"
    #     elif type_name == "__clang_svfloat16x4_t":
    #         numeric_type = "SIMD[DType.float16, 4]"
    #     elif type_name == "__clang_svbfloat16x2_t":
    #         numeric_type = "SIMD[DType.bfloat16, 2]"
    #     elif type_name == "__clang_svbfloat16x3_t":
    #         numeric_type = "SIMD[DType.bfloat16, 3]"
    #     elif type_name == "__clang_svbfloat16x4_t":
    #         numeric_type = "Float16"

    #     ########## 32-bit floating point types ##########
    #     elif type_name == "float":
    #         numeric_type = "Float32"
    #     elif type_name == "float32_t":
    #         numeric_type = "Float32"
    #     elif type_name == "__SVFloat32_t":
    #         numeric_type = "Float32"
    #     elif type_name == "Float32_t":
    #         numeric_type = "Float32"
    #     elif type_name == "__clang_svfloat32x2_t":
    #         numeric_type = "SIMD[DType.float32, 2]"
    #     elif type_name == "__clang_svfloat32x3_t":
    #         numeric_type = "SIMD[DType.float32, 3]"
    #     elif type_name == "__clang_svfloat32x4_t":
    #         numeric_type = "SIMD[DType.float32, 4]"
    #     elif type_name == "__clang_svbfloat32x2_t":
    #         numeric_type = "SIMD[DType.bfloat32, 2]"
    #     elif type_name == "__clang_svbfloat32x3_t":
    #         numeric_type = "SIMD[DType.bfloat32, 3]"
    #     elif type_name == "__clang_svbfloat64x4_t":
    #         numeric_type = "SIMD[DType.bfloat64, 4]"

    #     ########## 64-bit floating point types ##########
    #     elif type_name == "double":
    #         numeric_type = "Float64"
    #     elif type_name == "long double":
    #         numeric_type = "Float64"  # Mojo doesn't have extended precision, use Float64
    #     elif type_name == "float64_t":
    #         numeric_type = "Float64"
    #     elif type_name == "Float64_t":
    #         numeric_type = "Float64"
    #     elif type_name == "__SVFloat64_t":
    #         numeric_type = "Float64"
    #     elif type_name == "__clang_svfloat64x2_t":
    #         numeric_type = "SIMD[DType.float64, 2]"
    #     elif type_name == "__clang_svfloat64x3_t":
    #         numeric_type = "SIMD[DType.float64, 3]"
    #     elif type_name == "__clang_svfloat64x4_t":
    #         numeric_type = "SIMD[DType.float64, 4]"

    #     if numeric_type != "":
    #         return numeric_type
    #     return type_name