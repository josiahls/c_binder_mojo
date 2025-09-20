# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct VerbatimBlockCommentNode(AstNodeLike):
    alias __name__ = "VerbatimBlockComment"

    var children_: List[AstNode]
    var level: Int
    var text: String

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.children_ = List[AstNode]()
        self.text = ""
        try:
            if "text" in object:
                self.text = object["text"].string()
            if "inner" in object:
                for inner_object in object["inner"].array():
                    self.children_.append(
                        AstNode.accept_from_json_object(
                            # NOTE: level is not a concept in this node,
                            inner_object.object(),
                            level,
                        )
                    )

        except e:
            print("Error creating VerbatimBlockCommentNode: ", e)

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s: String = ""
        s += "# " + self.text
        for child in self.children_:
            s += child.to_string(just_code)
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
