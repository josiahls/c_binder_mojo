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


struct Grammar(Copyable, Movable, Stringable, Writable):
    var _name: String
    var _type: String
    var _is_referenced: Bool
    var _is_implicit: Bool

    @implicit
    fn __init__(out self, ast_entries: AstEntries):
        self._name = String()
        self._type = String()
        self._is_referenced = False
        self._is_implicit = False

        if len(ast_entries) >= 1:
            starting_idx = 0
            if ast_entries[0].tokens[0] == "referenced":
                starting_idx = 1
                self._is_referenced = True
            if ast_entries[0].tokens[0] == "implicit":
                self._is_implicit = True
                starting_idx = 1

            self._name = ast_entries[0].tokens[starting_idx]

            for entry in ast_entries:
                if entry[].ast_name == "AnonymousRecord":
                    self._type = entry[].tokens[0]
                    break

            if self._type == "":
                for token in ast_entries[0].tokens[starting_idx+1:]:
                    s = token[].replace("'", "")
                    if s == "struct":
                        # Skip struct keyword.
                        continue
                    if s == "enum":
                        # Skip enum keyword.
                        continue

                    self._type += s + " "

        else:
            print("TypedefDeclNode: Grammar: Invalid grammar: " + String(ast_entries) + " len: " + String(len(ast_entries)))


    fn __str__(self) -> String:
        mojo_type = TypeMapper.get_mojo_type(self._type)
        return 'alias ' + self._name + ' = ' + mojo_type

    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


@fieldwise_init
struct TypedefDeclNode(NodeAstLike):
    alias __name__ = "TypedefDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _grammar: Grammar

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entry)
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._grammar = Grammar(self._ast_entries[])

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "TypedefDecl"

    @staticmethod
    fn create(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        return Self(indices, ast_entries)

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
            self._grammar = Grammar(self._ast_entries[])
            get_global_type_mapper()[].add_custom_type(self._grammar._name)
            self._node_state = NodeState.COMPLETED

    fn process_anonymous_record(mut self, ast_entry: AstEntry, module_interface: ModuleInterface) -> Bool:
        mem_addesss = ast_entry.mem_address
        for node in module_interface.nodes()[]:
            if node[].node[].isa[RecordDeclNode]():
                if node[].node[][RecordDeclNode]._record_mem_location == mem_addesss:
                    struct_name = node[].node[][RecordDeclNode]._grammar._name
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
        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            newline_before_ast_entries=just_code,
            newline_after_tail=True,
            indent_before_ast_entries=True,
            alternate_string=String(self._grammar) if just_code else String(),
        )
