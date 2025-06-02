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
    string_children,
)
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry, AstEntries


@fieldwise_init
struct RootNode(NodeAstLike):
    alias __name__ = "RootNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _add_main_function: Bool

    fn __init__(
        out self,
        indicies: NodeIndices,
        ast_entry: AstEntry,
        add_main_function: Bool = False,
    ):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._node_state = NodeState.INITIALIZING
        self._add_main_function = add_main_function

    @staticmethod
    fn accept(
        ast_entry: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return len(module_interface.nodes()[]) == 0

    @staticmethod
    fn create(
        ast_entry: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        return Self(indices, ast_entry)

    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if ast_entry.ast_name == "EndFileNode":
            self._node_state = NodeState.COMPLETED
            return TokenFlow.END_FILE
        return TokenFlow.CREATE_CHILD

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        pass

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
        return "RootNode"

    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            return self.__name__ + "(" + String(self._indicies[]) + ")"
        else:
            return self.__name__

    fn get_imports(self) -> String:
        imports = List[String]()
        # for custom_type in get_global_type_mapper()[].custom_types:
        #     imports.append("from " + custom_type[] + " import " + custom_type[])
        imports.append("from sys.ffi import _Global, UnsafePointer, OpaquePointer")

        return String("\n").join(imports)

    fn to_string(
        self,
        just_code: Bool,
        module_interface: ModuleInterface,
        parent_indent_level: Int = 0,
    ) raises -> String:
        var s: String
        if just_code:
            s = self.get_imports() + "\n"
            s += string_children(
                AstNode(self), just_code, module_interface, parent_indent_level
            )
            if self._add_main_function:
                s += "\nfn main():\n    pass"
            return s
        s = self.name(include_sig=True) + "\n"
        s += self.get_imports() + "\n"
        s += string_children(
            AstNode(self), just_code, module_interface, parent_indent_level
        )
        return s
