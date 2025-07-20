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
struct TypedefTypeNode(NodeAstLike):
    alias __name__ = "TypedefTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _typedef_type: String

    var _typedef_type_is_sugar: Bool
    var _typedef_type_is_reference: Bool
    var _typedef_type_is_referenced: Bool

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entry)
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._typedef_type = String()
        self._typedef_type_is_sugar = False
        self._typedef_type_is_reference = False
        self._typedef_type_is_referenced = False

        var quoted_indices = ast_entry.get_quoted_indices()

        # Phase 1: Before first quote (handle any prefix tokens)
        var first_quote_idx = quoted_indices[0] if len(quoted_indices) > 0 else len(ast_entry.tokens) - 1
        for token in ast_entry.tokens[:first_quote_idx]:
            if token == "referenced":
                self._typedef_type_is_referenced = True
            elif token == "sugar":
                self._typedef_type_is_sugar = True

        # Phase 2: Extract content between quote pairs
        if len(quoted_indices) >= 2:
            # We have at least one complete quote pair
            var start_idx = quoted_indices[0]
            var end_idx = quoted_indices[1]
            for token in ast_entry.tokens[start_idx:end_idx]:
                if token == "'":
                    continue  # Skip the quote tokens themselves
                elif self._typedef_type == "":
                    self._typedef_type = token
                else:
                    self._typedef_type += " " + token
        else:
            # No quotes or incomplete quotes - use all tokens
            self._typedef_type = String(' ').join(ast_entry.tokens)

        # Phase 3: After last quote (check for sugar, etc.)
        var last_quote_idx = quoted_indices[-1] if len(quoted_indices) > 0 else 0
        for token in ast_entry.tokens[last_quote_idx:]:
            if token == "sugar":
                self._typedef_type_is_sugar = True
            elif token == "referenced":
                self._typedef_type_is_referenced = True

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "TypedefType"

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

        _typedef_type = self._typedef_type

        for child_idx in self._indicies[].child_idxs:
            var child = module_interface.get_node(child_idx)
            if child.node[].isa[TypedefNode]():
                _typedef_type = child.node[][TypedefNode].to_string(just_code, module_interface, parent_indent_level)
                # _typedef_type += " # From TypedefNode"
            elif child.node[].isa[BuiltinTypeNode]():
                # NOTE: BuiltinTypes are priority over Typedefs since they are more specific.
                _typedef_type = child.node[][BuiltinTypeNode].to_string(just_code, module_interface, parent_indent_level)
                # _typedef_type += " # From BuiltinTypeNode"
                break

        return  _typedef_type
