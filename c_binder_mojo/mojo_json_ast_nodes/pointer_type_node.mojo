# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode
from c_binder_mojo.typing import TypeMapper


struct PointerTypeNode(JsonNodeAstLike):
    alias __name__ = "PointerType"

    var children: List[JsonAstNode]

    fn __init__(out self, object: Object, level: Int):
        self.children = List[JsonAstNode]()

        try:
            if "inner" in object:
                for child in object["inner"].array():
                    self.children.append(
                        JsonAstNode.accept_from_json_object(
                            child.object(), level + 1
                        )
                    )
        except e:
            print("Error creating PointerTypeNode: ", e)

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
        var dtype = String()
        # NOTE: We don't indent since this is typically part of a more complex type.
        for child in self.children:
            dtype += child.to_string(just_code)

        # NOTE: decomposition of child types, the * is from right to left.
        dtype += " *"
        return TypeMapper.convert_c_type_to_mojo_type(dtype)

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"
