# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct BuiltinAttrNode(AstNodeLike):
    """
    Node for builtin attributes.

    Note: This is noop since the clang ast doesn't appear to expose any actionable information.
    """

    alias __name__ = "BuiltinAttr"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
