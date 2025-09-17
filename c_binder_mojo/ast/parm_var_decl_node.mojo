# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode
from c_binder_mojo.ast.function_decl_node import FunctionDeclNode


struct ParmVarDeclNode(AstNodeLike):
    alias __name__ = "ParmVarDecl"

    var children_: List[AstNode]
    var name: String
    var is_kwarg: Bool

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.name = ""
        self.is_kwarg = False
        try:
            self.name = json_object["name"].string()
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    node = AstNode.accept_from_json_object(
                        inner_object.object(), level
                    )
                    if node.isa[FunctionDeclNode]():
                        if node[FunctionDeclNode].function_name != "":
                            self.is_kwarg = True
                    self.children_.append(node^)
        except e:
            print(
                "Error creating ParmVarDeclNode: ",
                e,
                " json_object: ",
                to_string(json_object.copy()),
            )

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        var unknown_type_object = json_object.copy()
        unknown_type_object["id"] = Self.make_object_id(unknown_type_object)
        unknown_type_object["kind"] = UnprocessedTypeNode.__name__
        unknown_type_object["wrappingType"] = Array()
        unknown_type_object["wrappingType"].array().append(
            ParmVarDeclNode.__name__
        )
        json_object["id"] = Self.make_object_id(json_object)
        json_object["name"] = ""
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
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
