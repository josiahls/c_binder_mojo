# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant
from c_binder_mojo.type_mapper import get_global_type_mapper, TypeMapper

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
from c_binder_mojo.mojo_ast_nodes.record_decl_node import RecordDeclNode
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry, AstEntries
from c_binder_mojo.builtin_type_mapper import BuiltinTypeMapper


@fieldwise_init
struct ParmVarDeclNode(NodeAstLike):
    alias __name__ = "ParmVarDeclNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _typedef_decl_level: Int
    var _parm_var_name: String
    var _parm_var_type: String

    var _is_const: Bool
    var _is_volatile: Bool
    var _is_restrict: Bool
    var _is_unsigned: Bool
    var _is_used: Bool
    var _is_struct: Bool
    # Doesn't have a parameter name.
    var _is_positional: Bool

    # NOTE: We could change this to handle N pointers. Maybe revisit this.
    var _is_pointer: Bool
    var _is_double_pointer: Bool
    var _is_function_pointer: Bool

    var _has_sugar_mapping: Bool

    var unhandled_tokens: String

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._node_state = NodeState.COMPLETED
        self._typedef_decl_level = ast_entry.level
        self._parm_var_name = String()
        self._parm_var_type = String()

        # TODO(josiahls): Const, volatile, restrict, and used I'm unclear how to convert to mojo.
        # This needs to be revisited. 
        self._is_const = False
        self._is_volatile = False
        self._is_restrict = False
        self._is_unsigned = False
        self._is_used = False
        self._is_positional = False
        self._is_struct = False

        self._is_pointer = False
        self._is_double_pointer = False
        self._is_function_pointer = False
        self._is_positional = False

        self._has_sugar_mapping = False

        self.unhandled_tokens = String()

        var quoted_indicies = ast_entry.get_quoted_indices()

        section_idx = 0
        start_idx = 0
        for idx in quoted_indicies:
            print("ParmVarDeclNode: section_idx: " + String(section_idx) + " for ast entry: " + String(ast_entry))
            if section_idx == 0:
                self._parse_section_0(ast_entry.tokens[:idx])
            elif section_idx == 1:
                self._parse_section_1(ast_entry.tokens[start_idx + 1:idx])
            elif section_idx == 2:
                self._parse_section_2(ast_entry.tokens[start_idx + 1:idx])
            elif section_idx == 3:
                if not self._has_sugar_mapping:
                    self._parse_section_3(ast_entry.tokens[start_idx + 1:idx])
                # else:
                #     self._parse_section_4(ast_entry.tokens[start_idx:idx])
            else:
                print("ParmVarDeclNode: Unhandled section: " + String(section_idx))


            start_idx = idx
            section_idx += 1
    
        if self.unhandled_tokens != "":
            self.unhandled_tokens = "# ParmVarDeclNode Unhandled tokens: " + self.unhandled_tokens


    fn _parse_section_0(mut self, tokens: List[String]):
        for token in tokens:
            if token == "used":
                self._is_used = True
            elif self._parm_var_name == "":
                self._parm_var_name = token
            else:
                self.unhandled_tokens += " " + token

    fn _parse_section_1(mut self, tokens: List[String]):
        for token in tokens:
            var base_entry:String = token

            if self._parm_var_name == "":
                self._is_positional = True

            # Check for function pointer pattern (*)(...)
            # We don't allow the statements after this block to run, since these tokens are going to be nested in the function param.
            if "(*)" in token:
                self._is_function_pointer = True
                if self._parm_var_type == "":
                    self._parm_var_type = base_entry
                else:
                    self._parm_var_type += " " + base_entry
                continue
                # Don't strip the (*) as we need it for function pointer parsing
            elif self._is_function_pointer:
                self._parm_var_type += " " + base_entry
                continue

            if '**' in token:
                base_entry = String(token.strip("*"))
                self._is_double_pointer = True
            elif '*' in token:
                base_entry = String(token.strip("*"))
                self._is_pointer = True

            if base_entry == "const":
                self._is_const = True
            elif base_entry == "unsigned":
                self._is_unsigned = True
            elif base_entry == "volatile":
                self._is_volatile = True
            elif base_entry == "restrict":
                self._is_restrict = True
            elif base_entry == "*":
                self._is_pointer = True
            elif base_entry == "**":
                self._is_double_pointer = True
            elif base_entry == "struct":
                self._is_struct = True
            elif self._parm_var_type == "":
                self._parm_var_type = base_entry
            else:
                self._parm_var_type += " " + base_entry

    fn _parse_section_2(mut self, tokens: List[String]):
        for token in tokens:
            print("ParmVarDeclNode: _parse_section_2: " + token)
            if token == ":":
                self._has_sugar_mapping = True
            else:
                self.unhandled_tokens += " " + token

    fn _parse_section_3(mut self, tokens: List[String]):
        if self._has_sugar_mapping:
            # Wipe the type, we'll use the sugar mapping.
            self._parm_var_type = ""

        for token in tokens:
            var base_entry:String = token
            if '**' in token:
                base_entry = String(token.strip("*"))
                self._is_double_pointer = True
            elif '*' in token:
                base_entry = String(token.strip("*"))
                self._is_pointer = True

            # Check for function pointer pattern (*)(...)
            if "(*)" in token:
                self._is_function_pointer = True
                # Don't strip the (*) as we need it for function pointer parsing
            elif base_entry == "const":
                self._is_const = True
            elif base_entry == "unsigned":
                self._is_unsigned = True
            elif base_entry == "volatile":
                self._is_volatile = True
            elif base_entry == "restrict":
                self._is_restrict = True
            elif base_entry == "*":
                self._is_pointer = True
            elif base_entry == "**":
                self._is_double_pointer = True
            elif base_entry == "struct":
                self._is_struct = True
            elif self._parm_var_type == "":
                self._parm_var_type = base_entry
            else:
                self._parm_var_type += " " + base_entry

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "ParmVarDecl"

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
        else:
            self._node_state = NodeState.COMPLETED

    fn process_anonymous_record(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> Bool:
        mem_addesss = ast_entry.mem_address
        for node in module_interface.nodes()[]:
            if node.node[].isa[RecordDeclNode]():
                if (
                    node.node[][RecordDeclNode]._record_mem_location
                    == mem_addesss
                ):
                    struct_name = node.node[][RecordDeclNode]._record_name
                    new_entry = AstEntry()
                    new_entry.ast_name = "AnonymousRecord"
                    new_entry.tokens = List[String]()
                    new_entry.tokens.append(struct_name)
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

        # print("ParmVarDeclNode: _parm_var_name: " + self._parm_var_name + " param type: " + self._parm_var_type)

        var type_name = TypeMapper.map_type(self._parm_var_type)

        if self._is_function_pointer:
            # Parse function pointer type like "void (*)(int, void *)"
            type_name = self._parse_function_pointer_type(self._parm_var_type)
        
        if self._is_pointer:
            type_name = "UnsafePointer[" + type_name + "]"
        elif self._is_double_pointer:
            type_name = "UnsafePointer[UnsafePointer[" + type_name + "]]"
        
        var type_decl: String
        if self._is_positional:
            type_decl = type_name
        else:
            type_decl = self._parm_var_name + ": " + type_name

        if self._is_const:
            type_decl = "read " + type_decl

        return type_decl

    fn _parse_param_type(self, type_str: String) -> String:
        # TODO(josiahls): The type mapper is not very composable.
        return TypeMapper.get_mojo_type(type_str) 

    fn _parse_function_pointer_type(self, type_str: String) -> String:
        """Parse function pointer type and convert to Mojo function signature.
        
        Examples:
        - "void (*)(void)" -> "fn() -> None"
        - "void (*)(int, void *)" -> "fn(Int, UnsafePointer[None]) -> None"
        - "int (*)(const void *, const void *)" -> "fn(read UnsafePointer[None], read UnsafePointer[None]) -> Int"
        """
        # Find the return type (before the (*))
        var return_type = String()
        var param_types = String()
        
        # Look for the (*) pattern
        var paren_star_idx = type_str.find("(*)")
        if paren_star_idx == -1:
            return type_str  # Not a function pointer, return as-is
        
        # Extract return type (everything before (*))
        return_type = String(type_str[:paren_star_idx])
        return_type = String(return_type.strip())
        
        # Find the parameter list (between the parentheses after (*))
        var open_paren_idx = type_str.find("(", paren_star_idx + 1)
        var close_paren_idx = type_str.find(")", open_paren_idx)
        
        if open_paren_idx != -1 and close_paren_idx != -1:
            var param_str = String(type_str[open_paren_idx + 1:close_paren_idx])
            param_str = String(param_str.strip())
            
            if param_str == "":
                param_types = ""
            elif param_str == "void":
                param_types = ""
            else:
                # Split parameters by comma and map each type
                var params = param_str.split(",")
                var mapped_params = List[String]()
                
                for param in params:
                    mapped_params.append(self._parse_param_type(param))
                
                param_types = String(", ").join(mapped_params)
        
        # Map return type
        var mapped_return_type = TypeMapper.map_type(return_type)
        if mapped_return_type == "void":
            mapped_return_type = "None"
        
        # Construct Mojo function signature
        var mojo_signature = "fn(" + param_types + ") -> " + mapped_return_type
        
        return mojo_signature
