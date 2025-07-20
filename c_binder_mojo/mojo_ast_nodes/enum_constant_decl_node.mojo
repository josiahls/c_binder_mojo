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
from c_binder_mojo.type_mapper import TypeMapper


@fieldwise_init
struct EnumConstantDeclNode(NodeAstLike):
    alias __name__ = "EnumConstantDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _ast_entry_level: Int
    var _field_name: String
    var _field_type: String
    var _value: String
    var _unhandled_tokens: String
    var _is_referenced: Bool

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entry_level = ast_entry.level
        self._node_state = NodeState.COMPLETED
        self._field_name = String()
        self._field_type = String()
        self._value = String()
        self._unhandled_tokens = String()
        self._is_referenced = False

        var quoted_indicies = ast_entry.get_quoted_indices()
        var section_idx = 0
        var start_idx = 0
        for idx in quoted_indicies:
            if section_idx == 0:
                self._parse_section_0(ast_entry.tokens[:idx])
            elif section_idx == 1:
                self._parse_section_1(ast_entry.tokens[start_idx + 1:idx])
            elif section_idx == 2:
                self._parse_unhandled_section(ast_entry.tokens[start_idx + 1:idx])
            elif section_idx == 3:
                self._parse_unhandled_section(ast_entry.tokens[start_idx + 1:idx])
            else:
                print("EnumConstantDeclNode: Unhandled section: " + String(section_idx))

    fn _parse_section_0(mut self, tokens: List[String]):
        for token in tokens:
            if token == "referenced":
                self._is_referenced = True
            elif self._field_name == "":
                self._field_name = token
            else:
                self._unhandled_tokens += " " + token

    fn _parse_section_1(mut self, tokens: List[String]):
        for token in tokens:
            if self._field_type == "":
                self._field_type = token
            else:
                self._unhandled_tokens += " " + token

    fn _parse_unhandled_section(mut self, tokens: List[String]):
        for token in tokens:
            self._unhandled_tokens += " " + token


    fn get_value(self, module_interface: ModuleInterface) -> String:
        for child_idx in self._indicies[].child_idxs:
            child = module_interface.get_node(child_idx)
            if child.node[].isa[ConstantExprNode]():
                return child.node[][ConstantExprNode].get_constant_expr_value(module_interface)
        return self._value

    fn get_field_type(self, module_interface: ModuleInterface) -> String:
        for child_idx in self._indicies[].child_idxs:
            child = module_interface.get_node(child_idx)
            if child.node[].isa[ConstantExprNode]():
                return child.node[][ConstantExprNode].get_constant_expr_type(module_interface)
        return self._field_type

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
        # self._grammar = Grammar(self._ast_entries[])
        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
            # self._ast_entries[].append(ast_entry)
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

        var s: String = ""
        var indent: String = "\t" * parent_indent_level
        # var field_type = self._field_type
        s += indent + "alias " + self._field_name + ": "  #+ ": " + self._field_type + " = " + self._value + "\n"

        s += self.get_field_type(module_interface) + " = " + self.get_value(module_interface)

        return s + "\n"
