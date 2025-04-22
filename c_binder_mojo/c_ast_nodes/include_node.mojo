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
struct IncludeNode(NodeAstLike):
    """Represents a C include directive.

    Examples:
        #include <stdio.h>      # System include
        #include "myheader.h"   # Local include
    """

    alias __name__ = "IncludeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _include_path: String
    var _is_system_include: Bool

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize an IncludeNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial token (#include).
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._include_path = ""
        self._is_system_include = False
        self._token_bundles[].append(token_bundle)

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if this token starts an include directive.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts an include, False otherwise.
        """
        return token.token == "#include"

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new IncludeNode.

        Args:
            token: The initial token (#include).
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new IncludeNode instance.
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

        # Track line numbers for multi-line includes (shouldn't happen but just in case)
        if token.is_newline():
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

        if self._node_state == NodeState.INITIALIZING:
            self._node_state = NodeState.COLLECTING_TOKENS

        # Skip whitespace
        if token.token == " " or token.token == "\t":
            return TokenFlow.CONSUME_TOKEN

        # Handle system include start
        if token.token == "<" or token.token.startswith("<"):
            self._is_system_include = True
            return TokenFlow.CONSUME_TOKEN

        # Handle local include start
        if (
            token.token == '"' or token.token.startswith('"')
        ) and not self._is_system_include:
            self._is_system_include = False
            return TokenFlow.CONSUME_TOKEN

        # Handle include end
        if token.token == ">" or token.token == '"':
            self._node_state = NodeState.COMPLETED
            return TokenFlow.CONSUME_TOKEN

        # Handle newline - ends the include
        if token.token == "#include":
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

        # Handle comments - pass to parent
        if token.token.startswith("//") or token.token.startswith("/*"):
            return TokenFlow.PASS_TO_PARENT

        # Collect path
        if self._node_state == NodeState.COLLECTING_TOKENS:
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
        if token_flow == TokenFlow.CONSUME_TOKEN:
            if (
                token.token != "#include" and token.token != ""
            ):  # Skip the #include token
                self._include_path += (
                    token.token.replace('"', "")
                    .replace("<", "")
                    .replace(">", "")
                )
            self._token_bundles[].append(token)

        if token_flow == TokenFlow.PASS_TO_PARENT:
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
            result += ", path='" + self._include_path + "'"
            result += ", system=" + String(self._is_system_include)
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
            The scope offset (0 for includes, which don't create scope).
        """
        return 0  # Includes don't create scope

    fn is_system_include(self) -> Bool:
        """Check if this is a system include (<...>).

        Returns:
            True if this is a system include, False if it's a local include.
        """
        return self._is_system_include

    fn get_include_path(self) -> String:
        """Get the path being included.

        Returns:
            The include path without <> or "" delimiters.
        """
        return self._include_path
