# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundles
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode

@value
struct ParsedTokenBundles:
    var token_bundles: TokenBundles
    var parent_idx: Int
    var current_idx: Int
    var children_idxs: ArcPointer[List[Int]]
    # NOTE: Maybe have explicit copy?


trait NodeAstLike(CollectionElement,Stringable): 
    alias __name__:String
    
    @staticmethod
    fn accept(token_bundles: ParsedTokenBundles, parent_idx:Int, nodes: ArcPointer[List[AstNode]])  -> Bool: ...

    @staticmethod
    fn create(token_bundles: ParsedTokenBundles, parent_idx:Int, nodes: ArcPointer[List[AstNode]]) -> Self: ...

    # fn parent_idx(self) -> Int: ...
    # fn current_idx(self) -> Int: ...
    # fn set_current_idx(mut self, value:Int): ...
    # fn children_idxs(mut self) -> ArcPointer[List[Int]]: ...

    # fn display_name(self) -> String: ...
    # fn token_bundles(self) -> TokenBundles: ...
    # fn should_children_inline(self) -> Bool: ...
