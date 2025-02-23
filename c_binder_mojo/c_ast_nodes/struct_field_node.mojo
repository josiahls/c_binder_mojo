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
struct StructFieldNode(NodeAstLike):
    """Represents a field in a struct definition.
    
    Examples:
        int field_name;
        void* pointer_field;
        struct { ... } anonymous_struct;
    """
    alias __name__ = "StructFieldNode"
    
    var _token_bundles: TokenBundles
    var just_code: Bool
    var _parent: Int
    var _current_idx: Int
    var _children: ArcPointer[List[Int]]
    var field_name: String
    var _is_done: Bool
    var _is_struct: Bool

    fn __init__(out self, token_bundle: TokenBundle, parent: Int, is_struct: Bool = False):
        self._token_bundles = TokenBundles()
        if is_struct:
            # We need to handle things a little differently. The first toke will be struct in this case,
            # However that token should only be used for the struct class.
            # The first token will actually be a token splitter.
            self._token_bundles.append(
                TokenBundle(
                    token='',
                    is_splitter=True,
                    line_num=token_bundle.line_num,
                    col_num=token_bundle.col_num
                )
            )
        else:
            self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._children = ArcPointer(List[Int]())
        self.field_name = ""  # Will be set when we see the identifier
        self._is_done = False
        self._is_struct = is_struct

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    @staticmethod
    fn accept(token_bundle: TokenBundle, parent_idx:Int, mut tree: Tree) -> Bool:
        if tree.nodes[parent_idx].node.isa[ScopeNode]():
            var scope_node = tree.nodes[parent_idx].node[ScopeNode]
            if scope_node.scope_type.type == ScopeType.STRUCT:
                return scope_node.scope_type.type == ScopeType.STRUCT
        return False

    fn append(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:

        if token_bundle.token == CTokens.END_STATEMENT:
            self._is_done = True
        if not self._is_struct:
            self._token_bundles.append(token_bundle)
            return True
        if self._is_struct and len(self._children[]) > 0:
            # We've processed the struct definition, now collect field name
            self._token_bundles.append(token_bundle)
            return True
        return False

    @staticmethod
    fn create(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Self:
        if token_bundle.token == CTokens.CSTRUCT:
            tree.reprocess_token_buffer.append(token_bundle)
        return Self(token_bundle, parent_idx, token_bundle.token == CTokens.CSTRUCT)

    fn done(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return self._is_done

    fn make_child(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return self._is_struct

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

    # ... rest of the standard NodeAstLike methods ... 