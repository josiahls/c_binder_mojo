# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant

# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    NodeIndices,
    TokenBundles,
    NodeState,
    CTokens,
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
struct MultiLineCommentNode(NodeAstLike):
    alias __name__ = "MultiLineCommentNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _node_state: StringLiteral
    var _is_complete: Bool

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles[].append(token_bundle)
        self._node_state = NodeState.APPENDING
        self._is_complete = False

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        if token.token == CTokens.COMMENT_MULTI_LINE_BEGIN:
            return True
        elif token.token == CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN:
            return True
        elif token.token.startswith(CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN):
            return True
        elif token.token.startswith(CTokens.COMMENT_MULTI_LINE_BEGIN):
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
    ) -> StringLiteral:
        if self._is_complete:
            self._node_state = NodeState.COMPLETE
            return self._node_state

        # Check if the token is the end of the multi-line comment.
        # Delay the completion since we need to append this token to this node.
        if token.token == CTokens.COMMENT_MULTI_LINE_END:
            self._is_complete = True
        elif token.token.startswith(CTokens.COMMENT_MULTI_LINE_END):
            self._is_complete = True
        elif token.token == CTokens.COMMENT_MULTI_LINE_INLINE_END:
            self._is_complete = True
        elif token.token.startswith(CTokens.COMMENT_MULTI_LINE_INLINE_END):
            self._is_complete = True

        self._node_state = NodeState.APPENDING
        return self._node_state

    fn process(
        mut self,
        token: TokenBundle,
        node_state: StringLiteral,
        module_interface: ModuleInterface,
    ):
        if node_state == NodeState.COMPLETE:
            pass
            # self._token_bundles[].append(token)
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
        return "MultiLineCommentNode"

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
