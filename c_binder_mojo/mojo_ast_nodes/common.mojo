# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundles

@value
struct ParsedTokenBundle:
    var token_bundles: TokenBundles
    var parent_idx: Int
    var current_idx: Int
    var children_idxs: ArcPointer[List[Int]]
    # NOTE: Maybe have explicit copy?


trait NodeAstLike(CollectionElement,Stringable): 
    alias __name__:String
    
    # fn parent_idx(self) -> Int: ...
    # fn current_idx(self) -> Int: ...
    # fn set_current_idx(mut self, value:Int): ...
    # fn children_idxs(mut self) -> ArcPointer[List[Int]]: ...

    # fn display_name(self) -> String: ...
    # fn token_bundles(self) -> TokenBundles: ...
    # fn should_children_inline(self) -> Bool: ...
