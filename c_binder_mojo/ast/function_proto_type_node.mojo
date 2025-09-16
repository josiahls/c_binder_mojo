# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct FunctionProtoTypeNode(AstNodeLike):
    alias __name__ = "FunctionProtoType"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        try:
            if "type" not in json_object:
                raise Error(
                    "'type' not found in json_object: " + to_string(json_object)
                )
            if "qualType" not in json_object["type"].object():
                raise Error(
                    "'qualType' not found in json_object['type']: "
                    + to_string(json_object["type"].object())
                )
            if "id" not in json_object:
                raise Error(
                    "'id' not found in json_object: " + to_string(json_object)
                )
            if "inner" not in json_object:
                raise Error(
                    "'inner' not found in json_object: "
                    + to_string(json_object)
                )

            for child in json_object["inner"].object():
                var node = AstNode.accept_from_json_object(child, level)
                self.children_.append(node)
        except Error as e:
            raise Error(
                "Error creating FunctionProtoTypeNode: "
                + to_string(json_object)
                + " "
                + e.message()
            )

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = "fn ("
        var return_type = self.children_[0].to_string(just_code)
        for i, child in enumerate(self.children_[1:]):
            if i > 0:
                s += ", "
            s += child.to_string(just_code)
        s += ") -> " + return_type
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
