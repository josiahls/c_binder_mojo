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

        # Check for numeric types
        var numeric_type: String = ""

        if (
            _type_name.endswith("char")
            or _type_name.endswith("int8_t")
            or _type_name.endswith("Int8_t")
            or _type_name.endswith("__clang_svint8x2_t")
            or _type_name.endswith("__clang_svuint8x2_t")
            or _type_name.endswith("__clang_svint8x3_t")
            or _type_name.endswith("__clang_svuint8x3_t")
            or _type_name.endswith("__clang_svint8x4_t")
            or _type_name.endswith("__clang_svuint8x4_t")
        ):
            numeric_type = "Int8"
        elif (
            _type_name.endswith("short")
            or _type_name.endswith("int16_t")
            or _type_name.endswith("Int16_t")
            or _type_name.endswith("__clang_svint16x2_t")
            or _type_name.endswith("__clang_svuint16x2_t")
            or _type_name.endswith("__clang_svint16x3_t")
            or _type_name.endswith("__clang_svuint16x3_t")
            or _type_name.endswith("__clang_svint16x4_t")
            or _type_name.endswith("__clang_svuint16x4_t")
        ):
            numeric_type = "Int16"
        elif (
            _type_name.endswith("int")
            or _type_name.endswith("int32_t")
            or _type_name.endswith("Int32_t")
            or _type_name.endswith("__clang_svint32x2_t")
            or _type_name.endswith("__clang_svuint32x2_t")
            or _type_name.endswith("__clang_svint32x3_t")
            or _type_name.endswith("__clang_svuint32x3_t")
            or _type_name.endswith("__clang_svint32x4_t")
            or _type_name.endswith("__clang_svuint32x4_t")
        ):
            numeric_type = "Int32"
        elif (
            _type_name.endswith("long long")
            or _type_name.endswith("int64_t")
            or _type_name.endswith("Int64_t")
            or _type_name.endswith("__clang_svint64x2_t")
            or _type_name.endswith("__clang_svuint64x2_t")
            or _type_name.endswith("__clang_svint64x3_t")
            or _type_name.endswith("__clang_svuint64x3_t")
            or _type_name.endswith("__clang_svint64x4_t")
            or _type_name.endswith("__clang_svuint64x4_t")
        ):
            numeric_type = "Int64"
        elif (
            _type_name.endswith("long long")
            or _type_name.endswith("int128_t")
            or _type_name.endswith("Int128_t")
            or _type_name.endswith("__int128")
        ):
            numeric_type = "Int128"
        elif (
            _type_name.endswith("long")
            or _type_name.endswith("int64_t")
            or _type_name.endswith("Int64_t")
            or _type_name.endswith("__clang_svint64x2_t")
            or _type_name.endswith("__clang_svuint64x2_t")
            or _type_name.endswith("__clang_svint64x3_t")
            or _type_name.endswith("__clang_svuint64x3_t")
            or _type_name.endswith("__clang_svint64x4_t")
            or _type_name.endswith("__clang_svuint64x4_t")
        ):
            numeric_type = "Int64"
        elif (
            _type_name.endswith("Float16_t")
            or _type_name.endswith("__clang_svfloat16x2_t")
            or _type_name.endswith("__clang_svfloat16x3_t")
            or _type_name.endswith("__clang_svfloat16x4_t")
            or _type_name.endswith("__clang_svbfloat16x2_t")
            or _type_name.endswith("__clang_svbfloat16x3_t")
            or _type_name.endswith("__clang_svbfloat16x4_t")
        ):
            numeric_type = "Float16"
        elif (
            _type_name.endswith("float")
            or _type_name.endswith("float32_t")
            or _type_name.endswith("Float32_t")
            or _type_name.endswith("__clang_svfloat32x2_t")
            or _type_name.endswith("__clang_svfloat32x3_t")
            or _type_name.endswith("__clang_svfloat32x4_t")
            or _type_name.endswith("__clang_svbfloat32x2_t")
            or _type_name.endswith("__clang_svbfloat32x3_t")
            or _type_name.endswith("__clang_svbfloat32x4_t")
        ):
            numeric_type = "Float32"
        elif (
            _type_name.endswith("double")
            or _type_name.endswith("float64_t")
            or _type_name.endswith("Float64_t")
            or _type_name.endswith("__clang_svfloat64x2_t")
            or _type_name.endswith("__clang_svfloat64x3_t")
            or _type_name.endswith("__clang_svfloat64x4_t")
            or _type_name.endswith("__clang_svbfloat64x2_t")
            or _type_name.endswith("__clang_svbfloat64x3_t")
            or _type_name.endswith("__clang_svbfloat64x4_t")
        ):
            numeric_type = "Float64"

        if numeric_type != "":
            if _type_name.startswith("unsigned "):
                numeric_type = "U" + numeric_type
            elif _type_name.startswith("__SVU"):
                numeric_type = "U" + numeric_type
            elif _type_name.startswith("__clang_svu"):
                numeric_type = "U" + numeric_type

        if numeric_type != "":
            return numeric_type

        for custom_type in get_global_type_mapper()[].custom_types:
            if _type_name == custom_type[]:
                return custom_type[]

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
    fn get_mojo_type(type_name: String) -> String:
        """Gets the complete Mojo type mapping for a C type.

        Args:
            type_name: The C type to map.

        Returns:
            The complete Mojo type mapping, including any necessary pointer handling.
        """
        var _type_name = Self.clean_type_name(type_name)
        var is_pointer = False
        var is_sugar = False
        if Self.is_pointer_type(_type_name):
            _type_name = _type_name[:-1]
            is_pointer = True

        if ":" in _type_name and not "::" in _type_name:
            is_sugar = True
            _type_name = Self.get_sugar_type(_type_name)

        var mojo_type = Self.map_type(_type_name)
        if is_pointer:
            if _type_name == "void":
                mojo_type = "OpaquePointer"
            else:
                mojo_type = "UnsafePointer[" + mojo_type + "]"
        return mojo_type
