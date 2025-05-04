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
struct EnumNode(NodeAstLike):
    """Represents an enum declaration in C/C++ code.

    This node handles parsing and representation of enum declarations:
        enum Color { RED = 0, GREEN = 1, BLUE = 2 };
        enum Direction { NORTH, SOUTH, EAST, WEST };

    The node tracks:
    - The enum name
    - The scope of the enum (handled by ScopeNode child)
    - Comments and formatting
    """

    alias __name__ = "EnumNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _enum_name: String

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize an EnumNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial 'enum' token.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._node_state = NodeState.INITIALIZING
        self._enum_name = ""
        self._token_bundles[].append(token_bundle)

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if this token starts an enum declaration.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts an enum declaration, False otherwise.
        """
        return token.token == CTokens.ENUM

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new EnumNode.

        Args:
            token: The enum token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new EnumNode instance.
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
        if self._node_state == NodeState.INITIALIZING:
            self._node_state = NodeState.COLLECTING_TOKENS

        if token.token == CTokens.SCOPE_BEGIN:
            self._node_state = NodeState.BUILDING_CHILDREN
            return TokenFlow.CREATE_CHILD

        if WhitespaceEnum.is_whitespace(token):
            return TokenFlow.CONSUME_TOKEN

        # TODO(josiahls): We probably need a generic whitespace check function.
        # This is intendded as a last chance tail accumulation. The enum might not end in
        # a semicolon if its part of a typedef.
        if token.token == CTokens.END_STATEMENT or self.is_whitespace(token):
            self._node_state = NodeState.COLLECTING_TAIL_TOKENS
            return TokenFlow.CONSUME_TOKEN

        if (
            len(self._token_bundles[]) == 2
            and token.token != CTokens.SCOPE_BEGIN
        ):
            # TODO(josiahls): Also need to check for white space.
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

        if self._node_state == NodeState.COLLECTING_TOKENS:
            return TokenFlow.CONSUME_TOKEN



        # Otherwise keep collecting tokens
        self._node_state = NodeState.COMPLETED
        return TokenFlow.PASS_TO_PARENT

    fn is_whitespace(self, token: TokenBundle) -> Bool:
        """Check if a token is whitespace.

        Args:
            token: The token to check.

        Returns:
            True if the token is whitespace, False otherwise.
        """
        # TODO(josiahls): This hacky and should be a generic function.
        return (
            token.token == " "
            or token.token == "\t"
            or token.token == C_BINDER_MOJO_NEWLINE
            or token.token == ""
        )

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
        if self._node_state == NodeState.COLLECTING_TOKENS:
            if len(self._token_bundles[]) == 1:
                self._enum_name = token.token
            if not token.is_whitespace():
                self._token_bundles[].append(token)
        elif self._node_state == NodeState.COLLECTING_TAIL_TOKENS:
            self._token_bundles_tail[].append(token)

        if token.token == CTokens.END_STATEMENT:
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

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        """Get a pointer to the token bundles for this node."""
        return self._token_bundles

    fn token_bundles_tail(self) -> TokenBundles:
        """Get the tail token bundles for this node."""
        return self._token_bundles_tail[]

    fn node_state(self) -> MessageableEnum:
        """Get the current state of this node."""
        return self._node_state

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
            if self._enum_name != "":
                result += ", name='" + self._enum_name + "'"
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
            newline_after_tail=True
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
            The scope offset of this node (always 0 for EnumNode).
        """
        return 0  # Enum adds no levels of scope

    fn get_enum_name(self) -> String:
        """Get the name of this enum.

        Returns:
            The enum name, or empty string if anonymous.
        """
        return self._enum_name
