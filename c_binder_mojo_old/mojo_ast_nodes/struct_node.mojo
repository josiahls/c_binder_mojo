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
from c_binder_mojo.c_ast_nodes.struct_node import StructNode as C_StructNode


@value
struct StructNode(NodeAstLike):
    """Represents a struct declaration in Mojo code.
    
    This node handles struct declarations, converting C-style structs to Mojo style.
    For example:
    - 'struct Point { int x; int y; };' becomes '@value struct Point: var x: Int; var y: Int'
    """
    
    alias __name__ = "StructNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _c_token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _struct_name: String
    var _is_in_typedef: Bool

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode):
        """Initialize a StructNode.
        
        Args:
            indicies: The indices for this node in the AST.
            c_node: The C AST node to convert from.
        """
        self._indicies = indicies
        self._c_token_bundles = c_node.token_bundles()
        self._token_bundles = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._struct_name = c_node.node[][C_StructNode].get_struct_name()
        self._is_in_typedef = c_node.node[][C_StructNode]._is_in_typedef

    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if the C node is a struct declaration.

        Args:
            c_node: The C AST node to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this C node represents a struct declaration.
        """
        return c_node.name() == "StructNode"

    @staticmethod
    fn create(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new StructNode.

        Args:
            c_node: The C AST node to convert.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new StructNode instance.
        """
        return Self(indices, c_node)

    fn determine_token_flow(
        mut self, c_node: C_AstNode, module_interface: ModuleInterface
    ) -> MessageableEnum:
        """Determine how to handle the next token.

        For StructNode, we need to:
        1. Handle the struct declaration
        2. Create child nodes for fields
        3. Handle the end of the struct
        """
        if c_node.indicies().c_current_idx in self._indicies[].c_child_idxs:
            return TokenFlow.CREATE_CHILD
        else:
            return TokenFlow.PASS_TO_PARENT

    fn _format_struct_tokens(mut self):
        """Format the struct tokens into Mojo style.
        
        Converts C struct syntax to Mojo struct syntax:
        - Adds @value decorator
        - Handles struct name
        - Adds proper Mojo struct declaration format
        """
        var row_num = self._c_token_bundles[][-1].row_num
        
        # Add @value decorator
        self._token_bundles[].append(TokenBundle("@value", row_num, 0))
        
        # Add struct keyword and name
        for token in self._c_token_bundles[]:
            if token[].token == "struct":
                self._token_bundles[].append(TokenBundle("struct",  row_num + 1, 0))
            elif token[].token == self._struct_name:
                self._token_bundles[].append(TokenBundle(token[].token, row_num + 1, 0))
        
        # Add colon for Mojo style
        self._token_bundles[].append(TokenBundle(":", row_num + 1, 0))

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
            self._format_struct_tokens()
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
            return self.__name__ + "(" + String(self._indicies[]) + ", struct_name=" + self._struct_name + ")"
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
        return 1  # Struct declarations don't create a new scope 