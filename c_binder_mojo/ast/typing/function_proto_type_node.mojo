# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct FunctionProtoTypeNode(AstNodeLike):
    alias __name__ = "FunctionProtoType"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = self.make_children[assert_in=True](json_object, level)
        if "type" not in json_object:
            raise Error(
                "'type' not found in json_object: "
                + to_string(json_object.copy())
            )
        if "qualType" not in json_object["type"].object():
            raise Error(
                "'qualType' not found in json_object['type']: "
                + to_string(json_object["type"].object().copy())
            )
        if "id" not in json_object:
            raise Error(
                "'id' not found in json_object: "
                + to_string(json_object.copy())
            )

    fn to_string(self, just_code: Bool) raises -> String:
        var s = "fn ("
        var return_type = self.children_[0].to_string(just_code)
        for i, child in enumerate(self.children_[1:]):
            if i > 0:
                s += ", "
            s += child.to_string(just_code)
        s += ") -> " + return_type
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
