# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct AlignedAttrNode(AstNodeLike):
    """
    Node for aligned attributes.

    Note: We will need to revisit this if this attr appears on function or struct declarations.
    """

    alias __name__ = "AlignedAttr"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        try:
            if "id" not in json_object:
                raise Error(
                    "'id' not found in json_object: "
                    + to_string(json_object.copy())
                )
            if "inner" not in json_object:
                raise Error(
                    "'inner' not found in json_object: "
                    + to_string(json_object.copy())
                )
            for child in json_object["inner"].array():
                var node = AstNode.accept_create_from(child.object(), level)
                self.children_.append(node^)
        except e:
            print(
                "Error creating AlignedAttrNode: "
                + to_string(json_object.copy())
                + " "
                + String(e)
            )

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        for child in self.children():
            s += child.to_string(just_code)

        s = "# Alignment: " + s + "\n"
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
