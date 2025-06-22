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
struct ElaboratedTypeNode(NodeAstLike):
    alias __name__ = "ElaboratedTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _elaborated_type: String
    var _unhandled_tokens: String
    var _aliased_record_name: String

    var _is_struct: Bool
    var _is_sugar: Bool

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entry)
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._elaborated_type = String()
        self._unhandled_tokens = String()
        self._is_struct = False
        self._is_sugar = False
        self._aliased_record_name = String()

        for entry in ast_entry.tokens:
            _entry = String(entry.strip("'"))
            if _entry == "struct":
                self._is_struct = True
            elif _entry == "sugar":
                self._is_sugar = True
            elif self._elaborated_type == "":
                self._elaborated_type = _entry
            else:
                if self._unhandled_tokens == "":
                    self._unhandled_tokens = '# Unhandled tokens: '
                self._unhandled_tokens += " " + _entry

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "ElaboratedType"

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
            pass
        else:
            self._aliased_record_name = self.get_aliased_record_name(module_interface)
            self._node_state = NodeState.COMPLETED

    fn get_aliased_record_name(self, module_interface: ModuleInterface) -> String:
        for child in self._indicies[].child_idxs:
            node = module_interface.get_node(child)
            if node.node[].isa[RecordTypeNode]():
                print('getting record type node')
                optional_node = node.node[][RecordTypeNode].get_aliased_record_decl(module_interface)
                if optional_node:
                    try:
                        return optional_node[].node[][RecordDeclNode]._record_name
                    except e:
                        print('ElaboratedTypeNode: Unhandled node type: ' + String(e))
            else:
                print('ElaboratedTypeNode: Unhandled node type: ' + node.name())
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
        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            # newline_before_ast_entries=just_code,
            # newline_after_tail=True,
            # indent_before_ast_entries=True,
            alternate_string=String(self._aliased_record_name),
            unhandled_tokens=self._unhandled_tokens,
        )
