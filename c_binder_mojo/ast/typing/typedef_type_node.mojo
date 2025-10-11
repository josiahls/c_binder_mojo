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

        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.typedef_type = self.get_field(type_object, "qualType")

    fn to_string(self, just_code: Bool) raises -> String:
        # NOTE: There is no indentation since this is typically
        # used in a typedef decl node or wrapping type node.
        return self.typedef_type

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
