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
struct ModuleInterface(Movable):
    """Interface for interacting with the AST.

    This struct provides methods for accessing and modifying the AST nodes and tokens.
    It serves as a facade for tree operations, abstracting the underlying storage.

    Attributes:
        _nodes: Reference-counted pointer to the list of AST nodes.
        _tokens: Reference-counted pointer to the list of tokens.
        token_flow: Current state of node processing.
    """

    var _entries: ArcPointer[List[AstEntry]]
    var _nodes: ArcPointer[List[AstNode]]

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



fn make_tree(
    owned ast_entries: List[AstEntry], tree_transition_file: String = "", validate: Bool = True
) raises -> ModuleInterface:
    """Build an AST from a list of tokens.

    This function processes a list of tokens and constructs an abstract syntax tree
    representing the structure of the code.

    Args:
        ast_entries: List of ast_entries to process.
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
        "Starting tree construction with " + String(len(ast_entries)) + " tokens"
    )


    module = ModuleInterface(_entries = ast_entries, _nodes = ArcPointer(List[AstNode]()))

    return module^