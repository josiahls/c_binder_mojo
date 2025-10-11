# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ExampleNode(AstNodeLike):
    alias __name__ = "Example"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = List[AstNode]()

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
