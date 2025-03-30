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
    var _row_nums: List[Int]  # Track rows for multi-line enums

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize an EnumNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial 'enum' token.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._row_nums = List[Int]()
        self._row_nums.append(token_bundle.row_num)
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
        # Track line numbers for multi-line enums
        if token.row_num not in self._row_nums:
            self._row_nums.append(token.row_num)

        if self._node_state == NodeState.INITIALIZING:
            self._node_state = NodeState.COLLECTING_TOKENS

        if token.token == CTokens.SCOPE_BEGIN:
            self._node_state = NodeState.BUILDING_CHILDREN
            return TokenFlow.CREATE_CHILD

        if token.token == "":
            return TokenFlow.CONSUME_TOKEN

        if (
            len(self._token_bundles[]) == 2
            and token.token != CTokens.SCOPE_BEGIN
        ):
            # TODO(josiahls): Also need to check for white space.
            return TokenFlow.PASS_TO_PARENT

        if self._node_state == NodeState.COLLECTING_TOKENS:
            return TokenFlow.CONSUME_TOKEN

        # TODO(josiahls): We probably need a generic whitespace check function.
        # This is intendded as a last chance tail accumulation. The enum might not end in
        # a semicolon if its part of a typedef.
        if token.token == CTokens.END_STATEMENT or self.is_whitespace(token):
            self._node_state = NodeState.COLLECTING_TAIL_TOKENS
            return TokenFlow.CONSUME_TOKEN

        # Otherwise keep collecting tokens
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
            or token.token == "\n"
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
            if self._enum_name != "":
                result += ", name='" + self._enum_name + "'"
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
            The scope offset (0 for enum nodes, scope handled by ScopeNode child).
        """
        return (
            0 if just_code else 1
        )  # Enum nodes don't create scope, their ScopeNode child does

    fn get_enum_name(self) -> String:
        """Get the name of this enum.

        Returns:
            The enum name, or empty string if anonymous.
        """
        return self._enum_name
