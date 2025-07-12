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
