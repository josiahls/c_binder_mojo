# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.extensions.unprocessed_type_node import (
    UnprocessedTypeNode,
)


# Can do `==` checking.
alias DIRECT_TYPE_MAP: Dict[String, String] = {
    "bool": "Bool",
    "_Bool": "Bool",
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

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.dtype = ""
        self.children_ = List[AstNode]()
        self.object_id = self.get_field[assert_in=True](json_object, "id")
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.dtype = self.get_field[assert_in=True](type_object, "qualType")

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
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
    fn impute(mut json_object: Object) raises:
        json_object["kind"] = Self.__name__
        json_object["inner"] = Array()
        json_object["qualifiers"] = ""

    fn to_string(self, just_code: Bool) raises -> String:
        for dtype in materialize[DIRECT_TYPE_MAP]():
            if dtype == self.dtype:
                return materialize[DIRECT_TYPE_MAP]()[dtype]
        for item in materialize[LOWER_ENDSWITH_TYPE_MAP]().items():
            if self.dtype.lower().endswith(item.key):
                return item.value.copy()
        raise Error(
            "BuiltinTypeNode: Unexpected dtype: "
            + self.dtype
            + " for json_object: "
            + self.object_id
        )

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.dtype + ")"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
