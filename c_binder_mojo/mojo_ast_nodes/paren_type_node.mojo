# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant
from c_binder_mojo.type_mapper import get_global_type_mapper, TypeMapper

# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    MessageableEnum,
    NodeIndices,
    TokenFlow,
    NodeState,
)
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface
from c_binder_mojo.mojo_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_to_string,
)
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry, AstEntries
from c_binder_mojo.builtin_type_mapper import BuiltinTypeMapper


@fieldwise_init
struct ParenTypeNode(NodeAstLike):
    alias __name__ = "ParenTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _current_level: Int
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    
    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._current_level = ast_entry.level
        self._node_state = NodeState.COMPLETED


    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == String(Self.__name__)[:-4]

    @staticmethod
    fn create(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> AstNode:
        return AstNode(Self(indices, ast_entries))

    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if ast_entry.level <= self._current_level:
            return TokenFlow.PASS_TO_PARENT
        else:
            return TokenFlow.CREATE_CHILD

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
        else:
            self._node_state = NodeState.COMPLETED

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies

    # TODO(josiahls): I think we are moving away from using ast entries.
    fn ast_entries(self) -> AstEntries:
        return self._ast_entries[]

    # TODO(josiahls): I think we are moving away from using ast entries.
    fn ast_entries_ptr(mut self) -> ArcPointer[AstEntries]:
        return self._ast_entries

    # TODO(josiahls): I think we are moving away from using ast entries.
    fn ast_entries_tail(self) -> AstEntries:
        return AstEntries()

    fn node_state(self) -> MessageableEnum:
        return self._node_state

    @always_inline("nodebug")
    fn __str__(self) -> String:
        return self.__name__

    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            return (
                self.__name__
                + "("
                + String(self._indicies[])
                + ", node_state="
                + String(self._node_state)
                + ")"
            )
        else:
            return self.__name__

    fn to_string(
        self,
        just_code: Bool,
        module_interface: ModuleInterface,
        parent_indent_level: Int = 0,
    ) raises -> String:
        # TODO(josiahls): Right now this node is just a pass through.
        # Generally its just sugar.
        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            # alternate_string="",
        )
