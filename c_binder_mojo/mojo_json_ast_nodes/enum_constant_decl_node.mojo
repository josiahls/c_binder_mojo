# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode
from c_binder_mojo.mojo_json_ast_nodes.integer_literal_node import (
    IntegerLiteralNode,
)
from c_binder_mojo.mojo_json_ast_nodes.binary_operator_node import (
    BinaryOperatorNode,
)
from c_binder_mojo.mojo_json_ast_nodes.constant_expr_node import (
    ConstantExprNode,
)


struct EnumConstantDeclNode(JsonNodeAstLike):
    alias __name__ = "EnumConstantDecl"

    var name: String
    var level: Int
    var children_: List[JsonAstNode]
    var parent_is_anonymous: Bool
    var value: Optional[Int]

    fn __init__(out self, object: Object, level: Int):
        self.name = ""
        self.level = level
        self.children_ = List[JsonAstNode]()
        self.parent_is_anonymous = False
        self.value = None
        try:
            if "name" in object:
                self.name = object["name"].string()
            if "inner" in object:
                for inner_object in object["inner"].array():
                    node = JsonAstNode.accept_from_json_object(
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

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> JsonAstNode:
        return JsonAstNode(Self(json_object, level))

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

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[JsonAstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
