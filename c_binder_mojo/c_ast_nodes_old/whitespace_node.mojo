# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer, UnsafePointer

# from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.c_ast_nodes_old.tree import Tree
from c_binder_mojo.c_ast_nodes_old.common import NodeAstLike
from c_binder_mojo.c_ast_nodes_old.node_variant import Variant
from c_binder_mojo.c_ast_nodes_old.nodes import node2string
from c_binder_mojo.c_ast_nodes_old.common import CTokens


@value
struct WhitespaceNode(NodeAstLike):
    alias __name__ = "WhitespaceNode"

    var _token_bundles: TokenBundles
    var just_code: Bool
    var _parent: Int
    var _current_idx: Int

    fn __init__(out self, token_bundle: TokenBundle, parent: Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0

    fn n_lines(self) -> Int:
        line_nums = List[Int]()
        for token_bundle in self._token_bundles:
            if token_bundle[].line_num not in line_nums:
                line_nums.append(token_bundle[].line_num)
        return len(line_nums)

    fn __str__(self) -> String:
        return node2string(
            self.display_name(), self.token_bundles(), self.just_code
        )

    fn append(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        if self.accept(token_bundle, self._parent, tree):
            self._token_bundles.append(token_bundle)
            return True
        return False

    @staticmethod
    fn accept(
        token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree
    ) -> Bool:
        if token_bundle.token == "" or token_bundle.token == "\n":
            return True
        return False

    @staticmethod
    fn create(
        token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree
    ) -> Self:
        return Self(token_bundle, parent_idx)

    fn done(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return not self.accept(token_bundle, self._parent, tree)

    fn make_child(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return False

    fn parent_idx(self) -> Int:
        return self._parent

    fn children_idxs(mut self) -> ArcPointer[List[Int]]:
        return ArcPointer(List[Int]())

    fn current_idx(self) -> Int:
        return self._current_idx

    fn set_current_idx(mut self, value: Int):
        self._current_idx = value

    fn display_name(self) -> String:
        s = String(self.__name__)
        s += String("(parent=") + String(self._parent) + String(",")
        s += String("n_lines=") + String(self.n_lines()) + String(",")
        s += String("current_idx=") + String(self._current_idx) + String(")")
        return s

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False
