# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike, CTokens
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes.nodes import node2string
from c_binder_mojo.c_ast_nodes.scope_node import ScopeNode, ScopeType
@value
struct EnumFieldNode(NodeAstLike):
    """Represents a field in an enum definition.
    
    Examples:
        FIELD_NAME,
        FIELD_NAME = 1,
        FIELD_NAME = SOME_CONSTANT,
    """
    alias __name__ = "EnumFieldNode"
    
    var _token_bundles: TokenBundles
    var just_code: Bool
    var _parent: Int
    var _current_idx: Int
    var _children: ArcPointer[List[Int]]
    var field_name: String

    fn __init__(out self, token_bundle: TokenBundle, parent: Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._children = ArcPointer(List[Int]())
        self.field_name = token_bundle.token  # First token is the field name

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    @staticmethod
    fn accept(token_bundle: TokenBundle, parent_idx:Int, mut tree: Tree) -> Bool:
        if tree.nodes[parent_idx].node.isa[ScopeNode]():
            var scope_node = tree.nodes[parent_idx].node[ScopeNode]
            return scope_node.scope_type.type == ScopeType.ENUM
        return False

    fn append(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # TODO: Handle field value assignment (=) and expressions
        # For now, just collect tokens until comma
        if token_bundle.token == ",":
            self._token_bundles.append(token_bundle)
            return True
        return False

    @staticmethod
    fn create(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Self:
        return Self(token_bundle, parent_idx)

    fn done(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # Done when we hit a comma
        return len(self._token_bundles) > 0 and self._token_bundles[-1].token == ","

    fn make_child(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # Enum fields don't have children
        return False

    fn parent_idx(self) -> Int:
        return self._parent

    fn children_idxs(mut self) -> ArcPointer[List[Int]]:
        return self._children

    fn current_idx(self) -> Int:
        return self._current_idx

    fn set_current_idx(mut self, value: Int):
        self._current_idx = value

    fn done_no_cascade(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return False

    fn display_name(self) -> String:
        s = String(self.__name__)
        s += String('(field_name=') + self.field_name + String(',')
        s += String('parent=') + String(self._parent) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(')')
        return s

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return True 