# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode
from c_binder_mojo.mojo_json_ast_nodes.enum_constant_decl_node import (
    EnumConstantDeclNode,
)


struct EnumDeclNode(AstNodeLike):
    alias __name__ = "EnumDecl"

    var level: Int

    var name: String
    var children_: List[AstNode]
    var is_anonymous: Bool

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.name = ""
        self.children_ = List[AstNode]()
        self.is_anonymous = False

        var max_value: Int = -1

        try:
            if "name" in object:
                self.name = object["name"].string()
            if self.name == "":
                self.is_anonymous = True
            if "inner" in object:
                for inner_object in object["inner"].array():
                    child_level = level + 1
                    if self.is_anonymous:
                        # Anonymous enums are at the top level
                        child_level = 0

                    node = AstNode.accept_from_json_object(
                        inner_object.object(), child_level
                    )
                    if node.isa[EnumConstantDeclNode]():
                        if self.is_anonymous:
                            node[
                                EnumConstantDeclNode
                            ].parent_is_anonymous = True

                        var value: Optional[Int] = node[
                            EnumConstantDeclNode
                        ].get_value()

                        if value:
                            if value[] > max_value:
                                max_value = value[]
                        else:
                            max_value += 1
                            node[EnumConstantDeclNode].set_value(max_value)

                    self.children_.append(node)
        except e:
            print("Error creating EnumDeclNode: ", e)

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Self:
        return Self(json_object, level)

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        if not just_code:
            s += self.signature() + "\n"
        # TODO(josiahls): Are there cases where we need to actually assign an anonymous enum's name?
        if not self.is_anonymous:
            # TODO(josiahls): Is there ever a case where we can't do this? Like struct size or something?
            # s += '@register_passable("trivial")\n'
            s += (
                "struct "
                + self.name
                + "(ExplicitlyCopyable & Copyable & Movable):\n"
            )
        for child in self.children_:
            s += child.to_string(just_code) + "\n"
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"

    fn children[
        T: ExplicitlyCopyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
