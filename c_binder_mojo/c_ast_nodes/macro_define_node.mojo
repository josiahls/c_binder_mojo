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
struct MacroDefineNode(NodeAstLike):
    """Represents a #define preprocessor directive in C/C++ code.

    This node handles both simple defines and function-like macros:
        Simple defines:
            #define FOO 42
            #define BAR
        Function-like macros:
            #define ADD(x, y) ((x) + (y))
            #define MAX(a, b) ((a) > (b) ? (a) : (b))
    """

    alias __name__ = "MacroDefineNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _macro_name: String

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize a MacroDefineNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial #define token.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._macro_name = ""
        self._token_bundles[].append(token_bundle)

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if the token is a #define directive.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts a #define directive, False otherwise.
        """
        return token.token == CTokens.MACRO_DEFINE

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new MacroDefineNode.

        Args:
            token: The #define token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new MacroDefineNode instance.
        """
        return Self(indices, token)

    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if len(self._token_bundles[]) == 0:
            return TokenFlow.INVALID + " len(self._token_bundles[]) == 0"

        if token.is_newline():
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

        if len(self._token_bundles[]) == 1:
            self._node_state = NodeState.COLLECTING_TOKENS
            return TokenFlow.CONSUME_TOKEN

        # After collecting #define and name, handle the value
        if len(self._token_bundles[]) >= 2:
            self._node_state = NodeState.BUILDING_CHILDREN
            return TokenFlow.CREATE_CHILD

        return TokenFlow.INVALID + " Unexpected token in MacroDefineNode"

    fn process(
        mut self,
        token: TokenBundle,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        """Process a token in this node."""
        if self._node_state == NodeState.COLLECTING_TOKENS:

            if len(self._token_bundles[]) == 1:
                self._macro_name = token.token
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

    @always_inline("nodebug")
    fn __str__(self) -> String:
        """Convert this node to a string."""
        return self.__name__

    fn name(self, include_sig: Bool = False) -> String:
        """Get the name of this node.

        Args:
            include_sig: If True, includes signature information.
        """
        if include_sig:
            var result = self.__name__ + "(" + String(self._indicies[])
            result += ", node_state=" + String(self._node_state)
            if self._macro_name != "":
                result += ", macro='" + self._macro_name + "'"
            result += ")"
            return result
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> String:
        """Convert this node to a string."""
        if just_code:
            return default_to_string_just_code(
                AstNode(self), module_interface, inline_children=True
            )
        else:
            return default_to_string(AstNode(self), module_interface)

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        """Get the scope level of this node."""
        return default_scope_level(
            self._indicies[].c_parent_idx, just_code, module_interface
        )

    fn scope_offset(self, just_code: Bool) -> Int:
        """Get the scope offset of this node."""
        return 1  # #define doesn't create a new scope

    fn get_macro_name(self) -> String:
        """Get the name of the macro being defined."""
        return self._macro_name
