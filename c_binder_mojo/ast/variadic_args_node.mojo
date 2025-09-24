# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode

from c_binder_mojo.ast.function_decl_node import ParmVarDeclNode


struct VariadicArgsNode(AstNodeLike):
    alias __name__ = "VariadicArgs"

    var children_: List[AstNode]
    var is_variadic: Bool
    var param_name: String

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.is_variadic = False

        self.param_name = ""
        try:
            if "name" in json_object:
                self.param_name = json_object["name"].string()
            if "variadic" in json_object:
                self.is_variadic = json_object["variadic"].bool()
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    self.children_.append(
                        AstNode.accept_create_from(inner_object.object(), level)
                    )
        except:
            self.is_variadic = False

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        """Whether this node should accupt and update the json object.

        Default is True assuming that the default `impute_json_object` is
        being used, which allows for traversing the AST.
        """
        if json_object["kind"].string() == UnprocessedTypeNode.__name__:
            if "variadic" in json_object:
                return json_object["variadic"].bool()
        return False

    @staticmethod
    fn template_json_object() -> Object:
        var json_object = Object()
        json_object["id"] = Self.make_object_id(json_object)
        json_object["kind"] = Self.__name__
        json_object["variadic"] = True
        json_object["inner"] = Array()
        return json_object^

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        var inner_copy = json_object.copy()
        json_object["variadic"] = True
        json_object["kind"] = Self.__name__
        if "wrappingType" not in inner_copy:
            inner_copy["wrappingType"] = Array()
        inner_copy["wrappingType"].array().append(Self.__name__)
        # Avoid recursive imputation.
        inner_copy["variadic"] = False
        json_object["inner"] = Array()
        json_object["inner"].array().append(inner_copy^)

        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    fn signature(self) -> String:
        if self.is_variadic:
            return "# Node: VariadicArgs(variadic=true)"
        else:
            return "# Node: VariadicArgs(variadic=false)"

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        s += "/,*" + self.param_name + ": "
        for child in self.children_:
            # TODO: Filter out comments and other non-ast nodes.
            s += child.to_string(just_code)
        return s

    fn children[T: Copyable & Movable](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
