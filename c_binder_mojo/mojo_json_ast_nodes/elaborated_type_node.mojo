# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode


struct ElaboratedTypeNode(AstNodeLike):
    alias __name__ = "ElaboratedType"

    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.children_ = List[AstNode]()

        try:
            if "inner" in object:
                for child in object["inner"].array():
                    self.children_.append(
                        AstNode.accept_from_json_object(
                            child.object(), level + 1
                        )
                    )
        except e:
            print("Error creating ElaboratedTypeNode: ", e)

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Self:
        return Self(json_object, level)

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        for child in self.children_:
            s += child.to_string(just_code)
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[AstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
