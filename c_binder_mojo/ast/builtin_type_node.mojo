# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


# Can do `==` checking.
alias DIRECT_TYPE_MAP: Dict[String, String] = {
    "bool": "Bool",
    "__SVBool_t": "Bool",
    "void": "NoneType",
    "char": "Int8",
    "short": "Int16",
    "int": "ffi.c_int",
    "long": "ffi.c_long",
    "long long": "ffi.c_long_long",
    "long double": "Float64",
    "float": "Float32",
    "double": "Float64",
}

alias LOWER_ENDSWITH_TYPE_MAP: Dict[String, String] = {
    "int8_t": "Int8",
    "int16_t": "Int16",
    "int32_t": "ffi.c_int",
    "int64_t": "ffi.c_long_long",
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
    var object_id: String

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.dtype = ""
        self.children_ = List[AstNode]()
        self.object_id = ""
        try:
            if "id" not in object:
                raise Error(
                    "'id' not found in object: " + to_string(object.copy())
                )
            self.object_id = object["id"].string()
            if "type" in object:
                ref type_object = object["type"].object()
                if "qualType" not in type_object:
                    raise Error(
                        "'qualType' not found in type_object: "
                        + to_string(type_object.copy())
                    )
                if "qualType" in type_object:
                    self.dtype = type_object["qualType"].string()
        except e:
            print("Error creating BuiltinTypeNode: ", e)

    @staticmethod
    fn accept_impute_json_object(read json_object: Object) raises -> Bool:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    ref s = json_object["type"].object()["qualType"].string()
                    if s in materialize[DIRECT_TYPE_MAP]():
                        return True
                    for item in materialize[LOWER_ENDSWITH_TYPE_MAP]().items():
                        if s.lower().endswith(item.key):
                            return True
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        json_object["kind"] = Self.__name__
        json_object["inner"] = Array()
        json_object["qualifiers"] = ""

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        for dtype in materialize[DIRECT_TYPE_MAP]():
            if dtype == self.dtype:
                # print("BuiltinTypeNode: dtype: ", dtype)
                # print("BuiltinTypeNode: DIRECT_TYPE_MAP[dtype]: ", DIRECT_TYPE_MAP[dtype])
                return materialize[DIRECT_TYPE_MAP]()[dtype]
        for item in materialize[LOWER_ENDSWITH_TYPE_MAP]().items():
            if self.dtype.lower().endswith(item.key):
                # print("BuiltinTypeNode: dtype: ", self.dtype)
                # print("BuiltinTypeNode: LOWER_ENDSWITH_TYPE_MAP[dtype]: ", item.value)
                return item.value.copy()
        raise Error(
            "BuiltinTypeNode: Unexpected dtype: "
            + self.dtype
            + " for object: "
            + self.object_id
        )

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
