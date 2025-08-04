# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode
from c_binder_mojo.typing import TypeMapper


struct FunctionDeclNode(JsonNodeAstLike):
    alias __name__ = "FunctionDecl"

    var storage_class: String
    var function_name: String
    var function_mangled_name: String
    var function_type: String

    var level: Int

    var children: List[JsonAstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.storage_class = ""
        self.function_name = ""
        self.function_mangled_name = ""
        self.function_type = ""
        self.children = List[JsonAstNode]()
        self.level = level
        try:
            if "storageClass" in object:
                self.storage_class = object["storageClass"].string()
            if "name" in object:
                self.function_name = object["name"].string()
            if "mangledName" in object:
                self.function_mangled_name = object["mangledName"].string()
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    self.function_type = type_object["qualType"].string()
                else:
                    print(
                        "Error creating FunctionDeclNode: ",
                        to_string(type_object),
                    )
        except e:
            print("Error creating FunctionDeclNode: ", e)

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
        var s = String()
        var indent = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"
        s += indent + "alias " + self.function_name + " = "
        print("function_type: ", self.function_type)
        s += TypeMapper.convert_c_type_to_mojo_type(
            self.function_type, is_fn_decl=True
        )
        s += "\n"

        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"
