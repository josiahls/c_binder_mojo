# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ParagraphCommentNode(AstNodeLike):
    alias __name__ = "ParagraphComment"

    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.children_ = List[AstNode]()
        try:
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
            print("Error creating ParagraphCommentNode: ", e)

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        var indent: String = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
