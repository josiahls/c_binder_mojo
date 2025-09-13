# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct UnprocessedTypeNode(AstNodeLike):
    """
    Unprocessed type node that is used to represents an unknown type in the AST.

    Used in order for other nodes to evaluate if they can be used to represent an unknown type.
    """

    alias __name__ = "UnprocessedType"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
