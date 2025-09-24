# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


struct ReturnDeclNode(AstNodeLike):
    alias __name__ = "ReturnDecl"

    var children_: List[AstNode]
    var return_type: String

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = List[AstNode]()
        self.return_type = ""

        try:
            self.return_type = (
                json_object["type"].object()["returnType"].string()
            )
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    node = AstNode.accept_create_from(
                        inner_object.object(), level
                    )
                    self.children_.append(node^)
        except e:
            print("Error creating ReturnDeclNode: ", e)

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
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
