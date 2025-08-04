# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


struct ModeAttrNode(JsonNodeAstLike):
    alias __name__ = "ModeAttr"

    var level: Int

    fn __init__(out self, object: Object, level: Int):
        self.level = level

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
        # NOTE: This is noop for now, however we need to change this to
        # surface unhandled properties in c just so we are aware of them.
        return ""

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"
