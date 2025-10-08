# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.declarations import AstDeclarationVariant
from c_binder_mojo.ast.declarations.typedef_decl_node import TypedefDeclNode


struct _LambdaRegistry(Movable):
    # Mem address and record inc name
    var lambda_registry: Dict[String, Int]
    var lambda_counter: Int

    fn __init__(out self):
        self.lambda_registry = Dict[String, Int]()
        self.lambda_counter = 0

    fn create_lambda_name(mut self) raises -> String:
        self.lambda_counter += 1
        var s = "lambda_" + String(self.lambda_counter)
        self.lambda_registry[s] = self.lambda_counter
        return s


fn _init_global_lambda_registry() -> _LambdaRegistry:
    return _LambdaRegistry()


alias GLOBAL_LAMBDA_REGISTRY = _Global[
    "GLOBAL_LAMBDA_REGISTRY",
    _init_global_lambda_registry,
]


@always_inline
fn get_global_lambda_registry() raises -> UnsafePointer[_LambdaRegistry]:
    return GLOBAL_LAMBDA_REGISTRY.get_or_create_ptr()


struct AnonymousDeclarationNode(AstNodeLike):
    """AnonymousDeclarationNode - Handles anonymous declarations.

    Anonymous declarations are declarations that do not have a name.
    They are used to represent anonymous structs, unions, and enums.

    Notes:
    - Is the first node that gets processed, even before the TranslationUnitDeclNode.
    This is to pair anonymous declarations with their respective declarations.
    """

    alias __name__ = "AnonymousDeclaration"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = List[AstNode]()

        ref lambda_registry = get_global_lambda_registry()

        var anonymous_decl = AstNode.accept_create_from(
            json_object["anonymous_decl"].object(), level
        )
        var named_decl = AstNode.accept_create_from(
            json_object["named_decl"].object(), level
        )

        if named_decl.isa[TypedefDeclNode]():
            anonymous_decl.set_symbol_name(named_decl.get_symbol_name())
            named_decl.set_disabled(True)
        else:
            anonymous_decl.set_symbol_name(
                lambda_registry[].create_lambda_name()
            )
            named_decl.set_symbol_name(anonymous_decl.get_symbol_name())
        self.children_.append(anonymous_decl^)
        self.children_.append(named_decl^)

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        """Only accept delcaration records that may have anonymous representations.
        """

        @parameter
        for i in range(len(VariadicList(AstDeclarationVariant.Ts))):
            alias T = AstDeclarationVariant.Ts[i]
            if json_object["kind"].string() == T.__name__:
                return T.MaybeHasAnonymous

        return False

    @staticmethod
    fn accept_anonymous(read json_object: Object) raises -> Bool:
        """Only accept delcaration records that may have anonymous representations.
        """

        @parameter
        for i in range(len(VariadicList(AstDeclarationVariant.Ts))):
            alias T = AstDeclarationVariant.Ts[i]
            if json_object["kind"].string() == T.__name__ and T.MaybeAnonymous:
                return T.is_anonymous(json_object)
        return False

    @staticmethod
    fn impute(mut json_object: Object) raises:
        """`json_object` should be an object whose children may have anonymous
        representations."""
        var anonymous_decl = Optional[Object]()
        var children = json_object["inner"].array().copy()
        json_object["inner"] = Array()
        for ref inner_object in children:
            # Note: We don't process empty inner objects.
            if len(inner_object.object()) == 0:
                continue

            if Self.accept_anonymous(inner_object.object()):
                if not anonymous_decl:
                    anonymous_decl = Self.json_instance()
                anonymous_decl[]["anonymous_decl"] = inner_object.copy()
            elif anonymous_decl:
                anonymous_decl[]["named_decl"] = inner_object.copy()
                json_object["inner"].array().append(anonymous_decl.take())
            else:
                json_object["inner"].array().append(inner_object.copy())

        for ref inner_object in json_object["inner"].array():
            AstNode.impute(inner_object.object())

    @staticmethod
    fn json_instance() -> Object:
        obj = Object()
        obj["kind"] = Self.__name__
        obj["id"] = Self.make_object_id(obj)
        obj["anonymous_decl"] = Object()
        obj["named_decl"] = Object()
        obj["inner"] = Array()
        return obj^

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
