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
        self.children_ = List[AstNode]()
        self.size = 0
        self.type = ""
        self.size = json_object["size"].int()
        self.type = json_object["type"].object()["qualType"].string()
        if "inner" in json_object:
            for inner_object in json_object["inner"].array():
                self.children_.append(
                    AstNode.accept_create_from(inner_object.object(), 0)
                )

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        for child in self.children():
            s += child.to_string(just_code)
        return "InlineArray[" + s + ", " + String(self.size) + "]"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
