# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules


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
from c_binder_mojo.typing import TypeMapper


@fieldwise_init
struct VarDeclNode(NodeAstLike):
    alias __name__ = "VarDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _ast_entry_level: Int
    var _var_name: String
    var _var_type: String
    var _is_extern: Bool
    var _is_const: Bool
    var _is_sugar: Bool
    var _unhandled_tokens: String

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entry_level = ast_entry.level
        self._node_state = NodeState.COMPLETED
        self._is_sugar = False
        self._unhandled_tokens = String()

        self._var_name = String()
        self._var_type = String()

        self._is_extern = False

        self._is_const = False
        var quoted_indicies = ast_entry.get_quoted_indices()

        start_idx = 0
        section_idx = 0

        for idx in quoted_indicies:
            if section_idx == 0:
                self._parse_section_0(ast_entry.tokens[:idx])
            elif section_idx == 1:
                self._parse_section_1(ast_entry.tokens[start_idx + 1 : idx])
                if len(quoted_indicies) == 2:
                    self._parse_section_3(ast_entry.tokens[idx + 1 :])
            elif section_idx == 2:
                self._parse_section_2(ast_entry.tokens[start_idx + 1 : idx])
                if len(quoted_indicies) == 3:
                    self._parse_section_3(ast_entry.tokens[idx + 1 :])
            elif section_idx == 3:
                self._parse_section_3(ast_entry.tokens[idx + 1 :])
            else:
                print("VarDeclNode: Unhandled section: " + String(section_idx))
                print("For ast entry: " + String(ast_entry.original_line))

            start_idx = idx
            section_idx += 1

    fn _parse_section_0(mut self, tokens: List[String]):
        for token in tokens:
            if self._var_name == "":
                self._var_name = token

    fn _parse_section_1(mut self, tokens: List[String]):
        for token in tokens:
            if token == "extern":
                self._is_extern = True
            elif token == "const":
                self._is_const = True
            elif self._var_name == "":
                self._var_name = token
            elif self._var_type == "":
                self._var_type = token

    fn _parse_section_2(mut self, tokens: List[String]):
        for token in tokens:
            if token == ":":
                self._is_sugar = True
            elif token == "extern":
                self._is_extern = True
            else:
                self._unhandled_tokens += token + " "

    fn _parse_section_3(mut self, tokens: List[String]):
        for token in tokens:
            if token == "extern":
                self._is_extern = True
            elif self._var_name == "":
                self._var_name = token
            elif self._var_type == "":
                self._var_type = token

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "VarDecl"

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
        if ast_entry.level <= self._ast_entry_level:
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
        var s = String()

        var mojo_type = TypeMapper.convert_c_type_to_mojo_type(self._var_type)

        if self._is_extern:
            s += "alias " + self._var_name + " = " + mojo_type + " # extern"
        else:
            s += "var " + self._var_name + " = " + mojo_type

        if self._unhandled_tokens != "":
            s += "\n# Unhandled tokens: " + self._unhandled_tokens

        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            newline_before_ast_entries=just_code,
            newline_after_tail=True,
            indent_before_ast_entries=True,
            alternate_string=s,
        )
