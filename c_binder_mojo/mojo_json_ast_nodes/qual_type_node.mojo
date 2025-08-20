# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


struct QualTypeNode(JsonNodeAstLike):
    alias __name__ = "QualType"

    var level: Int
    var qualifiers: String

    var children_: List[JsonAstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.qualifiers = ""
        self.children_ = []

        try:
            if "qualifiers" in object:
                self.qualifiers = object["qualifiers"].string()
            if "inner" in object:
                for inner_object in object["inner"].array():
                    self.children_.append(
                        JsonAstNode.accept_from_json_object(
                            inner_object.object(), level + 1
                        )
                    )
        except e:
            print("Error creating QualTypeNode: ", e)

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
        for child in self.children_:
            s += child.to_string(just_code)
        s += " # QualType: " + self.qualifiers
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[JsonAstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
