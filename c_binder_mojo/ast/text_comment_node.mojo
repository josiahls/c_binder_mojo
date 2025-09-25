# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct TextCommentNode(AstNodeLike):
    alias __name__ = "TextComment"

    var text: String
    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.children_ = List[AstNode]()
        self.text = ""
        if "inner" in json_object:
            for inner_object in json_object["inner"].array():
                self.children_.append(
                    AstNode.accept_create_from(inner_object.object(), level + 1)
                )

        if "text" in json_object:
            self.text = json_object["text"].string()

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        var indent: String = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"
            s += indent + "# " + self.text + "\n"
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
