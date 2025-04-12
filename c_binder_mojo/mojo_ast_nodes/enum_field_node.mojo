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
from c_binder_mojo.c_ast_nodes import EnumFieldNode as C_EnumFieldNode


@value
struct EnumFieldNode(NodeAstLike):
    alias __name__ = "EnumFieldNode"
    var _indicies: ArcPointer[NodeIndices]
    var _c_token_bundles: ArcPointer[TokenBundles]
    var _token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _current_enum_value: Int
    var _field_name: String

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode, current_enum_value: Int, field_name: String):
        self._indicies = indicies
        self._c_token_bundles = c_node.token_bundles()
        self._token_bundles = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._current_enum_value = current_enum_value
        self._field_name = field_name

    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return c_node.name() == "EnumFieldNode"

    @staticmethod
    fn string_to_value(string: String) -> Int:
        try:
            if ">>" in string:
                lh = Int(string.split(">>")[0])
                rh = Int(string.split(">>")[1])
                return lh >> rh
            elif "<<" in string:
                lh = Int(string.split("<<")[0])
                rh = Int(string.split("<<")[1])
                return lh << rh
            elif "0x" in string:
                return Int(string, 0)
            else:
                return Int(string)
        except:
            print("Error: Enum field value failed to convert to an int given string: " + string)
            return -1

    @staticmethod
    fn create(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        field_name = c_node.node[][C_EnumFieldNode]._field_name
        parent_node = module_interface.nodes()[][indices.mojo_parent_idx]
        current_enum_value = -1
        if parent_node.name() == "ScopeNode":
            parent_node = module_interface.nodes()[][parent_node.indicies().mojo_parent_idx]
            if parent_node.node[].isa[EnumNode]():
                if c_node.node[][C_EnumFieldNode]._has_value:
                    current_enum_value = Self.string_to_value(c_node.node[][C_EnumFieldNode]._field_value)
                else:
                    current_enum_value = parent_node.node[][EnumNode].current_enum_value()
                    if current_enum_value == -100:
                        current_enum_value = 0
                    else:
                        current_enum_value += 1
                parent_node.node[][EnumNode].set_current_enum_value(current_enum_value)

        return Self(indices, c_node, current_enum_value, field_name)

    fn determine_token_flow(
        mut self, c_node: C_AstNode, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if c_node.indicies().c_current_idx in self._indicies[].c_child_idxs:
            return TokenFlow.CREATE_CHILD
        else:
            print('passing to parent')
            return TokenFlow.PASS_TO_PARENT

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
            self._format_enum_field_tokens()

    fn _format_enum_field_tokens(mut self):
        row_num = self._c_token_bundles[][-1].row_num
        self._token_bundles[].append(TokenBundle('alias', row_num, 0))
        self._token_bundles[].append(TokenBundle(self._field_name, row_num, 0))
        self._token_bundles[].append(TokenBundle('=', row_num, 0))
        self._token_bundles[].append(TokenBundle(String(self._current_enum_value), row_num, 0))


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
            return self.__name__ + "(" + String(self._indicies[]) + ", " + self._field_name + ")"
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
