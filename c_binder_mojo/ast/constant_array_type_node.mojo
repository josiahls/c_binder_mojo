# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


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

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = self.children_to_string(just_code)
        return "InlineArray[" + s + ", " + String(self.size) + "]"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
