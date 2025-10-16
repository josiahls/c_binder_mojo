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

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = self.make_children[assert_in=True](json_object, level)

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String("# Alignment: ")
        s += self.children_to_string(just_code)
        s += "\n"
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
