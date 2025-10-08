# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.declarations.enum_constant_decl_node import (
    EnumConstantDeclNode,
)


struct EnumDeclNode(AstNodeLike):
    alias __name__ = "EnumDecl"
    alias MaybeAnonymous = True

    var level: Int

    var name: String
    var children_: List[AstNode]
    var _is_anonymous: Bool
    var _passthrough_fields: Bool

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self._is_anonymous = False
        self._passthrough_fields = False
        var child_level = level + 1
        var max_value: Int = -1

        self.name = self.get_field(json_object, "name")
        if self.name == "":
            self._is_anonymous = True
            self._passthrough_fields = True
            child_level = 0

        self.children_ = self.make_children(json_object, child_level)
        # TODO: Should this assert_in=True? EnumDecl should have inners no?
        for ref node in self.children():
            if node.isa[EnumConstantDeclNode]():
                if self._passthrough_fields:
                    node[EnumConstantDeclNode].parent_is_anonymous = True

                var value: Optional[Int] = node[
                    EnumConstantDeclNode
                ].get_value()

                if value:
                    if value[] > max_value:
                        max_value = value[]
                else:
                    max_value += 1
                    node[EnumConstantDeclNode].set_value(max_value)

    fn set_symbol_name(mut self, symbol_name: String) raises:
        self.name = symbol_name
        self._passthrough_fields = False
        for ref node in self.children():
            if node.isa[EnumConstantDeclNode]():
                if not self._passthrough_fields:
                    node[EnumConstantDeclNode].parent_is_anonymous = False
                    node[EnumConstantDeclNode].level = self.level + 1

    @staticmethod
    fn is_anonymous(read json_object: Object) raises -> Bool:
        if "name" not in json_object:
            return True
        return json_object["name"].string() == ""

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        if not just_code:
            s += self.signature() + "\n"
        # TODO(josiahls): Are there cases where we need to actually assign an anonymous enum's name?
        if not self._passthrough_fields:
            # TODO(josiahls): Is there ever a case where we can't do this? Like struct size or something?
            # s += '@register_passable("trivial")\n'
            s += "struct " + self.name + "(Copyable & Movable):\n"
        for child in self.children():
            s += child.to_string(just_code) + "\n"
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
