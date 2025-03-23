# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant

# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    NodeIndices,
    TokenBundles,
    NodeState,
    CTokens,
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
struct MacroIfNDefNode(NodeAstLike):
    """Represents a #ifndef preprocessor directive in C/C++ code.

    This node handles the parsing and representation of the #ifndef directive,
    which is commonly used for header guards and conditional compilation.
    The node tracks the macro name being tested and all content until the matching #endif.

    This node is expected to be 2 tokens in length.
    The first token is the #ifndef directive.
    The second token is the macro name.
    """

    alias __name__ = "MacroIfNDefNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: StringLiteral
    var _macro_name: String
    var _row_num: Int
    var _is_complete: Bool

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize a MacroIfNDefNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial #ifndef token.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._row_num = token_bundle.row_num
        self._token_bundles[].append(token_bundle)
        self._node_state = NodeState.NODE_INIT
        self._macro_name = ""
        self._is_complete = False

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if the token is a #ifndef directive.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts a #ifndef directive, False otherwise.
        """
        return token.token == CTokens.MACRO_IFNDEF

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new MacroIfNDefNode.

        Args:
            token: The #ifndef token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new MacroIfNDefNode instance.
        """
        return Self(indices, token)

    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> StringLiteral:
        """Determine the state of this node based on the current token.

        This method handles the state transitions for parsing the #ifndef directive:
        1. NODE_INIT: Will already have the macro name token per the accept and create methods.
        2. NODE_INIT -> APPENDING: Imeediate transition. Only lasts for 1 token which will be the macro name.
        3. APPENDING -> WANTING_CHILD: After the macro name token.
        4. WANTING_CHILD -> WANTING_CHILD/COMPLETE: Process content until matching #endif

        Args:
            token: The current token.
            module_interface: Interface to the AST.

        Returns:
            The state of this node.
        """
        # Don't check is_complete first - we need to handle the token first
        # if self._is_complete:
        #     self._node_state = NodeState.COMPLETE

        if self._node_state == NodeState.NODE_INIT:
            if len(self._token_bundles[]) == 1:
                self._node_state = NodeState.APPENDING
            else:
                return NodeState.INVALID_STATE
        elif self._node_state == NodeState.APPENDING:
            if len(self._token_bundles[]) == 2:
                self._node_state = NodeState.WANTING_CHILD
            elif len(self._token_bundles[]) == 1:
                self._node_state = NodeState.APPENDING
            else:
                return NodeState.INVALID_STATE
        elif self._node_state == NodeState.APPENDING_TAIL:
            # Do not immediately transition to COMPLETE
            # Stay in APPENDING_TAIL until we've processed the token
            pass
        elif self._node_state == NodeState.WANTING_CHILD:
            if token.token == CTokens.MACRO_ENDIF:
                # This is the #endif token for THIS ifndef node
                # Transition to APPENDING_TAIL to collect the token
                self._node_state = NodeState.APPENDING_TAIL

        # Check is_complete at the end to ensure we process the token first
        # This ensures we handle the #endif token correctly before completing
        if self._is_complete:
            self._node_state = NodeState.COMPLETE

        return self._node_state

    fn process(
        mut self,
        token: TokenBundle,
        node_state: StringLiteral,
        module_interface: ModuleInterface,
    ):
        """Process a token in this node.

        Collects tokens that are part of this #ifndef directive.

        Args:
            token: The token to process.
            node_state: The current state of the node.
            module_interface: Interface to the AST.
        """
        if node_state == NodeState.COMPLETE:
            pass
        elif node_state == NodeState.APPENDING_TAIL:
            # Add the token to the tail and mark as complete AFTER processing
            self._token_bundles_tail[].append(token)
            # Only mark as complete if this is actually our #endif
            if token.token == CTokens.MACRO_ENDIF:
                self._is_complete = True
        elif node_state == NodeState.APPENDING:
            if len(self._token_bundles[]) == 1:
                self._macro_name = token.token
            self._token_bundles[].append(token)

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
            An empty list as this node doesn't have a separate tail.
        """
        return self._token_bundles_tail[]

    @always_inline("nodebug")
    fn __str__(self) -> String:
        """Convert this node to a string.

        Returns:
            The name of this node.
        """
        return "MacroIfNDefNode"

    fn name(self, include_sig: Bool = False) -> String:
        """Get the name of this node.

        Args:
            include_sig: If True, includes signature information.

        Returns:
            The name of this node.
        """
        if include_sig:
            var result = self.__name__ + "(" + String(self._indicies[])
            if self._macro_name != "":
                result += ", macro='" + self._macro_name + "'"
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
            self._indicies[].original_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        """Get the scope offset of this node.

        Args:
            just_code: If True, only considers code elements.

        Returns:
            The scope offset (1 for ifndef nodes, which create their own scopes).
        """
        return 1 if just_code else 1  # #ifndef adds a level of scope

    fn get_macro_name(self) -> String:
        """Get the name of the macro being tested by this #ifndef.

        Returns:
            The macro name.
        """
        return self._macro_name
