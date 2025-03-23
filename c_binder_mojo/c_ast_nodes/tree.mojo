"""Tree-based AST representation and traversal utilities for C code.

This module provides the core functionality for building and traversing abstract syntax trees
from tokenized C code. It implements a state-machine based approach to tree construction
and provides interfaces for node manipulation.
"""

# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant

# First Party Modules
from c_binder_mojo.common import TokenBundle, NodeIndices, NodeState, TokenFlow
from c_binder_mojo.c_ast_nodes.nodes import AstNode, NodeAstLike


@value
struct TreeInterface:
    """Interface for interacting with the AST.

    This struct provides methods for accessing and modifying the AST nodes and tokens.
    It serves as a facade for tree operations, abstracting the underlying storage.

    Attributes:
        _nodes: Reference-counted pointer to the list of AST nodes.
        _tokens: Reference-counted pointer to the list of tokens.
        node_state: Current state of node processing.
    """

    var _nodes: ArcPointer[List[AstNode]]
    var _tokens: ArcPointer[List[TokenBundle]]

    fn nodes(self) -> ArcPointer[List[AstNode]]:
        """Get the list of AST nodes.

        Returns:
            Reference-counted pointer to the list of AST nodes.
        """
        return self._nodes

    fn tokens(self) -> ArcPointer[List[TokenBundle]]:
        """Get the list of tokens.

        Returns:
            Reference-counted pointer to the list of tokens.
        """
        return self._tokens

    fn insert_node(mut self, owned node: AstNode) -> Int:
        """Insert a new node into the AST.

        Args:
            node: The node to insert.

        Returns:
            The index of the newly inserted node.
        """
        new_idx = len(self._nodes[])
        node.indicies_ptr()[].original_current_idx = new_idx
        self._nodes[].append(node)
        return new_idx

    fn n_parents(self, current_idx: Int, count_limit: Int = 100) raises -> Int:
        """Get the number of parents of the current node.

        Returns:
            The number of parents of the current node.
        """
        parent_idx = -1
        _current_idx = current_idx
        started = False
        count = 0
        while parent_idx != -1 or not started:
            parent_idx = (
                self._nodes[][_current_idx].indicies().original_parent_idx
            )
            if parent_idx != -1:
                count += 1
            started = True
            _current_idx = parent_idx
            if count > count_limit:
                raise Error(
                    "n_parents count limit reached: "
                    + String(count_limit)
                    + " for node: "
                    + String(self._nodes[][_current_idx])
                    + " with parent_idx: "
                    + String(parent_idx)
                )
        return count


fn get_node_path(nodes: ArcPointer[List[AstNode]], current_idx: Int) -> String:
    """Build a path string showing the hierarchy from root to current node.

    Args:
        nodes: The list of AST nodes
        current_idx: Current node index

    Returns:
        String like "Root -> Function -> Block -> Statement"
    """
    var path = List[String]()
    var idx = current_idx
    var count = 0  # Prevent infinite loops

    while idx >= 0 and count < 100:
        path.append(nodes[][idx].name())
        idx = nodes[][idx].indicies().original_parent_idx
        count += 1

    # Build path string from root to current (reverse order)
    var result = String()
    for i in range(len(path) - 1, -1, -1):
        if i < len(path) - 1:
            result += " -> "
        result += path[i]

    return result


fn log_state_transition(
    mut logger: Logger,
    token: TokenBundle,
    current_node: AstNode,  # Renamed parameter to avoid shadowing
    tree_interface: TreeInterface,
    node_state: StringLiteral,
    prev_state: StringLiteral = "",
    recursion_depth: Int = 0,
) raises:
    """Log a state transition with enhanced context.

    Args:
        logger: Logger instance.
        token: Current token.
        current_node: Current node.
        tree_interface: Tree interface.
        node_state: New state.
        prev_state: Previous state.
        recursion_depth: Current depth of get_current_node recursion.
    """
    # Format the transition string with fixed width
    var transition_str = String()
    if prev_state == "" or prev_state == node_state:
        transition_str = String(node_state)
    else:
        if prev_state == TokenFlow.PASS_TO_PARENT:
            transition_str = String(node_state) + " <- " + String(prev_state)
        else:
            transition_str = String(prev_state) + " -> " + String(node_state)

    # Use dashes for padding to distinguish from indentation
    var max_width = 25
    var padding = String()
    var padding_length = max_width - len(transition_str)
    for i in range(padding_length):
        if padding_length > 0:
            if i == 0:
                padding += "|"
            elif i == padding_length - 1:
                padding += "|"
            else:
                padding += "-"
    transition_str += padding + " "

    # Get node path using a constant path length
    var path = get_node_path(
        tree_interface.nodes(), current_node.indicies().original_current_idx
    )

    # Build indentation based on parent count
    var n_parents = tree_interface.n_parents(
        current_node.indicies().original_current_idx
    )
    var indent = String()
    for i in range(n_parents):
        indent += "\t"

    # Format node info
    var node_info = current_node.name(include_sig=True)

    # Build the full log message with sections
    var msg = String()
    msg += "[Depth:" + String(recursion_depth) + "] "
    msg += transition_str
    msg += indent
    msg += node_info
    msg += "\n    └─ Path: " + path
    msg += (
        "\n    └─ Current Token: '"
        + token.token
        + "' at ["
        + String(token.row_num)
        + ":"
        + String(token.col_num)
        + "]"
    )

    # Add active nodes count
    var active_count = 0
    var complete_count = 0
    for i in range(len(tree_interface.nodes()[])):
        if (
            tree_interface.nodes()[][i].determine_state(token, tree_interface)
            == TokenFlow.PASS_TO_PARENT
        ):
            complete_count += 1
        else:
            active_count += 1
    msg += (
        "\n    └─ Nodes: "
        + String(active_count)
        + " active, "
        + String(complete_count)
        + " complete"
    )

    logger.info(msg)


# fn get_current_node(
#     mut token: TokenBundle,
#     current_idx: Int,
#     nodes: ArcPointer[List[AstNode]],
#     tokens: ArcPointer[List[TokenBundle]],
#     mut logger: Logger,
#     recursion_depth: Int = 0,
# ) raises -> Tuple[Int, StringLiteral]:
#     """Process a token and determine the current node in the AST.

#     In this function the `NodeState` do as follows:
#     - MODULE_INIT:
#         The tree has started.
#         There is no current node and no parent node.

#     Node-level states:
#     - NODE_INIT:
#         The node has just been created and is processing its initial data.
#     - COMPLETE:
#         The node is complete.
#         The current token will not be appended to this node, but instead
#         passed to the next node.
#     - APPENDING:
#         The node is appending tokens to itself.
#     - WANTING_CHILD:
#         The node is wanting a child.
#         A new node will be created and the current token will be passed to it

#     Args:
#         token: The token to process.
#         current_idx: Index of the current node.
#         node_state_: Current state of node processing.
#         nodes: Reference-counted pointer to the list of AST nodes.
#         tokens: Reference-counted pointer to the list of tokens.
#         logger: Logger for recording processing information.
#         recursion_depth: Current depth of recursion (for logging).

#     Returns:
#         The index of the new current node after processing
#     """
#     var _current_idx = current_idx

#     # Handle error cases
#     if _current_idx < 0:
#         logger.error(
#             "ERROR: current_idx is less than 0: " + String(_current_idx)
#         )
#         return (_current_idx, node_state_)

#     if token.deleted:
#         logger.error("ERROR: Token is deleted: " + String(token))
#         return (_current_idx, node_state_)

#     var node_state = node_state_
#     var tree_interface = TreeInterface(nodes, tokens, node_state)

#     # State machine branching based on current state
#     if node_state == NodeState.MODULE_INIT:
#         var indices = NodeIndices(-1, _current_idx)
#         node = AstNode.accept(token, tree_interface, indices)
#         var new_idx = tree_interface.insert_node(node)
#         var new_node_state = node.determine_state(token, tree_interface)
#         log_state_transition(
#             logger,
#             token,
#             node,
#             tree_interface,
#             new_node_state,
#             prev_state=node_state,
#             recursion_depth=recursion_depth,
#         )
#         return get_current_node(
#             token,
#             new_idx,
#             new_node_state,
#             nodes,
#             tokens,
#             logger,
#             recursion_depth + 1,
#         )
#     elif node_state == NodeState.WANTING_CHILD:
#         var indices = NodeIndices(_current_idx, -1)
#         node = nodes[][_current_idx]
#         new_node = AstNode.accept(token, tree_interface, indices)
#         var new_idx = tree_interface.insert_node(new_node)

#         node.indicies_ptr()[].original_child_idxs.append(new_idx)

#         var new_node_state = new_node.determine_state(token, tree_interface)
#         log_state_transition(
#             logger,
#             token,
#             new_node,
#             tree_interface,
#             node_state,
#             recursion_depth=recursion_depth,
#         )
#         return (new_idx, new_node_state)
#     else:
#         node = nodes[][_current_idx]

#     var prev_state = node_state
#     node_state = node.determine_state(token, tree_interface)
#     log_state_transition(
#         logger,
#         token,
#         node,
#         tree_interface,
#         node_state,
#         prev_state,
#         recursion_depth=recursion_depth,
#     )

#     # Process token based on new state
#     if node_state == NodeState.COMPLETE:
#         node.process(token, node_state, tree_interface)
#         var parent_idx = node.indicies().original_parent_idx
#         return get_current_node(
#             token,
#             parent_idx,
#             node_state,
#             nodes,
#             tokens,
#             logger,
#             recursion_depth + 1,
#         )
#     elif node_state == NodeState.APPENDING or node_state == NodeState.APPENDING_TAIL:
#         node.process(token, node_state, tree_interface)
#         return (_current_idx, node_state)
#     elif node_state == NodeState.WANTING_CHILD:
#         return get_current_node(
#             token,
#             _current_idx,
#             NodeState.WANTING_CHILD,
#             nodes,
#             tokens,
#             logger,
#             recursion_depth + 1,
#         )
#     else:
#         raise Error(
#             "get_current_node called on AstNode with no determine_state method"
#         )



fn _initialize_module(
    mut token: TokenBundle,
    current_idx: Int,
    nodes: ArcPointer[List[AstNode]],
    tokens: ArcPointer[List[TokenBundle]],
    mut logger: Logger,
) raises -> Int:
    var tree_interface = TreeInterface(nodes, tokens)
    var indices = NodeIndices(-1, current_idx)
    node = AstNode.accept(token, tree_interface, indices)
    var new_idx = tree_interface.insert_node(node)
    var new_node_state = node.determine_state(token, tree_interface)
    log_state_transition(logger, token, node, tree_interface, new_node_state, recursion_depth=0)
    return get_current_node(token, new_idx, nodes, tokens, logger, recursion_depth=0)


fn _create_child(
    mut token: TokenBundle,
    current_idx: Int,
    nodes: ArcPointer[List[AstNode]],
    tokens: ArcPointer[List[TokenBundle]],
    mut logger: Logger,
    recursion_depth: Int = 0,
) raises -> Int:
    var indices = NodeIndices(current_idx, -1)
    var node = nodes[][current_idx]
    var tree_interface = TreeInterface(nodes, tokens)
    new_node = AstNode.accept(token, tree_interface, indices)
    var new_idx = tree_interface.insert_node(new_node)
    node.indicies_ptr()[].original_child_idxs.append(new_idx)
    var new_node_state = new_node.determine_state(token, tree_interface)
    log_state_transition(logger, token, new_node, tree_interface, new_node_state, recursion_depth=0)
    return new_idx


fn _consume_token(
    mut token: TokenBundle,
    current_idx: Int,
    nodes: ArcPointer[List[AstNode]],
    tokens: ArcPointer[List[TokenBundle]],
    mut logger: Logger,
) raises -> Int:
    var tree_interface = TreeInterface(nodes, tokens)
    var node = nodes[][current_idx]
    node.process(token, TokenFlow.CONSUME_TOKEN, tree_interface)
    return current_idx


fn _capture_and_complete(
    mut token: TokenBundle,
    current_idx: Int,
    nodes: ArcPointer[List[AstNode]],
    tokens: ArcPointer[List[TokenBundle]],
    mut logger: Logger,
    recursion_depth: Int = 0,
) raises -> Int:
    var tree_interface = TreeInterface(nodes, tokens)
    var node = nodes[][current_idx]
    node.process(token, TokenFlow.CAPTURE_AND_COMPLETE, tree_interface)
    # node.transition_to_state(NodeState.COMPLETED)
    return node.indicies().original_parent_idx

    
fn get_current_node(
    mut token: TokenBundle,
    current_idx: Int,
    nodes: ArcPointer[List[AstNode]],
    tokens: ArcPointer[List[TokenBundle]],
    mut logger: Logger,
    recursion_depth: Int = 0,
) raises -> Int:
    """Process a token and determine the current node in the AST.

    In this function the `NodeState` do as follows:
    - MODULE_INIT:
        The tree has started.
        There is no current node and no parent node.

    Node-level states:
    - NODE_INIT:
        The node has just been created and is processing its initial data.
    - COMPLETE:
        The node is complete.
        The current token will not be appended to this node, but instead
        passed to the next node.
    - APPENDING:
        The node is appending tokens to itself.
    - WANTING_CHILD:
        The node is wanting a child.
        A new node will be created and the current token will be passed to it

    Args:
        token: The token to process.
        current_idx: Index of the current node.
        node_state_: Current state of node processing.
        nodes: Reference-counted pointer to the list of AST nodes.
        tokens: Reference-counted pointer to the list of tokens.
        logger: Logger for recording processing information.
        recursion_depth: Current depth of recursion (for logging).

    Returns:
        The index of the new current node after processing
    """
    var _current_idx = current_idx

    if token.deleted:
        raise Error("Token is deleted: " + String(token))

    # State machine branching based on current state
    if current_idx == -1:
        if len(nodes[]) > 0:
            raise Error("Tree already has a module")
        return _initialize_module(token, current_idx, nodes, tokens, logger)

    # var prev_state = node_state
    var node = nodes[][_current_idx]
    var tree_interface = TreeInterface(nodes, tokens)
    var node_state = node.determine_state(token, tree_interface)
    log_state_transition(
        logger,
        token,
        node,
        tree_interface,
        node_state,
        # prev_state,
        recursion_depth=recursion_depth,
    )

    if node_state == TokenFlow.CREATE_CHILD:
        return _create_child(token, current_idx, nodes, tokens, logger, recursion_depth + 1)

    elif node_state == TokenFlow.CAPTURE_AND_COMPLETE:
        return _capture_and_complete(token, current_idx, nodes, tokens, logger, recursion_depth + 1)

    elif node_state == TokenFlow.CONSUME_TOKEN:
        return _consume_token(token, current_idx, nodes, tokens, logger)
    else:
        raise Error(
            "get_current_node called on AstNode with no determine_state method"
        )


fn make_tree(
    owned token_bundles: List[TokenBundle], tree_transition_file: String = ""
) raises -> TreeInterface:
    """Build an AST from a list of tokens.

    This function processes a list of tokens and constructs an abstract syntax tree
    representing the structure of the code.

    Args:
        token_bundles: List of tokens to process.
        tree_transition_file: File to write tree transition information to.

    Returns:
        Reference-counted pointer to the list of AST nodes forming the tree.
    """
    var logger = Logger.get_default_logger("make_tree")
    var inner_logger = Logger.get_default_logger("inner_logger")
    if tree_transition_file:
        inner_logger.outputters.clear()
        inner_logger.add_outputter(
            FileLoggerOutputer(tree_transition_file, "w")
        )
    logger.info(
        "Starting tree construction with "
        + String(len(token_bundles))
        + " tokens"
    )

    # Create reference-counted pointers for tokens and nodes
    var _token_bundles = ArcPointer(token_bundles)
    var nodes = ArcPointer(List[AstNode]())

    # Reserve space for nodes (estimate based on token count)
    nodes[].reserve(
        len(token_bundles) // 3
    )  # Rough estimate: ~1 node per 3 tokens

    var current_idx = -1

    # Process each token to build the tree
    logger.info("Processing tokens to build AST...")
    var token_count = 0
    var log_interval = max(
        1, len(token_bundles) // 10
    )  # Log progress at 10% intervals

    for token in token_bundles:
        # Log progress periodically
        if (
            token_count % log_interval == 0
            or token_count == len(token_bundles) - 1
        ):
            logger.info(
                "Processing token "
                + String(token_count + 1)
                + "/"
                + String(len(token_bundles))
                + " ("
                + String((token_count + 1) * 100 / len(token_bundles))
                + "%)"
            )

        current_idx = get_current_node(
            token[],
            current_idx,
            nodes,
            _token_bundles,
            inner_logger,
        )

        token_count += 1

    # Log tree construction statistics
    logger.info("Tree construction complete")
    logger.info("Statistics:")
    logger.info("  - Tokens processed: " + String(len(token_bundles)))
    logger.info("  - Nodes created: " + String(len(nodes[])))
    logger.info(
        "  - Tokens per node ratio: "
        + String(Float64(len(token_bundles)) / Float64(len(nodes[])))
    )

    return TreeInterface(nodes, _token_bundles)
