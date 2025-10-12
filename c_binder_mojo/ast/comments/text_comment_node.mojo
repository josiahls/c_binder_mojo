# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.comments import CommentsSubsetName


struct TextCommentNode(AstNodeLike):
    alias __name__ = "TextComment"

    var text: String
    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.children_ = self.make_children(json_object, level + 1)
        self.text = self.get_field(json_object, "text")

    fn get_subset_name(self) raises -> StaticString:
        return CommentsSubsetName

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        var indent: String = "\t" * self.level
        s += indent + "# " + self.text + "\n"
        s += self.children_to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
