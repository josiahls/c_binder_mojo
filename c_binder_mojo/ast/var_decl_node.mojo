# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.typing import TypeMapper


struct VarDeclNode(AstNodeLike):
    alias __name__ = "VarDecl"

    var level: Int
    var name: String
    var mangled_name: String
    var type: String
    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.name = ""
        self.mangled_name = ""
        self.type = ""
        self.children_ = List[AstNode]()
        try:
            if "name" in object:
                self.name = object["name"].string()
            if "mangledName" in object:
                self.mangled_name = object["mangledName"].string()
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    self.type = type_object["qualType"].string()
                else:
                    print(
                        "Error creating VarDeclNode: ",
                        to_string(type_object.copy()),
                    )
        except e:
            print("Error creating VarDeclNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s: String = ""
        if not just_code:
            s += self.signature() + "\n"
        s += "alias " + self.name + " = "
        s += TypeMapper.convert_c_type_to_mojo_type(self.type) + "\n"
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
