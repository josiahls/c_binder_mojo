# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


struct TypedefDeclNode(JsonNodeAstLike):
    alias __name__ = "TypedefDecl"

    var level: Int
    var children: List[JsonAstNode]
    var name: String
    var dtype: String

    fn __init__(
        out self, object: Object, level: Int, root_node: Optional[JsonAstNode]
    ):
        self.level = level
        self.name = ""
        self.dtype = ""
        self.children = List[JsonAstNode]()
        try:
            if "name" in object:
                self.name = object["name"].string()
            if "inner" in object:
                for value in object["inner"].array():
                    self.children.append(
                        JsonAstNode.accept_from_json_object(
                            value.object(), level + 1, root_node
                        )
                    )
            else:
                print("Error creating TypedefDeclNode: ", object)
        except e:
            print("Error creating TypedefDeclNode: ", e)

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
        return JsonAstNode(Self(json_object, level, root_node))

    fn signature(self) -> String:
        return "Node: " + self.__name__ + "(" + self.name + ")"

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"

        s += indent + "alias " + self.name + " = "
        for node in self.children:
            s += node.to_string(False) + "\n"
        # if not just_code:
        #     for node in self.children:
        #         s += node.to_string(just_code) + "\n"
        # else:
        #     s += indent + "# " + self.signature() + "\n"
        #     for node in self.children:
        #         s += node.to_string(just_code) + "\n"
        return s
