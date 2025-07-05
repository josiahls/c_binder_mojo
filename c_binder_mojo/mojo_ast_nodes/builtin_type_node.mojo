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
struct BuiltinTypeNode(NodeAstLike):
    alias __name__ = "BuiltinTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _builtin_type: String
    var _unsigned: Bool
    var _unhandled_tokens: String
    
    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entry)
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._builtin_type = String()
        self._unsigned = False
        self._unhandled_tokens = String()

        var quoted_indicies = ast_entry.get_quoted_indices()

        start_idx = 0
        section_idx = 0

        for idx in quoted_indicies:
            print("BuiltinTypeNode: section_idx: " + String(section_idx) + " for ast entry: " + String(ast_entry))
            if section_idx == 0:
                pass
                # self._parse_section_0(ast_entry.tokens[start_idx:idx])
            elif section_idx == 1:
                self._parse_section_1(ast_entry.tokens[start_idx:idx])
            else:
                print("BuiltinTypeNode: Unhandled section: " + String(section_idx))

            start_idx = idx
            section_idx += 1

        # for entry in ast_entry.tokens[start_idx:end_idx]:
        #     if entry == "'":
        #         pass
        #     elif entry == "unsigned":
        #         self._unsigned = True
        #     elif self._builtin_type == "":
        #         self._builtin_type = entry
        #     else:
        #         self._builtin_type += " " + entry

    fn _parse_section_1(mut self, tokens: List[String]):
        for token in tokens:
            if token == "unsigned":
                self._unsigned = True
            elif token == "'":
                pass
            elif self._builtin_type == "":
                self._builtin_type = token
            else:
                self._builtin_type += " " + token

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "BuiltinType"

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
            return TokenFlow.CONSUME_TOKEN

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        if token_flow == TokenFlow.CONSUME_TOKEN:
            if ast_entry.ast_name == "Record" and len(ast_entry.tokens) == 1:
                if self.process_anonymous_record(ast_entry, module_interface):
                    return
            self._ast_entries[].append(ast_entry)
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
                    struct_name = node.node[][RecordDeclNode]._record_name
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


        var s:String = BuiltinTypeMapper.map_type(self._builtin_type, self._unsigned)
        # print("BuiltinTypeNode: _builtin_type: " + self._builtin_type + " unsigned: " + String(self._unsigned) + " s: " + s)
        if self._unhandled_tokens != "":
            s += " #" + self.__name__ + " BuiltinTypeNode Unhandled tokens: " + self._unhandled_tokens

        return s
