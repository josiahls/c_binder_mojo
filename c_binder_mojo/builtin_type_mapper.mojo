



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
