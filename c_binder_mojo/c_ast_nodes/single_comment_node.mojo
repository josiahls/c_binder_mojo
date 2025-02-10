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


@value
struct SingleCommentNode(NodeAstLike):
    alias __name__ = "SingleCommentNode"
    
    var token_bundles: TokenBundles
    var just_code:Bool

    fn __init__(out self,token_bundle:TokenBundle):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)
    fn append(self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: 
        if token_bundle.token == CTokens.COMMENT_SINGLE_LINE_BEGIN:
            return True        
        return False


    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int, mut tree:Tree) -> Self:
        return Self(token_bundle)
    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False
    fn make_child(self, token_bundle:TokenBundle, mut tree:Tree) -> Int: return -1
    fn parent(self) -> Int: return 0
    fn children(self) -> ArcPointer[List[Int]]: return ArcPointer(List[Int]())
    fn current_idx(self) -> Int: return 0
