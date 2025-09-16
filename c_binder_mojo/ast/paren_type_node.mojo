# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.function_proto_type_node import FunctionProtoTypeNode


struct ParenTypeNode(AstNodeLike):
    alias __name__ = "ParenType"

    var children_: List[AstNode]
    var wraps_function_proto_type: Bool

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.wraps_function_proto_type = False
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

            for child in json_object["inner"].array():
                var node = AstNode.accept_from_json_object(
                    child.object(), level
                )
                if node.isa[FunctionProtoTypeNode]():
                    self.wraps_function_proto_type = True
                self.children_.append(node^)
        except e:
            print(
                "Error creating ParenTypeNode: "
                + to_string(json_object)
                + " "
                + String(e)
            )

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        for child in self.children_:
            s += child.to_string(just_code)
        if self.wraps_function_proto_type:
            s = "UnsafePointer[" + s + "]"
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
