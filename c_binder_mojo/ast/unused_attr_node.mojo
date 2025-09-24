# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct UnusedAttrNode(AstNodeLike):
    alias __name__ = "UnusedAttr"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        # TODO: We should at least have this as a commented string
        self.children_ = List[AstNode]()

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
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
