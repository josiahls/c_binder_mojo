# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes.nodes import node2string


@value
struct ExampleNode(NodeAstLike):
    """Example node implementation that serves as a template for creating new AST nodes.
    
    This node demonstrates the basic structure and required implementations for the NodeAstLike trait.
    It shows how to handle token processing, parent-child relationships, and state management.
    
    Fields:
        token_bundles: Collection of tokens that make up this node
        just_code: Flag to control whether to show only code or include node metadata in string output
        _parent: Index of this node's parent in the AST
        _current_idx: Current index of this node in the AST
    """
    alias __name__ = "ExampleNode"
    
    var _token_bundles: TokenBundles
    var just_code: Bool
    var _parent: Int
    var _current_idx: Int

    fn __init__(out self, token_bundle: TokenBundle, parent: Int):
        """Initialize the node with a token and parent index.
        
        Args:
            token_bundle: The first token for this node.
            parent: Index of the parent node in the AST.
        """
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0

    fn __str__(self) -> String: 
        """Convert node to string representation.
        
        Returns formatted string with node name, tokens, and optional metadata based on just_code flag.
        """
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    fn append(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        """Try to append a token to this node.
        
        Args:
            token_bundle: Token to potentially append.
            tree: The AST being built.

        Returns:
            True if token was appended, False if token should be handled elsewhere.
        """
        return False

    @staticmethod
    fn accept(token_bundle: TokenBundle, mut tree:Tree) -> Bool:
        """Check if this node type can accept the given token and should be created to handle it.

        This gets executed in an ordered list and acceptance is done in a greedy manner where
        the first node that accepts the token is created to handle it until the node is `done`.

        TODO: Should we be passing the tree also?
        
        Args:
            token_bundle: Token to check.

        Returns:
            True if this node type can handle the token.
        """
        return False

    @staticmethod
    fn create(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Self:
        """Create a new instance of this node.
        
        Args:
            token_bundle: Initial token for the node.
            parent_idx: Index of parent node.
            tree: The AST being built. Used for context.

        Returns:
            New node instance.
        """
        return Self(token_bundle, parent_idx)

    fn done(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        """Check if this node is complete.
        
        Args:
            token_bundle: Next token to be processed.
            tree: The AST being built. Used for context.

        Returns:
            True if node is complete and processing should move to parent.
        """
        return True

    fn make_child(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        """Check if a new child node should be created.
        
        Args:
            token_bundle: Token that might start a child node.
            tree: The AST being built.

        Returns:
            True if a child node should be created.
        """
        return False

    fn parent_idx(self) -> Int:
        """Get the parent node's index."""
        return self._parent

    fn children_idxs(mut self) -> ArcPointer[List[Int]]:
        """Get list of child node indices.
        
        Returns empty list since example node doesn't support children.
        """
        return ArcPointer(List[Int]())

    fn current_idx(self) -> Int:
        """Get this node's index in the AST."""
        return self._current_idx

    fn set_current_idx(mut self, value: Int):
        """Set this node's index in the AST."""
        self._current_idx = value

    fn done_no_cascade(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        """Check if node is complete without cascading to parent.
        
        Similar to done() but doesn't trigger parent node processing.

        For example: #else should indicate the parent ifndef node should be done,
        however we dont' want #else to also the parent of the parent ifndef node to
        also be done.
        """
        return False

    fn display_name(self) -> String:
        """Get the display name for the node.
        
        NOTE: This is intended to be the header of the node, describing high level field values.
        """
        s = String(self.__name__)
        s += "(parent=" + String(self._parent) + ", current_idx=" + String(self._current_idx) + ")"
        return s

    fn token_bundles(self) -> TokenBundles:
        """Get the token bundles for the node.
        """
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        """Get whether children should be displayed inline.
        """
        return False
