# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.typing.function_proto_type_node import (
    FunctionProtoTypeNode,
)


struct ParenTypeNode(AstNodeLike):
    alias __name__ = "ParenType"

    var children_: List[AstNode]
    var wraps_function_proto_type: Bool

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = self.make_children[assert_in=True](json_object, level)
        self.wraps_function_proto_type = False

        for node in self.children():
            if node.isa[FunctionProtoTypeNode]():
                self.wraps_function_proto_type = True

    fn to_string(self, just_code: Bool) raises -> String:
        var s = self.children_to_string(just_code)
        if self.wraps_function_proto_type:
            s = "UnsafePointer[" + s + "]"
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
