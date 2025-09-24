# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ClangSimdNode(AstNodeLike):
    alias __name__ = "ClangSimd"

    var children_: List[AstNode]
    var width: Int64

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.width = 0

        try:
            self.width = json_object["type"].object()["width"].int()
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    node = AstNode.accept_create_from(
                        inner_object.object(), level
                    )
                    self.children_.append(node^)
        except e:
            print("Error creating ClangSimdNode: ", e)

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        if json_object["kind"].string() == "BuiltinType":
            qual_type = json_object["type"].object()["qualType"].string()
            if (
                "__clang_sv" not in qual_type.lower()
                or "x" not in qual_type.lower()
            ):
                return False
            elif "wrappingType" not in json_object:
                return True
            elif Self.__name__ not in json_object["wrappingType"].array():
                return True
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        var builtin_type_copy = json_object.copy()
        var builtin_qual_type = (
            builtin_type_copy["type"].object()["qualType"].string()
        )
        if "wrappingType" not in builtin_type_copy:
            builtin_type_copy["wrappingType"] = Array()
        builtin_type_copy["type"].object()[
            "_qualType"
        ] = builtin_qual_type.copy()

        builtin_qual_type = String(builtin_qual_type.removeprefix("__clang_sv"))
        var x_loc = builtin_qual_type.rfind("x")
        var under_t_loc = builtin_qual_type.rfind("_t")
        var width_str = builtin_qual_type[x_loc + 1 : under_t_loc]
        builtin_qual_type = builtin_qual_type.replace("x" + width_str, "")
        width = Int64(width_str)

        builtin_type_copy["wrappingType"].array().append(Self.__name__)
        builtin_type_copy["type"].object()["qualType"] = builtin_qual_type
        json_object["kind"] = "ClangSimd"
        json_object["type"].object()["width"] = width
        json_object["type"].object()["qualType"] = builtin_qual_type

        if "inner" not in json_object:
            json_object["inner"] = Array()
        json_object["inner"].array().append(builtin_type_copy^)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        for child in self.children_:
            s += child.to_string(just_code)
        return "SIMD[" + s + ".dtype, " + String(self.width) + "]"

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
