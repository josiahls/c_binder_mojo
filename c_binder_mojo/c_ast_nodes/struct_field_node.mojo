from memory import ArcPointer

from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant

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
from c_binder_mojo.c_ast_nodes.scope_node import ScopeNode


@value
struct StructFieldNode(NodeAstLike):
    """Represents a field in a struct definition.

    Examples:
        int x;                    # Basic field
        char* name;              # Pointer field
        struct Inner {           # Inner struct
            double data;
        } nested;
        unsigned int a : 1;      # Bit field
    """

    alias __name__ = "StructFieldNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _field_name: String
    var _field_type: String
    var _is_inner_struct: Bool
    var _is_bit_field: Bool
    var _bit_width: String
    var _row_nums: List[Int]

    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize a StructFieldNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial token (type name).
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._row_nums = List[Int]()
        self._row_nums.append(token_bundle.row_num)
        self._node_state = NodeState.INITIALIZING
        self._field_type = token_bundle.token
        self._field_name = ""
        self._is_inner_struct = token_bundle.token == "struct"
        self._is_bit_field = False
        self._bit_width = ""
        self._token_bundles[].append(token_bundle)

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if this token starts a struct field.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts a struct field, False otherwise.
        """
        # Check if we're in a struct scope
        if indices.c_parent_idx < 0:
            return False

        var parent = module_interface.nodes()[][indices.c_parent_idx]
        if parent.name() != "ScopeNode":
            return False

        # Check if the parent's parent is a StructNode
        if parent.node[][ScopeNode]._parent_type != "StructNode":
            return False

        # Accept if it's a type name or struct keyword
        return True

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new StructFieldNode.

        Args:
            token: The type name token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new StructFieldNode instance.
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

        # Track line numbers for multi-line fields
        if token.row_num not in self._row_nums:
            self._row_nums.append(token.row_num)

        if token.token == CTokens.SCOPE_END:
            self._node_state = NodeState.COMPLETED
            return TokenFlow.PASS_TO_PARENT

        if self._node_state == NodeState.INITIALIZING:
            self._node_state = NodeState.COLLECTING_TOKENS

        # Handle bit field width
        if token.token == ":":
            self._is_bit_field = True
            return TokenFlow.CONSUME_TOKEN

        # Handle field termination
        if token.token == ";":
            self._node_state = NodeState.COMPLETED
            return TokenFlow.CONSUME_TOKEN

        # For inner structs, we need to create a new scope
        if self._is_inner_struct and token.token == "{":
            return TokenFlow.CREATE_CHILD

        # Collect tokens for bit field width
        if self._is_bit_field and self._bit_width == "":
            if token.token != " " and token.token != "\t":
                self._bit_width = token.token
            return TokenFlow.CONSUME_TOKEN

        # Skip whitespace and comments
        if (
            token.token == " "
            or token.token == "\t"
            or token.token == "\n"
            or token.token == ""
        ):
            return TokenFlow.CONSUME_TOKEN

        # Collect the field name (last identifier before semicolon or bit field)
        if not self._is_bit_field and token.token != "*" and token.token != "&":
            self._field_name = token.token

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
            result += ", field_type='" + self._field_type + "'"
            result += ", field_name='" + self._field_name + "'"
            if self._is_bit_field:
                result += ", bit_width='" + self._bit_width + "'"
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
            The scope offset (0 for struct fields, which don't create scope).
        """
        return 0  # Struct fields don't create their own scope level

    fn get_field_name(self) -> String:
        """Get the name of this struct field.

        Returns:
            The field name.
        """
        return self._field_name

    fn get_field_type(self) -> String:
        """Get the type of this struct field.

        Returns:
            The field type.
        """
        return self._field_type
