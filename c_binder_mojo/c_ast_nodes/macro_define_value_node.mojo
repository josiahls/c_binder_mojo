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
)
from c_binder_mojo.c_ast_nodes import MacroDefineNode


@value
struct MacroDefineValueNode(NodeAstLike):
    """Represents a #define preprocessor directive in C/C++ code.

    This node handles both simple defines and function-like macros:
        Simple defines:
            #define FOO 42
            #define BAR
        Function-like macros:
            #define ADD(x, y) ((x) + (y))
            #define MAX(a, b) ((a) > (b) ? (a) : (b))
    """

    alias __name__ = "MacroDefineValueNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _is_function_like: Bool
    var _is_line_continuation: Bool

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize a MacroDefineValueNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial #define token.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._token_bundles[].append(token_bundle)
        self._is_function_like = False
        self._is_line_continuation = False

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
        return (
            module_interface.nodes()[][indices.c_parent_idx]
            .node[]
            .isa[MacroDefineNode]()
        )

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new MacroDefineValueNode.

        Args:
            token: The #define token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new MacroDefineValueNode instance.
        """
        return Self(indices, token)

    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if token.token == CTokens.LINE_CONTINUATION:
            self._is_line_continuation = True
        elif self._is_line_continuation and token.row_num not in self._row_nums:
            self._row_nums.append(token.row_num)
            self._is_line_continuation = False

        if token.is_newline():
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

        self._node_state = NodeState.COLLECTING_TOKENS
        return TokenFlow.CONSUME_TOKEN

    fn process(
        mut self,
        token: TokenBundle,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        """Process a token in this node."""
        if self._node_state == NodeState.COLLECTING_TOKENS:
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
            result += ", is_function_like=" + String(self._is_function_like)
            result += ")"
            return result
        else:
            return self.__name__

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface, parent_indent_level: Int = 0
    ) -> String:
        return default_to_string(AstNode(self), module_interface, just_code=just_code, indent_level=parent_indent_level)

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
