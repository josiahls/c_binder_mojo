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
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry


@value
struct PlaceHolderNode(NodeAstLike):
    alias __name__ = "PlaceHolderNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[List[AstEntry]]
    var _node_state: MessageableEnum

    fn __init__(out self, indicies: NodeIndices, ast_entries: AstEntry):
        self._indicies = indicies
        self._ast_entries = List(ast_entries)
        self._node_state = NodeState.COMPLETED

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name != "EndFileNode"

    @staticmethod
    fn create(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        return Self(indices, ast_entries)

    fn determine_token_flow(
        mut self, ast_entries: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        return TokenFlow.PASS_TO_PARENT

    fn process(
        mut self,
        ast_entries: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        self._node_state = NodeState.COMPLETED

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies

    fn ast_entries(self) -> List[AstEntry]:
        return self._ast_entries[]

    fn ast_entries_ptr(mut self) -> ArcPointer[List[AstEntry]]:
        return self._ast_entries

    fn ast_entries_tail(self) -> List[AstEntry]:
        return List[AstEntry]()

    fn node_state(self) -> MessageableEnum:
        return self._node_state

    @always_inline("nodebug")
    fn __str__(self) -> String:
        return self.__name__

    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            return self.__name__ + "(" + String(self._indicies[]) + ", node_state=" + String(self._node_state) + ")"
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
            self._indicies[].parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        return 0  # Root adds one level of scope
