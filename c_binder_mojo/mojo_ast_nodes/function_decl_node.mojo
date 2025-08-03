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
from c_binder_mojo.typing import TypeMapper, MOJO_FUNCTIONS


@fieldwise_init
struct FunctionDeclNode(NodeAstLike):
    alias __name__ = "FunctionDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _record_decl_level: Int
    var _is_disabled: Bool
    var _mem_address: String

    var _is_no_throw: Bool
    var _is_pure: Bool
    var _is_no_null: Bool
    var _is_external: Bool
    var _is_implicit: Bool
    var _is_prev: Bool

    var _function_name: String
    var _return_type: String
    var _return_type_is_pointer: Bool
    var _return_type_is_unsigned: Bool
    var _return_type_is_const: Bool
    var _return_type_is_volatile: Bool
    var _return_type_is_restrict: Bool

    var unhandled_tokens: String

    fn __init__(out self, indicies: NodeIndices, ast_entries: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._node_state = NodeState.COMPLETED
        self._record_decl_level = ast_entries.level
        self._is_prev = ast_entries.is_prev
        self._mem_address = ast_entries.mem_address
        self._is_disabled = False

        self._is_no_throw = False
        self._is_pure = False
        self._is_no_null = False
        self._is_external = False
        self._is_implicit = False

        self._function_name = String()
        self._return_type = String()
        self._return_type_is_pointer = False
        self._return_type_is_unsigned = False
        self._return_type_is_const = False
        self._return_type_is_volatile = False
        self._return_type_is_restrict = False

        self.unhandled_tokens = String()

        # TODO(josiahls): Need to handle multiple declarations. e.g. strtoull

        var start_idx, end_idx = self._start_end_quotes(ast_entries.tokens)

        for entry in ast_entries.tokens[:start_idx]:
            if entry == "implicit":
                self._is_implicit = True
            elif self._function_name == "":
                self._function_name = entry
            else:
                self.unhandled_tokens += " " + entry

        for entry in ast_entries.tokens[start_idx + 1 : end_idx]:
            if entry.startswith("("):
                break
            # elif entry == "unsigned":
            #     self._return_type_is_unsigned = True
            elif entry == "const":
                self._return_type_is_const = True
            elif entry == "volatile":
                self._return_type_is_volatile = True
            elif entry == "restrict":
                self._return_type_is_restrict = True
            elif self._return_type == "":
                self._return_type = entry
            else:
                self._return_type += " " + entry

        for entry in ast_entries.tokens[end_idx + 1 :]:
            if entry == "extern":
                self._is_external = True
            else:
                self.unhandled_tokens += " " + entry

        if self.unhandled_tokens != "":
            self.unhandled_tokens = (
                "# Unhandled tokens: " + self.unhandled_tokens
            )

    fn _start_end_quotes(
        mut self, read tokens: List[String]
    ) -> Tuple[Int, Int]:
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
                print(
                    "ParmVarDeclNode: Unhandled token: "
                    + token
                    + " from "
                    + String(" ").join(tokens)
                )

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
        return ast_entries.ast_name == "FunctionDecl"

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
        if ast_entry.level <= self._record_decl_level:
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
            # print()
            if self._is_prev:
                self.disable_previous_declarations(module_interface)
            if self._function_name in MOJO_FUNCTIONS:
                self.disable()

            self._node_state = NodeState.COMPLETED

    fn disable_previous_declarations(
        self, mut module_interface: ModuleInterface
    ):
        for node in module_interface.nodes()[]:
            if node.node[].isa[FunctionDeclNode]():
                # TODO(josiahls): Should add an equality function so that we only duplicate, not overloaded function defitiions.
                if (
                    node.node[][FunctionDeclNode]._function_name
                    == self._function_name
                    and node.node[][FunctionDeclNode]._mem_address
                    != self._mem_address
                ):
                    node.node[][FunctionDeclNode].disable()

    fn disable(mut self):
        self._is_disabled = True

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

    fn parm_var_decl_to_strings(
        self,
        just_code: Bool,
        module_interface: ModuleInterface,
        parent_indent_level: Int = 0,
    ) -> List[String]:
        var strings = List[String]()
        var is_tracking_positional = False
        for child in self.indicies().child_idxs:
            node = module_interface.get_node(child)
            if node.node[].isa[ParmVarDeclNode]():
                try:
                    s = node.to_string(
                        just_code, module_interface, parent_indent_level
                    )

                    if (
                        is_tracking_positional
                        and not node.node[][ParmVarDeclNode]._is_positional
                    ):
                        strings.append("/")
                        is_tracking_positional = False

                    strings.append(String(s))

                    if node.node[][ParmVarDeclNode]._is_positional:
                        is_tracking_positional = True
                except e:
                    print(e)
                    print(node.name())
                    print(node.name(include_sig=True))
                    print(node.name(include_sig=True))
        return strings

    fn parse_return_type(self) -> Tuple[String, Bool]:
        var is_pointer = False
        var return_type = self._return_type
        if "(" in return_type:
            return_type = return_type.split("(")[0].copy()
        if "*" in return_type:
            is_pointer = True
            return_type = return_type.replace("*", "")
        return_type = String(return_type.strip())
        return (return_type, is_pointer)

    fn to_string(
        self,
        just_code: Bool,
        module_interface: ModuleInterface,
        parent_indent_level: Int = 0,
    ) raises -> String:
        # TODO(josiahls): This is annoying. Clang does not support decomposing the return type,
        # so we need to manually parse it.
        var return_type = self._return_type
        if "(" in return_type:
            return_type = String(return_type.split("(")[0])

        return_type = TypeMapper.convert_c_type_to_mojo_type(return_type)

        var function_name = self._function_name
        if function_name == "":
            function_name = "anonymous_function"

        var parm_var_strings = self.parm_var_decl_to_strings(
            just_code, module_interface, parent_indent_level
        )

        var function_sig = (
            "fn"
            + "("
            + String(", ").join(parm_var_strings)
            + ") -> "
            + return_type
        )
        var function_decl = "alias " + function_name + " = " + function_sig

        if self._is_disabled:
            function_decl = (
                " # Disabled either due to a redefinition or a previous"
                " declaration: "
                + function_decl
            )

        return function_decl + "\n"
