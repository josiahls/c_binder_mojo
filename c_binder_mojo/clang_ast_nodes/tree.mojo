"""Tree-based AST representation and traversal utilities for C code.

This module provides the core functionality for building and traversing abstract syntax trees
from tokenized C code. It implements a state-machine based approach to tree construction
and provides interfaces for node manipulation.
"""

# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules


# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    NodeIndices,
    NodeState,
    TokenFlow,
    MessageableEnum,
    C_BINDER_MOJO_END_FILE,
)
from c_binder_mojo.clang_ast_nodes.nodes import AstNode, NodeAstLike


@value
struct ModuleInterface:
    """Interface for interacting with the AST.

    This struct provides methods for accessing and modifying the AST nodes and tokens.
    It serves as a facade for tree operations, abstracting the underlying storage.

    Attributes:
        _nodes: Reference-counted pointer to the list of AST nodes.
        _tokens: Reference-counted pointer to the list of tokens.
        token_flow: Current state of node processing.
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
        node.indicies_ptr()[].c_current_idx = new_idx
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
            parent_idx = self._nodes[][_current_idx].indicies().c_parent_idx
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
