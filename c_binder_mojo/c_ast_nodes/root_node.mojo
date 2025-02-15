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


@value
struct RootNode(NodeAstLike):
    alias __name__ = "RootNode"
    
    var token_bundles: TokenBundles
    var just_code:Bool
    var _parent: Int
    var _current_idx:Int
    var _children:List[Int]

    fn __copyinit__(out self, read other:Self):
        print('Copying RootNode')
        self.token_bundles = other.token_bundles
        self.just_code = other.just_code
        self._parent = other._parent
        self._current_idx = other._current_idx
        self._children = other._children

    fn __init__(out self,token_bundle:TokenBundle, parent:Int):
        self.token_bundles = TokenBundles()
        # self.token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._children = List[Int]()

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)
    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: return False
    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)
    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False
    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return True

    fn parent(self) -> Int: return self._parent
    fn children(mut self) -> ArcPointer[List[Int]]: return ArcPointer(self._children)
    fn current_idx(self) -> Int: return self._current_idx
    fn set_current_idx(mut self, value:Int): self._current_idx = value
    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False
