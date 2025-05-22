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
    CTokens
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


@value
struct VariableNode(NodeAstLike):
    """Represents a variable declaration in Mojo code.
    
    This node handles variable declarations, converting C-style declarations to Mojo style.
    For example:
    - 'int x' becomes 'var x: Int'
    - 'const char* str' becomes 'let str: String'
    """
    
    alias __name__ = "VariableNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _c_token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _is_module_level: Bool

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode, is_module_level: Bool):
        """Initialize a VariableNode.
        
        Args:
            indicies: The indices for this node in the AST.
            c_node: The C AST node to convert from.
            is_module_level: Whether this node is at module level.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._c_token_bundles = c_node.token_bundles()
        self._node_state = NodeState.INITIALIZING
        self._is_module_level = is_module_level

    fn get_mojo_type(self, c_type: String) -> String:
        """Convert C type to equivalent Mojo type."""
        if c_type == "int":
            return "Int"
        elif c_type == "float":
            return "Float32"
        elif c_type == "double":
            return "Float64"
        elif c_type == "char":
            return "Int8"
        elif c_type == "short":
            return "Int16"
        elif c_type == "long":
            return "Int64"
        elif c_type == "unsigned":
            return "UInt"
        elif c_type == "bool":
            return "Bool"
        elif c_type == "void":
            return "None"
        elif c_type == "char*" or c_type == "const char*":
            return "String"
        return c_type  # Default case - keep original type if no mapping exists

    fn format_token_bundles(self):
        """Convert C-style variable declaration tokens to Mojo-style tokens.
        
        Handles conversion of type declarations and modifiers:
        - Converts type names (int -> Int)
        - Adds type annotations (':' after variable name)
        - If at module level (only macro + root parents), uses 'alias'
        - Otherwise uses 'var' for variable declarations
        """
        var is_const = False
        var type_name = String()
        var var_name = String()
        var adding_type = True
        var adding_name = False
        var adding_value = False
        var value_name = String()
        # First pass to collect information
        for token_bundle in self._c_token_bundles[]:
            token = token_bundle[].token
            if adding_type:
                if token == "const":
                    is_const = True
                else:
                    _type_name = self.get_mojo_type(token)
                    if _type_name != token: # If the token failed to map, then we are done adding types
                        adding_type = False
                        adding_name = True
                    type_name += _type_name
            elif adding_name:
                var_name += token
                adding_name = False
                adding_value = True
            elif adding_value:
                if token == "=":
                    pass
                elif token == CTokens.END_STATEMENT:
                    adding_value = False
                else:
                    value_name += token

        # Now generate Mojo-style declaration
        # Add appropriate keyword based on context
        if self._is_module_level or is_const:
            self._token_bundles[].append(
                TokenBundle.from_other("alias", self._c_token_bundles[][0])
            )
        else:
            self._token_bundles[].append(
                TokenBundle.from_other("var", self._c_token_bundles[][0])
            )
        
        # Add variable name
        self._token_bundles[].append(
            TokenBundle.from_other(var_name, self._c_token_bundles[][0])
        )
        
        # Add type annotation
        self._token_bundles[].append(
            TokenBundle.from_other(":", self._c_token_bundles[][0])
        )
        
        # Add type
        self._token_bundles[].append(
            TokenBundle.from_other(type_name, self._c_token_bundles[][0])
        )

        # Add value
        if value_name != "":
            self._token_bundles[].append(
                TokenBundle.from_other("=", self._c_token_bundles[][0])
            )
            self._token_bundles[].append(
                TokenBundle.from_other(value_name, self._c_token_bundles[][0])
            )

    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if the C node is a variable declaration.

        Args:
            c_node: The C AST node to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this C node represents a variable declaration.
        """
        return c_node.name() == "VariableNode"

    @staticmethod
    fn create(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new VariableNode.

        Determine if the variable is at module level by checking the parent nodes.
        Generally, if the variable is only contained by macros and ultimately the RootNode
        we can assume its module level.

        Args:
            c_node: The C AST node to convert.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new VariableNode instance.
        """

        var is_module_level = False
        var current_idx = indices.mojo_parent_idx
        if current_idx <= 0:
            is_module_level = True
        while current_idx >= 0:
            var parent_name = module_interface.nodes()[][current_idx].name()
            if not parent_name.startswith("Macro") and parent_name != "RootNode":
                is_module_level = False
                break
            current_idx = module_interface.nodes()[][current_idx].indicies().mojo_parent_idx
        return Self(indices, c_node, is_module_level)

    fn determine_token_flow(
        mut self, c_node: C_AstNode, module_interface: ModuleInterface
    ) -> MessageableEnum:
        """Determine how to handle the next token.

        For VariableNode, we collect all tokens until the declaration is complete.
        """
        return TokenFlow.PASS_TO_PARENT

    fn process(
        mut self,
        c_node: C_AstNode,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        """Process the current node state."""
        if token_flow == TokenFlow.PASS_TO_PARENT:
            self.format_token_bundles()
            self._node_state = NodeState.COMPLETED

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
            return self.__name__ + "(" + String(self._indicies[]) + ", is_module_level=" + String(self._is_module_level) + ")"
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
        return 0  # Variable declarations don't create a new scope 