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

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.children_ = List[AstNode]()
        self.opcode = ""
        try:
            if "opcode" in object:
                self.opcode = object["opcode"].string()
        except e:
            print("Error creating BinaryOperatorNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        var indent: String = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.opcode + ")"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
