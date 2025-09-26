# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode
from c_binder_mojo.ast.function_decl_node import FunctionDeclNode
from c_binder_mojo.ast.variadic_args_node import VariadicArgsNode


struct ParmVarDeclNode(AstNodeLike):
    alias __name__ = "ParmVarDecl"

    var children_: List[AstNode]
    var name: String
    var is_kwarg: Bool

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = self.make_children[assert_in=True](json_object, level)
        self.is_kwarg = False
        self.name = self.get_field[assert_in=True](json_object, "name")
        for node in self.children():
            if node.isa[FunctionDeclNode]():
                if node[FunctionDeclNode].function_name != "":
                    self.is_kwarg = True

    @staticmethod
    fn impute(mut json_object: Object) raises:
        var unknown_type_object = json_object.copy()
        unknown_type_object["id"] = Self.make_object_id(unknown_type_object)
        unknown_type_object["kind"] = UnprocessedTypeNode.__name__
        unknown_type_object["wrappingType"] = Array()
        unknown_type_object["wrappingType"].array().append(
            ParmVarDeclNode.__name__
        )
        if "variadic" in json_object:
            if json_object["variadic"] == True:
                unknown_type_object["variadic"] = True
        json_object["id"] = Self.make_object_id(json_object)
        json_object["name"] = ""
        json_object["kind"] = ParmVarDeclNode.__name__
        json_object["inner"] = Array()
        json_object["inner"].array().append(unknown_type_object^)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute(inner_object.object())

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
