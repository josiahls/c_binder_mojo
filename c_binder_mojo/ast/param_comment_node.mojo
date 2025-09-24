# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ParamCommandCommentNode(AstNodeLike):
    alias __name__ = "ParamCommandComment"

    var text: String
    var children_: List[AstNode]
    var level: Int
    var param: String

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.children_ = List[AstNode]()
        self.text = ""
        self.param = ""
        try:
            if "inner" in object:
                for inner_object in object["inner"].array():
                    self.children_.append(
                        AstNode.accept_create_from(
                            inner_object.object(), level + 1
                        )
                    )

            if "text" in object:
                self.text = object["text"].string()
            if "param" in object:
                self.param = object["param"].string()
        except e:
            print("Error creating ParamCommandCommentNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        # TODO: Need to propagate in comments whether this is inside a
        # another comment.
        s += "#" + self.param + ": "
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn children[
        T: Copyable & Movable = AstNode
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
