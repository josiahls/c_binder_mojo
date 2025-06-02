"""DType Mapping Utilities."""

# Native Mojo Modules
from sys.ffi import _Global, UnsafePointer
# Third Party Mojo Modules

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
        return type_name.replace("'", "")
    
    @staticmethod
    fn map_type(type_name: String) -> String:
        """Maps a C type to its Mojo equivalent.
        
        Args:
            type_name: The C type to map.
            
        Returns:
            The equivalent Mojo type.
        """
        var _type_name = Self.clean_type_name(type_name)
        
        if _type_name == "int":
            return "Int"
        elif _type_name == "unsigned int":
            return "UInt"
        elif _type_name == "char":
            return "String"
        elif _type_name == "unsigned char":
            return "UInt8"
        elif _type_name == "char *":
            return "String"
        elif _type_name == "float":
            return "Float32"
        elif _type_name == "double":
            return "Float64"
        elif _type_name == "void":
            return "None"
        elif _type_name == "bool":
            return "Bool"
        elif _type_name == "long":
            return "Int"
        elif _type_name == "unsigned long":
            return "UInt"
        elif _type_name == "short":
            return "Int16"
        elif _type_name == "unsigned short":
            return "UInt16"
        elif _type_name == "long long":
            return "Int64"
        elif _type_name == "unsigned long long":
            return "UInt64"
        
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
    fn get_base_type(type_name: String) -> String:
        """Gets the base type of a C type, removing pointer notation.
        
        Args:
            type_name: The C type to process.
            
        Returns:
            The base type without pointer notation.
        """
        var _type_name = Self.clean_type_name(type_name)
        if Self.is_pointer_type(_type_name):
            # For now, we'll just handle the basic pointer types
            # TODO(josiahls): don't change the type yet
            return _type_name # [:-1]
        return _type_name

    @staticmethod
    fn get_mojo_type(type_name: String) -> String:
        """Gets the complete Mojo type mapping for a C type.
        
        Args:
            type_name: The C type to map.
            
        Returns:
            The complete Mojo type mapping, including any necessary pointer handling.
        """
        var _type_name = Self.clean_type_name(type_name)
        var base_type = Self.get_base_type(_type_name)
        var mojo_type = Self.map_type(base_type)
        
        if Self.is_pointer_type(_type_name):
            # For now, we'll just return the base type
            # In the future, we might want to handle pointers differently
            return mojo_type
            
        return mojo_type
