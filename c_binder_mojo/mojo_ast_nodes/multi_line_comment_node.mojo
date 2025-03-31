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
    TokenFlow,
    NodeState,
)
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface
from c_binder_mojo.mojo_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_scope_level,
    default_to_string,
    default_to_string_just_code,
)
from c_binder_mojo.c_ast_nodes import AstNode as C_AstNode

@value
struct MultiLineCommentNode(NodeAstLike):
    alias __name__ = "MultiLineCommentNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _c_token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode):
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._c_token_bundles = c_node.token_bundles()
        self._node_state = NodeState.INITIALIZING
        self.format_token_bundles()

    fn format_token_bundles(self):
        inside_multi_line_comment = False
        for token_bundle in self._c_token_bundles[]:
            token = token_bundle[].token # TODO(josiahls): is this a copy or a move?
            if not inside_multi_line_comment and "/*" in token:
                inside_multi_line_comment = True
                token = token.replace("/*", "\"\"\"")
            if inside_multi_line_comment and "*/" in token:
                inside_multi_line_comment = False
                token = token.replace("*/", "\"\"\"")
            self._token_bundles[].append(TokenBundle.from_other(token, token_bundle[]))

    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return c_node.name() == "MultiLineCommentNode"

    @staticmethod
    fn create(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        return Self(indices, c_node)

    fn determine_token_flow(
        mut self, c_node: C_AstNode, module_interface: ModuleInterface
    ) -> MessageableEnum:
        return TokenFlow.PASS_TO_PARENT

    fn process(
        mut self,
        c_node: C_AstNode,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        self._node_state = NodeState.COMPLETED

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
        self, just_code: Bool, module_interface: ModuleInterface
    ) raises -> String:
        if just_code:
            return default_to_string_just_code(AstNode(self), module_interface)
        else:
            return default_to_string(AstNode(self), module_interface)

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        return default_scope_level(
            self._indicies[].mojo_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        return 0  # Root adds one level of scope
