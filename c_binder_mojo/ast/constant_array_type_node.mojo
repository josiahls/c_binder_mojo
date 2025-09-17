# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ConstantArrayTypeNode(AstNodeLike):
    alias __name__ = "ConstantArrayType"

    var size: Int64
    var type: String

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.size = 0
        self.type = ""
        try:
            self.size = json_object["size"].int()
            self.type = json_object["type"].object()["qualType"].string()
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    self.children_.append(
                        AstNode.accept_from_json_object(
                            inner_object.object(), 0
                        )
                    )
        except e:
            print("Error creating ConstantArrayTypeNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s: String = ""
        for child in self.children_:
            s += child.to_string(just_code)
        return "InlineArray[" + s + ", " + String(self.size) + "]"

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
