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
        self.name = ""

        self.level = 1  # Fields must always be at the top level + 1
        self.type = ""
        self.desugared_type = ""
        self.children_ = List[AstNode]()
        if "name" in json_object:
            self.name = json_object["name"].string()
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            if "qualType" in type_object:
                self.type = type_object["qualType"].string()
            if "desugaredQualType" in type_object:
                self.desugared_type = type_object["desugaredQualType"].string()

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        var indent: String = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
