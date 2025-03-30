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
struct TypedefNode(NodeAstLike):
    """Represents a typedef declaration in C/C++ code.

    This node handles various forms of typedefs:
    1. Basic type typedefs:
        typedef unsigned int uint_t;
    2. Struct typedefs:
        typedef struct { ... } Point2D;
        typedef struct Rectangle_ Rectangle;
    3. Enum typedefs:
        typedef enum { ... } NodeState;
    4. Function pointer typedefs:
        typedef void (*callback_t)(int arg);

    The node tracks both the original type and the new type name.
    For struct/enum typedefs, the definition becomes a child node.
    """

    alias __name__ = "TypedefNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _type_name: String  # The new type name being defined
    var _row_num: Int  # Track rows in case of multi-line typedef

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize a TypedefNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial typedef token.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._row_num = token_bundle.row_num
        self._node_state = NodeState.INITIALIZING
        self._type_name = ""
        self._token_bundles[].append(token_bundle)

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if the token starts a typedef declaration.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts a typedef, False otherwise.
        """
        return token.token == CTokens.TYPE_DEF

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new TypedefNode.

        Args:
            token: The typedef token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new TypedefNode instance.
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

        # Check for struct/enum definitions that should become children
        if token.token == CTokens.CSTRUCT or token.token == CTokens.ENUM:
            self._node_state = NodeState.BUILDING_CHILDREN
            return TokenFlow.CREATE_CHILD

        if self._node_state == NodeState.BUILDING_CHILDREN:
            self._node_state = NodeState.COLLECTING_TAIL_TOKENS
        else:
            # Otherwise keep collecting tokens
            self._node_state = NodeState.COLLECTING_TOKENS
        return TokenFlow.CONSUME_TOKEN

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
        if token.token == CTokens.END_STATEMENT:
            if len(self._token_bundles_tail[]) > 0:
                self._type_name = self._token_bundles_tail[][-1].token
            self._node_state = NodeState.COMPLETED

        if self._node_state == NodeState.COLLECTING_TOKENS:
            self._token_bundles[].append(token)
        elif self._node_state == NodeState.COLLECTING_TAIL_TOKENS:
            self._token_bundles_tail[].append(token)

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
            if self._type_name != "":
                result += ", type='" + self._type_name + "'"
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
            The scope offset (0 for typedef nodes, which don't create scopes).
        """
        return 0  # typedef doesn't create a new scope

    fn get_type_name(self) -> String:
        """Get the name of the type being defined.

        Returns:
            The type name.
        """
        return self._type_name

    fn __str__(self) -> String:
        """Convert this node to a string representation.

        Returns:
            A string representation of this node.
        """
        return self.name(include_sig=True)
