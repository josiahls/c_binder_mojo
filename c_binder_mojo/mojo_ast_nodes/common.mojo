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


fn node2string(name:String,token_bundles:TokenBundles, just_code:Bool) -> String:
    var s:String = ""
    if not just_code:
        s += name + " " + String(token_bundles)
    else:
        s += String(token_bundles)
    return s


trait NodeAstLike(CollectionElement, Stringable): 
    alias __name__: String
    
    # State checks
    fn is_accepting_tokens(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool: ...
    fn is_complete(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool: ...
    fn wants_child(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool: ...
    
    # Actions
    fn append(mut self, token_bundle: ParsedTokenBundles) -> Bool: ...
    fn add_child(mut self, child_idx: Int): ...
    fn parent_idx(self) -> Int: ...
    fn current_idx(self) -> Int: ...
    fn set_current_idx(mut self, value:Int): ...
    fn children_idxs(mut self) -> ArcPointer[List[Int]]: ...
    fn display_name(self) -> String: ...
    fn token_bundles(self) -> TokenBundles: ...
    fn should_children_inline(self) -> Bool: ...

    
    # Node creation
    @staticmethod
    fn accept(token_bundles: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Bool: ...
    @staticmethod
    fn create(token_bundles: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Self: ...