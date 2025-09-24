# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct CompoundStmtNode(AstNodeLike):
    """
    Node for compound statements.

    These are noop since the goal if c_binder_mojo is to simply find record and function declarations, not
    convert actual source / body code.
    """

    alias __name__ = "CompoundStmt"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = List[AstNode]()

    fn to_string(self, just_code: Bool) raises -> String:
        return ""

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
