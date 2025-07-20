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
from c_binder_mojo.typing import get_global_type_registry

@fieldwise_init
struct TypedefDeclNode(NodeAstLike):
    alias __name__ = "TypedefDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _unhandled_tokens: String
    var _is_implicit: Bool
    var _type_name: String
    var _type_aliased: String
    var _is_referenced: Bool
    var _is_disabled: Bool

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entry)
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        # self._grammar = Grammar(self._ast_entries[])
        self._unhandled_tokens = String()
        self._type_name = String()
        self._type_aliased = String()

        self._is_implicit = False
        self._is_referenced = False
        self._is_disabled = False

        var quoted_indicies = ast_entry.get_quoted_indices()

        start_idx = 0
        section_idx = 0

        for idx in quoted_indicies:
            if section_idx == 0:
                self._parse_section_0(ast_entry.tokens[start_idx:idx])
            elif section_idx == 1:
                self._parse_section_1(ast_entry.tokens[idx:])
            else:
                print("TypedefDeclNode: Unhandled section: " + String(section_idx))

            start_idx = idx
            section_idx += 1
    
    fn _parse_section_0(mut self, tokens: List[String]):
        for token in tokens:
            if token == "implicit":
                self._is_implicit = True
            elif token == "referenced":
                self._is_referenced = True
            elif self._type_name == "":
                self._type_name = token
            else:
                self._type_aliased = token

    fn _parse_section_1(mut self, tokens: List[String]):
        for token in tokens:
            if token == "'":
                pass
            elif self._type_name == "":
                self._type_name = token
            # else:
            #     self._type_name += " " + token

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
        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
            return
        # elif token_flow == TokenFlow.CONSUME_TOKEN:
        #     if ast_entry.ast_name == "Record" and len(ast_entry.tokens) == 1:
        #         if self.process_anonymous_record(ast_entry, module_interface):
        #             return
        #     self._ast_entries[].append(ast_entry)
        else:
            # self._grammar = Grammar(self._ast_entries[])
            # get_global_type_mapper()[].add_custom_type(self._grammar._name)
            if get_global_type_registry()[].is_defined(self._type_name):
                self._is_disabled = True
            else:
                get_global_type_registry()[].custom_typedefs.append(self._type_name)
            self._node_state = NodeState.COMPLETED

    # fn process_anonymous_record(
    #     mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    # ) -> Bool:
    #     mem_addesss = ast_entry.mem_address
    #     for node in module_interface.nodes()[]:
    #         if node.node[].isa[RecordDeclNode]():
    #             if (
    #                 node.node[][RecordDeclNode]._record_mem_location
    #                 == mem_addesss
    #             ):
    #                 struct_name = node.node[][RecordDeclNode]._grammar._name
    #                 new_entry = AstEntry()
    #                 new_entry.ast_name = "AnonymousRecord"
    #                 new_entry.tokens = [struct_name]
    #                 new_entry.precise_location = ast_entry.precise_location
    #                 new_entry.mem_address = ast_entry.mem_address
    #                 self._ast_entries[].append(new_entry)
    #                 return True
    #     return False

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

        var s  = 'alias ' + String(self._type_name) + " = "
        # for child_idx in self._indicies[].child_idxs:
        #     s += module_interface.nodes()[][child_idx].to_string(just_code, module_interface, parent_indent_level + 1)
        # s += " # Original type: " + String(self._type_aliased)

        var out_s = default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            newline_before_ast_entries=just_code and not self._is_disabled,
            newline_after_tail=True,
            indent_before_ast_entries=True,
            alternate_string=s if just_code else String(),
            unhandled_tokens=self._unhandled_tokens,
        )

        if self._is_disabled:
            out_s = "# Disabled since this is already declared\n# " + out_s

        return out_s
