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


@fieldwise_init
struct RecordTypeNode(NodeAstLike):
    alias __name__ = "RecordTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _record_type: String
    var _aliased_record_name: String
    var _unhandled_tokens: String

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._record_type = String()
        self._aliased_record_name = String()
        self._unhandled_tokens = String()

        var quoted_indices = ast_entry.get_quoted_indices()

        if len(quoted_indices) > 1:
            start_idx = 0
            end_idx = quoted_indices[0]
            for token in ast_entry.tokens[start_idx:end_idx]:
                if token == "struct":
                    self._record_type = "struct"
                elif token == "union":
                    self._record_type = "union"
                elif token == "enum":
                    self._record_type = "enum"

            start_idx = end_idx
            end_idx = quoted_indices[-1]
            for token in ast_entry.tokens[start_idx:end_idx]:
                if token == "'":
                    continue
                elif self._record_type == "":
                    self._record_type = token
                else:
                    self._record_type += " " + token
        else:
            if len(quoted_indices) == 1:
                print(
                    "RecordTypeNode: Unhandled quoted indices: "
                    + String(" ").join(ast_entry.tokens)
                )

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "RecordType"

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

    fn get_aliased_record_decl(
        self, module_interface: ModuleInterface
    ) -> Optional[AstNode]:
        for child in self._indicies[].child_idxs:
            node = module_interface.get_node(child)
            if node.node[].isa[RecordDeclNode]():
                return node
            elif node.node[].isa[RecordNode]():
                return node.node[][RecordNode].get_aliased_record_decl(
                    module_interface
                )
        return None

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
        # return String(self._record_type) + " " + self._aliased_record_name

        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            # newline_before_ast_entries=just_code,
            # newline_after_tail=True,
            indent_before_ast_entries=True,
            # alternate_string=self._unhandled_tokens,
            unhandled_tokens="",
        )
