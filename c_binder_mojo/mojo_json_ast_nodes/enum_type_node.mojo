# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode


struct EnumTypeNode(AstNodeLike):
    alias __name__ = "EnumType"

    var name: String
    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.name = ""
        self.children_ = List[AstNode]()
        try:
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    name = type_object["qualType"].string()
                    self.name = String(name.removeprefix("enum "))
                if "decl" in type_object:
                    self.children_.append(
                        AstNode.accept_from_json_object(
                            type_object["decl"].object(), level + 1
                        )
                    )
        except e:
            print("Error creating EnumTypeNode: ", e)

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
        return self.name

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[AstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
