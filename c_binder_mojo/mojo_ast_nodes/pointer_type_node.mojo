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
struct PointerTypeNode(NodeAstLike):
    alias __name__ = "PointerTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _pointer_type: String
    var _is_function_pointer: Bool

    var _unhandled_tokens: String

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._pointer_type = String()
        self._is_function_pointer = False
        self._unhandled_tokens = String()

        var quoted_indicies = ast_entry.get_quoted_indices()

        section_idx = 0
        start_idx = 0
        for idx in quoted_indicies:
            if section_idx == 0:
                self._parse_section_0(ast_entry.tokens[:idx])
            elif section_idx == 1:
                self._parse_section_1(ast_entry.tokens[start_idx + 1:idx])
            else:
                self._parse_section_2(ast_entry.tokens[start_idx + 1:idx])

            start_idx = idx
            section_idx += 1

    fn _parse_section_0(mut self, tokens: List[String]):
        # NOTE: usually I dont see anything before the first quote.
        for token in tokens:
            self._unhandled_tokens += token + " "

    fn _parse_section_1(mut self, tokens: List[String]):
        for token in tokens:
            if "(*)" in token:
                self._is_function_pointer = True
            # else:
            #     self._pointer_type += token + " "
    
    fn _parse_section_2(mut self, tokens: List[String]):
        for token in tokens:
            self._unhandled_tokens += token + " "


    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "PointerType"

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
        # TODO(josiahls): Check if the child is a NoneType and switch this to OpaquePointer
        var prefix:String = ""
        var suffix:String = ""


        # NOTE: For function pointers, from what I can tell, clang
        # will give us a ParenType + FunctionProtoType.
        # So we need to handle that from the children.
        if not self._is_function_pointer:
            prefix = "UnsafePointer["
            suffix = "]"

        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            # newline_before_ast_entries=just_code,
            # newline_after_tail=True,
            # indent_before_ast_entries=True,
            alternate_string=prefix,
            alternate_string_tail=suffix,
        )
