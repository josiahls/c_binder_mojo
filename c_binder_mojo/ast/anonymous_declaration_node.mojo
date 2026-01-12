# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, Array, to_string

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

    @staticmethod
    fn init_lambda_registry() -> Self:
        return Self()


alias LambdaRegistry = _Global[
    "LambdaRegistry",
    _LambdaRegistry.init_lambda_registry,
]


fn _raise_failed_pairing(var anonymous_decl: Object) raises:
    raise Error(
        "not valid pairing target, failed to find pairing for : ",
        to_string[pretty=True](anonymous_decl.copy()),
    )


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

        ref lambda_registry = LambdaRegistry.get_or_create_ptr()

        var anonymous_decl = AstNode.accept_create_from(
            json_object["anonymous_decl"].object(), level
        )
        if len(json_object["named_decl"].object()) > 0:
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
            self.children_.append(named_decl^)
        self.children_.append(anonymous_decl^)

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
    fn can_be_named_decl(read json_object: Object) raises -> Bool:
        """Check if a declaration can be paired with an anonymous declaration.

        Only TypedefDecl, VarDecl, FieldDecl, and ParmVarDecl can be paired with anonymous
        declarations. FunctionDecl and other declarations should not be paired.
        """
        alias VALID_KINDS: List[String] = [
            "TypedefDecl",
            "VarDecl",
            "FieldDecl",
            "ParmVarDecl",
        ]
        var kind = json_object["kind"].string()
        return String(kind) in materialize[VALID_KINDS]()

    @staticmethod
    fn impute(mut json_object: Object) raises:
        """`json_object` should be an object whose children may have anonymous
        representations."""
        # TODO: There is way too much copying going on here.
        # We need a more standard drain API to make this simpler.
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
                AstNode.impute(anonymous_decl[]["anonymous_decl"].object())
            elif anonymous_decl:
                # Check if this declaration can be paired with the anonymous one
                if Self.can_be_named_decl(inner_object.object()):
                    anonymous_decl[]["named_decl"] = inner_object.copy()
                    AstNode.impute(anonymous_decl[]["named_decl"].object())
                    json_object["inner"].array().append(anonymous_decl.take())
                elif (
                    anonymous_decl[]["anonymous_decl"]["kind"].string()
                    == "EnumDecl"
                ):
                    json_object["inner"].array().append(anonymous_decl.take())
                    json_object["inner"].array().append(inner_object.copy())
                else:
                    _raise_failed_pairing(anonymous_decl[].copy())
            else:
                json_object["inner"].array().append(inner_object.copy())

        # If we still have an unpaired anonymous declaration, add it directly
        if anonymous_decl:
            if (
                anonymous_decl[]["anonymous_decl"]["kind"].string()
                == "EnumDecl"
            ):
                json_object["inner"].array().append(anonymous_decl.take())
            else:
                _raise_failed_pairing(anonymous_decl[].copy())

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
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
