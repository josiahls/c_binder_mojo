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
from c_binder_mojo.c_ast_nodes.nodes import DeletedNode,AstNode


@value
struct TypedefNode(NodeAstLike):
    alias __name__ = "TypedefNode"
    
    var _token_bundles: TokenBundles
    var _other_token_bundle_buffer: TokenBundles
    var just_code:Bool
    var _parent: Int
    var _current_idx:Int
    var _is_done:Bool
    var _children: ArcPointer[List[Int]]

    fn type_name(self) -> TokenBundle:
        return self._token_bundles[-2] # Second to last token, being a semi colon

    fn __init__(out self,token_bundle:TokenBundle, parent:Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self._other_token_bundle_buffer = TokenBundles()
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._is_done = False
        self._children = ArcPointer(List[Int]())

    fn __str__(self) -> String: 
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if token_bundle.token == CTokens.END_STATEMENT:
            self._is_done = True
            # Grab the last token bundle before the semi colon. For type def
            # this will be the name of the type.
            name_token = self._other_token_bundle_buffer[-1]
            for child in self._children[]:
                node = tree.nodes[child[]]
                if len(node.token_bundles()) == 1:
                    for token in node.token_bundles():
                        if token[] == name_token:
                            tree.nodes[child[]] = AstNode(DeletedNode())
            self._token_bundles.append(self._other_token_bundle_buffer[-1])
            self._other_token_bundle_buffer.clear()

            self._token_bundles.append(token_bundle)
            return True
        else:
            # Track the tokens that have been read.
            self._other_token_bundle_buffer.append(token_bundle)
        return False

    @staticmethod
    fn accept(token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if token_bundle.token == CTokens.TYPE_DEF:
            return True
        return False

    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)
    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: 
        if self._is_done:
            if self.type_name().token not in tree.registered_datatypes[]:
                tree.registered_datatypes[].append(self.type_name().token)
        return self._is_done

    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if not self._token_bundles[-1].is_splitter:
            self._token_bundles.append(
                TokenBundle(
                    token='',
                    is_splitter=True,
                    line_num=self._token_bundles[-1].line_num,
                    col_num=self._token_bundles[-1].col_num
                )
            )
        return True
    fn parent_idx(self) -> Int: return self._parent
    fn children_idxs(mut self) -> ArcPointer[List[Int]]: return self._children
    fn current_idx(self) -> Int: return self._current_idx
    fn set_current_idx(mut self, value:Int): self._current_idx = value
    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False

    fn display_name(self) -> String:
        s = String(self.__name__)
        s += String('(parent=') + String(self._parent) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(',')
        s += String('typename=') + self.type_name().token + String(')')
        return s
        

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False
