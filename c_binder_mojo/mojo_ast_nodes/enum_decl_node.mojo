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
from c_binder_mojo.typing import get_global_type_registry


@fieldwise_init
struct EnumDeclNode(NodeAstLike):
    alias __name__ = "EnumDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _inner_struct_name_map: Dict[String, String]
    var _ast_entry: AstEntry

    var _enum_mem_location: String
    var _is_anonymous: Bool
    var _enum_decl_level: Int
    var _enum_name: String
    var _make_enum_decl: Bool

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entry = ast_entry
        # self._ast_entries[].append(ast_entries)
        self._enum_decl_level = ast_entry.level
        self._node_state = NodeState.COMPLETED
        # self._grammar = Grammar()
        self._inner_struct_name_map = Dict[String, String]()
        self._enum_mem_location = ast_entry.mem_address
        self._is_anonymous = False
        self._enum_name = String()  # String(ast_entry)
        if len(ast_entry.tokens) > 0:
            self._enum_name = ast_entry.tokens[0]
        else:
            self._enum_name = ""
            self._is_anonymous = True
        self._make_enum_decl = False

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "EnumDecl"

    @staticmethod
    fn create(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> AstNode:
        return AstNode(Self(indices, ast_entries))

    fn is_enum_declared(mut self, module_interface: ModuleInterface) -> Bool:
        for node in module_interface.nodes()[]:
            if node.node[].isa[EnumDeclNode]():
                # TODO(josiahls): I think we will be removing the grammar class.
                # print("checking if record is declared: " + node.node[][RecordDeclNode]._grammar._name + " == " + self._record_name)
                if node.node[][EnumDeclNode]._enum_name == self._enum_name:
                    return True
        return False

    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if ast_entry.level <= self._enum_decl_level:
            return TokenFlow.PASS_TO_PARENT
        else:
            return TokenFlow.CREATE_CHILD

    fn get_translation_unit_decl_current_idx(
        mut self, module_interface: ModuleInterface
    ) -> Int:
        for node in module_interface.nodes()[]:
            if node.node[].isa[TranslationUnitDeclNode]():
                return (
                    node.node[][TranslationUnitDeclNode].indicies().current_idx
                )
        return -1

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        # TODO(josiahls): We need to do something about the ast_entry param here. Not sure what.
        if not self.is_enum_declared(module_interface):
            # NOTE: Set the parent to 0 since we are declaring a new record and mojo does
            # not support nested records.
            translation_unit_decl_current_idx = (
                self.get_translation_unit_decl_current_idx(module_interface)
            )
            new_indices = NodeIndices(
                parent_idx=translation_unit_decl_current_idx, current_idx=0
            )
            new_node = EnumDeclNode.create(
                self._ast_entry, module_interface, new_indices
            )
            new_index = module_interface.insert_node(new_node)
            module_interface.nodes()[][
                translation_unit_decl_current_idx
            ].indicies_ptr()[].child_idxs.append(new_index)
            self._node_state = NodeState.COMPLETED
            self._make_enum_decl = False
            # return

        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
            return
        else:
            get_global_type_registry()[].custom_enums.append(self._enum_name)
            self._node_state = NodeState.COMPLETED
            self._process_enum_values(module_interface)

    fn _process_enum_values(mut self, mut module_interface: ModuleInterface):
        var current_value = 0
        var current_field_type: String = ""
        # TODO(josiahls): This is a hack to get the enum values to work.
        # We need to find a better way to do this.
        for child_idx in self._indicies[].child_idxs:
            child = module_interface.get_node(child_idx)
            if child.node[].isa[EnumConstantDeclNode]():
                var value = child.node[][EnumConstantDeclNode].get_value(
                    module_interface
                )
                if value == "":
                    value = String(current_value)
                    current_value += 1
                    child.node[][EnumConstantDeclNode]._value = value
                    child.node[][
                        EnumConstantDeclNode
                    ]._field_type = current_field_type
                else:
                    try:
                        current_value = Int(value) + 1
                        current_field_type = child.node[][
                            EnumConstantDeclNode
                        ].get_field_type(module_interface)
                    except:
                        print(
                            "Error: Enum constant decl has invalid value: "
                            + child.node[][EnumConstantDeclNode]._value
                        )

    fn process_anonymous_enum(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> Bool:
        mem_addesss = ast_entry.mem_address
        for node in module_interface.nodes()[]:
            if node.node[].isa[EnumDeclNode]():
                if node.node[][EnumDeclNode]._enum_mem_location == mem_addesss:
                    enum_name = node.node[][EnumDeclNode]._enum_name
                    new_entry = AstEntry()
                    new_entry.ast_name = "AnonymousEnum"
                    new_entry.tokens = [enum_name]
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
        var s: String = ""
        var indent: String = ""

        if parent_indent_level > 0:
            indent = "\t" * parent_indent_level

        if not just_code:
            s += indent + self.name(include_sig=True) + "\n"

        if not self._is_anonymous:
            s += indent + '@register_passable("trivial")\n'
            s += (
                indent
                + "struct "
                + String(self._enum_name)
                + "(Copyable & Movable): # Enum\n"
            )
        else:
            s += indent + "# Anonymous enum\n"

        has_fields = False
        for child_idx in self._indicies[].child_idxs:
            child = module_interface.nodes()[][child_idx]

            if not self._is_anonymous:
                s += child.to_string(
                    just_code, module_interface, parent_indent_level + 1
                )
            else:
                # Alias fields will be printed at the root level.
                s += child.to_string(
                    just_code, module_interface, parent_indent_level
                )

            if child.name() == "EnumConstantDeclNode":
                has_fields = True

        if not has_fields:
            s += indent + "\t" + "pass" + "\n"

        return s + "\n"
