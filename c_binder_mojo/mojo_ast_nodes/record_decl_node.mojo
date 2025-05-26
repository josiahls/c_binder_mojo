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



struct Grammar(Copyable, Movable, Stringable, Writable):
    var _name: String

    @implicit
    fn __init__(out self, ast_entries: AstEntries):
        self._name = String()
        if len(ast_entries) > 1 or len(ast_entries) == 0:
            print("Invalid grammar: " + String(ast_entries) + " len: " + String(len(ast_entries)))
        else:
            entry = ast_entries._ast_entries[0]
            if len(entry.tokens) != 3 and len(entry.tokens) != 2:
                print("Invalid grammar: " + String(entry) + " len: " + String(len(entry.tokens)))
            elif len(entry.tokens) == 2:
                # TODO(josiahls): Add a global counter for anonymous structs to avoid
                # name collisions.
                self._name = "_Anonymous"
            else:
                # Idx 0 should be struct
                # Idx 2 should be definition
                self._name = entry.tokens[1]


    fn __str__(self) -> String:
        return "struct " + self._name + ":"

    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


@fieldwise_init
struct RecordDeclNode(NodeAstLike): 
    alias __name__ = "RecordDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _record_decl_level: Int

    fn __init__(out self, indicies: NodeIndices, ast_entries: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entries)
        self._record_decl_level = ast_entries.level
        self._node_state = NodeState.COMPLETED

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "RecordDecl"

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
        var s:String = ""
        var indent:String = ""
    
        if parent_indent_level > 0:
            indent = "\t" * parent_indent_level

        if not just_code:
            s += indent + self.name(include_sig=True) + "\n"
  
        s += indent + String(Grammar(self._ast_entries[]))

        has_fields = False
        for child_idx in self._indicies[].child_idxs:
            child = module_interface.nodes()[][child_idx[]]
            s += child.to_string(just_code, module_interface, parent_indent_level + 1)
            if child.name() == "FieldDeclNode":
                has_fields = True

        if not has_fields:
            s += indent + "\t" + "pass" + "\n"

        return s
