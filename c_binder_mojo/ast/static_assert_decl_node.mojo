# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct StaticAssertDeclNode(AstNodeLike):
    alias __name__ = "StaticAssertDecl"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        # TODO: We should at least have this as a commented string
        self.children_ = List[AstNode]()

    fn to_string(self, just_code: Bool) raises -> String:
        return "# Node: StaticAssertDecl()\n"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
