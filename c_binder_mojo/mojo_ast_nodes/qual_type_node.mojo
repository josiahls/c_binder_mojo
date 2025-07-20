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

from c_binder_mojo.mojo_ast_nodes.builtin_type_node import BuiltinTypeNode


@fieldwise_init
struct QualTypeNode(NodeAstLike):
    alias __name__ = "QualTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _current_level: Int
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum

    var _type_name: String

    var _is_volatile: Bool
    var _is_const: Bool

    var _unhandled_tokens: String
    
    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        # TODO(josiahls): Not sure I understand the purpose of QualType. The docs say its a pointer to a type (?). 
        # but it doesn't look like there are any pointers in the original header so idk.
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entry)
        self._current_level = ast_entry.level
        self._node_state = NodeState.COMPLETED

        self._is_volatile = False
        self._is_const = False

        self._type_name = String()

        self._unhandled_tokens = String()

        var quoted_indicies = ast_entry.get_quoted_indices()

        start_idx = 0
        section_idx = 0

        for idx in quoted_indicies:
            if section_idx == 0:
                self._parse_section_0(ast_entry.tokens[:idx])
            elif section_idx == 1:
                self._parse_section_1(ast_entry.tokens[start_idx + 1:idx])

            start_idx = idx
            section_idx += 1

    fn _parse_section_0(mut self, tokens: List[String]):
        for token in tokens:
            if token == "volatile":
                self._is_volatile = True
            elif token == "const":
                self._is_const = True
            elif self._type_name == "":
                self._type_name = token
            else:
                self._unhandled_tokens += " " + token

    fn _parse_section_1(mut self, tokens: List[String]):
        for token in tokens:
            if token == "volatile":
                self._is_volatile = True
            elif token == "const":
                self._is_const = True
            elif self._type_name == "":
                self._type_name = token
            else:
                self._unhandled_tokens += " " + token

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == String(Self.__name__)[:-4]

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
        if ast_entry.level <= self._current_level:
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

    # TODO(josiahls): I think we are moving away from using ast entries.
    fn ast_entries(self) -> AstEntries:
        return self._ast_entries[]

    # TODO(josiahls): I think we are moving away from using ast entries.
    fn ast_entries_ptr(mut self) -> ArcPointer[AstEntries]:
        return self._ast_entries

    # TODO(josiahls): I think we are moving away from using ast entries.
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
        var s:String

        _type_name = self._type_name

        var error_msg = String()

        for child in self._indicies[].child_idxs:
            node = module_interface.get_node(child)
            if node.node[].isa[BuiltinTypeNode]():
                _type_name = node.node[][BuiltinTypeNode].to_string(just_code, module_interface, parent_indent_level)
            else:
                # NOTE(josiahls): There are cases where we get unhandled typedef, but I don't understand the output.
                error_msg += "QualTypeNode: Unhandled node type: " + node.name() + "\n"

        s = _type_name
        # if self._is_volatile:
        #     s += "\n# Marked as volatile. c_binder_mojo does not know how to handle this."

        # if self._is_const:
        #     s += "\n# Marked as const. c_binder_mojo does not know how to handle this. (typically handled via typdef)"

        # if error_msg != "":
        #     s += "\n# " + error_msg

        return s
