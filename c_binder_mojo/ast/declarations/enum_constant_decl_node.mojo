# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.integer_literal_node import (
    IntegerLiteralNode,
)
from c_binder_mojo.ast.binary_operator_node import (
    BinaryOperatorNode,
)
from c_binder_mojo.ast.constant_expr_node import (
    ConstantExprNode,
)


struct EnumConstantDeclNode(AstNodeLike):
    alias __name__ = "EnumConstantDecl"

    var name: String
    var level: Int
    var children_: List[AstNode]
    var parent_is_anonymous: Bool
    var value: Optional[Int]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        # TODO: Should this assert_in=True? EnumConstantDecl should have inners no?
        self.children_ = self.make_children(json_object, level + 1)
        self.parent_is_anonymous = False
        self.value = None
        self.name = self.get_field(json_object, "name")

        for node in self.children():
            if node.isa[IntegerLiteralNode]():
                self.value = node[IntegerLiteralNode].get_value()
            # elif node.isa[BinaryOperatorNode]():
            #     self.value = node[BinaryOperatorNode].get_value()
            elif node.isa[ConstantExprNode]():
                self.value = node[ConstantExprNode].get_value()
        # else:
        #     print("This enum constant has no children: ", self.name)

    @staticmethod
    fn get_enum_dtype() raises -> String:
        # TODO: Is there a smarter way to handle this? I'm seeing that
        # the to_string doesn't actually add any typing information. Probably
        # not good.
        return "Int64"

    fn get_value(self) -> Optional[Int]:
        return self.value

    fn set_value(mut self, value: Int):
        self.value = value

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        var indent: String = "\t" * self.level
        if not just_code:
            s += self.signature() + "\n"
        if self.parent_is_anonymous:
            s += "alias " + self.name + " = "
        else:
            s += indent + "alias " + self.name + " = "

        if self.value:
            s += String(self.value[]) + "\n"
        else:
            print("Error: EnumConstantDeclNode has no value")
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.name + ")"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
