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
struct MacroElIfDefNode(NodeAstLike):
    """Represents a #ifdef preprocessor directive in C/C++ code.

    This node handles the parsing and representation of the #ifndef directive,
    which is commonly used for header guards and conditional compilation.
    The node tracks the macro name being tested and all content until the matching #endif.

    This node is expected to be 2 tokens in length.
    The first token is the #ifndef directive.
    The second token is the macro name.
    """

    alias __name__ = "MacroElIfDefNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _macro_name: String
    var _row_num: Int

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize a MacroElIfDefNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial #elif token.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._row_num = token_bundle.row_num
        self._token_bundles[].append(token_bundle)
        self._node_state = NodeState.INITIALIZING
        self._macro_name = ""

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if the token is a #elif directive.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts a #elif directive, False otherwise.
        """
        return token.token == CTokens.MACRO_ELIF

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new MacroElIfDefNode.

        Args:
            token: The #elif token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new MacroElIfDefNode instance.
        """
        return Self(indices, token)

    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if len(self._token_bundles[]) == 0:
            return TokenFlow.INVALID + " len(self._token_bundles[]) == 0"

        if len(self._token_bundles[]) >= 1:
            if token.token == CTokens.MACRO_ELIF:
                return TokenFlow.PASS_TO_PARENT
            if token.token == CTokens.MACRO_ELSE:
                return TokenFlow.PASS_TO_PARENT
            if token.token == CTokens.MACRO_ENDIF:
                return TokenFlow.PASS_TO_PARENT

        if len(self._token_bundles[]) == 1:
            self._node_state = NodeState.BUILDING_CHILDREN
            return TokenFlow.CREATE_CHILD

        if len(self._token_bundles[]) == 2:
            # Elif will be a child of either ifdef or ifndef, so we pass this token
            # to the parent node to handle.
            if token.token == CTokens.MACRO_ENDIF:
                self._node_state = NodeState.COMPLETED
                return TokenFlow.PASS_TO_PARENT

            if self._node_state == NodeState.COLLECTING_TOKENS:
                self._node_state = NodeState.BUILDING_CHILDREN
                return TokenFlow.CREATE_CHILD

            if self._node_state == NodeState.BUILDING_CHILDREN:
                return TokenFlow.CREATE_CHILD

            return (
                TokenFlow.INVALID
                + " len(self._token_bundles[]) == 2 but not in"
                " COLLECTING_TOKENS state, nor a MACRO_ENDIF token"
            )

        return TokenFlow.INVALID + " len(self._token_bundles[]) != 0 or 1 or 2"

    fn process(
        mut self,
        token: TokenBundle,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        """Process a token in this node."""
        if self._node_state == NodeState.BUILDING_CHILDREN:
            pass
        elif self._node_state == NodeState.COLLECTING_TAIL_TOKENS:
            self._token_bundles_tail[].append(token)

        if token_flow == TokenFlow.PASS_TO_PARENT:
            self._node_state = NodeState.COMPLETED

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

    fn node_state(self) -> MessageableEnum:
        """Get the state of this node.

        Returns:
            The state of this node.
        """
        return self._node_state

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        """Get a pointer to the token bundles for this node.

        Returns:
            Pointer to the token bundles.
        """
        return self._token_bundles

    fn token_bundles_tail(self) -> TokenBundles:
        """Get the token bundles for the tail part of this node.

        Returns:
            An empty list as this node doesn't have a separate tail.
        """
        return self._token_bundles_tail[]

    @always_inline("nodebug")
    fn __str__(self) -> String:
        """Convert this node to a string.

        Returns:
            The name of this node.
        """
        return self.__name__

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
            The scope offset (1 for ifndef nodes, which create their own scopes).
        """
        return 1 if just_code else 1  # #ifndef adds a level of scope

