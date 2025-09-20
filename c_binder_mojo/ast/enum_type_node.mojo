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

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.name = ""
        self.children_ = List[AstNode]()
        try:
            if "type" in object:
                ref type_object = object["type"].object()
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

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        return self.name

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
