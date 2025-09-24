# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct InlineCommandCommentNode(AstNodeLike):
    alias __name__ = "InlineCommandComment"

    var children_: List[AstNode]
    var level: Int
    var text: String

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.children_ = List[AstNode]()
        self.text = ""
        try:
            if "text" in json_object:
                self.text = json_object["text"].string()
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    self.children_.append(
                        AstNode.accept_create_from(
                            # NOTE: level is not a concept in this node,
                            inner_object.object(),
                            level,
                        )
                    )

        except e:
            print("Error creating InlineCommandCommentNode: ", e)

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        s += "# " + self.text
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
