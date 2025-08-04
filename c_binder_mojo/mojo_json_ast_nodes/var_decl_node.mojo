# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode
from c_binder_mojo.typing import TypeMapper


struct VarDeclNode(JsonNodeAstLike):
    alias __name__ = "VarDecl"

    var level: Int
    var name: String
    var mangled_name: String
    var type: String

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.name = ""
        self.mangled_name = ""
        self.type = ""

        try:
            if "name" in object:
                self.name = object["name"].string()
            if "mangledName" in object:
                self.mangled_name = object["mangledName"].string()
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    self.type = type_object["qualType"].string()
                else:
                    print(
                        "Error creating VarDeclNode: ", to_string(type_object)
                    )
        except e:
            print("Error creating VarDeclNode: ", e)

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
        s += "alias " + self.name + ": "
        s += TypeMapper.convert_c_type_to_mojo_type(self.type) + "\n"
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"
