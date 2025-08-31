# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode


struct ModeAttrNode(AstNodeLike):
    alias __name__ = "ModeAttr"

    var level: Int
    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.children_ = List[AstNode]()

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        # NOTE: This is noop for now, however we need to change this to
        # surface unhandled properties in c just so we are aware of them.
        return ""

    fn children[
        T: ExplicitlyCopyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
