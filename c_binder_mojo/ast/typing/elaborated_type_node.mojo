# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ElaboratedTypeNode(AstNodeLike):
    alias __name__ = "ElaboratedType"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = self.make_children[assert_in=True](
            json_object, level + 1
        )

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
