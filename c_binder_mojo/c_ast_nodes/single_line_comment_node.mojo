# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant

# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    StateOrFlowValue,
    NodeIndices,
    TokenBundles,
    TokenFlow,
    CTokens,
    NodeState,
)
from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
from c_binder_mojo.c_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_scope_level,
    default_to_string,
    default_to_string_just_code,
)


@value
struct SingleLineCommentNode(NodeAstLike):
    alias __name__ = "SingleLineCommentNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _node_state: StateOrFlowValue
    var _row_num: Int

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles[].append(token_bundle)
        self._node_state = NodeState.INITIALIZING
        self._row_num = token_bundle.row_num

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        if token.token == CTokens.COMMENT_SINGLE_LINE_BEGIN:
            return True
        elif token.token.startswith(CTokens.COMMENT_SINGLE_LINE_BEGIN):
            return True
        return False

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        return Self(indices, token)

    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> StateOrFlowValue:
        if token.row_num != self._row_num:
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT
        else:
            self._node_state = NodeState.COLLECTING_TOKENS
            return TokenFlow.CONSUME_TOKEN

    fn process(
        mut self,
        token: TokenBundle,
        token_flow: StateOrFlowValue,
        module_interface: ModuleInterface,
    ):
        if token_flow == TokenFlow.CONSUME_TOKEN:
            self._token_bundles[].append(token)
        elif token_flow == TokenFlow.PASS_TO_PARENT:
            pass

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

    fn node_state(self) -> StateOrFlowValue:
        return self._node_state

    @always_inline("nodebug")
    fn __str__(self) -> String:
        return "SingleLineCommentNode"

    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            return self.__name__ + "(" + String(self._indicies[]) + ")"
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> String:
        if just_code:
            return default_to_string_just_code(AstNode(self), module_interface)
        else:
            return default_to_string(AstNode(self), module_interface)

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        return default_scope_level(
            self._indicies[].original_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        return 0 if just_code else 0  # Root adds one level of scope
