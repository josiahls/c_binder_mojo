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
struct ParmVarDeclNode(NodeAstLike):
    alias __name__ = "ParmVarDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _parm_var_name: String
    var _parm_var_type: String

    var _is_const: Bool
    var _is_volatile: Bool
    var _is_restrict: Bool
    var _is_unsigned: Bool
    # Doesn't have a parameter name.
    var _is_positional: Bool

    # NOTE: We could change this to handle N pointers. Maybe revisit this.
    var _is_pointer: Bool
    var _is_double_pointer: Bool

    var unhandled_tokens: String

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._parm_var_name = String()
        self._parm_var_type = String()

        self._is_const = False
        self._is_volatile = False
        self._is_restrict = False
        self._is_unsigned = False
        self._is_positional = False

        self._is_pointer = False
        self._is_double_pointer = False

        self.unhandled_tokens = String()

        is_adding_type = False

        var start_idx, end_idx = self._start_end_quotes(ast_entry.tokens)

        for entry in ast_entry.tokens[:start_idx]:
            if self._parm_var_name == "":
                self._parm_var_name = entry
            else:
                self.unhandled_tokens += " " + entry

        if self._parm_var_name == "":
            self._is_positional = True
        
        for entry in ast_entry.tokens[start_idx:end_idx]:
            var base_entry:String = entry
            if '**' in entry:
                base_entry = String(entry.strip("*"))
                self._is_double_pointer = True
            elif '*' in entry:
                base_entry = String(entry.strip("*"))
                self._is_pointer = True

            if base_entry == "const":
                self._is_const = True
            elif base_entry == "unsigned":
                self._is_unsigned = True
            elif base_entry == "volatile":
                self._is_volatile = True
            elif base_entry == "restrict":
                self._is_restrict = True
            elif base_entry == "*":
                self._is_pointer = True
            elif base_entry == "**":
                self._is_double_pointer = True
            elif self._parm_var_type == "":
                self._parm_var_type = base_entry
            else:
                self._parm_var_type += " " + base_entry

        if self.unhandled_tokens != "":
            self.unhandled_tokens = "# ParmVarDeclNode Unhandled tokens: " + self.unhandled_tokens

    fn _start_end_quotes(mut self, read tokens: List[String]) -> Tuple[Int, Int]:
        var start_idx = -1
        var end_idx = -1
        var idx = -1
        for token in tokens:
            idx += 1
            if token.startswith("'") and start_idx == -1:
                start_idx = idx
                continue
            elif token.endswith("'") and end_idx == -1:
                end_idx = idx
            elif token.endswith("'"):
                print("ParmVarDeclNode: Unhandled token: " + token + " from " + String(' ').join(tokens))

        if end_idx == -1:
            start_idx = 0
            end_idx = len(tokens) - 1
        return (start_idx, end_idx)

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "ParmVarDecl"

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

        # print("ParmVarDeclNode: _parm_var_name: " + self._parm_var_name + " param type: " + self._parm_var_type)

        var type_name = TypeMapper.map_type(self._parm_var_type)

        if self._is_pointer:
            type_name = "UnsafePointer[" + type_name + "]"
        elif self._is_double_pointer:
            type_name = "UnsafePointer[UnsafePointer[" + type_name + "]]"
        
        var type_decl: String
        if self._is_positional:
            type_decl = type_name
        else:
            type_decl = self._parm_var_name + ": " + type_name

        if self._is_const:
            type_decl = "read " + type_decl

        return type_decl
