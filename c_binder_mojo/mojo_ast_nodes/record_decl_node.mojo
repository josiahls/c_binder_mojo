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


struct Grammar(Copyable, Movable, Stringable, Writable):
    var _name: String
    var _is_forward_declaration: Bool
    var _is_anonymous: Bool

    fn __init__(out self):
        self._name = String()
        self._is_forward_declaration = False
        self._is_anonymous = False

    @implicit
    fn __init__(out self, ast_entries: AstEntries):
        self._name = String()
        self._is_forward_declaration = False
        self._is_anonymous = False
        if len(ast_entries) > 1 or len(ast_entries) == 0:
            print(
                "RecordDeclNode: Invalid grammar: "
                + String(ast_entries)
                + " len: "
                + String(len(ast_entries))
            )
            for entry in ast_entries:
                print("\tentry: " + String(entry))
        else:
            entry = ast_entries._ast_entries[0]
            if "definition" in entry.tokens:
                self._is_forward_declaration = False
            else:
                self._is_forward_declaration = True

            if len(entry.tokens) == 2:
                if (
                    entry.tokens[0] == "struct"
                    and entry.tokens[1] == "definition"
                ):
                    # TODO(josiahls): Add a global counter for anonymous structs to avoid
                    # name collisions.
                    precise_location = entry.precise_location.replace(":", "_")
                    self._name = "_Anonymous_" + precise_location
                    self._is_anonymous = True
                else:
                    self._name = entry.tokens[1]
            elif len(entry.tokens) == 3:
                # Idx 0 should be struct
                # Idx 2 should be definition
                self._name = entry.tokens[1]
            elif len(entry.tokens) == 4:
                # Idx 0 should be invalid which indicates an issue.
                # Idx 1 should be struct
                # Idx 2 should be definition
                # Idx 3 should be semicolon
                self._name = entry.tokens[2]
            else:
                print(
                    "RecordDeclNode: Invalid grammar: "
                    + String(entry)
                    + " len: "
                    + String(len(entry.tokens))
                )
                for token in entry.tokens:
                    print("\ttoken: " + token)

    fn __str__(self) -> String:
        if self._name == "":
            print("RecordDeclNode: Invalid grammar: , NAME IS BLANK!")

        if self._is_forward_declaration:
            return "# Forward declaration of " + self._name

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
    var _grammar: Grammar
    var _inner_struct_name_map: Dict[String, String]
    var _record_mem_location: String

    var _record_name: String
    var _unhandled_tokens: List[String]
    var _is_anonymous: Bool
    var _is_forward_declaration: Bool
    var _has_fields: Bool
    var _location: String

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entries[].append(ast_entry)
        self._record_decl_level = ast_entry.level
        self._location = ast_entry.precise_location
        self._record_mem_location = ast_entry.mem_address
        self._node_state = NodeState.COMPLETED
        self._grammar = Grammar()
        self._inner_struct_name_map = Dict[String, String]()

        self._record_name = String()
        self._unhandled_tokens = List[String]()
        self._is_anonymous = False
        self._is_forward_declaration = False
        self._has_fields = False

        for entry in ast_entry.tokens:
            if entry == "'":
                pass
            elif entry == "struct":
                pass
            elif entry == "definition":
                pass
            elif self._record_name == "":
                self._record_name = entry
            else:
                self._unhandled_tokens.append(entry)

        if self._record_name == "":
            self._record_name = "Anonymous_" + self._location.replace(":", "_")

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
        self._grammar = Grammar(self._ast_entries[])
        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
        else:
            self.update_child_struct_names(module_interface)
            get_global_type_mapper()[].add_custom_type(self._grammar._name)
            self._node_state = NodeState.COMPLETED
            if self._indicies[].child_idxs:
                self._has_fields = True

    fn update_child_struct_names(mut self, module_interface: ModuleInterface):
        anonymous_struct_caught = False

        original_name = String()

        for child_idx in self._indicies[].child_idxs:
            child = module_interface.nodes()[][child_idx]

            if child.node[].isa[Self]():
                original_name = child.node[][Self]._grammar._name.copy()
                if child.node[][Self]._grammar._is_anonymous:
                    anonymous_struct_caught = True

                self._inner_struct_name_map[original_name] = (
                    "_" + self._grammar._name + "_" + original_name
                )
                child.node[][Self]._grammar._name = (
                    "_" + self._grammar._name + "_" + original_name
                )
                get_global_type_mapper()[].add_custom_type(
                    child.node[][Self]._grammar._name
                )

            elif child.node[].isa[FieldDeclNode]():
                if anonymous_struct_caught:
                    child.node[][FieldDeclNode]._grammar._field_type = (
                        "_" + self._grammar._name + "_" + original_name
                    )
                    anonymous_struct_caught = False

                if (
                    child.node[][FieldDeclNode]._grammar._field_type
                    in self._inner_struct_name_map
                ):
                    try:
                        child.node[][
                            FieldDeclNode
                        ]._grammar._field_type = self._inner_struct_name_map[
                            child.node[][FieldDeclNode]._grammar._field_type
                        ]
                    except:
                        print(
                            "Error: "
                            + child.node[][FieldDeclNode]._grammar._field_type
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
        # var s: String = ""
        var indent: String = ""
        # # var inner_struct_name_map: Dict[String, String] = {}

        if parent_indent_level > 0:
            indent = "\t" * parent_indent_level

        # if not just_code:
        #     s += indent + self.name(include_sig=True) + "\n"

        # s += indent + String(self._grammar)

        # has_fields = False
        # for child_idx in self._indicies[].child_idxs:
        #     child = module_interface.nodes()[][child_idx]

        #     if child.node[].isa[Self]():
        #         s = child.to_string(just_code, module_interface, 0) + "\n" + s
        #     else:
        #         s += child.to_string(
        #             just_code, module_interface, parent_indent_level + 1
        #         )

        #     if child.name() == "FieldDeclNode":
        #         has_fields = True

        # if not has_fields:
        #     s += indent + "\t" + "pass" + "\n"

        s = 'struct ' + self._record_name + ":\n"
        if not self._has_fields:
            s += indent + "\tpass\n"
        else:
            for child_idx in self._indicies[].child_idxs:
                child = module_interface.nodes()[][child_idx]
                if child.node[].isa[FieldDeclNode]():
                    s += child.to_string(just_code, module_interface, parent_indent_level + 1)

        if self._unhandled_tokens:
            s += " # RecordDeclNode Unhandled tokens: "
            for token in self._unhandled_tokens:
                s += " " + token

        return s + "\n"
