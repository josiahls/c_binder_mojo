# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer,UnsafePointer
# from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes.nodes import node2string
from c_binder_mojo.c_ast_nodes.common import CTokens


@value
struct SingleCommentNode(NodeAstLike):
    alias __name__ = "SingleCommentNode"

    var _token_bundles: TokenBundles
    var just_code:Bool
    var _parent_idx:Int
    var _current_idx:Int
    var current_line_num:Int

    fn __init__(out self,token_bundle:TokenBundle, parent_idx:Int):
        self._token_bundles = TokenBundles()
        if token_bundle.token == CTokens.COMMENT_SINGLE_LINE_BEGIN:
            self._token_bundles.append(token_bundle)
        elif token_bundle.token.startswith(CTokens.COMMENT_SINGLE_LINE_BEGIN):
            # Split it apart into separate tokens
            try:
                var tokens = token_bundle.token.split(CTokens.COMMENT_SINGLE_LINE_BEGIN)
                for token in tokens:
                    self._token_bundles.append(
                        TokenBundle(token[], 
                        token_bundle.line_num, 
                        token_bundle.col_num, 
                        token_bundle.is_splitter)
                    )
            except:
                self._token_bundles.append(token_bundle)
        self._parent_idx = parent_idx
        self._current_idx = 0
        self.current_line_num = token_bundle.line_num
        self.just_code = False

    fn __str__(self) -> String: 
        return node2string(self.display_name(), self.token_bundles(), self.just_code)
        
    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if token_bundle.line_num == self.current_line_num:
            self._token_bundles.append(token_bundle)
            return True
        return False

    @staticmethod
    fn accept(token_bundle: TokenBundle, parent_idx:Int, mut tree: Tree)  -> Bool: 
        if token_bundle.token == CTokens.COMMENT_SINGLE_LINE_BEGIN:
            return True
        elif token_bundle.token.startswith(CTokens.COMMENT_SINGLE_LINE_BEGIN):
            return True        
        return False


    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)
    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: 
        if token_bundle.line_num != self.current_line_num:
            return True
        return False
    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False
    fn parent_idx(self) -> Int: return self._parent_idx
    fn children_idxs(mut self) -> ArcPointer[List[Int]]: return ArcPointer(List[Int]())
    fn current_idx(self) -> Int: return self._current_idx
    fn set_current_idx(mut self, value:Int): self._current_idx = value
    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False

    fn display_name(self) -> String:
        s = String(self.__name__)
        s += String('(parent=') + String(self._parent_idx) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(')')
        return s
        
    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False
