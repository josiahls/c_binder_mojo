# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct TypedefTypeNode(AstNodeLike):
    alias __name__ = "TypedefType"

    var typedef_type: String
    var level: Int
    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.typedef_type = ""
        self.children_ = List[AstNode]()
        # TODO: May need to handle children here also.

        try:
            if "type" in json_object:
                ref type_object = json_object["type"].object()
                if "qualType" in type_object:
                    self.typedef_type = type_object["qualType"].string()
                else:
                    print(
                        "Error creating TypedefTypeNode: ",
                        to_string(type_object.copy()),
                    )
        except e:
            print("Error creating TypedefTypeNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        # NOTE: There is no indentation since this is typically
        # used in a typedef decl node or wrapping type node.
        return self.typedef_type

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
