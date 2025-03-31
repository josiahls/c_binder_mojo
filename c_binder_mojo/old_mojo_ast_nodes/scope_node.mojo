# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode, default_to_string
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import (
    NodeAstLike,
    node2string,
    TreeInterface,
    default_scope_level,
    NodeIndices,
)
from c_binder_mojo import c_ast_nodes_old


@value
struct ScopeNode(NodeAstLike):
    """Handles C scope blocks ({...}).

    In Mojo, scopes are handled with indentation rather than braces, so this node
    mostly just manages its children and provides proper indentation.
    """

    alias __name__ = "ScopeNode"

    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _is_struct: Bool
    var _field_name: String

    fn __init__(out self, c_ast_node: c_ast_nodes_old.nodes.AstNode):
        self._token_bundles = (
            TokenBundles()
        )  # No tokens needed, just a splitter
        self._indices = ArcPointer(
            NodeIndices(
                c_node_idx=c_ast_node.current_idx(),
                c_parent_idx=c_ast_node.parent_idx(),
                mojo_node_idx=0,
                mojo_parent_idx=-1,
                c_children_idxs=c_ast_node.children_idxs(),
            )
        )
        self._str_just_code = False
        self._is_struct = (
            c_ast_node.node[c_ast_nodes_old.nodes.ScopeNode].scope_type.type
            == c_ast_nodes_old.nodes.scope_node.ScopeType.STRUCT
        )
        self._field_name = ""

    fn __str__(self) -> String:
        return node2string(
            self.display_name(), self.token_bundles(), self._str_just_code
        )

    @staticmethod
    fn accept(
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        parent_idx: Int,
        tree_interface: TreeInterface,
    ) -> Bool:
        return c_ast_node.node.isa[c_ast_nodes_old.nodes.ScopeNode]()

    @staticmethod
    fn create(
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        parent_idx: Int,
        tree_interface: TreeInterface,
    ) -> Self:
        return Self(c_ast_node)

    # State checks
    fn is_accepting_tokens(
        self,
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        tree_interface: TreeInterface,
    ) -> Bool:
        return False  # No tokens needed

    fn is_complete(
        self,
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        tree_interface: TreeInterface,
    ) -> Bool:
        # Complete when we've moved past our children
        if c_ast_node.current_idx() not in self._indices[].c_children_idxs[]:
            return True
        return False

    fn wants_child(
        self,
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        tree_interface: TreeInterface,
    ) -> Bool:
        return True  # Accept all children

    fn append(mut self, c_ast_node: c_ast_nodes_old.nodes.AstNode) -> Bool:
        return False

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn display_name(self) -> String:
        return self.__name__ + "(" + String(self._indices[]) + ")"

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False  # Children on new lines

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code

    fn scope_level(self, tree_interface: TreeInterface) -> Int:
        return default_scope_level(
            self._indices[].mojo_parent_idx, tree_interface
        )

    fn scope_offset(self) -> Int:
        return 0  # No additional indentation - parent node handles that

    fn finalize(mut self, parent_idx: Int, mut tree_interface: TreeInterface):
        # Just add a splitter token to ensure children are inserted properly
        self._token_bundles.append(
            TokenBundle(token="", line_num=0, col_num=0, is_splitter=True)
        )

    fn name(self) -> String:
        """Returns the raw node name without any metadata."""
        return Self.__name__

    fn to_string(
        self, just_code: Bool, tree_interface: TreeInterface
    ) -> String:
        return default_to_string(
            AstNode(self), self._str_just_code, tree_interface
        )
