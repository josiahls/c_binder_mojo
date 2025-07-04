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
struct ExampleNode(NodeAstLike):
    alias __name__ = "ExampleNode"
    var _indicies: ArcPointer[NodeIndices]
    var _current_level: Int
    # TODO(josiahls): I think we are moving away from using ast_entries.
    # It makes more sense for each node to have its own context related 
    # fields. Maybe we can use a context object to pass around in the future.
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    
    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        # TODO(josiahls): I think we are moving away from using ast_entries.
        self._ast_entries = AstEntries()
        self._current_level = ast_entry.level
        self._node_state = NodeState.COMPLETED

        # NOTE(josiahls): Instead of ingesting est entries above, we parse the ast entry,
        # and set context fields + tokens here.


    # TODO(josiahls): Shouldn't this be a class method? Then we can just do
    # ast_entries.ast_name == 
    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        # NOTE(josiahls): Critical to change, needs to be 
        return ast_entries.ast_name == Self.__name__

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
        # TODO(josiahls): The default behavior here, is to 
        # iterate through the ast entries, and print them.
        # However we are moving away from using ast entries as outputs
        # so we will need to switch this to supporting a list of strings.
        # or something else.
        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            newline_before_ast_entries=True,
            newline_after_tail=True,
            indent_before_ast_entries=True,
            # alternate_string="",
        )
