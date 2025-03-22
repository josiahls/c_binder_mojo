# Native Mojo Modules
from memory import ArcPointer, Pointer

# Third Party Mojo Modules
from firehose.logging import Logger

# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    NodeIndices,
    TokenBundles,
    NodeState,
    List,
    CTokens,
)
from c_binder_mojo.c_ast_nodes.tree import TreeInterface
from c_binder_mojo.c_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_scope_level,
    default_to_string,
    default_to_string_just_code,
)


struct WhitespaceEnum:
    alias BLANK = ""  # Tokenizer converts spaces to blanks
    alias SPACE = " "
    alias TAB = "\t"
    alias NEWLINE = "\n"
    alias CARRIAGE_RETURN = "\r"
    alias FORM_FEED = "\f"
    alias BACKSPACE = "\b"
    alias HORIZONTAL_TAB = "\x09"
    alias VERTICAL_TAB = "\x0B"

    @staticmethod
    fn is_whitespace(token: TokenBundle) -> Bool:
        if token.token == WhitespaceEnum.BLANK:
            return True
        if token.token == WhitespaceEnum.SPACE:
            return True
        if token.token == WhitespaceEnum.TAB:
            return True
        if token.token == WhitespaceEnum.NEWLINE:
            return True
        if token.token == WhitespaceEnum.CARRIAGE_RETURN:
            return True
        if token.token == WhitespaceEnum.FORM_FEED:
            return True
        if token.token == WhitespaceEnum.BACKSPACE:
            return True
        if token.token == WhitespaceEnum.HORIZONTAL_TAB:
            return True
        if token.token == WhitespaceEnum.VERTICAL_TAB:
            return True
        return False


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
    var _node_state: StringLiteral

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize a WhitespaceNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial whitespace token.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles[].append(token_bundle)
        self._node_state = (
            NodeState.COMPLETE
        )  # Whitespace is always immediately complete

    @staticmethod
    fn is_whitespace_token(token: TokenBundle) -> Bool:
        """Check if a character is a whitespace character.

        Args:
            ch: The character to check.

        Returns:
            True if the character is whitespace, False otherwise.
        """
        if token.token == "":
            return True

        if WhitespaceEnum.is_whitespace(token):
            return True
        return False

    @staticmethod
    fn accept(
        token: TokenBundle, tree_interface: TreeInterface, indices: NodeIndices
    ) -> Bool:
        """Accept a token and create a WhitespaceNode if appropriate.

        Args:
            token: The token to consider.
            tree_interface: Interface to the AST.
            indices: The indices for this node in the AST.

        Returns:
            True if this node can handle the token, False otherwise.
        """
        # Check if the token is whitespace (only spaces, tabs, newlines)
        return Self.is_whitespace_token(token)

    @staticmethod
    fn create(
        token: TokenBundle, tree_interface: TreeInterface, indices: NodeIndices
    ) -> Self:
        """Create a new WhitespaceNode.

        Args:
            token: The token to use for creation.
            tree_interface: Interface to the AST.
            indices: The indices for this node in the AST.

        Returns:
            A new WhitespaceNode instance.
        """
        return Self(indices, token)

    fn determine_state(
        mut self, token: TokenBundle, tree_interface: TreeInterface
    ) -> StringLiteral:
        """Determine the state of this node based on the current token.

        Args:
            token: The current token.
            tree_interface: Interface to the AST.

        Returns:
            The state of this node.
        """
        if Self.is_whitespace_token(token):
            self._node_state = NodeState.APPENDING
        else:
            self._node_state = NodeState.COMPLETE

        return self._node_state

    fn process(
        mut self,
        token: TokenBundle,
        node_state: StringLiteral,
        tree_interface: TreeInterface,
    ):
        """Process the token to update this node.

        Args:
            token: The token to process.
            node_state: The current state of the node.
            tree_interface: Interface to the AST.
        """
        # We already added the token in init, so no further processing needed
        if self._node_state == NodeState.APPENDING:
            self._token_bundles[].append(token)
        else:
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
                + "n_tokens="
                + String(len(self._token_bundles[]))
                + ")"
            )
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, tree_interface: TreeInterface
    ) -> String:
        """Convert this node to a string.

        Args:
            just_code: If True, only output code content (no metadata).
            tree_interface: Interface to the AST.

        Returns:
            String representation of this node.
        """
        if just_code:
            return default_to_string_just_code(AstNode(self), tree_interface)
        else:
            return default_to_string(AstNode(self), tree_interface)

    fn scope_level(self, just_code: Bool, tree_interface: TreeInterface) -> Int:
        """Get the scope level of this node.

        Args:
            just_code: If True, only considers code elements.
            tree_interface: Interface to the AST.

        Returns:
            The scope level (0 for whitespace).
        """
        return default_scope_level(
            self._indicies[].original_parent_idx, just_code, tree_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        """Get the scope offset of this node.

        Args:
            just_code: If True, only considers code elements.

        Returns:
            The scope offset (0 for whitespace).
        """
        return 0 if just_code else 0
