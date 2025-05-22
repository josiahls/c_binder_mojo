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
    TokenBundles,
    TokenFlow,
    NodeState,
)
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface
from c_binder_mojo.mojo_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_scope_level,
    default_to_string,
    default_to_string_just_code,
)
from c_binder_mojo.c_ast_nodes import AstNode as C_AstNode
from c_binder_mojo.c_ast_nodes.typedef_node import TypedefNode as C_TypedefNode


@value
struct TypedefNode(NodeAstLike):
    """Represents a typedef declaration in Mojo code.
    
    This node converts C/C++ typedefs to Mojo aliases:
    
    C/C++:
    1. Basic type typedefs:
        typedef unsigned int uint_t;
    2. Struct typedefs:
        typedef struct Rectangle_ { ... } Rectangle;
    
    Mojo:
    1. Basic type aliases:
        alias uint_t = UInt
    2. Struct aliases (separated from struct definition):
        alias Rectangle = Rectangle_
        
        @value
        struct Rectangle_: ...
    """
    
    alias __name__ = "TypedefNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _c_token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _type_name: String
    var _has_children: Bool
    var _struct_name: String

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode):
        """Initialize a TypedefNode.
        
        Args:
            indicies: The indices for this node in the AST.
            c_node: The C AST node to convert from.
        """
        self._indicies = indicies
        self._c_token_bundles = c_node.token_bundles()
        self._token_bundles = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._has_children = False
        self._struct_name = ""
        
        # Get type name from C node
        var c_typedef = c_node.node[][C_TypedefNode]
        self._type_name = c_typedef.get_type_name()
        
        # Check if this typedef has child nodes (struct or enum)
        if len(self._indicies[].c_child_idxs) > 0:
            self._has_children = True
            # Try to determine the struct/enum name
            self._extract_struct_name()

    fn _extract_struct_name(mut self):
        """Extract the struct or enum name from the typedef tokens."""
        var found_struct_or_enum = False
        
        for token_bundle in self._c_token_bundles[]:
            token = token_bundle[].token
            
            # Look for "struct" or "enum" keywords
            if token == "struct" or token == "enum":
                found_struct_or_enum = True
                continue
                
            # The next non-whitespace token after "struct/enum" should be the name
            if found_struct_or_enum and token != " " and token != "\t" and token != "\n" and token != "{":
                self._struct_name = token
                break

    fn _format_token_bundles(self):
        """Convert C-style typedef tokens to Mojo-style alias tokens.
        
        Handles the conversion from typedef to alias syntax:
        - Replace 'typedef' with 'alias'
        - Move the type name to the beginning
        - Add '=' between the name and the type
        
        For typedefs with struct/enum definitions:
        - Creates a separate alias declaration
        - The struct/enum definition becomes a separate entity
        """
        var row_num = self._c_token_bundles[][-1].row_num
        
        # Add alias keyword
        self._token_bundles[].append(TokenBundle("alias", row_num, 0))
        
        # Add the type name being defined
        if self._type_name != "":
            self._token_bundles[].append(TokenBundle(self._type_name, row_num, 0))
            
            # Add equals sign
            self._token_bundles[].append(TokenBundle("=", row_num, 0))
            
            if self._has_children and self._struct_name != "":
                # For struct/enum typedefs, just reference the struct/enum name
                self._token_bundles[].append(TokenBundle(self._struct_name, row_num, 0))
            else:
                # For simple typedefs, convert the type
                # Now we need to add the base type - this will depend on what's in the C token bundles
                # Simple approach: just grab tokens after typedef and before the type name/semicolon
                var in_base_type = False
                for token_bundle in self._c_token_bundles[]:
                    if token_bundle[].token == "typedef":
                        in_base_type = True
                        continue
                    elif token_bundle[].token == self._type_name or token_bundle[].token == ";":
                        break
                    elif in_base_type and token_bundle[].token != " " and token_bundle[].token != "\t" and token_bundle[].token != "\n":
                        # Convert C types to Mojo types
                        var mojo_type = token_bundle[].token
                        if mojo_type == "int":
                            mojo_type = "Int"
                        elif mojo_type == "float":
                            mojo_type = "Float32"
                        elif mojo_type == "double":
                            mojo_type = "Float64"
                        elif mojo_type == "unsigned":
                            mojo_type = "UInt"
                        elif mojo_type == "char":
                            mojo_type = "Int8"
                        
                        self._token_bundles[].append(TokenBundle(mojo_type, row_num, 0))
        
    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if the C node is a typedef declaration.

        Args:
            c_node: The C AST node to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this C node represents a typedef declaration.
        """
        return c_node.name() == "TypedefNode"

    @staticmethod
    fn create(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new TypedefNode.

        Args:
            c_node: The C AST node to convert.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new TypedefNode instance.
        """
        return Self(indices, c_node)

    fn determine_token_flow(
        mut self, c_node: C_AstNode, module_interface: ModuleInterface
    ) -> MessageableEnum:
        """Determine how to handle the next token.

        For TypedefNode, we need to:
        1. Handle the typedef declaration
        2. Create child nodes for struct/enum definitions if needed
        """
        if c_node.indicies().c_current_idx in self._indicies[].c_child_idxs:
            return TokenFlow.CREATE_CHILD
        else:
            return TokenFlow.PASS_TO_PARENT

    fn process(
        mut self,
        c_node: C_AstNode,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        """Process the current node state."""
        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
            self._has_children = True
            return

        if token_flow == TokenFlow.PASS_TO_PARENT:
            self._node_state = NodeState.COMPLETED
            self._format_token_bundles()
            return

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles[]

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        return self._token_bundles

    fn token_bundles_tail(self) -> TokenBundles:
        return TokenBundles()

    fn node_state(self) -> MessageableEnum:
        return self._node_state

    @always_inline("nodebug")
    fn __str__(self) -> String:
        return self.__name__

    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            var result = self.__name__ + "(" + String(self._indicies[])
            result += ", type_name=" + self._type_name
            if self._has_children and self._struct_name != "":
                result += ", struct_name=" + self._struct_name
            result += ")"
            return result
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) raises -> String:
        if just_code:
            return default_to_string_just_code(AstNode(self), module_interface)
        else:
            return default_to_string(AstNode(self), module_interface)

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        return default_scope_level(
            self._indicies[].mojo_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        return 0  # Typedef declarations don't create a new scope 