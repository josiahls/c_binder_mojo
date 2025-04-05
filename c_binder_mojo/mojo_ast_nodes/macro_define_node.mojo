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
    CTokens,
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
from c_binder_mojo.mojo_ast_nodes import MacroDefineValueNode, AstNodeVariant


@value
struct MacroDefineNode(NodeAstLike):
    alias __name__ = "MacroDefineNode"
    var _indicies: ArcPointer[NodeIndices]
    var _c_token_bundles: ArcPointer[TokenBundles]
    var _token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode):
        self._indicies = indicies
        self._c_token_bundles = c_node.token_bundles()
        self._token_bundles = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self.format_token_bundles()

    fn format_token_bundles(self):
        for token_bundle in self._c_token_bundles[]:
            token = token_bundle[].token
            if token == CTokens.MACRO_DEFINE:
                token = "alias"
            self._token_bundles[].append(
                TokenBundle.from_other(token, token_bundle[])
            )

    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return c_node.name() == "MacroDefineNode"

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
        if c_node.indicies().c_current_idx in self._indicies[].c_child_idxs:
            if c_node.name() == "WhitespaceNode":
                self._node_state = NodeState.DESTROYING_TOKENS
                return TokenFlow.CONSUME_TOKEN
            self._node_state = NodeState.BUILDING_CHILDREN
            return TokenFlow.CREATE_CHILD
        else:
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

    fn process(
        mut self,
        c_node: C_AstNode,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        if token_flow == TokenFlow.PASS_TO_PARENT:
            # There was ever a child node. If not, a true boolean flag.
            if len(self._indicies[].mojo_child_idxs) == 0:
                print('{assong node }')
                bundles = TokenBundles()
                bundles.append(
                    TokenBundle.from_other(":", self._token_bundles[][-1])
                )
                bundles.append(
                    TokenBundle.from_other("Bool", self._token_bundles[][-1])
                )
                bundles.append(
                    TokenBundle.from_other("=", self._token_bundles[][-1])
                )
                bundles.append(
                    TokenBundle.from_other("True", self._token_bundles[][-1])
                )
                node_var = AstNodeVariant(
                    MacroDefineValueNode(
                        NodeIndices(
                            c_parent_idx=self._indicies[].c_parent_idx,
                            c_current_idx=self._indicies[].c_current_idx,
                            c_child_idxs=self._indicies[].c_child_idxs,
                            mojo_parent_idx=self._indicies[].mojo_parent_idx,
                            mojo_current_idx=self._indicies[].mojo_current_idx,
                            mojo_child_idxs=self._indicies[].mojo_child_idxs,
                        ),
                        bundles
                    )
                )
                node = AstNode(node_var)
                idx = module_interface.insert_node(node)
                self._indicies[].mojo_child_idxs.append(idx)

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
        return self.__name__

    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            return self.__name__ + "(" + String(self._indicies[]) + ")"
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) raises -> String:
        if just_code:
            return default_to_string_just_code(
                AstNode(self), module_interface, inline_children=True
            )
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
