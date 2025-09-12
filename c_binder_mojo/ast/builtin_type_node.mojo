# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


# Can do `==` checking.
alias DIRECT_TYPE_MAP: Dict[String, String] = {
    "bool": "Bool",
    "__SVBool_t": "Bool",
    "void": "NoneType",
    "char": "Int8",
    "short": "Int16",
    "int": "Int32",
    "long": "ffi.c_long",
    "long long": "ffi.c_long_long",
    "long double": "Float64",
    "float": "Float32",
    "double": "Float64",
}

alias CONTAINS_TYPE_MAP: Dict[String, String] = {
    "int8_t": "Int8",
    "int16_t": "Int16",
    "int32_t": "Int32",
    "int64_t": "ffi.c_long",
    "int128_t": "ffi.c_long_long",
    "__int128": "ffi.c_long_long",
    "bfloat16_t": "BFloat16",  # Check this before the other floats.
    "float16_t": "Float16",
    "float32_t": "Float32",
    "float64_t": "Float64",
}


struct BuiltinTypeNode(AstNodeLike):
    alias __name__ = "BuiltinType"

    var level: Int
    var dtype: String
    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.dtype = ""
        self.children_ = List[AstNode]()
        try:
            if "type" in object:
                ref type_object = object["type"].object()
                if "qualType" in type_object:
                    self.dtype = type_object["qualType"].string()
                else:
                    print("Error creating BuiltinTypeNode: ", to_string(object))
        except e:
            print("Error creating BuiltinTypeNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        for dtype in DIRECT_TYPE_MAP:
            if dtype == self.dtype:
                return DIRECT_TYPE_MAP[dtype]
        for item in CONTAINS_TYPE_MAP.items():
            if item.key in self.dtype.lower():
                return item.value.copy()
        raise Error("BuiltinTypeNode: Unexpected dtype: " + self.dtype)

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.dtype + ")"

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
