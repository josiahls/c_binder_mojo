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


struct Grammar(Copyable, Movable, Stringable, Writable):
    var _field_name: String
    var _field_type: String
    var _is_const: Bool
    var _value: String

    fn __init__(out self):
        self._field_name = String()
        self._field_type = String()
        self._is_const = False
        self._value = String()

    @implicit
    fn __init__(out self, ast_entries: AstEntries):
        # TODO(josiahls): Toggle depending on whether this is a const
        self._field_name = String()
        self._field_type = String()
        self._is_const = False
        self._value = String()
        # A field should only have 1 entry

        for entry in ast_entries:
            if entry.ast_name == "FieldDecl":
                for token in entry.tokens:
                    if self._field_name == "":
                        self._field_name = token
                    elif self._field_type == "":
                        self._field_type = token
                    else:
                        self._field_type += " " + token
            elif entry.ast_name == "ConstantExpr":
                self._is_const = True
            elif entry.ast_name == "value:" and self._is_const:
                idx = 0
                for token in entry.tokens:
                    if idx > 1:
                        self._value += " " + token
                    elif idx == 1:
                        self._value += token
                    idx += 1

        # Handle struct types
        if "struct " in self._field_type:
            # TODO(josiahls): This field generally looks something like struct Inner':'struct Inner'
            # I'm not sure what the repeated name implies or how it will change. This will break if it does.
            self._field_type = self._field_type.replace("struct ", "")

            colon_idx = self._field_type.find(":")
            if colon_idx != -1:
                self._field_type = self._field_type[:colon_idx][1:-1]
            else:
                self._field_type = self._field_type[1:-1]
        
        # Handle union types, especially unnamed unions
        elif "union " in self._field_type:
            print("unnamed union type: " + self._field_type)
            # Handle cases like 'union (unnamed union at /path/to/file.h:16:3)':'union __mbstate_t::(unnamed at /path/to/file.h:16:3)'
            if "(unnamed union at" in self._field_type:
                # This is an unnamed union, we need to create a synthetic type name
                # Extract the parent struct name from the type if possible
                colon_idx = self._field_type.find("\':\'")
                if colon_idx != -1:
                    # Try to get the parent struct name from the second part
                    second_part = self._field_type[colon_idx + 3:]

                    print("second part: " + second_part)
                    if "::(unnamed at" in second_part:
                        parent_struct = second_part.split("::")[0].replace("'union ", "").strip()
                        # Create a synthetic union name based on field name and parent struct
                        self._field_type = "__" + parent_struct + "_" + self._field_name + "_union"
                    else:
                        # Fallback: use field name
                        self._field_type = "__" + self._field_name + "_union_type"
                else:
                    # Fallback: use field name
                    self._field_type = "__" + self._field_name + "_union_type"

                print("synthetic union type: " + self._field_type)
            else:
                # Named union, handle similar to struct
                self._field_type = self._field_type.replace("union ", "")
                colon_idx = self._field_type.find(":")
                if colon_idx != -1:
                    self._field_type = self._field_type[:colon_idx][1:-1]
                else:
                    self._field_type = self._field_type[1:-1]

    fn __str__(self) -> String:
        var mojo_type = TypeMapper.get_mojo_type(self._field_type)
        field_name = self._field_name
        if field_name == "global":
            field_name = "`global`"
        if self._is_const:
            return (
                "alias "
                + field_name
                + ": "
                + mojo_type
                + " = "
                + self._value
            )
        else:
            return "var " + field_name + ": " + mojo_type

    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


@fieldwise_init
struct FieldDeclNode(NodeAstLike):
    alias __name__ = "FieldDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _ast_entry_level: Int

    var _field_name: String
    var _field_type: String
    var _is_const: Bool
    var _is_struct: Bool
    var _is_union: Bool
    var _has_sugar: Bool
    var _is_unnamed_type: Bool
    var _value: String

    var _unhandled_tokens: String

    fn __init__(out self, indicies: NodeIndices, ast_entries: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._ast_entry_level = ast_entries.level
        self._node_state = NodeState.COMPLETED

        self._field_name = String()
        self._field_type = String()
        self._is_const = False
        self._is_struct = False
        self._is_union = False
        self._has_sugar = False
        self._is_unnamed_type = False
        self._value = String()
        self._unhandled_tokens = String()

        var quoted_indicies = ast_entries.get_quoted_indices()

        var start_idx = 0
        var section_idx = 0

        # print("FieldDeclNode: " + String(ast_entries))
        # print("FieldDeclNode: quoted_indicies: " + String(',').join(quoted_indicies))

        for idx in quoted_indicies:
            # print("FieldDeclNode: section_idx: " + String(section_idx))
            # print("FieldDeclNode: start_idx: " + String(start_idx))
            # print("FieldDeclNode: idx: " + String(idx))
            if section_idx == 0:
                self.parse_section_0(ast_entries.tokens[:idx])
            elif section_idx == 1:
                self.parse_section_1(ast_entries.tokens[start_idx + 1:idx])
            elif section_idx == 2:
                self.parse_section_2(ast_entries.tokens[start_idx + 1:idx])
            elif section_idx == 3:
                self.parse_section_3(ast_entries.tokens[start_idx + 1:idx])
            section_idx += 1
            start_idx = idx
        # print("FieldDeclNode: record name: " + self._field_name)
        # print("FieldDeclNode: field type: " + self._field_type)
        # print("FieldDeclNode: is const: " + String(self._is_const))
        # print("FieldDeclNode: is struct: " + String(self._is_struct))
        # print("FieldDeclNode: is union: " + String(self._is_union))
        # print("FieldDeclNode: has sugar: " + String(self._has_sugar))
        # print("FieldDeclNode: value: " + self._value)

    fn parse_section_0(mut self, entries: List[String]):
        for entry in entries:
            if entry == "const":
                self._is_const = True
            elif entry == "struct":
                self._is_struct = True
            elif entry == "union":
                self._is_union = True
            elif self._field_name == "":
                self._field_name = entry
            else:
                self._unhandled_tokens += entry + " "

    fn parse_section_1(mut self, entries: List[String]):
        for entry in entries:
            if entry.replace("(", "") == "unnamed":
                self._is_unnamed_type = True
            elif entry == "struct":
                pass
            elif self._field_type == "":
                self._field_type = entry
            else:
                self._field_type += " " + entry

    fn parse_section_2(mut self, entries: List[String]):
        for entry in entries:
            if entry == ":":
                self._has_sugar = True
            else:
                self._value += entry + " "

    fn parse_section_3(mut self, entries: List[String]):
        if self._has_sugar and self._is_unnamed_type:
            self._field_type = " # Unnamed type"
            # for entry in entries:
            #     if entry == "struct":
            #         pass
            #     elif "::" in entry:
            #         self._field_type = entry.split("::")[0]
                # NOTE: Ignore the rest since that will be the unnamed path.
                # else:
                #     self._field_type += entry + " "
        elif self._has_sugar:
            pass # TODO(josiahls): Not sure if we want to add a comment as part of this.
        else:
            self._unhandled_tokens += String(' ').join(entries)

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "FieldDecl"

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
        if ast_entry.level <= self._ast_entry_level:
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

        var s: String = ""

        field_type = TypeMapper.get_mojo_type(self._field_type)
        field_name = self._field_name
        if field_name == "global":
            field_name = "`global`"

        if self._is_const:
            s += "alias " + field_name + ": " + field_type + " = " + self._value + "\n"
        else:
            s += "var " + field_name + ": " + field_type + "\n"

        if self._unhandled_tokens != "":
            s += "# Unhandled tokens: " + self._unhandled_tokens + "\n"

        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            newline_before_ast_entries=just_code,
            newline_after_tail=True,
            indent_before_ast_entries=True,
            alternate_string=s
        )