# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct BlockCommandCommentNode(AstNodeLike):
    alias __name__ = "BlockCommandComment"

    var children_: List[AstNode]
    var level: Int
    var text: String

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.children_ = self.make_children[assert_in=True](json_object, level)
        self.text = self.get_field(json_object, "text")

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        s += "# " + self.text
        s += self.children_to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
