# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


struct EnumDeclNode(JsonNodeAstLike):
    alias __name__ = "EnumDecl"

    var level: Int

    var name: String
    var children: List[JsonAstNode]
    var is_anonymous: Bool

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.name = ""
        self.children = List[JsonAstNode]()
        self.is_anonymous = False
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
                    self.children.append(
                        JsonAstNode.accept_from_json_object(
                            inner_object.object(), child_level
                        )
                    )
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
    ) raises -> JsonAstNode:
        return JsonAstNode(Self(json_object, level))

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        if not just_code:
            s += self.signature() + "\n"
        # TODO(josiahls): Are there cases where we need to actually assign an anonymous enum's name?
        if not self.is_anonymous:
            s += "struct " + self.name + ":\n"
        for child in self.children:
            s += child.to_string(just_code) + "\n"
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"
