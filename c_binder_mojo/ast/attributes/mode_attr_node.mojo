# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ModeAttrNode(AstNodeLike):
    alias __name__ = "ModeAttr"

    var level: Int
    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.children_ = List[AstNode]()

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        # NOTE: This is noop for now, however we need to change this to
        # surface unhandled properties in c just so we are aware of them.
        return ""

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
