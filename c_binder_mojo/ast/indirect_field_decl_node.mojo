# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct IndirectFieldDeclNode(AstNodeLike):
    alias __name__ = "IndirectFieldDecl"

    var name: String

    var level: Int
    var type: String
    var desugared_type: String
    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = 1  # Fields must always be at the top level + 1
        self.type = ""
        self.desugared_type = ""
        self.children_ = List[AstNode]()
        self.name = self.get_field(json_object, "name")
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.type = self.get_field(type_object, "qualType")
            self.desugared_type = self.get_field(
                type_object, "desugaredQualType"
            )

    fn to_string(self, just_code: Bool) raises -> String:
        # TODO: Implement
        var s: String = ""
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
