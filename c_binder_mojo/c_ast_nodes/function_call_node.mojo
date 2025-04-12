# Native Mojo Modules
from memory import ArcPointer
from collections import List

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant

# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    MessageableEnum,
    NodeIndices,
    TokenBundles,
    TokenFlow,
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
struct FunctionCallNode(NodeAstLike):
    """Represents a function call in C code.
    
    This node handles both built-in functions (like defined()) and custom functions.
    It tracks:
    - Function name
    - Arguments passed to the function
    - Return type (if available)
    - Whether it's a built-in function
    
    The node expects the following token sequence:
    1. Function name
    2. Opening parenthesis
    3. Arguments (optional)
    4. Closing parenthesis
    """
    
    alias __name__ = "FunctionCallNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]
    var _node_state: MessageableEnum
    var _function_name: String
    var _is_builtin: Bool
    var _args: List[String]  # Store argument tokens
    var _return_type: String

    alias _builtin_functions = VariadicList[StringLiteral]("defined", "sizeof", "__alignof__")
    
    # Built-in function registry
    # var _builtin_functions: List[String]
    
    fn __init__(out self, indicies: NodeIndices, token_bundle: TokenBundle):
        """Initialize a FunctionCallNode.
        
        Args:
            indicies: The indices for this node in the AST.
            token_bundle: The initial token containing the function name.
        """
        self._indicies = indicies
        self._token_bundles = TokenBundles()
        self._token_bundles[].append(token_bundle)
        self._node_state = NodeState.INITIALIZING
        self._function_name = token_bundle.token
        self._args = List[String]()
        self._return_type = ""  # Will be populated if available
        
        # Initialize built-in functions
        # self._builtin_functions = List[String](capacity=3)
        # self._builtin_functions.append("defined")
        # self._builtin_functions.append("sizeof")
        # self._builtin_functions.append("__alignof__")
        
        # Check if this is a built-in function
        self._is_builtin = False
        for i in range(len(self._builtin_functions)):
            if self._function_name == self._builtin_functions[i]:
                self._is_builtin = True
                break
    
    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        """Check if this token starts a function call.
        
        We accept a token if:
        1. It's a built-in function name, or
        2. It's in our custom function registry, or
        3. It's followed by an opening parenthesis
        
        Args:
            token: The token to check.
            module_interface: Interface to the AST.
            indices: The indices for this node.
            
        Returns:
            True if this token starts a function call.
        """
        for function_name in Self._builtin_functions:
            if token.token == function_name:
                return True
        return False
    
    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """Create a new FunctionCallNode.
        
        Args:
            token: The token containing the function name.
            module_interface: Interface to the AST.
            indices: The indices for this node.
            
        Returns:
            A new FunctionCallNode instance.
        """
        return Self(indices, token)
    
    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> MessageableEnum:
        """Determine how to handle the next token.
        
        The state machine works as follows:
        1. After function name, expect opening parenthesis
        2. After opening parenthesis, collect arguments until closing parenthesis
        3. After closing parenthesis, complete the node
        
        Args:
            token: The current token.
            module_interface: Interface to the AST.
            
        Returns:
            The token flow decision.
        """
        print("Determine token flow for function call node: " + self._function_name + " with token: " + token.token)
        if self._node_state == NodeState.COMPLETED:
            return TokenFlow.PASS_TO_PARENT

        if len(self._token_bundles[]) == 1:  # After function name
            if token.token == "(":
                return TokenFlow.CONSUME_TOKEN
            return TokenFlow.INVALID + " Expected opening parenthesis"
            
        if len(self._token_bundles[]) == 2:  # After opening parenthesis
            if token.token == ")":  # No arguments
                return TokenFlow.CONSUME_TOKEN
            return TokenFlow.CONSUME_TOKEN  # Start collecting arguments
            
        # Collecting arguments
        if token.token == ")":
            return TokenFlow.CONSUME_TOKEN
        elif token.token == ",":
            return TokenFlow.CONSUME_TOKEN
        else:
            return TokenFlow.CONSUME_TOKEN
    
    fn process(
        mut self,
        token: TokenBundle,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        """Process the current token.
        
        This method:
        1. Tracks the state of argument collection
        2. Stores arguments as they are processed
        3. Updates node state
        
        Args:
            token: The current token.
            token_flow: The token flow decision.
            module_interface: Interface to the AST.
        """
        if token_flow == TokenFlow.CONSUME_TOKEN:
            self._token_bundles[].append(token)
            
            # If we're collecting arguments (after opening parenthesis)
            if len(self._token_bundles[]) > 2:
                if token.token != "(" and token.token != ")" and token.token != ",":
                    self._args.append(token.token)
                    
            # Check if we're done (found closing parenthesis)
            if token.token == ")":
                self._node_state = NodeState.COMPLETED

        if token_flow == TokenFlow.PASS_TO_PARENT:
            # TODO: Check if this is part of if statement or elif
            pass
    
    fn indicies(self) -> NodeIndices:
        return self._indicies[]
    
    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies
    
    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles[]
    
    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        return self._token_bundles
    
    fn token_bundles_tail(self) -> TokenBundles:
        return TokenBundles()
    
    fn node_state(self) -> MessageableEnum:
        return self._node_state
    
    @always_inline("nodebug")
    fn __str__(self) -> String:
        return self.__name__
    
    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            var result = self.__name__ + "(" + String(self._indicies[])
            result += ", function='" + self._function_name + "'"
            if self._is_builtin:
                result += " (builtin)"
            if len(self._args) > 0:
                result += ", args=["
                for i in range(len(self._args)):
                    if i > 0:
                        result += ", "
                    result += "'" + self._args[i] + "'"
                result += "]"
            result += ")"
            return result
        else:
            return self.__name__
    
    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> String:
        if just_code:
            return default_to_string_just_code(AstNode(self), module_interface)
        else:
            return default_to_string(AstNode(self), module_interface)
    
    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        return default_scope_level(
            self._indicies[].c_parent_idx, just_code, module_interface
        )
    
    fn scope_offset(self, just_code: Bool) -> Int:
        return 0  # Function calls don't create a new scope
        
    fn get_function_name(self) -> String:
        """Get the name of the function being called.
        
        Returns:
            The function name.
        """
        return self._function_name
        
    fn get_args(self) -> List[String]:
        """Get the arguments passed to the function.
        
        Returns:
            List of argument tokens.
        """
        return self._args
        
    fn is_builtin(self) -> Bool:
        """Check if this is a built-in function.
        
        Returns:
            True if this is a built-in function.
        """
        return self._is_builtin
        
    fn get_return_type(self) -> String:
        """Get the return type of the function if available.
        
        Returns:
            The return type or empty string if not available.
        """
        return self._return_type 