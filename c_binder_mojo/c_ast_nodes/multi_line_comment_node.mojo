# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant

# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    MessageableEnum,
    NodeIndices,
    TokenBundles,
    NodeState,
    TokenFlow,
    CTokens,
)
from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
from c_binder_mojo.c_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_scope_level,
    default_to_string,
)


@value
struct MultiLineCommentNode(NodeAstLike):
    alias __name__ = "MultiLineCommentNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _is_complete: Bool

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles[].append(token_bundle)
        self._node_state = NodeState.INITIALIZING
        self._is_complete = False

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if this token starts a multiline comment.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts a multiline comment, False otherwise.
        """
        # Check for exact matches first
        if token.token == CTokens.COMMENT_MULTI_LINE_BEGIN:
            return True
        if token.token == CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN:
            return True

        # Check if token starts with comment markers
        if token.token.startswith(CTokens.COMMENT_MULTI_LINE_BEGIN):
            return True
        if token.token.startswith(CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN):
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
    ) -> MessageableEnum:
        """Determine how to handle the next token.

        Args:
            token: The token to process.
            module_interface: Interface to the AST.

        Returns:
            The token flow decision.
        """
        if self._node_state == NodeState.COMPLETED:
            return TokenFlow.PASS_TO_PARENT

        # Check for exact matches first
        if token.token == CTokens.COMMENT_MULTI_LINE_END:
            self._node_state = NodeState.COMPLETED
            return TokenFlow.CONSUME_TOKEN
        if token.token == CTokens.COMMENT_MULTI_LINE_INLINE_END:
            self._node_state = NodeState.COMPLETED
            return TokenFlow.CONSUME_TOKEN

        # Check if token contains or ends with comment end markers
        if "*/" in token.token:
            self._node_state = NodeState.COMPLETED
            return TokenFlow.CONSUME_TOKEN
        if token.token.endswith("*/"):
            self._node_state = NodeState.COMPLETED
            return TokenFlow.CONSUME_TOKEN

        self._node_state = NodeState.COLLECTING_TOKENS
        return TokenFlow.CONSUME_TOKEN

    fn process(
        mut self,
        token: TokenBundle,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
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

    fn node_state(self) -> MessageableEnum:
        return self._node_state

    @always_inline("nodebug")
    fn __str__(self) -> String:
        return "MultiLineCommentNode"

    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            return self.__name__ + "(" + String(self._indicies[]) + ")"
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface, parent_indent_level: Int = 0
    ) -> String:
        return default_to_string(
            AstNode(self), 
            module_interface, 
            just_code=just_code, 
            indent_level=parent_indent_level,
            newline_after_tail=True
        )

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        return default_scope_level(
            self._indicies[].c_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        return 0 if just_code else 0  # Root adds one level of scope
