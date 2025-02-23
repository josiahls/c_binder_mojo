from memory import ArcPointer
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, ParsedTokenBundles

@value
struct PlaceholderNode(NodeAstLike):
    alias __name__ = "PlaceholderNode"
    
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
    fn accept(bundle: ParsedTokenBundles) -> Bool:
        return True  # Accept everything as fallback

    fn __str__(self) -> String:
        return self.__name__ + "(" + String(self.token_bundles) + ")" 