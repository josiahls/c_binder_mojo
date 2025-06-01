# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant

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



struct ParmVarDecl(Copyable, Movable, Stringable, Writable):
    var _name: String
    var _type: String
    var _is_positional: Bool

    fn __init__(out self, name: String, type: String):
        self._name = name
        self._type = type
        self._is_positional = False

    fn __init__(out self, type: String):
        self._type = type
        self._name = String()
        self._is_positional = True

    fn __str__(self) -> String:

        param_type = self._type

        param_type = TypeMapper.map_type(param_type)

        if self._is_positional:
            return param_type
        else:
            return self._name + ": " + param_type

    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


struct Grammar(Copyable, Movable, Stringable, Writable):
    var _name: String
    var _return_type: String
    var _parm_vars: List[ParmVarDecl]

    @implicit
    fn __init__(out self, ast_entries: AstEntries):
        self._name = String()
        self._return_type = String()
        self._parm_vars = List[ParmVarDecl]()
        for entry in ast_entries:
            if entry[].ast_name == "ParmVarDecl":
                if len(entry[].tokens) >= 2:    
                    self._parm_vars.append(ParmVarDecl(entry[].tokens[0], entry[].tokens[1]))
                elif len(entry[].tokens) == 1:
                    self._parm_vars.append(ParmVarDecl(entry[].tokens[0]))
                else:
                    print("ParmVarDecl: Invalid grammar (len(tokens) == 0): " + String(entry[]))
            elif entry[].ast_name == "FunctionDecl":
                if len(entry[].tokens) >= 2:
                    self._name = entry[].tokens[0]
                    for token in entry[].tokens[1:]:
                        # Tokens related to params will be handled via the ParmVarDecls.
                        if token[].startswith("("):
                            break
                        
                        self._return_type += token[] + " "
                    else:
                        print("FunctionDecl: Invalid grammar (no params): " + String(entry[]))
            elif entry[].ast_name == "NoThrowAttr":
                # NOTE: not sure how to handle this or if we even have to.
                pass
            else:
                print("FunctionDecl: Invalid grammar (not a ParmVarDecl or FunctionDecl): " + String(entry[]))


    fn __str__(self) -> String:

        return_type = TypeMapper.map_type(self._return_type)
        return "alias " + self._name + " = fn " + "(" + String(", ").join(self._parm_vars) + ") -> " + return_type

    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


@fieldwise_init
struct FunctionDeclNode(NodeAstLike):
    alias __name__ = "FunctionDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _record_decl_level: Int
    var _grammar: Grammar

    fn __init__(out self, indicies: NodeIndices, ast_entries: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entries)
        self._node_state = NodeState.COMPLETED
        self._record_decl_level = ast_entries.level
        self._grammar = Grammar(self._ast_entries[])

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
    ) -> Self:
        return Self(indices, ast_entries)

    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if ast_entry.level <= self._record_decl_level:
            return TokenFlow.PASS_TO_PARENT
        else:
            return TokenFlow.CONSUME_TOKEN

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        if token_flow == TokenFlow.CONSUME_TOKEN:
            self._ast_entries[].append(ast_entry)
            self._node_state = NodeState.COLLECTING_TOKENS
        else:
            self._grammar = Grammar(self._ast_entries[])
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
        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            newline_before_ast_entries=just_code,
            newline_after_tail=True,
            indent_before_ast_entries=True,
            alternate_string=String(Grammar(self._ast_entries[])) if just_code else String(),
        )
