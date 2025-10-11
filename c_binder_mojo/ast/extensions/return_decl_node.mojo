# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.extensions.unprocessed_type_node import (
    UnprocessedTypeNode,
)


struct ReturnDeclNode(AstNodeLike):
    alias __name__ = "ReturnDecl"

    var children_: List[AstNode]
    var return_type: String

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = self.make_children[assert_in=True](json_object, level)
        self.return_type = ""

        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.return_type = self.get_field(type_object, "returnType")

    @staticmethod
    fn impute(mut json_object: Object) raises:
        return_type = json_object["type"].object()["returnType"].string()
        return_type_object = Object()
        return_type_object["id"] = Self.make_object_id(return_type_object)
        return_type_object["kind"] = UnprocessedTypeNode.__name__
        return_type_object["type"] = Object()
        return_type_object["type"].object()["qualType"] = return_type
        json_object["inner"].array().append(return_type_object^)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute(inner_object.object())

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
