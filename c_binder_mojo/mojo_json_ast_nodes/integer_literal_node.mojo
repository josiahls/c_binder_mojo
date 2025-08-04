# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


struct IntegerLiteralNode(JsonNodeAstLike):
    alias __name__ = "IntegerLiteral"

    var value: String
    var children: List[JsonAstNode]
    var level: Int

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.children = List[JsonAstNode]()
        self.value = ""
        try:
            if "value" in object:
                self.value = object["value"].string()
        except e:
            print("Error creating IntegerLiteralNode: ", e)

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
            s += indent + self.signature() + "\n"
        for child in self.children:
            s += child.to_string(just_code)
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"
