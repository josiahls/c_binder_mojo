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
from c_binder_mojo.c_ast_nodes.enum_node import EnumNode as C_EnumNode


@value
struct EnumNode(NodeAstLike):
    alias __name__ = "EnumNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _c_token_bundles: ArcPointer[TokenBundles]

    var _node_state: MessageableEnum
    var _enum_name: String
    var _current_enum_value: Int

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode):
        self._indicies = indicies
        self._c_token_bundles = c_node.token_bundles()
        self._token_bundles = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._enum_name = c_node.node[][C_EnumNode]._enum_name
        self._current_enum_value = -100

    fn set_current_enum_value(mut self, value: Int):
        self._current_enum_value = value

    fn current_enum_value(self) -> Int:
        return self._current_enum_value

    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return c_node.name() == "EnumNode"

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
            return TokenFlow.CREATE_CHILD
        else:
            return TokenFlow.PASS_TO_PARENT

    fn _format_enum_tokens(mut self):
        row_num = self._c_token_bundles[][-1].row_num
        for token in self._c_token_bundles[]:
            if token[].token == "enum":
                self._token_bundles[].append(TokenBundle('struct', row_num, 0))
            else:
                self._token_bundles[].append(token[])
        self._token_bundles[].append(TokenBundle(':', row_num, 0))
        if self._current_enum_value == -100:
            # Tells me that no actual fields were added to this enum
            self._token_bundles[].append(TokenBundle('pass', row_num, 0))

    fn process(
        mut self,
        c_node: C_AstNode,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):

        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
            return

        if token_flow == TokenFlow.PASS_TO_PARENT:
            self._node_state = NodeState.COMPLETED
            self._format_enum_tokens()
            return

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
            return self.__name__ + "(" + String(self._indicies[]) + ", enum_name=" + self._enum_name + ")"
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
