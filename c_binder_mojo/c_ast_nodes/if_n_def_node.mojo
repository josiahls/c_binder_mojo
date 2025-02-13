# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer
# from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes.nodes import node2string
from c_binder_mojo.c_primitives import CTokens
from c_binder_mojo.c_ast_nodes.nodes import AstNode


@value
struct IfNDefNode(NodeAstLike):
    alias __name__ = "IfNDefNode"
    
    var token_bundles: TokenBundles
    var just_code:Bool
    var _parent:Int
    var _children:List[Int]
    var _current_idx:Int

    fn __init__(out self,token_bundle:TokenBundle, parent:Int):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False
        self._children = List[Int]()
        self._current_idx = 0
        self._parent = parent

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)
    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if len(self.token_bundles) < 2:
            self.token_bundles.append(token_bundle)
            return True
        return False

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: 
        if token_bundle.token == CTokens.MACRO_IFNDEF:
            return True
        return False
    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)

    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: 
        if token_bundle.token == CTokens.MACRO_ENDIF:
            return True
        return False

    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if not self.done(token_bundle, tree):
           return True

        return False

    fn parent(self) -> Int: return self._parent
    fn children(self) -> ArcPointer[List[Int]]: return ArcPointer(self._children)
    fn current_idx(self) -> Int: return self._current_idx
    fn set_current_idx(mut self, value:Int): self._current_idx = value
