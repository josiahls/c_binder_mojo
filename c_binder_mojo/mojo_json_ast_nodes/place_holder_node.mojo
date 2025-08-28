# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode


struct PlaceHolderNode(JsonNodeAstLike):
    alias __name__ = "PlaceHolder"

    var nodes: List[AstNode]
    var level: Int
    var json_string: String
    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.nodes = List[AstNode]()
        self.level = level
        self.json_string = to_string(object)
        self.children_ = List[AstNode]()
        if "inner" in object:
            try:
                for value in object["inner"].array():
                    self.nodes.append(
                        AstNode.accept_from_json_object(
                            value.object(), level + 1
                        )
                    )
            except e:
                print("Error creating PlaceHolderNode: ", e)
                print(to_string(object))

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return True

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Self:
        return Self(json_object, level)

    fn signature(self) -> String:
        return "Node: " + self.__name__ + "()"

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * self.level
        s += indent + "# " + self.signature() + "\n"
        s += indent + "# " + self.json_string + "\n"
        # for node in self.nodes:
        #     s += node.to_string(just_code)
        return s

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[AstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        # NOTE: this node does not have any children, so it will return an empty list
        return UnsafePointer[mut=mut](to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
