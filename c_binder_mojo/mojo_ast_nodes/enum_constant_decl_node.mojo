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
    default_to_string,
)
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry, AstEntries
from c_binder_mojo.type_mapper import TypeMapper


struct Grammar(Copyable, Movable, Stringable, Writable):
    var _field_name: String
    var _field_type: String
    var _value: String

    fn __init__(out self):
        self._field_name = String()
        self._field_type = String()
        self._value = String()

    @implicit
    fn __init__(out self, ast_entries: AstEntries):
        # TODO(josiahls): Toggle depending on whether this is a const
        self._field_name = String()
        self._field_type = String()
        self._value = String()
        # A field should only have 1 entry

        for entry in ast_entries:
            if entry[].ast_name == "EnumConstantDecl":
                for token in entry[].tokens:
                    if self._field_name == "":
                        self._field_name = token[]
                    elif self._field_type == "":
                        self._field_type = token[]
                    else:
                        self._field_type += " " + token[]
            elif entry[].ast_name == "ConstantExpr":
                pass
            elif entry[].ast_name == "value:":
                if len(entry[].tokens) > 2:
                    print("Error: Enum constant decl has more than one token: " + String(entry[]))

                if len(entry[].tokens) == 2:
                    self._value = entry[].tokens[1]


    fn __str__(self) -> String:
        var mojo_type = TypeMapper.get_mojo_type(self._field_type)
        return "alias " + self._field_name + ": " + mojo_type + " = " + self._value


    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


@fieldwise_init
struct EnumConstantDeclNode(NodeAstLike):
    alias __name__ = "EnumConstantDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _ast_entry_level: Int
    var _grammar: Grammar

    fn __init__(out self, indicies: NodeIndices, ast_entries: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entries)
        self._ast_entry_level = ast_entries.level
        self._node_state = NodeState.COMPLETED
        self._grammar = Grammar()

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "EnumConstantDecl"

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
        if ast_entry.level <= self._ast_entry_level:
            return TokenFlow.PASS_TO_PARENT
        else:
            return TokenFlow.CONSUME_TOKEN

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        self._grammar = Grammar(self._ast_entries[])
        if token_flow == TokenFlow.CONSUME_TOKEN:
            self._node_state = NodeState.COLLECTING_TOKENS
            self._ast_entries[].append(ast_entry)
        else:
            self._node_state = NodeState.COMPLETED

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
