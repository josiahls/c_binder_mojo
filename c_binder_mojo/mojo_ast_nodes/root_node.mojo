# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, ParsedTokenBundles
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode

@value
struct RootNode(NodeAstLike):
    """Root node of the Mojo AST.
    
    Represents the top-level module/file scope.
    """
    alias __name__ = "RootNode"
    
    var token_bundles: TokenBundles
    var parent_idx: Int
    var current_idx: Int
    var children: ArcPointer[List[Int]]

    fn __init__(out self, bundle: ParsedTokenBundles):
        self.token_bundles = TokenBundles()
        # self.token_bundles = bundle.token_bundles
        self.parent_idx = bundle.parent_idx
        self.current_idx = bundle.current_idx
        self.children = bundle.children_idxs

    @staticmethod
    fn accept(bundle: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Bool:
        # Root node only accepts if we're at the start
        return len(nodes[]) == 0

    @staticmethod
    fn create(bundle: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Self:
        return Self(bundle)

    fn __str__(self) -> String:
        return self.__name__ + "(children=" + String(len(self.children[])) + ")" 