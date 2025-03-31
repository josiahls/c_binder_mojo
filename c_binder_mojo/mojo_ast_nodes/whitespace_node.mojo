# Native Mojo Modules
from memory import ArcPointer, Pointer

# Third Party Mojo Modules
from firehose.logging import Logger

# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    MessageableEnum,
    NodeIndices,
    TokenBundles,
    NodeState,
    TokenFlow,
    List,
    CTokens,
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
struct WhitespaceNode(NodeAstLike):
    """Represents whitespace in the AST.

    This node handles spaces, tabs, newlines, and other whitespace characters.
    Consolidating whitespace into dedicated nodes helps clean up the AST and
    makes debugging easier by reducing noise.
    """

    alias __name__ = "WhitespaceNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _c_token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum

    fn __init__(out self, indicies: NodeIndices, c_node: C_AstNode):
        """Initialize a WhitespaceNode.

        Args:
            indicies: The indices for this node in the AST.
            c_node: The initial whitespace node.
        """
        self._indicies = indicies
        self._token_bundles = c_node.token_bundles()
        self._c_token_bundles = c_node.token_bundles()
        self._node_state = NodeState.COMPLETED

    @staticmethod
    fn accept(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Accept a token and create a WhitespaceNode if appropriate.

        Args:
            token: The token to consider.
            module_interface: Interface to the AST.
            indices: The indices for this node in the AST.

        Returns:
            True if this node can handle the token, False otherwise.
        """
        # Check if the token is whitespace (only spaces, tabs, newlines)
        return c_node.name() == "WhitespaceNode"

    @staticmethod
    fn create(
        c_node: C_AstNode,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new WhitespaceNode.

        Args:
            token: The token to use for creation.
            module_interface: Interface to the AST.
            indices: The indices for this node in the AST.

        Returns:
            A new WhitespaceNode instance.
        """
        return Self(indices, c_node)

    fn determine_token_flow(
        mut self, c_node: C_AstNode, module_interface: ModuleInterface
    ) -> MessageableEnum:
        """Determine the state of this node based on the current token.

        Args:
            token: The current token.
            module_interface: Interface to the AST.

        Returns:
            The state of this node.
        """
        return TokenFlow.PASS_TO_PARENT

    fn process(
        mut self,
        c_node: C_AstNode,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        """Process the token to update this node.

        Args:
            token: The token to process.
            node_state: The current state of the node.
            module_interface: Interface to the AST.
        """
        # We already added the token in init, so no further processing needed
        pass

    fn indicies(self) -> NodeIndices:
        """Get the indices for this node.

        Returns:
            The indices.
        """
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        """Get a pointer to the indices for this node.

        Returns:
            Pointer to the indices.
        """
        return self._indicies

    fn token_bundles(self) -> TokenBundles:
        """Get the token bundles for this node.

        Returns:
            The token bundles.
        """
        return self._token_bundles[]

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        """Get a pointer to the token bundles for this node.

        Returns:
            Pointer to the token bundles.
        """
        return self._token_bundles

    fn token_bundles_tail(self) -> TokenBundles:
        """Get the token bundles for the tail part of this node.

        Returns:
            An empty list as this node doesn't have a tail.
        """
        return TokenBundles()

    fn node_state(self) -> MessageableEnum:
        """Get the state of this node.

        Returns:
            The state of this node.
        """
        return self._node_state

    @always_inline("nodebug")
    fn __str__(self) -> String:
        """Convert this node to a string.

        Returns:
            The name of this node.
        """
        return "WhitespaceNode"

    fn name(self, include_sig: Bool = False) -> String:
        """Get the name of this node.

        Args:
            include_sig: If True, includes signature information.

        Returns:
            The name of this node.
        """
        if include_sig:
            return (
                self.__name__
                + "("
                + String(self._indicies[])
                + ","
                + " n_tokens="
                + String(len(self._token_bundles[]))
                + ")"
            )
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) raises -> String:
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
            The scope level (0 for whitespace).
        """
        return default_scope_level(
            self._indicies[].c_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        """Get the scope offset of this node.

        Args:
            just_code: If True, only considers code elements.

        Returns:
            The scope offset (0 for whitespace).
        """
        return 0 if just_code else 0
