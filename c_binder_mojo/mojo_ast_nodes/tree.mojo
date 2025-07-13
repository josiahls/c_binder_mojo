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
from c_binder_mojo.common import (
    TokenBundle,
    NodeIndices,
    NodeState,
    TokenFlow,
    MessageableEnum,
)
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode, NodeAstLike
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry


@fieldwise_init
struct ModuleInterface(Movable & Copyable):
    """Interface for interacting with the AST.

    This struct provides methods for accessing and modifying the AST nodes and tokens.
    It serves as a facade for tree operations, abstracting the underlying storage.

    Attributes:
        _nodes: Reference-counted pointer to the list of AST nodes.
        _tokens: Reference-counted pointer to the list of tokens.
        token_flow: Current state of node processing.
    """

    var _nodes: ArcPointer[List[AstNode]]
    var _entries: ArcPointer[List[AstEntry]]

    fn get_node(self, idx: Int) -> AstNode:
        return self._nodes[][idx]

    fn nodes(self) -> ArcPointer[List[AstNode]]:
        """Get the list of AST nodes.

        Returns:
            Reference-counted pointer to the list of AST nodes.
        """
        return self._nodes

    fn entries(self) -> ArcPointer[List[AstEntry]]:
        """Get the list of tokens.

        Returns:
            Reference-counted pointer to the list of tokens.
        """
        return self._entries

    fn insert_node(mut self, owned node: AstNode) -> Int:
        """Insert a new node into the AST.

        Args:
            node: The node to insert.

        Returns:
            The index of the newly inserted node.
        """
        new_idx = len(self._nodes[])
        node.indicies_ptr()[].current_idx = new_idx
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
            parent_idx = self._nodes[][_current_idx].indicies().parent_idx
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
        idx = nodes[][idx].indicies().parent_idx
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
    ast_entry: AstEntry,
    current_node: AstNode,  # Renamed parameter to avoid shadowing
    module_interface: ModuleInterface,
    token_flow: MessageableEnum,
    prev_state: MessageableEnum = MessageableEnum(-1),
    recursion_depth: Int = 0,
) raises:
    """Log a state transition with enhanced context.

    Args:
        logger: Logger instance.
        ast_entry: Current ast_entry.
        current_node: Current node.
        module_interface: Tree interface.
        token_flow: New state.
        prev_state: Previous state.
        recursion_depth: Current depth of get_current_node recursion.
    """
    # Format the transition string with fixed width
    var transition_str: String
    if prev_state == MessageableEnum(-1) or prev_state == token_flow:
        transition_str = String(token_flow)
    else:
        if prev_state == TokenFlow.PASS_TO_PARENT:
            transition_str = String(token_flow) + " <- " + String(prev_state)
        else:
            transition_str = String(prev_state) + " -> " + String(token_flow)

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
        module_interface.nodes(), current_node.indicies().current_idx
    )

    # Build indentation based on parent count
    var n_parents = module_interface.n_parents(
        current_node.indicies().current_idx
    )
    var indent = String()
    for _ in range(n_parents):
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
    msg += "\n    └─ Current ast_entry: '" + ast_entry.ast_name + "'"

    # Add active nodes count
    var active_count = 0
    var complete_count = 0
    for i in range(len(module_interface.nodes()[])):
        if module_interface.nodes()[][i].node_state() == NodeState.COMPLETED:
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


fn _initialize_module(
    mut ast_entry: AstEntry,
    current_idx: Int,
    mut module_interface: ModuleInterface,
    mut logger: Logger,
) raises -> Int:
    var indices = NodeIndices(
        parent_idx=-1,
        current_idx=current_idx,
    )
    var node = AstNode.accept(ast_entry, module_interface, indices)
    var new_idx = module_interface.insert_node(node)
    var new_token_flow = node.determine_token_flow(ast_entry, module_interface)
    log_state_transition(
        logger,
        ast_entry,
        node,
        module_interface,
        new_token_flow,
        recursion_depth=0,
    )
    return get_current_node(
        ast_entry, new_idx, module_interface, logger, recursion_depth=0
    )


fn _create_child(
    mut ast_entry: AstEntry,
    current_idx: Int,
    mut module_interface: ModuleInterface,
    mut logger: Logger,
    recursion_depth: Int = 0,
) raises -> Int:
    var indices = NodeIndices(
        current_idx,
        -1,
    )
    var node = module_interface.nodes()[][current_idx]
    new_node = AstNode.accept(ast_entry, module_interface, indices)
    var new_idx = module_interface.insert_node(new_node)
    node.indicies_ptr()[].child_idxs.append(new_idx)
    log_state_transition(
        logger,
        ast_entry,
        new_node,
        module_interface,
        TokenFlow.CREATE_CHILD,
        prev_state=node.node_state(),
        recursion_depth=recursion_depth,
    )
    return new_idx


fn _consume_token(
    mut ast_entry: AstEntry,
    current_idx: Int,
    mut module_interface: ModuleInterface,
    mut logger: Logger,
) raises -> Int:
    var node = module_interface.nodes()[][current_idx]
    node.process(ast_entry, TokenFlow.CONSUME_TOKEN, module_interface)
    return current_idx


fn get_current_node(
    mut ast_entry: AstEntry,
    current_idx: Int,
    mut module_interface: ModuleInterface,
    mut logger: Logger,
    recursion_depth: Int = 0,
) raises -> Int:
    """Process a token and determine the current node in the AST.

    This function processes entries and manages the AST construction flow. The token flow
    directives determine how each ast_entry should be handled:

    - INITIALIZE_MODULE:
        Initial state when tree construction begins.
        Creates the root node as there are no existing nodes.

    Token flow directives:
    - CONSUME_TOKEN:
        The current node should consume and process this token.
    - PASS_TO_PARENT:
        Pass token handling up to the parent node.
    - CREATE_CHILD:
        Create a new child node to handle this token.
    - CAPTURE_AND_COMPLETE:
        Current node captures this token then marks itself complete.

    Args:
        ast_entry: The ast_entry to process.
        current_idx: Index of the current node.
        module_interface: Interface for interacting with the AST.
        logger: Logger for recording processing information.
        recursion_depth: Current depth of recursion (for logging).

    Returns:
        The index of the node that should process the next token
    """
    var _current_idx = current_idx

    # TODO(josiahls): Need to add a DeletedNode version
    # if ast_entry.deleted:
    #     raise Error("Token is deleted: " + String(ast_entry))

    # State machine branching based on current state
    if current_idx == -1:
        if len(module_interface.nodes()[]) > 0:
            raise Error(
                "Tree already has a module given node: " + String(ast_entry)
            )
        return _initialize_module(
            ast_entry, current_idx, module_interface, logger
        )

    # var prev_state = token_flow
    var node = module_interface.nodes()[][current_idx]
    var token_flow = node.determine_token_flow(ast_entry, module_interface)
    log_state_transition(
        logger,
        ast_entry,
        node,
        module_interface,
        token_flow,
        # prev_state,
        recursion_depth=recursion_depth,
    )
    if token_flow == TokenFlow.CREATE_CHILD:
        node.process(ast_entry, TokenFlow.CREATE_CHILD, module_interface)
        return _create_child(
            ast_entry,
            current_idx,
            module_interface,
            logger,
            recursion_depth + 1,
        )

    elif token_flow == TokenFlow.PASS_TO_PARENT:
        node.process(ast_entry, TokenFlow.PASS_TO_PARENT, module_interface)
        return get_current_node(
            ast_entry,
            node.indicies().parent_idx,
            module_interface,
            logger,
            recursion_depth - 1,
        )
    elif token_flow == TokenFlow.CONSUME_TOKEN:
        node.process(ast_entry, TokenFlow.CONSUME_TOKEN, module_interface)
        return current_idx
    elif token_flow == TokenFlow.END_FILE:
        node.process(ast_entry, TokenFlow.END_FILE, module_interface)
        return current_idx
    else:
        raise Error(
            "get_current_node called on AstNode that could not determine token"
            " flow: "
            + String(token_flow)
        )


fn make_tree(
    owned entries: List[AstEntry],
    tree_transition_file: String = "",
    validate: Bool = True,
) raises -> ModuleInterface:
    """Build an AST from a list of tokens.

    This function processes a list of tokens and constructs an abstract syntax tree
    representing the structure of the code.

    Args:
        entries: List of entries to process.
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
        "Starting tree construction with " + String(len(entries)) + " tokens"
    )

    # Create reference-counted pointers for tokens and nodes
    var _entries = ArcPointer(entries)
    var nodes = ArcPointer(List[AstNode]())

    # Reserve space for nodes (estimate based on token count)
    nodes[].reserve(len(entries) // 3)  # Rough estimate: ~1 node per 3 tokens
    var module_interface = ModuleInterface(nodes, _entries)

    var current_idx = -1

    # Process each token to build the tree
    logger.info("Processing tokens to build AST...")
    var token_count = 0
    var log_interval = max(
        1, len(entries) // 10
    )  # Log progress at 10% intervals

    for ref ast_entry in entries:
        # Log progress periodically
        if token_count % log_interval == 0 or token_count == len(entries) - 1:
            logger.info(
                "Processing token "
                + String(token_count + 1)
                + "/"
                + String(len(entries))
                + " ("
                + String((token_count + 1) * 100 / len(entries))
                + "%)"
            )

        current_idx = get_current_node(
            ast_entry,
            current_idx,
            module_interface,
            inner_logger,
        )

        token_count += 1

    # Verify that all nodes are completed
    if validate:
        incomplete_nodes = List[AstNode]()
        for node in nodes[]:
            if node.node_state() != NodeState.COMPLETED:
                incomplete_nodes.append(node)
        if len(incomplete_nodes) > 0:
            var s = String("\t")
            for node in incomplete_nodes:
                s += node.name(include_sig=True) + "\n\t"
            raise Error("Incomplete mojo ast nodes: \n" + s)

    # Log tree construction statistics
    logger.info("Tree construction complete")
    logger.info("Statistics:")
    logger.info("  - Tokens processed: " + String(len(entries)))
    logger.info("  - Nodes created: " + String(len(nodes[])))
    logger.info(
        "  - Tokens per node ratio: "
        + String(Float64(len(entries)) / Float64(len(nodes[])))
    )

    return module_interface
