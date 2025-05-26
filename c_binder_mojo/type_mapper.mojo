"""DType Mapping Utilities."""

# Native Mojo Modules

# Third Party Mojo Modules

# First Party Modules


struct CTypeMapper:
    """Maps C types to their Mojo equivalents.
    
    This struct provides static type mappings from C types to Mojo types.
    It uses parameter decorators to create compile-time mappings.
    """
    
    @staticmethod
    fn map_type(type_name: String) -> String:
        """Maps a C type to its Mojo equivalent.
        
        Args:
            type_name: The C type to map.
            
        Returns:
            The equivalent Mojo type.
        """
        if type_name == "int":
            return "Int"
        elif type_name == "unsigned int":
            return "UInt"
        elif type_name == "char":
            return "String"
        elif type_name == "char *":
            return "String"
        elif type_name == "float":
            return "Float32"
        elif type_name == "double":
            return "Float64"
        elif type_name == "void":
            return "None"
        elif type_name == "bool":
            return "Bool"
        elif type_name == "long":
            return "Int"
        elif type_name == "unsigned long":
            return "UInt"
        elif type_name == "short":
            return "Int16"
        elif type_name == "unsigned short":
            return "UInt16"
        elif type_name == "long long":
            return "Int64"
        elif type_name == "unsigned long long":
            return "UInt64"
        else:
            # For struct types, we'll need to handle them differently
            # This is a placeholder for now
            return type_name

    @staticmethod
    fn is_pointer_type(type_name: String) -> Bool:
        """Checks if a C type is a pointer type.
        
        Args:
            type_name: The C type to check.
            
        Returns:
            True if the type is a pointer, False otherwise.
        """
        # For now, we'll just check if it contains a space followed by *
        # This is a simple check that works for basic pointer types
        return type_name == "char *" or type_name == "int *" or type_name == "void *"

    @staticmethod
    fn get_base_type(type_name: String) -> String:
        """Gets the base type of a C type, removing pointer notation.
        
        Args:
            type_name: The C type to process.
            
        Returns:
            The base type without pointer notation.
        """
        if Self.is_pointer_type(type_name):
            # For now, we'll just handle the basic pointer types
            if type_name == "char *":
                return "char"
            elif type_name == "int *":
                return "int"
            elif type_name == "void *":
                return "void"
        return type_name

    @staticmethod
    fn get_mojo_type(type_name: String) -> String:
        """Gets the complete Mojo type mapping for a C type.
        
        Args:
            type_name: The C type to map.
            
        Returns:
            The complete Mojo type mapping, including any necessary pointer handling.
        """
        var base_type = Self.get_base_type(type_name)
        var mojo_type = Self.map_type(base_type)
        
        if Self.is_pointer_type(type_name):
            # For now, we'll just return the base type
            # In the future, we might want to handle pointers differently
            return mojo_type
            
        return mojo_type
