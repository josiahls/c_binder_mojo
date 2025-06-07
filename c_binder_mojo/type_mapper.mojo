"""DType Mapping Utilities."""

# Native Mojo Modules
from sys.ffi import _Global, UnsafePointer
from sys import ffi

# First Party Modules


@fieldwise_init
struct _GlobalTypeMapper(Copyable, Movable):
    var custom_types: List[String]

    fn __init__(out self):
        self.custom_types = []

    fn add_custom_type(mut self, custom_type: String):
        self.custom_types.append(custom_type)


fn _init_global_type_mapper() -> _GlobalTypeMapper:
    return _GlobalTypeMapper()


alias GLOBAL_TYPE_MAPPER = _Global[
    "GLOBAL_TYPE_MAPPER", _GlobalTypeMapper, _init_global_type_mapper
]


@always_inline
fn get_global_type_mapper() -> UnsafePointer[_GlobalTypeMapper]:
    return GLOBAL_TYPE_MAPPER.get_or_create_ptr()


struct TypeMapper:
    """Maps C types to their Mojo equivalents.

    This struct provides static type mappings from C types to Mojo types.
    It uses parameter decorators to create compile-time mappings.
    """

    @staticmethod
    fn clean_type_name(type_name: String) -> String:
        """Cleans a C type name by removing quotes and whitespace.

        Args:
            type_name: The C type to clean.

        Returns:
            The cleaned type name.
        """
        return String(type_name.replace("'", "").strip())

    @staticmethod
    fn map_type(type_name: String) -> String:
        """Maps a C type to its Mojo equivalent.

        Args:
            type_name: The C type to map.

        Returns:
            The equivalent Mojo type.
        """
        var _type_name = Self.clean_type_name(type_name)

        if _type_name == "void":
            return "NoneType"
        elif _type_name == "bool" or _type_name == "__SVBool_t":
            return "Bool"
        elif _type_name.endswith("__NSConstantString_tag"):
            # TODO(josiahls): Not sure this is the current data struct format.
            return "StaticString"
        elif _type_name == "__builtin_va_list" or _type_name == "va_list" or _type_name == "std::__va_list":
            # va_list is used for variable argument functions - map to opaque pointer
            return "OpaquePointer"
        elif _type_name == "__va_list_tag[1]":
            return "OpaquePointer"

        # Check for numeric types
        var numeric_type: String = ""

        ########## 8-bit types ##########
        if _type_name == "char":
            numeric_type = "Int8"
        elif _type_name == "unsigned char":
            numeric_type = "UInt8"
        elif _type_name == "signed char":
            numeric_type = "Int8"
        elif _type_name == "int8_t":
            numeric_type = "Int8"
        elif _type_name == "unsigned int8_t":
            numeric_type = "UInt8"
        elif _type_name == "__SVInt8_t":
            numeric_type = "Int8"
        elif _type_name == "__SVUint8_t":
            numeric_type = "UInt8"
        elif _type_name == "__clang_svint8x2_t":
            numeric_type = "SIMD[DType.int8, 2]"
        elif _type_name == "__clang_svuint8x2_t":
            numeric_type = "SIMD[DType.uint8, 2]"
        elif _type_name == "__clang_svint8x3_t":
            numeric_type = "SIMD[DType.int8, 3]"
        elif _type_name == "__clang_svuint8x3_t":
            numeric_type = "SIMD[DType.uint8, 3]"
        elif _type_name == "__clang_svint8x4_t":
            numeric_type = "SIMD[DType.int8, 4]"
        elif _type_name == "__clang_svuint8x4_t":
            numeric_type = "SIMD[DType.uint8, 4]"

        ########## 16-bit types ##########
        elif _type_name == "short":
            numeric_type = "Int16"
        elif _type_name == "unsigned short":
            numeric_type = "UInt16"
        elif _type_name == "int16_t":
            numeric_type = "Int16"
        elif _type_name == "unsigned int16_t":
            numeric_type = "UInt16"
        elif _type_name == "Int16_t":
            numeric_type = "Int16"
        elif _type_name == "__SVInt16_t":
            numeric_type = "Int16"
        elif _type_name == "__SVUint16_t":
            numeric_type = "UInt16"
        elif _type_name == "Int16_t":
            numeric_type = "UInt16"
        elif _type_name == "__clang_svint16x2_t":
            numeric_type = "SIMD[DType.int16, 2]"
        elif _type_name == "__clang_svuint16x2_t":
            numeric_type = "SIMD[DType.uint16, 2]"
        elif _type_name == "__clang_svint16x3_t":
            numeric_type = "SIMD[DType.int16, 3]"
        elif _type_name == "__clang_svuint16x3_t":
            numeric_type = "SIMD[DType.uint16, 3]"
        elif _type_name == "__clang_svint16x4_t":
            numeric_type = "SIMD[DType.int16, 4]"
        elif _type_name == "__clang_svuint16x4_t":
            numeric_type = "SIMD[DType.uint16, 4]"

        ########## 32-bit types ##########
        elif _type_name == "int":
            numeric_type = "Int32"
        elif _type_name == "unsigned int":
            numeric_type = "UInt32"
        elif _type_name == "int32_t":
            numeric_type = "Int32"
        elif _type_name == "unsigned int32_t":
            numeric_type = "UInt32"
        elif _type_name == "__SVInt32_t":
            numeric_type = "Int32"
        elif _type_name == "__SVUint32_t":
            numeric_type = "UInt32"
        elif _type_name == "__clang_svint32x2_t":
            numeric_type = "SIMD[DType.int32, 2]"
        elif _type_name == "__clang_svuint32x2_t":
            numeric_type = "SIMD[DType.uint32, 2]"
        elif _type_name == "__clang_svint32x3_t":
            numeric_type = "SIMD[DType.int32, 3]"
        elif _type_name == "__clang_svuint32x3_t":
            numeric_type = "SIMD[DType.uint32, 3]"
        elif _type_name == "__clang_svint32x4_t":
            numeric_type = "SIMD[DType.int32, 4]"
        elif _type_name == "__clang_svuint32x4_t":
            numeric_type = "SIMD[DType.uint32, 4]"

        ########## 64-bit types ##########
        elif _type_name == "long":
            numeric_type = "Int64"
        elif _type_name == "unsigned long":
            numeric_type = "UInt64"
        elif _type_name == "int64_t":
            numeric_type = "Int64"
        elif _type_name == "unsigned int64_t":
            numeric_type = "UInt64"
        elif _type_name == "__SVInt64_t":
            numeric_type = "Int64"
        elif _type_name == "__SVUint64_t":
            numeric_type = "UInt64"
        elif _type_name == "__clang_svint64x2_t":
            numeric_type = "SIMD[DType.int64, 2]"
        elif _type_name == "__clang_svuint64x2_t":
            numeric_type = "SIMD[DType.uint64, 2]"
        elif _type_name == "__clang_svint64x3_t":
            numeric_type = "SIMD[DType.int64, 3]"
        elif _type_name == "__clang_svuint64x3_t":
            numeric_type = "SIMD[DType.uint64, 3]"
        elif _type_name == "__clang_svint64x4_t":
            numeric_type = "SIMD[DType.int64, 4]"
        elif _type_name == "__clang_svuint64x4_t":
            numeric_type = "SIMD[DType.uint64, 4]"

        ########## 128-bit types ##########
        elif _type_name == "long long":
            numeric_type = "Int128"
        elif _type_name == "unsigned long long":
            numeric_type = "UInt128"
        elif _type_name == "__int128":
            numeric_type = "Int128"
        elif _type_name == "unsigned __int128":
            numeric_type = "UInt128"
        elif _type_name == "__SVInt128_t":
            numeric_type = "Int128"
        elif _type_name == "__SVUint128_t":
            numeric_type = "UInt128"
        elif _type_name == "__clang_svint128x2_t":
            numeric_type = "SIMD[DType.int128, 2]"
        elif _type_name == "__clang_svuint128x2_t":
            numeric_type = "SIMD[DType.uint128, 2]"
        elif _type_name == "__clang_svint128x3_t":
            numeric_type = "SIMD[DType.int128, 3]"
        elif _type_name == "__clang_svuint128x3_t":
            numeric_type = "SIMD[DType.uint128, 3]"
        elif _type_name == "__clang_svint128x4_t":
            numeric_type = "SIMD[DType.int128, 4]"
        elif _type_name == "__clang_svuint128x4_t":
            numeric_type = "SIMD[DType.uint128, 4]"

        ########## 16-bit floating point types ##########
        elif _type_name == "Float16_t":
            numeric_type = "Float16"
        elif _type_name == "__SVBFloat16_t":
            numeric_type = "Float16"
        elif _type_name == "__SVFloat16_t":
            numeric_type = "Float16"
        elif _type_name == "__clang_svfloat16x2_t":
            numeric_type = "SIMD[DType.float16, 2]"
        elif _type_name == "__clang_svfloat16x3_t":
            numeric_type = "SIMD[DType.float16, 3]"
        elif _type_name == "__clang_svfloat16x4_t":
            numeric_type = "SIMD[DType.float16, 4]"
        elif _type_name == "__clang_svbfloat16x2_t":
            numeric_type = "SIMD[DType.bfloat16, 2]"
        elif _type_name == "__clang_svbfloat16x3_t":
            numeric_type = "SIMD[DType.bfloat16, 3]"
        elif _type_name == "__clang_svbfloat16x4_t":
            numeric_type = "Float16"

        ########## 32-bit floating point types ##########
        elif _type_name == "float":
            numeric_type = "Float32"
        elif _type_name == "float32_t":
            numeric_type = "Float32"
        elif _type_name == "__SVFloat32_t":
            numeric_type = "Float32"
        elif _type_name == "Float32_t":
            numeric_type = "Float32"
        elif _type_name == "__clang_svfloat32x2_t":
            numeric_type = "SIMD[DType.float32, 2]"
        elif _type_name == "__clang_svfloat32x3_t":
            numeric_type = "SIMD[DType.float32, 3]"
        elif _type_name == "__clang_svfloat32x4_t":
            numeric_type = "SIMD[DType.float32, 4]"
        elif _type_name == "__clang_svbfloat32x2_t":
            numeric_type = "SIMD[DType.bfloat32, 2]"
        elif _type_name == "__clang_svbfloat32x3_t":
            numeric_type = "SIMD[DType.bfloat32, 3]"
        elif _type_name == "__clang_svbfloat64x4_t":
            numeric_type = "SIMD[DType.bfloat64, 4]"

        ########## 64-bit floating point types ##########
        elif _type_name == "double":
            numeric_type = "Float64"
        elif _type_name == "long double":
            numeric_type = "Float64"  # Mojo doesn't have extended precision, use Float64
        elif _type_name == "float64_t":
            numeric_type = "Float64"
        elif _type_name == "Float64_t":
            numeric_type = "Float64"
        elif _type_name == "__SVFloat64_t":
            numeric_type = "Float64"
        elif _type_name == "__clang_svfloat64x2_t":
            numeric_type = "SIMD[DType.float64, 2]"
        elif _type_name == "__clang_svfloat64x3_t":
            numeric_type = "SIMD[DType.float64, 3]"
        elif _type_name == "__clang_svfloat64x4_t":
            numeric_type = "SIMD[DType.float64, 4]"

        if numeric_type != "":
            return numeric_type

        for custom_type in get_global_type_mapper()[].custom_types:
            if _type_name == custom_type:
                return custom_type

        # For struct types, we'll need to handle them differently
        # This is a placeholder for now
        print("TypeMapper: Unknown type: " + _type_name)
        return _type_name

    @staticmethod
    fn is_pointer_type(type_name: String) -> Bool:
        """Checks if a C type is a pointer type.

        Args:
            type_name: The C type to check.

        Returns:
            True if the type is a pointer, False otherwise.
        """
        var _type_name = Self.clean_type_name(type_name)
        # For now, we'll just check if it contains a space followed by *
        # This is a simple check that works for basic pointer types
        return _type_name.endswith("*")

    @staticmethod
    fn get_sugar_type(type_name: String) -> String:
        try:
            splits = type_name.split(":")
            return splits[0]
        except:
            return type_name

    @staticmethod
    fn is_vector_type(type_name: String) -> Bool:
        """Checks if a C type is a vector type.
        
        Args:
            type_name: The C type to check.
        """
        if type_name == "__va_list_tag[1]":
            return False
        return '[' in type_name and ']' in type_name

    @staticmethod
    fn get_vector_type(type_name: String) -> String:
        """Splits a C type into its vector components.
        
        Args:
            type_name: The C type to split.
        """
        var _type_name = Self.clean_type_name(type_name)
        if Self.is_vector_type(_type_name):
            try:
                return _type_name.split('[')[0]
            except:
                return _type_name
        return _type_name

    @staticmethod
    fn get_vector_size(type_name: String) -> String:
        """Gets the size of a vector type.
        
        Args:
            type_name: The C type to get the size of.
        """
        var _type_name = Self.clean_type_name(type_name)
        if Self.is_vector_type(_type_name):
            try:
                return _type_name.split('[')[1].split(']')[0]
            except:
                return 'unknown'
        return 'unknown'

    @staticmethod
    fn convert_type_to_dtype(type_name: String) -> String:
        """Converts a Mojo type to a DType.
        
        Args:
            type_name: The C type to convert.
        """
        return type_name + '.dtype'

    @staticmethod
    fn get_mojo_type(type_name: String) -> String:
        """Gets the complete Mojo type mapping for a C type.

        Args:
            type_name: The C type to map.

        Returns:
            The complete Mojo type mapping, including any necessary pointer handling.
        """
        var _type_name = Self.clean_type_name(type_name)
        var _vector_size:String = 'unknown'
        var is_pointer = False
        var is_sugar = False
        var is_vector = False
        if Self.is_pointer_type(_type_name):
            _type_name = _type_name[:-1]
            is_pointer = True

        if ":" in _type_name and not "::" in _type_name:
            is_sugar = True
            _type_name = Self.get_sugar_type(_type_name)

        if Self.is_vector_type(_type_name):
            is_vector = True
            _vector_size = Self.get_vector_size(_type_name)
            _type_name = Self.get_vector_type(_type_name)

        var mojo_type = Self.map_type(_type_name)
        if is_pointer:
            if _type_name == "void":
                mojo_type = "OpaquePointer"
            else:
                mojo_type = "UnsafePointer[" + mojo_type + "]"

        if is_vector:
            mojo_type = Self.convert_type_to_dtype(mojo_type)
            mojo_type = "SIMD[" + mojo_type + ", " + _vector_size + "]"

        return mojo_type
