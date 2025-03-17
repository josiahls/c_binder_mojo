# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant
# First Party Modules
from c_binder_mojo.common import TokenBundle, NodeIndices, TokenBundles, NodeState, CTokens
from c_binder_mojo.c_ast_nodes.tree import TreeInterface
from c_binder_mojo.c_ast_nodes.nodes import AstNode, NodeAstLike, default_scope_level, default_to_string


@value
struct SingleLineCommentNode(NodeAstLike):
    alias __name__ = "SingleLineCommentNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _node_state: StringLiteral
    var _row_num: Int

    fn __init__(out self, indicies:NodeIndices, token_bundle:TokenBundle):
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles[].append(token_bundle)
        self._node_state = NodeState.APPENDING
        self._row_num = token_bundle.row_num

    @staticmethod
    fn accept(token:TokenBundle, tree_interface:TreeInterface, indices:NodeIndices) -> Bool:
        if token.token == CTokens.COMMENT_SINGLE_LINE_BEGIN:
            return True
        elif token.token.startswith(CTokens.COMMENT_SINGLE_LINE_BEGIN):
            return True
        return False

    @staticmethod
    fn create(token:TokenBundle, tree_interface:TreeInterface, indices:NodeIndices) -> Self:
        return Self(indices, token)

    fn determine_state(mut self, token:TokenBundle, tree_interface:TreeInterface) -> StringLiteral:
        if token.row_num != self._row_num:
            self._node_state = NodeState.COMPLETE
        else:
            self._node_state = NodeState.APPENDING
        return self._node_state    

    fn process(mut self, token:TokenBundle, node_state:StringLiteral, tree_interface:TreeInterface):
        if node_state == NodeState.COMPLETE:
            self._token_bundles[].append(token)
        elif node_state == NodeState.APPENDING:
            self._token_bundles[].append(token)

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies
        
    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles[]

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        return self._token_bundles

    fn token_bundles_tail(self) -> TokenBundles:
        return TokenBundles()
        
    @always_inline("nodebug")
    fn __str__(self) -> String:
        return "SingleLineCommentNode"

    fn name(self, include_sig: Bool=False) -> String:
        if include_sig:
            return self.__name__ + "(" + String(self._indicies[]) + ")"
        else:
            return self.__name__

    fn to_string(self, just_code: Bool, tree_interface: TreeInterface) -> String:
        return default_to_string(AstNode(self), just_code, tree_interface)

    fn scope_level(self, just_code: Bool, tree_interface: TreeInterface) -> Int:
        return default_scope_level(self._indicies[].original_parent_idx, just_code, tree_interface)

    fn scope_offset(self, just_code: Bool) -> Int:
        return 0 if just_code else 0  # Root adds one level of scope