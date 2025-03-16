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
from c_binder_mojo.common import TokenBundle, NodeIndices, NodeState
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
    var node_state: StringLiteral

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

    fn insert_node(mut self, owned node:AstNode) -> Int:
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

    fn n_parents(self, current_idx: Int, count_limit:Int=100) raises -> Int:
        """Get the number of parents of the current node.
        
        Returns:
            The number of parents of the current node.
        """
        parent_idx = -1
        _current_idx = current_idx
        started = False
        count = 0
        while parent_idx != -1 or not started:
            parent_idx = self._nodes[][_current_idx].indicies().original_parent_idx
            if parent_idx != -1:
                count += 1
            started = True
            _current_idx = parent_idx
            if count > count_limit:
                raise Error("n_parents count limit reached: " + String(count_limit) + " for node: " + String(self._nodes[][_current_idx]) + " with parent_idx: " + String(parent_idx))
        return count


fn log_state_transition(
    mut logger:Logger,
    token:TokenBundle,
    node:AstNode,
    tree_interface:TreeInterface,
    node_state:StringLiteral,
    prev_state:StringLiteral = ''
) raises:
    """Log a state transition.
    """

    max_width = 25
    node_name = node.name(include_sig=True)
    n_parents = tree_interface.n_parents(node.indicies().original_current_idx)
    indent_str = String('\t' * n_parents)

    transition_str = String()
    if prev_state == '' or prev_state == node_state:
        transition_str = String(node_state) 
    else:
        if prev_state == NodeState.COMPLETE:
            # if the state completed, then that means we should be 
            # transitioning back up the tree to the parent node
            transition_str = String(node_state) + " <- " + String(prev_state)
        else:
            transition_str = String(prev_state) + " -> " + String(node_state)

    padding_length = max_width - len(transition_str)
    if padding_length > 0:
        transition_str += String(' ' * padding_length)

    logger.info(transition_str + ' ' + indent_str + node_name + ' current token: ' + token.token)


fn get_current_node(
    mut token:TokenBundle, 
    current_idx:Int, 
    node_state_:StringLiteral, 
    nodes:ArcPointer[List[AstNode]], 
    tokens:ArcPointer[List[TokenBundle]],
    mut logger:Logger
) raises -> Int:
    """Process a token and determine the current node in the AST.
    
    This function implements the state machine for building the AST. It processes
    a token and updates the current node based on the current state and token content.
    
    Args:
        token: The token to process.
        current_idx: Index of the current node.
        node_state_: Current state of node processing.
        nodes: Reference-counted pointer to the list of AST nodes.
        tokens: Reference-counted pointer to the list of tokens.
        logger: Logger for recording processing information.

    Returns:
        The index of the new current node after processing.
    """
    _current_idx = current_idx

    # Handle error cases
    if _current_idx < 0: 
        logger.error("ERROR: current_idx is less than 0: " + String(_current_idx))
        return _current_idx

    if token.deleted:
        logger.error("ERROR: Token is deleted: " + String(token))
        return _current_idx
    
    node_state = node_state_
    tree_interface = TreeInterface(nodes, tokens, node_state)
    
    # State machine branching based on current state
    if node_state == NodeState.STARTED:
        indices = NodeIndices(-1, _current_idx)
        node = AstNode.accept(token, tree_interface, indices)
        new_idx = tree_interface.insert_node(node)
        new_node_state = node.determine_state(token, tree_interface)
        log_state_transition(logger, token, node, tree_interface, new_node_state, prev_state=node_state)
        return get_current_node(token, new_idx, new_node_state, nodes, tokens, logger)
    elif node_state == NodeState.WANTING_CHILD:
        indices = NodeIndices(_current_idx, -1)
        node = AstNode.accept(token, tree_interface, indices)
        new_idx = tree_interface.insert_node(node)
        log_state_transition(logger, token, node, tree_interface, node_state)
        return new_idx
    else:
        node = nodes[][_current_idx]

    prev_state = node_state
    node_state = node.determine_state(token, tree_interface)
    log_state_transition(logger, token, node, tree_interface, node_state, prev_state)
    # Process token based on new state
    if node_state == NodeState.COMPLETE:
        node.process(token, tree_interface)
        parent_idx = node.indicies().original_parent_idx
        result = get_current_node(token, parent_idx, node_state, nodes, tokens, logger)
        return result
    elif node_state == NodeState.APPENDING:
        node.process(token, tree_interface)
        return _current_idx
    elif node_state == NodeState.WANTING_CHILD:
        result = get_current_node(token, _current_idx, NodeState.WANTING_CHILD, nodes, tokens, logger)
        return result
    else:
        raise Error("get_current_node called on AstNode with no determine_state method")


fn make_tree(owned token_bundles:List[TokenBundle], tree_transition_file:String = '') raises -> ArcPointer[List[AstNode]]:
    """Build an AST from a list of tokens.
    
    This function processes a list of tokens and constructs an abstract syntax tree
    representing the structure of the code.
    
    Args:
        token_bundles: List of tokens to process.
        tree_transition_file: File to write tree transition information to.

    Returns:
        Reference-counted pointer to the list of AST nodes forming the tree.
    """
    logger = Logger.get_default_logger("make_tree")
    inner_logger = Logger.get_default_logger("inner_logger")
    if tree_transition_file:
        inner_logger.outputters.clear()
        inner_logger.add_outputter(FileLoggerOutputer(tree_transition_file, "w"))
    logger.info("Starting tree construction with " + String(len(token_bundles)) + " tokens")
    
    # Create reference-counted pointers for tokens and nodes
    _token_bundles = ArcPointer(token_bundles)
    nodes = ArcPointer(List[AstNode]())
    
    # Reserve space for nodes (estimate based on token count)
    nodes[].reserve(len(token_bundles) // 3)  # Rough estimate: ~1 node per 3 tokens
    
    var current_idx = 0
    node_state = NodeState.STARTED
    
    # Process each token to build the tree
    logger.info("Processing tokens to build AST...")
    var token_count = 0
    var log_interval = max(1, len(token_bundles) // 10)  # Log progress at 10% intervals
    
    for token in token_bundles:
        # Log progress periodically
        if token_count % log_interval == 0 or token_count == len(token_bundles) - 1:
            logger.info("Processing token " + String(token_count + 1) + "/" + 
                       String(len(token_bundles)) + " (" + 
                       String((token_count + 1) * 100 / len(token_bundles)) + "%)")

        current_idx = get_current_node(token[], current_idx, node_state, nodes, _token_bundles, inner_logger)

        token_count += 1
    
    # Log tree construction statistics
    logger.info("Tree construction complete")
    logger.info("Statistics:")
    logger.info("  - Tokens processed: " + String(len(token_bundles)))
    logger.info("  - Nodes created: " + String(len(nodes[])))
    logger.info("  - Tokens per node ratio: " + String(Float64(len(token_bundles)) / Float64(len(nodes[]))))
    
    return nodes
