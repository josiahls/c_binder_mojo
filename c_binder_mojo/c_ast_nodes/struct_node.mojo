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
struct StructNode(NodeAstLike):
    """Represents a struct declaration in C/C++ code.

    This node handles parsing and representation of struct declarations:
        struct Point { int x; int y; };
        struct Person { char* name; int age; };

    The node tracks:
    - The struct name
    - The scope of the struct (handled by ScopeNode child)
    - Comments and formatting
    """

    alias __name__ = "StructNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _token_bundles_tail: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _struct_name: String
    var _row_nums: List[Int]  # Track rows for multi-line structs
    var _is_in_typedef: Bool
    var _is_nested_struct: Bool  # Whether this is a nested struct inside a field declaration

    fn __init__(
        out self,
        indicies: NodeIndices,
        token_bundle: TokenBundle,
        is_in_typedef: Bool = False,
        is_nested_struct: Bool = False,
    ):
        """Initialize a StructNode.

        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial 'struct' token.
            is_in_typedef: Whether this struct is part of a typedef.
            is_nested_struct: Whether this is a nested struct inside a field declaration.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles_tail = TokenBundles()
        self._row_nums = List[Int]()
        self._row_nums.append(token_bundle.row_num)
        self._node_state = NodeState.INITIALIZING
        self._struct_name = ""
        if is_nested_struct:
            # The token `struct` is going to be consumed by the struct field node,
            # so we need to re-add it here.
            self._token_bundles[].append(TokenBundle("struct", token_bundle.row_num, 0))
        self._token_bundles[].append(token_bundle)
        self._is_in_typedef = is_in_typedef
        self._is_nested_struct = is_nested_struct

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if this token starts a struct declaration.

        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            True if this token starts a struct declaration, False otherwise.
        """
        # If we're inside a struct field node, we should not accept this as a new struct
        # It will be handled by the containing struct field node
        if indices.c_parent_idx >= 0:
            var parent = module_interface.nodes()[][indices.c_parent_idx]
            # Handle the case where this struct is nested inside a struct field
            if parent.name() == "StructFieldNode":
                return True

        if token.token != CTokens.CSTRUCT:
            return False
            
        return True

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new StructNode.

        Args:
            token: The struct token.
            module_interface: Interface to the AST.
            indices: The indices for this node.

        Returns:
            A new StructNode instance.
        """
        var is_in_typedef = False
        var is_nested_struct = False

        if (
            module_interface.nodes()[][indices.c_parent_idx].name()
            == "TypedefNode"
        ):
            is_in_typedef = True
            
        # Check if this is a nested struct (inside a struct field)
        if (
            module_interface.nodes()[][indices.c_parent_idx].name()
            == "StructFieldNode"
        ):
            is_nested_struct = True

        return Self(indices, token, is_in_typedef, is_nested_struct)

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
        # Track line numbers for multi-line structs
        if token.row_num not in self._row_nums:
            self._row_nums.append(token.row_num)

        if self._node_state == NodeState.INITIALIZING:
            self._node_state = NodeState.COLLECTING_TOKENS

        if token.token == CTokens.SCOPE_BEGIN:
            self._node_state = NodeState.BUILDING_CHILDREN
            return TokenFlow.CREATE_CHILD

        if (
            len(self._token_bundles[]) >= 2
            and token.token != CTokens.SCOPE_BEGIN
        ):
            if self.is_whitespace(token):
                self._node_state = NodeState.COLLECTING_TOKENS
                return TokenFlow.CONSUME_TOKEN
            elif token.token == CTokens.END_STATEMENT:
                self._node_state = NodeState.COLLECTING_TAIL_TOKENS
                return TokenFlow.CONSUME_TOKEN
            else:
                self._node_state = NodeState.COMPLETED
                return TokenFlow.PASS_TO_PARENT

        if self._node_state == NodeState.COLLECTING_TOKENS:
            return TokenFlow.CONSUME_TOKEN

        # Handle end of struct declaration
        if token.token == CTokens.END_STATEMENT or self.is_whitespace(token):
            self._node_state = NodeState.COLLECTING_TAIL_TOKENS
            return TokenFlow.CONSUME_TOKEN

        self._node_state = NodeState.COMPLETED
        return TokenFlow.PASS_TO_PARENT

    fn _update_struct_field_node_type(mut self, module_interface: ModuleInterface):
        """Update the type of the struct field node.
        
        Args:
            module_interface: Interface to the AST.
        """
        var parent = module_interface.nodes()[][self._indicies[].c_parent_idx]
        if parent.name() == "StructFieldNode":
            parent.node[][StructFieldNode]._field_type = self._struct_name

    fn is_whitespace(self, token: TokenBundle) -> Bool:
        """Check if a token is whitespace.

        Args:
            token: The token to check.

        Returns:
            True if the token is whitespace, False otherwise.
        """
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
                self._struct_name = token.token
            elif self._is_nested_struct and len(self._token_bundles[]) == 2:
                self._struct_name = self._token_bundles[][-1].token
                self._update_struct_field_node_type(module_interface)
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
            if self._struct_name != "":
                result += ", name='" + self._struct_name + "'"
            if self._is_nested_struct:
                result += ", nested=true"
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
            The scope offset (0 for struct nodes, scope handled by ScopeNode child).
        """
        return (
            0 if just_code else 1
        )  # Struct nodes don't create scope, their ScopeNode child does

    fn get_struct_name(self) -> String:
        """Get the name of this struct.

        Returns:
            The struct name, or empty string if anonymous.
        """
        return self._struct_name
    
    fn is_nested(self) -> Bool:
        """Check if this is a nested struct.
        
        Returns:
            True if this struct is nested inside a field declaration.
        """
        return self._is_nested_struct
