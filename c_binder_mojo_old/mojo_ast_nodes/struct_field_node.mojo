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
from c_binder_mojo.c_ast_nodes.struct_field_node import StructFieldNode as C_StructFieldNode


@value
struct StructFieldNode(NodeAstLike):
    """Represents a field in a struct definition in Mojo code.
    
    This node handles struct field declarations, converting C-style fields to Mojo style.
    For example:
    - 'int x;' becomes 'var x: Int'
    - 'char* name;' becomes 'var name: String'
    - 'struct Inner { double data; } nested;' becomes 'var nested: Inner'
    """
    
    alias __name__ = "StructFieldNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _c_token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _field_name: String
    var _field_type: String
    var _is_inner_struct: Bool

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode):
        """Initialize a StructFieldNode.
        
        Args:
            indicies: The indices for this node in the AST.
            c_node: The C AST node to convert from.
        """
        self._indicies = indicies
        self._c_token_bundles = c_node.token_bundles()
        self._token_bundles = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        
        # Get field info from C node
        var c_field = c_node.node[][C_StructFieldNode]
        self._field_name = c_field.get_field_name()
        self._field_type = c_field.get_field_type()
        self._is_inner_struct = c_field._is_inner_struct

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

    fn _format_field_tokens(mut self):
        """Format the field tokens into Mojo style.
        
        Converts C field syntax to Mojo field syntax:
        - Adds 'var' keyword
        - Handles field name
        - Adds type annotation with proper Mojo type
        """
        var row_num = self._c_token_bundles[][-1].row_num
        
        # Add var keyword
        self._token_bundles[].append(TokenBundle("var", row_num, 0))
        
        # Add field name
        self._token_bundles[].append(TokenBundle(self._field_name, row_num, 0))
        
        # Add type annotation
        self._token_bundles[].append(TokenBundle(":", row_num, 0))
        
        # Add converted type
        var mojo_type = self.get_mojo_type(self._field_type)
        self._token_bundles[].append(TokenBundle(mojo_type, row_num, 0))

    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if the C node is a struct field declaration.

        Args:
            c_node: The C AST node to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this C node represents a struct field declaration.
        """
        return c_node.name() == "StructFieldNode"

    @staticmethod
    fn create(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new StructFieldNode.

        Args:
            c_node: The C AST node to convert.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new StructFieldNode instance.
        """
        return Self(indices, c_node)

    fn determine_token_flow(
        mut self, c_node: C_AstNode, module_interface: ModuleInterface
    ) -> MessageableEnum:
        """Determine how to handle the next token.

        For StructFieldNode, we need to:
        1. Handle the field declaration
        2. Create child nodes for inner structs if needed
        3. Handle the end of the field
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
            return

        if token_flow == TokenFlow.PASS_TO_PARENT:
            self._node_state = NodeState.COMPLETED
            self._format_field_tokens()
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
            return self.__name__ + "(" + String(self._indicies[]) + ", field_name=" + self._field_name + ", field_type=" + self._field_type + ")"
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
        return 0  # Struct fields don't create a new scope 