# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.declarations import AstDeclarationVariant


struct AnonymousDeclarationNode(AstNodeLike):
    alias __name__ = "AnonymousDeclaration"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = List[AstNode]()

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        @parameter
        for i in range(len(VariadicList(AstDeclarationVariant.Ts))):
            alias T = AstDeclarationVariant.Ts[i]
            if json_object["kind"].string() == T.__name__:
                return True

        return False

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
