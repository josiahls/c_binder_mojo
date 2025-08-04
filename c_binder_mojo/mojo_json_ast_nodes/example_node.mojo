# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


struct ExampleNode(JsonNodeAstLike):
    alias __name__ = "Example"

    fn __init__(out self):
        pass

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object,
        read level: Int,
        root_node: Optional[JsonAstNode],
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object,
        read level: Int,
        root_node: Optional[JsonAstNode],
    ) raises -> JsonAstNode:
        return JsonAstNode(Self())

    fn to_string(self, just_code: Bool) raises -> String:
        return self.signature()

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"
