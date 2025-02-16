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
struct MacroDefineNode(NodeAstLike):
    alias __name__ = "MacroDefineNode"
    
    var _token_bundles: TokenBundles
    var just_code:Bool
    var _parent: Int
    var _current_idx: Int
    var _current_line_number: Int

    fn __init__(out self,token_bundle:TokenBundle, parent:Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._current_line_number = token_bundle.line_num

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        self._token_bundles.append(token_bundle)
        return True

    @staticmethod
    fn accept(token_bundle:TokenBundle, mut tree:Tree) -> Bool: 
        if token_bundle.token == CTokens.MACRO_DEFINE:
            return True
        return False

    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)

    fn register_type_name(self, mut tree:Tree):
        # Define usually is: #define <name> <code>
        # The name is the second to last token bundle before the comment.
        token_bundle = self._token_bundles[1]
        if token_bundle.token not in tree.registered_datatypes[]:
            tree.registered_datatypes[].append(token_bundle.token)

    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: 
        if len(self._token_bundles) < 3:
            return False
        if self._current_line_number == token_bundle.line_num:
            if token_bundle.token == CTokens.COMMENT_SINGLE_LINE_BEGIN:
                self.register_type_name(tree)
                return True
            if token_bundle.token == CTokens.COMMENT_MULTI_LINE_BEGIN:
                self.register_type_name(tree)
                return True
            if token_bundle.token == CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN:
                self.register_type_name(tree)
                return True

            return False
        self.register_type_name(tree)
        return True
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
