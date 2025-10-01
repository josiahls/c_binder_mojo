# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


struct ConstantArrayTypeNode(AstNodeLike):
    alias __name__ = "ConstantArrayType"

    var size: Int64
    var type: String

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = self.make_children[assert_in=True](json_object, 0)
        self.size = 0
        self.type = ""
        # TODO: Create get_field for Int type
        self.size = json_object["size"].int()
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.type = self.get_field[assert_in=True](type_object, "qualType")

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        if json_object["kind"].string() == UnprocessedTypeNode.__name__:
            ref type_object = json_object["type"].object()
            if type_object["qualType"].string().find("]") != -1:
                return True
        return False

    @staticmethod
    fn impute(mut json_object: Object) raises:
        inner_json_object = json_object.copy()
        json_object["id"] = Self.make_object_id(json_object)
        json_object["kind"] = Self.__name__
        json_object["inner"] = Array()
        ref type_object = json_object["type"].object()
        var qual_type = type_object["qualType"].string()
        var l, r = Self.parse_bracket_pair(qual_type)
        if l == -1 or r == -1:
            raise Error(
                "Failed to parse bracket pair", to_string(json_object.copy())
            )
        json_object["size"] = Int(qual_type[l + 1 : r])
        var unwrapped_qual_type = qual_type[:l] + qual_type[r + 1 :]
        inner_json_object["type"] = Object()
        inner_json_object["type"].object()["qualType"] = unwrapped_qual_type

        json_object["inner"].array().append(inner_json_object^)
        for ref child in json_object["inner"].array():
            AstNode.impute(child.object())

    @staticmethod
    fn parse_bracket_pair(read s: String) raises -> (Int, Int):
        var l_bracket_idx = s.find("[")
        var r_bracket_idx = s.find("]")
        return (l_bracket_idx, r_bracket_idx)

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = self.children_to_string(just_code)
        return "InlineArray[" + s + ", " + String(self.size) + "]"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
