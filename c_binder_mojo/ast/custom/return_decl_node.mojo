# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ReturnDeclNode(AstNodeLike):
    alias __name__ = "ReturnDecl"

    var children_: List[AstNode]
    var return_type: String

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.return_type = ""

        try:
            self.return_type = (
                json_object["type"].object()["returnType"].string()
            )
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    node = AstNode.accept_from_json_object(
                        inner_object.object(), level
                    )
                    self.children_.append(node^)
        except e:
            print("Error creating ReturnDeclNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        for child in self.children_:
            s += child.to_string(just_code)
        return s

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        return_type = json_object["type"].object()["returnType"].string()
        return_type_object = Object()
        return_type_object["id"] = "1"
        return_type_object["kind"] = "AbstractType"
        return_type_object["type"] = Object()
        return_type_object["type"].object()["qualType"] = return_type
        json_object["inner"].array().append(return_type_object)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
