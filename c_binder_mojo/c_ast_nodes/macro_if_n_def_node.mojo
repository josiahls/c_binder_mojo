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
from c_binder_mojo.c_ast_nodes.nodes import AstNode


@value
struct MacroIfNDefNode(NodeAstLike):
    alias __name__ = "MacroIfNDefNode"
    
    var token_bundles: TokenBundles
    var just_code:Bool
    var _parent:Int
    var _children:ArcPointer[List[Int]]
    var _current_idx:Int

    fn __init__(out self,token_bundle:TokenBundle, parent:Int):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False
        self._children = ArcPointer(List[Int]()) 
        self._current_idx = 0
        self._parent = parent

    fn __str__(self) -> String: 
        name = String(self.__name__)
        name += String('(len children=') + String(len(self._children[])) + String(',')
        name += String('parent=') + String(self._parent) + String(',')
        name += String('current_idx=') + String(self._current_idx) + String(')')
        return node2string(name, self.token_bundles, self.just_code)

    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if len(self.token_bundles) < 2:
            self.token_bundles.append(token_bundle)
            return True
        return False

    @staticmethod
    fn accept(token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if token_bundle.token == CTokens.MACRO_IFNDEF:
            return True
        return False
    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)

    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: 
        if token_bundle.token == CTokens.MACRO_ENDIF:
            return True
        if token_bundle.token == CTokens.MACRO_ELSE:
            return True
        return False

    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        return True

        
    fn parent(self) -> Int: return self._parent
    fn children(mut self) -> ArcPointer[List[Int]]: return self._children
    fn current_idx(self) -> Int: return self._current_idx
    fn set_current_idx(mut self, value:Int): self._current_idx = value
    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: 
        if self.done(token_bundle, tree):
            return True
        return False
