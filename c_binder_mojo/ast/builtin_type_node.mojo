# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.typing import TypeMapper


struct BuiltinTypeNode(AstNodeLike):
    alias __name__ = "BuiltinType"

    var level: Int
    var dtype: String
    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.dtype = ""
        self.children_ = List[AstNode]()
        try:
            if "type" in object:
                var type_object = object["type"].object()
                if "qualType" in type_object:
                    self.dtype = type_object["qualType"].string()
                else:
                    print("Error creating BuiltinTypeNode: ", to_string(object))
        except e:
            print("Error creating BuiltinTypeNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        var dtype = TypeMapper.convert_c_type_to_mojo_type(self.dtype)
        # Builtin doesn't indent since it is typically composed with large types.
        s += dtype
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.dtype + ")"

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
