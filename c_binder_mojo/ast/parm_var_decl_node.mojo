# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


struct ParmVarDeclNode(AstNodeLike):
    alias __name__ = "ParmVarDecl"

    var children_: List[AstNode]
    var name: String

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.name = ""
        try:
            self.name = json_object["name"].string()
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    node = AstNode.accept_from_json_object(
                        inner_object.object(), level
                    )
                    self.children_.append(node^)
        except e:
            print("Error creating ParmVarDeclNode: ", e)

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        var unknown_type_object = json_object.copy()
        unknown_type_object["kind"] = UnprocessedTypeNode.__name__
        unknown_type_object["wrappingType"] = Array()
        unknown_type_object["wrappingType"].array().append(
            ParmVarDeclNode.__name__
        )
        json_object["id"] = ""
        json_object["kind"] = ParmVarDeclNode.__name__
        json_object["inner"] = Array()
        json_object["inner"].array().append(unknown_type_object)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()

        for child in self.children_:
            var inner_s = child.to_string(just_code)
            s += inner_s
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
