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
    WhitespaceEnum,
    C_BINDER_MOJO_NEWLINE
)
from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
from c_binder_mojo.c_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_scope_level,
    default_to_string,
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
        self._node_state = NodeState.INITIALIZING
        self._parent_type = parent_type
        self._token_bundles[].append(token_bundle)
        # self._token_bundles[].append(TokenBundle(C_BINDER_MOJO_NEWLINE, token_bundle.row_num, 0))

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
        var parent_type = String()
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


        print("token: " + token.token + " state: " + String(self._node_state))
        if token.token == CTokens.SCOPE_END:
            print("Building children and scope end")
            self._node_state = NodeState.COLLECTING_TAIL_TOKENS
            return TokenFlow.CONSUME_TOKEN  # Consume the scope end token.

        if token.is_whitespace():
            # Remove all white space tokens
            self._node_state = NodeState.DESTROYING_TOKENS
            return TokenFlow.CONSUME_TOKEN

        if self._node_state == NodeState.INITIALIZING or self._node_state == NodeState.DESTROYING_TOKENS:
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
        if self._node_state == NodeState.DESTROYING_TOKENS:
            if not token.is_whitespace():
                print("ERROR: Destroying tokens but token is not whitespace")
        if self._node_state == NodeState.COLLECTING_TAIL_TOKENS:
            # self._token_bundles_tail[].append(TokenBundle(C_BINDER_MOJO_NEWLINE, token.row_num, 0))
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

    @always_inline("nodebug")
    fn __str__(self) -> String:
        """Convert this node to a string."""
        return self.__name__

    fn name(self, include_sig: Bool = False) -> String:
        """Get the name of this node.

        Args:
            include_sig: Whether to include the node indices in the name.

        Returns:
            The name of this node.
        """
        if include_sig:
            var result = self.__name__ + "(" + String(self._indicies[])
            result += ", node_state=" + String(self._node_state)
            result += ", n_tokens=" + String(len(self._token_bundles[]))
            result += ", n_tokens_tail=" + String(len(self._token_bundles_tail[]))
            if self._parent_type != "":
                result += ", parent_type='" + self._parent_type + "'"
            result += ")"
            return result
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface, parent_indent_level: Int = 0
    ) -> String:
        """Convert this node to a string representation.

        Args:
            just_code: Whether to include only the code or also formatting information.
            module_interface: Interface to the AST.
            parent_indent_level: The indent level of the parent node.

        Returns:
            A string representation of this node.
        """
        return default_to_string(
            AstNode(self), 
            module_interface, 
            just_code=just_code, 
            indent_level=parent_indent_level, 
            children_indent_level=parent_indent_level + 1,
            newline_before_children=True,
            newline_after_children=True
        )

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        """Get the scope level of this node.

        Args:
            just_code: Whether to include only the code scopes or also formatting.
            module_interface: Interface to the AST.

        Returns:
            The scope level of this node.
        """
        return default_scope_level(
            self._indicies[].c_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        """Get the scope offset of this node.

        Args:
            just_code: Whether to include only the code scopes or also formatting.

        Returns:
            The scope offset of this node (always 1 for ScopeNode).
        """
        return 1  # Scope adds one level of scope
