# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


struct FullCommentNode(JsonNodeAstLike):
    alias __name__ = "FullComment"

    var children: List[JsonAstNode]
    var level: Int

    fn __init__(out self, object: Object, level: Int):
        # NOTE: FullCommentNode's are typically children of an assicated node.
        # These should be on the same level as the associated node.
        self.level = level
        if self.level > 0:
            self.level = self.level - 1
        self.children = List[JsonAstNode]()
        try:
            if "inner" in object:
                for inner_object in object["inner"].array():
                    self.children.append(
                        JsonAstNode.accept_from_json_object(
                            # NOTE: level is not a concept in this node,
                            inner_object.object(),
                            self.level,
                        )
                    )
        except e:
            print("Error creating FullCommentNode: ", e)

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
