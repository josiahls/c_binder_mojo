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
)
from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
from c_binder_mojo.c_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_scope_level,
    default_to_string,
    default_to_string_just_code,
)


@value
struct ScopeNode(NodeAstLike):
    """A generic scope node that can handle scopes for different node types.

    This node is responsible for managing content that needs its own scope level.
    Each scope node is associated with a parent node type (e.g., typedef, struct, enum)
    and provides proper indentation and scope management for its children.

    The scope type is determined by the parent node and affects how the scope
    is handled (e.g., typedef scopes vs struct scopes may have different rules).
    """

    alias __name__ = "ScopeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _parent_type: String  # Type of node this scope belongs to (e.g., "typedef", "struct")
    var _row_nums: List[Int]  # Track rows for multi-line scopes

    fn __init__(
        out self,
        indicies: NodeIndices,
        token_bundle: TokenBundle,
        parent_type: String,
    ):
        """Initialize a ScopeNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial token.
            parent_type: The type of node this scope belongs to.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._row_nums = List[Int]()
        self._row_nums.append(token_bundle.row_num)
        self._node_state = NodeState.INITIALIZING
        self._parent_type = parent_type
        self._token_bundles[].append(token_bundle)

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if this token starts a scope.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts a scope, False otherwise.
        """
        # A scope can start with { or be implicit based on parent type
        if token.token == CTokens.SCOPE_BEGIN:
            return True
        return False
        # TODO(josiahls): Do we even need this?
        # Check parent type to see if we need an implicit scope
        # var parent_node = module_interface.nodes()[][indices.c_parent_idx]
        # return parent_node.name() in ["TypedefNode", "StructNode", "EnumNode"]

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new ScopeNode.

        Args:
            token: The initial token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new ScopeNode instance.
        """
        # Get parent type
        # TODO(josiahls): Do we want to get the literal parent type instead of string?
        # I do like that we aren't importing extra nodes, but on the other hand, we
        # don't get compilation checking.
        var parent_type = String("")
        if indices.c_parent_idx >= 0:
            parent_type = module_interface.nodes()[][
                indices.c_parent_idx
            ].name()
        return Self(indices, token, parent_type)

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
        # Check if we're done with this scope
        if self._node_state == NodeState.COMPLETED:
            return TokenFlow.PASS_TO_PARENT

        if (
            self._node_state == NodeState.BUILDING_CHILDREN
            and token.token == CTokens.SCOPE_END
        ):
            self._node_state = NodeState.COLLECTING_TAIL_TOKENS
            return TokenFlow.CONSUME_TOKEN  # Consume the scope end token.

        if self._node_state == NodeState.INITIALIZING:
            self._node_state = NodeState.BUILDING_CHILDREN
            return TokenFlow.CREATE_CHILD

        if self._node_state == NodeState.BUILDING_CHILDREN:
            return TokenFlow.CREATE_CHILD

        return TokenFlow.INVALID + " Unknown node state: "

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
        if token.row_num not in self._row_nums:
            self._row_nums.append(token.row_num)

        if self._node_state == NodeState.COLLECTING_TAIL_TOKENS:
            self._token_bundles_tail[].append(token)
            self._node_state = NodeState.COMPLETED

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
            if self._parent_type != "":
                result += ", parent_type='" + self._parent_type + "'"
            result += ")"
            return result
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> String:
        """Convert this node to a string.

        Args:
            just_code: If True, only output code content (no metadata).
            module_interface: Interface to the AST.

        Returns:
            String representation of this node.
        """
        if just_code:
            return default_to_string_just_code(AstNode(self), module_interface)
        else:
            return default_to_string(AstNode(self), module_interface)

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
            The scope offset (1 for scope nodes, which create their own scope).
        """
        return 1  # Scope nodes always add one level of scope
