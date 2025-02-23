# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer,UnsafePointer
# from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike, CTokens
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes.nodes import node2string


@value
struct MultiLineCommentNode(NodeAstLike):
    alias __name__ = "MultiLineCommentNode"
    
    var _token_bundles: TokenBundles
    var just_code:Bool
    var _parent: Int
    var _current_idx:Int
    var _is_done:Bool

    fn __init__(out self,token_bundle:TokenBundle, parent:Int):
        """Handles multi-line comments, either inline or block."""
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._is_done = False

    fn __str__(self) -> String: 
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        self._token_bundles.append(token_bundle)
        if token_bundle.token == CTokens.COMMENT_MULTI_LINE_INLINE_END:
            self._is_done = True
        if token_bundle.token == CTokens.COMMENT_MULTI_LINE_END:
            self._is_done = True
        return True

    @staticmethod
    fn accept(token_bundle: TokenBundle, parent_idx:Int, mut tree: Tree)  -> Bool: 
        if token_bundle.token == CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN:
            return True
        if token_bundle.token == CTokens.COMMENT_MULTI_LINE_BEGIN:
            return True
        return False
    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)
    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return self._is_done
    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False
    fn parent_idx(self) -> Int: return self._parent
    fn children_idxs(mut self) -> ArcPointer[List[Int]]: return ArcPointer(List[Int]())
    fn current_idx(self) -> Int: return self._current_idx
    fn set_current_idx(mut self, value:Int): self._current_idx = value
    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False

    fn display_name(self) -> String:
        s = String(self.__name__)
        s += String('(parent=') + String(self._parent) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(')')
        return s
        

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False
