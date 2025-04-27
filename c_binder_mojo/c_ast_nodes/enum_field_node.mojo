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
    NodeState,
    CTokens,
    TokenFlow,
    C_BINDER_MOJO_NEWLINE
)
from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
from c_binder_mojo.c_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_scope_level,
    default_to_string,
)
from c_binder_mojo.c_ast_nodes.scope_node import ScopeNode


@value
struct EnumFieldNode(NodeAstLike):
    """Represents a field in an enum definition.

    Examples:
        FIELD_NAME,
        FIELD_NAME = 1,
        FIELD_NAME = SOME_CONSTANT,

    The node tracks:
    - The field name
    - Optional field value
    - Formatting and comments
    """

    alias __name__ = "EnumFieldNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _field_name: String
    var _field_value: String
    var _has_value: Bool

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize an EnumFieldNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial token (field name).
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._field_name = token_bundle.token
        self._field_value = ""
        self._has_value = False
        self._token_bundles[].append(token_bundle)

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if this token starts an enum field.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts an enum field, False otherwise.
        """
        # Check if we're in an enum scope
        if indices.c_parent_idx < 0:
            return False

        var parent = module_interface.nodes()[][indices.c_parent_idx]
        if parent.name() != "ScopeNode":
            return False

        # Check if the parent's parent is an EnumNode
        if parent.node[][ScopeNode]._parent_type != "EnumNode":
            return False

        # Accept if it's an identifier (not a special token)
        return True

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new EnumFieldNode.

        Args:
            token: The field name token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new EnumFieldNode instance.
        """
        return Self(indices, token)

    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> MessageableEnum:
        """Determine how to handle the next token.

        Args:
            token: The token to process.
            module_interface: Interface to the AST.

        Returns:
            The token flow decision.
        """
        if self._node_state == NodeState.COMPLETED:
            return TokenFlow.PASS_TO_PARENT

        if token.token == CTokens.SCOPE_END:
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

        if token.token.startswith("//"):
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

        if self._node_state == NodeState.INITIALIZING:
            self._node_state = NodeState.COLLECTING_TOKENS

        # Handle field value assignment
        if token.token == "=":
            self._has_value = True
            return TokenFlow.CONSUME_TOKEN

        # Handle field termination
        if token.token == "," or token.token == CTokens.SCOPE_END:
            self._node_state = NodeState.COMPLETED
            return TokenFlow.CONSUME_TOKEN

        # Collect value tokens if we're after the =
        if self._has_value:
            return TokenFlow.CONSUME_TOKEN

        # Skip whitespace and comments
        if token.is_whitespace():
            return TokenFlow.CONSUME_TOKEN

        return TokenFlow.PASS_TO_PARENT

    fn process(
        mut self,
        token: TokenBundle,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        """Process a token in this node.

        Args:
            token: The token to process.
            token_flow: The determined token flow.
            module_interface: Interface to the AST.
        """
        if self._has_value and token.token != "=" and token.token != ",":
            if self._field_value == "":
                self._field_value = token.token
            else:
                self._field_value += token.token

        self._token_bundles[].append(token)

    fn indicies(self) -> NodeIndices:
        """Get the indices for this node."""
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        """Get a pointer to the indices for this node."""
        return self._indicies

    fn token_bundles(self) -> TokenBundles:
        """Get the token bundles for this node."""
        return self._token_bundles[]

    fn node_state(self) -> MessageableEnum:
        """Get the state of this node."""
        return self._node_state

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        """Get a pointer to the token bundles for this node."""
        return self._token_bundles

    fn token_bundles_tail(self) -> TokenBundles:
        """Get the token bundles for the tail part of this node."""
        return self._token_bundles_tail[]

    fn __str__(self) -> String:
        """Convert this node to a string representation."""
        return self.name(include_sig=True)

    fn name(self, include_sig: Bool = False) -> String:
        """Get the name of this node.

        Args:
            include_sig: If True, includes signature information.

        Returns:
            The name of this node.
        """
        if include_sig:
            var result = self.__name__ + "(" + String(self._indicies[])
            result += ", node_state=" + String(self._node_state)
            result += ", field_name='" + self._field_name + "'"
            if self._has_value:
                result += ", value='" + self._field_value + "'"
            result += ")"
            return result
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface, parent_indent_level: Int = 0
    ) -> String:
        """Convert this node to a string.

        Args:
            just_code: If True, only output code content (no metadata).
            module_interface: Interface to the AST.
            parent_indent_level: The indent level of the parent node.

        Returns:
            String representation of this node.
        """
        return default_to_string(AstNode(self), module_interface, just_code=just_code, indent_level=parent_indent_level)

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        """Get the scope level of this node.

        Args:
            just_code: If True, only considers code elements.
            module_interface: Interface to the AST.

        Returns:
            The scope level.
        """
        return default_scope_level(
            self._indicies[].c_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        """Get the scope offset of this node.

        Args:
            just_code: If True, only considers code elements.

        Returns:
            The scope offset (0 for enum fields, which don't create scope).
        """
        return 0  # Enum fields don't create scope

    fn get_field_name(self) -> String:
        """Get the name of this enum field.

        Returns:
            The field name.
        """
        return self._field_name

    fn get_field_value(self) -> String:
        """Get the value of this enum field.

        Returns:
            The field value, or empty string if no value was assigned.
        """
        return self._field_value
