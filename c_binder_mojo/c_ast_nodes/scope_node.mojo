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
from c_binder_mojo.c_ast_nodes.nodes import AstNode


@value
struct ScopeType:
    """Defines the type of scope based on parent node."""
    alias ENUM = 0
    alias STRUCT = 1
    alias FUNCTION = 2
    alias UNKNOWN = 3  # Default/fallback type

    var type: Int

    fn __init__(out self, type: Int):
        self.type = type

    fn __str__(self) -> String:
        if self.type == Self.ENUM:
            return "ENUM"
        elif self.type == Self.STRUCT:
            return "STRUCT"
        elif self.type == Self.FUNCTION:
            return "FUNCTION"
        return "UNKNOWN"

    @staticmethod
    fn from_parent(parent_node: AstNode) -> Self:
        if parent_node.node.isa[EnumNode]():
            return Self(Self.ENUM)
        # parent.node.isa[StructNode]():
        #   return Self(Self.STRUCT)
        # parent.node.isa[FunctionNode]():
        #   return Self(Self.FUNCTION)
        # Add other node type checks as we implement them
        return Self(Self.UNKNOWN)

@value
struct ScopeNode(NodeAstLike):
    """Node that handles a scoped block of code between { and }.
    
    This node is responsible for managing content between curly braces.
    Each scope node handles a single level of braces, with nested scopes
    creating their own nodes.
    """
    alias __name__ = "ScopeNode"
    
    var _token_bundles: TokenBundles
    var just_code: Bool
    var _parent: Int
    var _current_idx: Int
    var _children: ArcPointer[List[Int]]
    var _is_closed: Bool  # Just need to know if we've seen our closing brace
    var scope_type: ScopeType

    fn __init__(out self, token_bundle: TokenBundle, parent: Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)  # Should be {
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._children = ArcPointer(List[Int]())
        self._is_closed = False
        self.scope_type = ScopeType(ScopeType.UNKNOWN)

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    @staticmethod
    fn accept(token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return token_bundle.token == CTokens.SCOPE_BEGIN

    fn append(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        if token_bundle.token == CTokens.SCOPE_END:
            self._is_closed = True
            # Add split token for children to be added.
            self._token_bundles.append(
                TokenBundle(
                    token='',
                    is_splitter=True,
                    line_num=token_bundle.line_num,
                    col_num=token_bundle.col_num
                )
            )
            self._token_bundles.append(token_bundle)
            return True
        return False

    @staticmethod
    fn create(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Self:
        var node = Self(token_bundle, parent_idx)
        if parent_idx >= 0:
            node.scope_type = ScopeType.from_parent(tree.nodes[parent_idx])
        else:
            node.scope_type = ScopeType(ScopeType.UNKNOWN)
        return node

    fn done(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return self._is_closed

    fn make_child(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # Create new scope node when seeing {
        return True

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
        s += String('(parent=') + String(self._parent) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(',')
        s += String('scope_type=') + String(self.scope_type) + String(')')
        return s

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False 