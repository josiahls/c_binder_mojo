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


@fieldwise_init
struct ConstantArrayTypeNode(NodeAstLike):
    alias __name__ = "ConstantArrayTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _full_constant_array_type: String
    var _n_elements: String
    var _unhandled_tokens: String
    var _aliased_record_name: String

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        # self._ast_entries[].append(ast_entry)
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._full_constant_array_type = String()
        self._n_elements = String()
        self._unhandled_tokens = String()
        self._aliased_record_name = String()

        accumulate_type:Bool = False
        for entry in ast_entry.tokens:
            # NOTE: The single quotes are useful in cases where there are spaces in the type name. :/
            if "'" in entry and not accumulate_type:
                self._full_constant_array_type += entry.strip("'")
                accumulate_type = True
            elif "'" in entry and accumulate_type:
                self._full_constant_array_type += ' ' + entry.strip("'")
                accumulate_type = False
            elif accumulate_type:
                self._full_constant_array_type += entry
            elif entry.isdigit():
                self._n_elements = entry
            elif entry != "":
                if self._unhandled_tokens == "":
                    self._unhandled_tokens = entry
                else:
                    self._unhandled_tokens += " " + entry

        if self._unhandled_tokens != "":
            self._unhandled_tokens = "# ConstantArrayTypeNode Unhandled tokens: " + self._unhandled_tokens

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "ConstantArrayType"

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
            self._aliased_record_name = self.get_aliased_record_name(module_interface)
            self._node_state = NodeState.COMPLETED


    fn get_aliased_record_name(self, module_interface: ModuleInterface) -> String:
        for child in self._indicies[].child_idxs:
            node = module_interface.get_node(child)
            if node.node[].isa[RecordTypeNode]():
                optional_node = node.node[][RecordTypeNode].get_aliased_record_decl(module_interface)
                if optional_node:
                    try:
                        return optional_node[].node[][RecordDeclNode]._record_name
                    except e:
                        print('ConstantArrayTypeNode: Unhandled node type: ' + String(e))
            else:
                print('ConstantArrayTypeNode: Unhandled node type: ' + node.name())
        return String()

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
        # TODO(josiahls): We will need to set a field property that
        # tells us if this is a struct / record type, in which case, OpaquePointer
        # makes sense, or otherwise if its a builtin type, we should use SIMD.
        var array_type = "OpaquePointer" + " # " + self._aliased_record_name + "[" + String(self._n_elements) + "]"
        return array_type
