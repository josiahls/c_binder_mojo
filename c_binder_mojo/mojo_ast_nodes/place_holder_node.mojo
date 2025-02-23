# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, ParsedTokenBundles

@value
struct PlaceHolderNode(NodeAstLike):
    alias __name__ = "PlaceHolderNode"
    
    var token_bundles: TokenBundles
    var parent_idx: Int
    var current_idx: Int
    var children: ArcPointer[List[Int]]

    fn __init__(out self, bundle: ParsedTokenBundles):
        self.token_bundles = bundle.token_bundles
        self.parent_idx = bundle.parent_idx
        self.current_idx = bundle.current_idx
        self.children = bundle.children_idxs

    @staticmethod
    fn accept(token_bundles: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return True  # Accept everything as fallback

    @staticmethod
    fn create(token_bundles: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Self:
        return Self(token_bundles)

    fn __str__(self) -> String:
        return self.__name__ + "(" + String(self.token_bundles) + ")" 