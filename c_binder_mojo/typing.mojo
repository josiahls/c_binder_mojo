"""DType Mapping Utilities."""

# Native Mojo Modules
from sys.ffi import _Global
from sys import ffi

# First Party Modules


@fieldwise_init
struct _GlobalTypeRegistry(Copyable, Movable):
    var custom_non_numerics: List[String]
    var custom_numerics: List[String]
    var custom_functions: List[String]
    var custom_structs: List[String]
    var custom_enums: List[String]
    var custom_typedefs: List[String]

    fn __init__(out self):
        self.custom_non_numerics = []
        self.custom_numerics = []
        self.custom_functions = []
        self.custom_structs = []
        self.custom_enums = []
        self.custom_typedefs = []

    fn is_defined(self, type_name: String) -> Bool:
        if type_name in self.custom_non_numerics:
            return True
        elif type_name in self.custom_numerics:
            return True
        elif type_name in self.custom_functions:
            return True
        elif type_name in self.custom_structs:
            return True
        elif type_name in self.custom_enums:
            return True
        elif type_name in self.custom_typedefs:
            return True
        return False


fn _init_global_type_registry() -> _GlobalTypeRegistry:
    return _GlobalTypeRegistry()


@always_inline
fn get_global_type_registry() -> UnsafePointer[_GlobalTypeRegistry]:
    return GLOBAL_TYPE_REGISTRY.get_or_create_ptr()


alias GLOBAL_TYPE_REGISTRY = _Global[
    "GLOBAL_TYPE_REGISTRY", _GlobalTypeRegistry, _init_global_type_registry
]


alias NUMERIC_TYPES: Dict[String, String] = {
    # Primitive types
    "char": "Int8",
    "short": "Int16",
    "int": "Int32",
    "long": "ffi.c_long",
    "long long": "ffi.c_long_long",
    "long double": "Float64",
    "float": "Float32",
    "double": "Float64",
    "long double": "Float64",
    # Signed Primitive types
    "signed char": "Int8",
    "signed short": "Int16",
    "signed int": "Int32",
    "signed long": "ffi.c_long",
    "signed long long": "ffi.c_long_long",
    # Unsigned Primitive types
    "unsigned char": "UInt8",
    "unsigned short": "UInt16",
    "unsigned int": "UInt32",
    "unsigned long": "ffi.c_ulong",
    "unsigned long long": "ffi.c_ulong_long",
    # Strictly defined types
    "int8_t": "Int8",
    "uint8_t": "UInt8",
    "int16_t": "Int16",
    "uint16_t": "UInt16",
    "int32_t": "ffi.c_long",
    "uint32_t": "ffi.c_ulong",
    "int64_t": "ffi.c_long_long",
    "uint64_t": "ffi.c_ulong_long",
    "__int128": "Int128",
    "unsigned __int128": "UInt128",
    "float16_t": "Float16",
    "float32_t": "Float32",
    "float64_t": "Float64",
    # SIMD types
    "__SVInt8_t": "Int8",
    "__SVInt16_t": "Int16",
    "__SVInt32_t": "Int32",
    "__SVInt64_t": "Int64",
    "__SVInt128_t": "Int128",
    "__SVUInt8_t": "UInt8",
    "__SVUInt16_t": "UInt16",
    "__SVUInt32_t": "UInt32",
    "__SVUInt64_t": "UInt64",
    "__SVUint8_t": "UInt8",
    "__SVUint16_t": "UInt16",
    "__SVUint32_t": "UInt32",
    "__SVUint64_t": "UInt64",
    "__SVFloat16_t": "Float16",
    "__SVFloat32_t": "Float32",
    "__SVFloat64_t": "Float64",
    "__SVBFloat16_t": "BFloat16",
    # Complicated SIMD types
    "__clang_svint8x2_t": "UnsafePointer[Int8]",
    "__clang_svint16x2_t": "UnsafePointer[Int16]",
    "__clang_svint32x2_t": "UnsafePointer[Int32]",
    "__clang_svint64x2_t": "UnsafePointer[Int64]",
    "__clang_svuint8x2_t": "UnsafePointer[UInt8]",
    "__clang_svuint16x2_t": "UnsafePointer[UInt16]",
    "__clang_svuint32x2_t": "UnsafePointer[UInt32]",
    "__clang_svuint64x2_t": "UnsafePointer[UInt64]",
    "__clang_svfloat16x2_t": "UnsafePointer[Float16]",
    "__clang_svfloat32x2_t": "UnsafePointer[Float32]",
    "__clang_svfloat64x2_t": "UnsafePointer[Float64]",
    "__clang_svbfloat16x2_t": "UnsafePointer[BFloat16]",
    "__clang_svint8x3_t": "UnsafePointer[Int8]",
    "__clang_svint16x3_t": "UnsafePointer[Int16]",
    "__clang_svint32x3_t": "UnsafePointer[Int32]",
    "__clang_svint64x3_t": "UnsafePointer[Int64]",
    "__clang_svuint8x3_t": "UnsafePointer[UInt8]",
    "__clang_svuint16x3_t": "UnsafePointer[UInt16]",
    "__clang_svuint32x3_t": "UnsafePointer[UInt32]",
    "__clang_svuint64x3_t": "UnsafePointer[UInt64]",
    "__clang_svfloat16x3_t": "UnsafePointer[Float16]",
    "__clang_svfloat32x3_t": "UnsafePointer[Float32]",
    "__clang_svfloat64x3_t": "UnsafePointer[Float64]",
    "__clang_svbfloat16x3_t": "UnsafePointer[BFloat16]",
    "__clang_svint8x4_t": "UnsafePointer[Int8]",
    "__clang_svint16x4_t": "UnsafePointer[Int16]",
    "__clang_svint32x4_t": "UnsafePointer[Int32]",
    "__clang_svint64x4_t": "UnsafePointer[Int64]",
    "__clang_svuint8x4_t": "UnsafePointer[UInt8]",
    "__clang_svuint16x4_t": "UnsafePointer[UInt16]",
    "__clang_svuint32x4_t": "UnsafePointer[UInt32]",
    "__clang_svuint64x4_t": "UnsafePointer[UInt64]",
    "__clang_svfloat16x4_t": "UnsafePointer[Float16]",
    "__clang_svfloat32x4_t": "UnsafePointer[Float32]",
    "__clang_svfloat64x4_t": "UnsafePointer[Float64]",
    "__clang_svbfloat16x4_t": "UnsafePointer[BFloat16]",
}


alias NON_NUMERIC_TYPES: Dict[String, String] = {
    "bool": "Bool",
    "void": "NoneType",
    "__SVBool_t": "Bool",
    "__NSConstantString_tag": "StaticString",
}


alias MOJO_FUNCTIONS: List[String] = ["abort", "getenv", "setenv"]


struct TypeMapper:
    @staticmethod
    fn _convert_non_numeric_type(
        c_type: String,
    ) -> String:
        return c_type

    @staticmethod
    fn _is_signed(c_type: String) -> Bool:
        return c_type.startswith("signed ")

    @staticmethod
    fn _is_unsigned(c_type: String) -> Bool:
        return c_type.startswith("unsigned ")

    @staticmethod
    fn _is_restrict_type(c_type: String) -> Bool:
        return c_type.endswith(" restrict") or c_type.endswith("*restrict")

    @staticmethod
    fn _is_union(c_type: String) -> Bool:
        return c_type.startswith("union ")

    @staticmethod
    fn _has_const_attribute(c_type: String) -> Bool:
        """Evaluate const from right to left.

        Note, if `c_type` ends with a pointer, we return False. We want the `_convert_pointer_type`
        to first remove that, then we can reevaluate.
        """
        return c_type.replace("*", " ").endswith(
            "const"
        ) and not c_type.endswith("*")

    @staticmethod
    fn _is_function(c_type: String) -> Bool:
        has_input = "(*)" in c_type
        if not has_input:
            return False

        idx = c_type.find("(*)")
        if idx == -1:
            return False
        # Check whether we have this structure: (*)(...)
        return "(" in c_type[idx + 1 :] and ")" in c_type[idx + 1 :]

    @staticmethod
    fn _is_pointer(c_type: String) -> Bool:
        return c_type.endswith("*")

    @staticmethod
    fn _is_struct(c_type: String) -> Bool:
        return c_type.startswith("struct ")

    @staticmethod
    fn _is_enum(c_type: String) -> Bool:
        return c_type.startswith("enum ")

    @staticmethod
    fn _is_array(c_type: String) -> Bool:
        return "[" in c_type and "]" in c_type

    @staticmethod
    fn _is_variadic_list(c_type: String) -> Bool:
        return "," in c_type

    @staticmethod
    fn _convert_union_type(c_type: String) -> String:
        return "OpaquePointer # TODO: Union type"

    @staticmethod
    fn _convert_enum_type(c_type: String) -> String:
        var stripped_type = String(c_type.removeprefix("enum "))
        return Self.convert_c_type_to_mojo_type(stripped_type)

    @staticmethod
    fn _convert_restrict_type(c_type: String) -> String:
        # TODO: Does mojo have any equivalent?
        var stripped_type = String(c_type.removesuffix("restrict"))
        return Self.convert_c_type_to_mojo_type(stripped_type)

    @staticmethod
    fn _convert_const_attribute(c_type: String) -> String:
        # TODO: This is sloppy. We need to do proper left <- right evaluation of attributes.
        stripped_type = String(c_type.removesuffix("const"))
        stripped_type = String(stripped_type.removeprefix("const "))
        return Self.convert_c_type_to_mojo_type(stripped_type)

    @staticmethod
    fn _convert_struct_type(c_type: String) -> String:
        var stripped_type = String(c_type.removeprefix("struct "))
        return Self.convert_c_type_to_mojo_type(stripped_type)

    @staticmethod
    fn _convert_pointer_type(
        c_type: String,
    ) -> String:
        stripped_type = String(c_type.removesuffix("*"))
        ptr = (
            "UnsafePointer["
            + Self.convert_c_type_to_mojo_type(stripped_type)
            + "]"
        )
        if ptr == "UnsafePointer[NoneType]":
            return "OpaquePointer"
        return ptr

    @staticmethod
    fn _convert_array_type(
        c_type: String,
    ) -> String:
        """
        Arrays and nested arrays just get converted to UnsafePointer[T].

        TODO: Maybe we can have more granularity here, however the mojo kapa.ai bot
        recommended against it.
        """
        l_bracket_idx = c_type.find("[")
        stripped_type = String(c_type[:l_bracket_idx])
        array_type = Self.convert_c_type_to_mojo_type(stripped_type)
        try:
            array_size = Int(c_type[l_bracket_idx + 1 : c_type.find("]")])
            # if array_size > 5:
            #     return 'UnsafePointer[' + array_type + ']'
            return "StaticTuple[" + array_type + ", " + String(array_size) + "]"
            # var s:String = '('
            # for i in range(array_size):
            #     if i == array_size - 1:
            #         s += array_type
            #     else:
            #         s += array_type + ', '
            # s += ')'
            # return s
        except:
            return (
                "UnsafePointer[" + array_type + "] # Failed to parse array size"
            )

    @staticmethod
    fn _convert_function_type(
        c_type: String, is_fn_param: Bool = False
    ) -> String:
        function_ptr_idx = c_type.find("(*)")
        if function_ptr_idx == -1:
            return c_type

        fn_return_type = String(c_type[:function_ptr_idx])
        fn_params = String(c_type[function_ptr_idx + 3 :])

        fn_return_type = Self.convert_c_type_to_mojo_type(fn_return_type)
        fn_params = Self.convert_c_type_to_mojo_type(fn_params, True)
        return "fn" + fn_params + " -> " + fn_return_type

    @staticmethod
    fn _convert_function_decl_type(
        c_type: String, is_fn_param: Bool = False
    ) -> String:
        """
        This is used for function declarations. Main difference is `c_type` does
        not contain the `(*)` pointer.
        """
        var stripped_type = String(c_type)
        if c_type.endswith("__attribute__((noreturn))"):
            stripped_type = String(
                c_type.removesuffix("__attribute__((noreturn))")
            )

        param_start_idx = stripped_type.find("(")
        param_end_idx = stripped_type.rfind(")")
        if param_start_idx == -1:
            return stripped_type

        fn_return_type = String(stripped_type[:param_start_idx])
        fn_params = String(stripped_type[param_start_idx + 1 : param_end_idx])

        fn_return_type = Self.convert_c_type_to_mojo_type(fn_return_type)
        fn_params = Self.convert_c_type_to_mojo_type(fn_params, True)
        return "fn (" + fn_params + ") -> " + fn_return_type

    @staticmethod
    fn _convert_signed_type(
        c_type: String,
    ) -> String:
        return Self.convert_c_type_to_mojo_type(c_type)

    @staticmethod
    fn _convert_unsigned_type(
        c_type: String,
    ) -> String:
        if not c_type.startswith("unsigned "):
            var unsigned_type = String("unsigned ") + c_type.copy()
            return Self.convert_c_type_to_mojo_type(unsigned_type)
        return Self.convert_c_type_to_mojo_type(c_type)

    @staticmethod
    fn _is_parentheses_wrapped(c_type: String) -> Bool:
        # Grab the first and last parentheses
        first_paren = c_type.find("(")
        last_paren = c_type.rfind(")")
        if first_paren == -1 or last_paren == -1:
            return False
        return first_paren < last_paren

    @staticmethod
    fn _convert_parentheses_wrapped_type(
        c_type: String, is_fn_param: Bool = False
    ) -> String:
        first_open_paren = c_type.find("(")
        last_close_paren = c_type.rfind(")")
        if first_open_paren == -1 or last_close_paren == -1:
            return c_type
        left_type = String(c_type[:first_open_paren])
        middle_type = String(c_type[first_open_paren + 1 : last_close_paren])
        right_type = String(c_type[last_close_paren + 1 :])

        return_type: String = Self.convert_c_type_to_mojo_type(left_type)
        middle_types = Self.convert_c_type_to_mojo_type(
            middle_type, is_fn_param
        )
        if middle_types == "NoneType" and is_fn_param:
            middle_types = ""
        return_type += "(" + middle_types + ")"
        return_type += Self.convert_c_type_to_mojo_type(right_type)

        return return_type

    @staticmethod
    fn _convert_variadic_list_type(
        c_type: String, is_fn_param: Bool = False
    ) -> String:
        returned_elements: List[String] = []

        if "," in c_type:
            c_type_split = c_type.split(",")
        else:
            c_type_split = [c_type]

        for element in c_type_split:
            stripped_element = String(element.strip())
            # TODO(josiahls): I think we need to generalize these attributes like const,
            # and make it easier to do custom ops like `read` or even eventually origin modification.
            is_const = False

            if stripped_element.startswith("const"):
                stripped_element = String(
                    stripped_element.removeprefix("const ")
                )
                is_const = True

            converted_element = Self.convert_c_type_to_mojo_type(
                stripped_element
            )

            if is_const:
                converted_element = "read " + converted_element

            if converted_element == "NoneType" and is_fn_param:
                # NoneType (not pointers): Should imply an empty parameter
                continue
            returned_elements.append(converted_element)

        return String(", ").join(returned_elements)

    @staticmethod
    fn convert_c_type_to_mojo_type(
        c_type: String,
        is_fn_param: Bool = False,
        unsigned: Bool = False,
        is_fn_decl: Bool = False,
    ) -> String:
        stripped_type = String(c_type.strip())
        try:
            # NOTE: I think there is some confusion on the ordering here.
            # Should we be evaluating everything from right to left? Right now
            # its kind of all over the place. I like that we do:
            #   stripped_type in NON_NUMERIC_TYPES
            #   stripped_type in NUMERIC_TYPES
            # But we might want to instead of
            #   any(stripped_type.endswith(non_numeric_type) for non_numeric_type in NON_NUMERIC_TYPES)
            if is_fn_decl:
                # NOTE: Used when whether or not the c_type is a function is important.
                return Self._convert_function_decl_type(
                    stripped_type, is_fn_param
                )
            if unsigned:
                return Self._convert_unsigned_type(stripped_type)
            # TODO: Should we keep the unions in the "c style" in
            # c_binder_mojo/c_binder_mojo/mojo_json_ast_nodes/record_decl_node.mojo? Then convert correctly here?
            # elif Self._is_union(stripped_type):
            #     return Self._convert_union_type(stripped_type)
            elif Self._is_struct(stripped_type):
                return Self._convert_struct_type(stripped_type)
            elif Self._is_enum(stripped_type):
                return Self._convert_enum_type(stripped_type)
            elif Self._is_restrict_type(stripped_type) and not is_fn_param:
                return Self._convert_restrict_type(stripped_type)
            elif stripped_type in NON_NUMERIC_TYPES:
                return NON_NUMERIC_TYPES[stripped_type]
            elif stripped_type in NUMERIC_TYPES:
                return NUMERIC_TYPES[stripped_type]
            elif Self._has_const_attribute(stripped_type) and not is_fn_param:
                # NOTE: is_fn_param==True, const's currently get handled differently.
                return Self._convert_const_attribute(stripped_type)
            elif Self._is_function(stripped_type):
                return Self._convert_function_type(stripped_type, is_fn_param)
            elif Self._is_parentheses_wrapped(stripped_type):
                return Self._convert_parentheses_wrapped_type(
                    stripped_type, is_fn_param
                )
            elif Self._is_variadic_list(stripped_type) or is_fn_param:
                return Self._convert_variadic_list_type(
                    stripped_type, is_fn_param
                )
            elif Self._is_pointer(stripped_type):
                return Self._convert_pointer_type(stripped_type)
            elif Self._is_array(stripped_type):
                return Self._convert_array_type(stripped_type)
            elif Self._is_signed(stripped_type):
                return Self._convert_signed_type(stripped_type)
            elif Self._is_unsigned(stripped_type):
                return Self._convert_unsigned_type(stripped_type)

        except e:
            print("Error: " + String(e) + " for type " + stripped_type)
        return stripped_type
