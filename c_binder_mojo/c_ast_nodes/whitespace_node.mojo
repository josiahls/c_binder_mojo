# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer,UnsafePointer
# from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes.nodes import node2string
from c_binder_mojo.c_ast_nodes.common import CTokens


@value
struct WhitespaceNode(NodeAstLike):
    alias __name__ = "WhitespaceNode"
    
    var token_bundles: TokenBundles
    var just_code:Bool
    var _parent: Int
    var _current_idx:Int

    fn __init__(out self,token_bundle:TokenBundle, parent:Int):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,self.just_code)
    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if self.accept(token_bundle):
            self.token_bundles.append(token_bundle)
            return True
        return False

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: 
        if token_bundle.token == '' or token_bundle.token == '\n':
            return True
        return False
    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)
    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: 
        return True
    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False
    fn parent(self) -> Int: return self._parent
    fn children(mut self) -> ArcPointer[List[Int]]: return ArcPointer(List[Int]())
    fn current_idx(self) -> Int: return self._current_idx
    fn set_current_idx(mut self, value:Int): self._current_idx = value
    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False
