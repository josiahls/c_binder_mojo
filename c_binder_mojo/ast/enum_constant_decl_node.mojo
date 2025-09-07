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

    fn __init__(out self, object: Object, level: Int):
        self.name = ""
        self.level = level
        self.children_ = List[AstNode]()
        self.parent_is_anonymous = False
        self.value = None
        try:
            if "name" in object:
                self.name = object["name"].string()
            if "inner" in object:
                for inner_object in object["inner"].array():
                    node = AstNode.accept_from_json_object(
                        inner_object.object(), level + 1
                    )
                    if node.isa[IntegerLiteralNode]():
                        self.value = node[IntegerLiteralNode].get_value()
                    # elif node.isa[BinaryOperatorNode]():
                    #     self.value = node[BinaryOperatorNode].get_value()
                    elif node.isa[ConstantExprNode]():
                        self.value = node[ConstantExprNode].get_value()
                    self.children_.append(node)
            # else:
            #     print("This enum constant has no children: ", self.name)
        except e:
            print("Error creating EnumConstantDeclNode: ", e)

    fn get_value(self) -> Optional[Int]:
        return self.value

    fn set_value(mut self, value: Int):
        self.value = value

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
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

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
