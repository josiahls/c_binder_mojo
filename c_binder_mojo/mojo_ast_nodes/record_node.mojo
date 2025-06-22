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
from c_binder_mojo.mojo_ast_nodes.record_decl_node import RecordDeclNode
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry, AstEntries
from c_binder_mojo.mojo_ast_nodes.translation_unit_decl_node import TranslationUnitDeclNode


@fieldwise_init
struct RecordNode(NodeAstLike):
    alias __name__ = "RecordNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _ast_entry: AstEntry
    var _node_state: MessageableEnum
    var _mem_address: String
    var _typedef_decl_level: Int
    var _record_name: String
    var _make_record_decl: Bool
    var _is_anonymous_record: Bool

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entry = ast_entry
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._record_name = String()
        # We assume it is declared unless proved otherwise.
        self._make_record_decl = False
        self._is_anonymous_record = False
        self._mem_address = ast_entry.mem_address

        for entry in ast_entry.tokens:
            stripped_entry = entry.strip("'")

            self._record_name += stripped_entry

        if self._record_name == "":
            self._is_anonymous_record = True

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "Record"

    fn is_record_declared(mut self, module_interface: ModuleInterface) -> Bool:
        for node in module_interface.nodes()[]:
            if node.node[].isa[RecordDeclNode]():
                # TODO(josiahls): I think we will be removing the grammar class.
                # print("checking if record is declared: " + node.node[][RecordDeclNode]._grammar._name + " == " + self._record_name)
                if node.node[][RecordDeclNode]._grammar._name == self._record_name:
                    return True
        return False

    fn get_translation_unit_decl_current_idx(mut self, module_interface: ModuleInterface) -> Int:
        for node in module_interface.nodes()[]:
            if node.node[].isa[TranslationUnitDeclNode]():
                return node.node[][TranslationUnitDeclNode].indicies().current_idx
        return -1

    fn get_aliased_record_decl(self, module_interface: ModuleInterface) -> Optional[AstNode]:
        mem_address = self._ast_entry.mem_address
        for node in module_interface.nodes()[]:
            if node.node[].isa[RecordDeclNode]():
                if node.node[][RecordDeclNode]._record_mem_location == mem_address:
                    return node
        print('RecordNode: No record decl found for mem address: ' + mem_address)
        return None

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

        if ast_entry.level <= self._typedef_decl_level:
            return TokenFlow.PASS_TO_PARENT
        else:
            return TokenFlow.CREATE_CHILD

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        # TODO(josiahls): We need to do something about the ast_entry param here. Not sure what.
        if not self.is_record_declared(module_interface):
            # NOTE: Set the parent to 0 since we are declaring a new record and mojo does
            # not support nested records.
            translation_unit_decl_current_idx = self.get_translation_unit_decl_current_idx(module_interface)
            new_indices = NodeIndices(
                parent_idx=translation_unit_decl_current_idx, 
                current_idx=0
            )
            new_node = RecordDeclNode.create(self._ast_entry, module_interface, new_indices)
            new_index = module_interface.insert_node(new_node)
            module_interface.nodes()[][
                translation_unit_decl_current_idx
            ].indicies_ptr()[].child_idxs.append(new_index)
            self._node_state = NodeState.COMPLETED
            self._make_record_decl = False
            # return 

        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
            return
        # elif token_flow == TokenFlow.CONSUME_TOKEN:
        #     if ast_entry.ast_name == "Record" and len(ast_entry.tokens) == 1:
        #         if self.process_anonymous_record(ast_entry, module_interface):
        #             return
        #     self._ast_entries[].append(ast_entry)
        else:
            self._node_state = NodeState.COMPLETED

    fn process_anonymous_record(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> Bool:
        mem_addesss = ast_entry.mem_address
        for node in module_interface.nodes()[]:
            if node.node[].isa[RecordDeclNode]():
                if (
                    node.node[][RecordDeclNode]._record_mem_location
                    == mem_addesss
                ):
                    struct_name = node.node[][RecordDeclNode]._grammar._name
                    new_entry = AstEntry()
                    new_entry.ast_name = "AnonymousRecord"
                    new_entry.tokens = [struct_name]
                    new_entry.precise_location = ast_entry.precise_location
                    new_entry.mem_address = ast_entry.mem_address
                    self._ast_entries[].append(new_entry)
                    return True
        return False

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies

    fn ast_entries(self) -> AstEntries:
        return self._ast_entries[]

    fn ast_entries_ptr(mut self) -> ArcPointer[AstEntries]:
        return self._ast_entries

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
        # return String(self._record_type) + " " + self._record_name
        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            # newline_before_ast_entries=just_code,
            # newline_after_tail=True,
            indent_before_ast_entries=True,
            alternate_string=self._record_name,
        )
