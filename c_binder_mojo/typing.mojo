"""DType Mapping Utilities."""

# Native Mojo Modules
from sys.ffi import _Global
from sys import ffi

# First Party Modules
from c_binder_mojo.builtin_type_mapper import BuiltinTypeMapper


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


alias GLOBAL_TYPE_REGISTRY = _Global[
    "GLOBAL_TYPE_REGISTRY", _GlobalTypeRegistry, _init_global_type_registry
]


alias NUMERIC_TYPES:Dict[String, String] = {
    # Primitive types
    "char": "Int8",
    "short": "Int16",
    "int": "Int32",
    "long": "Int64",
    "long long": "Int64",
    "long double": "Float64",
    "float": "Float32",
    "double": "Float64",
    # Strictly defined types
    "int8_t": "Int8",
    "uint8_t": "UInt8",
    "int16_t": "Int16",
    "uint16_t": "UInt16",
    "int32_t": "Int32",
    "uint32_t": "UInt32",
    "int64_t": "Int64",
    "uint64_t": "UInt64",
    "__int128": "Int128",
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
    "__SVFloat16_t": "Float16",
    "__SVFloat32_t": "Float32",
    "__SVFloat64_t": "Float64",
}


alias NON_NUMERIC_TYPES:Dict[String, String] = {
    "bool": "Bool",
    "void": "NoneType",
    "__SVBool_t": "Bool",
    "__NSConstantString_tag": "StaticString",
}


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
    fn _is_function(c_type: String) -> Bool:
        has_input = "(*)" in c_type
        if not has_input:
            return False

        idx = c_type.find("(*)")
        if idx == -1:
            return False
        # Check whether we have this structure: (*)(...)
        return "(" in c_type[idx+1:] and ")" in c_type[idx+1:]

    @staticmethod
    fn _is_pointer(c_type: String) -> Bool:
        return c_type.endswith("*")

    @staticmethod
    fn _is_array(c_type: String) -> Bool:
        return "[" in c_type and "]" in c_type

    @staticmethod
    fn _is_variadic_list(c_type: String) -> Bool:
        return ',' in c_type

    @staticmethod
    fn _convert_pointer_type(
        c_type: String,
    ) -> String:
        stripped_type = String(c_type.removesuffix("*"))
        ptr =  'UnsafePointer[' + Self.convert_c_type_to_mojo_type(stripped_type) + ']'
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
        return 'UnsafePointer[' + Self.convert_c_type_to_mojo_type(stripped_type) + ']'

    @staticmethod
    fn _convert_function_type(
        c_type: String,
        is_fn_param: Bool = False
    ) -> String:
        function_ptr_idx = c_type.find("(*)")
        if function_ptr_idx == -1:
            return c_type

        fn_return_type = String(c_type[:function_ptr_idx])
        fn_params = String(c_type[function_ptr_idx+3:])

        fn_return_type = Self.convert_c_type_to_mojo_type(fn_return_type)
        fn_params = Self.convert_c_type_to_mojo_type(fn_params, True)
        return "fn" + fn_params + " -> " + fn_return_type

    @staticmethod
    fn _convert_signed_type(
        c_type: String,
    ) -> String:
        stripped_type = String(c_type.removeprefix('signed '))
        return Self.convert_c_type_to_mojo_type(stripped_type)

    @staticmethod
    fn _convert_unsigned_type(
        c_type: String,
    ) -> String:
        stripped_type = String(c_type.removeprefix('unsigned '))
        return 'U' + Self.convert_c_type_to_mojo_type(stripped_type)

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
        c_type: String,
        is_fn_param: Bool = False
    ) -> String:
        first_open_paren = c_type.find("(")
        last_close_paren = c_type.rfind(")")
        if first_open_paren == -1 or last_close_paren == -1:
            return c_type
        left_type = String(c_type[:first_open_paren])
        middle_type = String(c_type[first_open_paren+1:last_close_paren])
        right_type = String(c_type[last_close_paren+1:])   

        return_type:String = Self.convert_c_type_to_mojo_type(left_type)
        middle_types = Self.convert_c_type_to_mojo_type(middle_type, is_fn_param)
        if middle_types == "NoneType" and is_fn_param:
            middle_types = ""
        return_type += "(" + middle_types + ")"
        return_type += Self.convert_c_type_to_mojo_type(right_type)

        return return_type

    @staticmethod
    fn _convert_variadic_list_type(
        c_type: String,
        is_fn_param: Bool = False
    ) -> String:
        returned_elements:List[String] = []

        if ',' in c_type:
            c_type_split = c_type.split(",")
        else:
            c_type_split = [c_type]

        for element in c_type_split: 
            stripped_element = String(element.strip())
            is_const = False

            if stripped_element.startswith('const'):
                stripped_element = String(stripped_element.removeprefix('const '))
                is_const = True
            
            converted_element = Self.convert_c_type_to_mojo_type(stripped_element)

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
        is_fn_param: Bool = False
    ) -> String:
        stripped_type = String(c_type.strip())
        try:
            # print('processing type: ' + stripped_type)
            if stripped_type in NON_NUMERIC_TYPES:
                return NON_NUMERIC_TYPES[stripped_type]
            elif stripped_type in NUMERIC_TYPES:
                return NUMERIC_TYPES[stripped_type]
            elif Self._is_function(stripped_type):
                return Self._convert_function_type(stripped_type, is_fn_param)
            elif Self._is_parentheses_wrapped(stripped_type):
                return Self._convert_parentheses_wrapped_type(stripped_type, is_fn_param)
            elif Self._is_variadic_list(stripped_type) or is_fn_param:
                return Self._convert_variadic_list_type(stripped_type, is_fn_param)
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