# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct AllocAlignAttrNode(AstNodeLike):
    """
    Node for alloc align attributes.

    Note: We will need to revisit this if this attr appears on function or struct declarations.
    """

    alias __name__ = "AllocAlignAttr"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()

    fn children[
        T: Copyable & Movable = AstNode
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
