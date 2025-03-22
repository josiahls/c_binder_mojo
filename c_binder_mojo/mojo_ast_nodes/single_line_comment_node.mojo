# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode, default_to_string
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import (
    NodeAstLike,
    node2string,
    MojoTokens,
    TreeInterface,
    default_scope_level,
    NodeIndices,
)
from c_binder_mojo import c_ast_nodes_old


@value
struct SingleLineCommentNode(NodeAstLike):
    alias __name__ = "SingleLineCommentNode"

    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool

    fn __init__(out self, c_ast_node: c_ast_nodes_old.nodes.AstNode):
        self._token_bundles = TokenBundles()
        self._indices = ArcPointer(
            NodeIndices(
                c_node_idx=c_ast_node.current_idx(),
                c_parent_idx=c_ast_node.parent_idx(),
                mojo_node_idx=0,
                mojo_parent_idx=-1,
            )
        )
        self._token_bundles.append(
            TokenBundle(
                MojoTokens.COMMENT_SINGLE_LINE_BEGIN,
                c_ast_node.token_bundles()[0].line_num,
                c_ast_node.token_bundles()[0].col_num,
                c_ast_node.token_bundles()[0].is_splitter,
            )
        )
        for i in range(len(c_ast_node.token_bundles())):
            if i > 0:
                self._token_bundles.append(c_ast_node.token_bundles()[i])
        self._str_just_code = False

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
        return c_ast_node.node.isa[c_ast_nodes_old.nodes.SingleCommentNode]()

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
        return False  # Single line comment takes just one token

    fn is_complete(
        self,
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        tree_interface: TreeInterface,
    ) -> Bool:
        return True  # Complete after first token

    fn wants_child(
        self,
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        tree_interface: TreeInterface,
    ) -> Bool:
        return False  # Comments don't have children

    # Actions
    fn append(mut self, c_ast_node: c_ast_nodes_old.nodes.AstNode) -> Bool:
        return False

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn display_name(self) -> String:
        return self.__name__ + "(" + String(self._indices[]) + ")"

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return True

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code

    fn scope_level(self, tree_interface: TreeInterface) -> Int:
        return default_scope_level(
            self._indices[].mojo_parent_idx, tree_interface
        )

    fn scope_offset(self) -> Int:
        return 0  # Comments don't affect scope

    fn name(self) -> String:
        """Returns the raw node name without any metadata."""
        return Self.__name__

    fn finalize(mut self, parent_idx: Int, mut tree_interface: TreeInterface):
        # Comments don't need finalization
        pass

    fn to_string(
        self, just_code: Bool, tree_interface: TreeInterface
    ) -> String:
        return default_to_string(
            AstNode(self), self._str_just_code, tree_interface
        )
