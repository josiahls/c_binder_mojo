# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant
from c_binder_mojo.type_mapper import get_global_type_mapper

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


fn clean_location(location: String) -> String:
    var new_location = location.copy()
    var chars = [":", " ", "/", ")", "(", "<", ">", ".", ",", "-"]
    for char in chars:
        new_location = new_location.replace(char, "_")
    return new_location


@fieldwise_init
struct RecordDeclNode(NodeAstLike):
    alias __name__ = "RecordDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _record_decl_level: Int

    var _inner_struct_name_map: Dict[String, String]
    var _record_mem_location: String

    var _record_name: String
    var _unhandled_tokens: List[String]
    var _is_anonymous: Bool
    var _is_forward_declaration: Bool
    var _is_struct: Bool
    var _is_union: Bool
    var _is_enum: Bool
    var _has_fields: Bool
    var _location: String

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entry)
        self._record_decl_level = ast_entry.level
        self._location = ast_entry.full_location
        self._record_mem_location = ast_entry.mem_address
        self._node_state = NodeState.COMPLETED

        self._inner_struct_name_map = Dict[String, String]()

        self._record_name = String()
        self._unhandled_tokens = List[String]()
        self._is_anonymous = False
        self._is_forward_declaration = False
        self._has_fields = False
        self._is_struct = False
        self._is_union = False
        self._is_enum = False

        for entry in ast_entry.tokens:
            if entry == "'":
                pass
            elif entry == "struct":
                self._is_struct = True
            elif entry == "union":
                self._is_union = True
            elif entry == "enum":
                self._is_enum = True
            elif entry == "definition":
                pass
            elif self._record_name == "":
                self._record_name = entry
            else:
                self._unhandled_tokens.append(entry)

        if self._record_name == "":
            self._record_name = "Anonymous_" + clean_location(self._location)
            self._is_anonymous = True

        print("RecordDeclNode: record name: " + self._record_name + " at " + self._location + " with entry: " + String(ast_entry))

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
    ) -> AstNode:
        # print("creating record decl node: " + ast_entries.precise_location)
        # TODO(josiahls): This node might need to be a factory (?)
        return AstNode(Self(indices, ast_entries))

    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        # print("RecordDeclNode: determining token flow: " + ast_entry.precise_location)
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
            self.update_child_struct_names(module_interface)
            get_global_type_mapper()[].add_custom_type(self._record_name)
            self._node_state = NodeState.COMPLETED
            if self._indicies[].child_idxs:
                self._has_fields = True

    fn update_child_struct_names(mut self, module_interface: ModuleInterface):
        anonymous_struct_caught = False

        original_name = String()

        for child_idx in self._indicies[].child_idxs:
            child = module_interface.nodes()[][child_idx]

            if child.node[].isa[Self]():
                original_name = child.node[][Self]._record_name.copy()
                if child.node[][Self]._is_anonymous:
                    anonymous_struct_caught = True

                self._inner_struct_name_map[original_name] = (
                    "_" + self._record_name + "_" + original_name
                )
                child.node[][Self]._record_name = (
                    "_" + self._record_name + "_" + original_name
                )
                get_global_type_mapper()[].add_custom_type(
                    child.node[][Self]._record_name
                )

            elif child.node[].isa[FieldDeclNode]():
                print("FieldDeclNode: update_child_struct_names: " + String(child.node[][FieldDeclNode]))
                print("FieldDeclNode: update_child_struct_names:field type: " + child.node[][FieldDeclNode]._field_type)
                print("FieldDeclNode: update_child_struct_names:field name: " + child.node[][FieldDeclNode]._field_name)
                print("FieldDeclNode: update_child_struct_names:field anonymous_struct_caught " + String(anonymous_struct_caught))
                if anonymous_struct_caught:
                    child.node[][FieldDeclNode]._field_type = (
                        "_" + self._record_name + "_" + original_name
                    )
                    anonymous_struct_caught = False

                if (
                    child.node[][FieldDeclNode]._field_type
                    in self._inner_struct_name_map
                ):
                    try:
                        child.node[][
                            FieldDeclNode
                        ]._field_type = self._inner_struct_name_map[
                            child.node[][FieldDeclNode]._field_type
                        ]
                    except:
                        print(
                            "Error: "
                            + child.node[][FieldDeclNode]._field_type
                            + " not found in inner_struct_name_map"
                        )

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

        s = 'struct ' + self._record_name + ":\n"
        if not self._has_fields:
            s += indent + "\tpass\n"
        else:
            for child_idx in self._indicies[].child_idxs:
                child = module_interface.nodes()[][child_idx]
                if child.node[].isa[Self]():
                    s = child.to_string(just_code, module_interface, 0) + '\n' + s
                elif child.node[].isa[FieldDeclNode]():
                    s += child.to_string(just_code, module_interface, parent_indent_level + 1)

        if self._unhandled_tokens:
            s += " # RecordDeclNode Unhandled tokens: "
            for token in self._unhandled_tokens:
                s += " " + token

        return s + "\n"
