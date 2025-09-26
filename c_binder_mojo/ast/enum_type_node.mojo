# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct EnumTypeNode(AstNodeLike):
    alias __name__ = "EnumType"

    var name: String
    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.name = ""
        self.children_ = List[AstNode]()
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            var name: String = self.get_field(type_object, "qualType")
            self.name = String(name.removeprefix("enum "))
            if "decl" in type_object:
                self.children_.append(
                    AstNode.accept_create_from(
                        type_object["decl"].object(), level + 1
                    )
                )

    fn to_string(self, just_code: Bool) raises -> String:
        return self.name

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
