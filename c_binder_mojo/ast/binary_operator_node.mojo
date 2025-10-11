# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct BinaryOperatorNode(AstNodeLike):
    alias __name__ = "BinaryOperator"

    var opcode: String
    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.children_ = List[AstNode]()
        self.opcode = self.get_field[assert_in=True](json_object, "opcode")

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.opcode + ")"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
