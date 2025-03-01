# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, default_scope_level, NodeIndices
from c_binder_mojo import c_ast_nodes

@value
struct DeletedNode(NodeAstLike):
    """Represents a deleted node in the AST."""
    alias __name__ = "DeletedNode"
    
    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _reason: String
    var _as_comment: Bool

    fn __init__(out self, ast_node: AstNode, reason: String, as_comment: Bool):
        self._token_bundles = ast_node.token_bundles()
        self._indices = ast_node.indices()
        self._str_just_code = False
        self._reason = ast_node.display_name() + " " + reason
        self._as_comment = as_comment

    fn __init__(out self, c_ast_node: c_ast_nodes.nodes.AstNode):
        self._token_bundles = c_ast_node.token_bundles()
        self._indices = ArcPointer(NodeIndices(
            c_node_idx=c_ast_node.current_idx(),
            c_parent_idx=c_ast_node.parent_idx(),
            mojo_node_idx=0,
            mojo_parent_idx=-1,
            c_children_idxs=c_ast_node.children_idxs()
        ))
        self._str_just_code = False
        self._reason = ""
        self._as_comment = False
        

    fn __str__(self) -> String:
        var s = String('')
        if self._as_comment:
            s += node2string(self.display_name(), self._token_bundles, self._str_just_code)
            s += "\n# " + self._reason
        else:
            s += self._reason
        return s

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool:
        return False # I think this node is going to be manually created.

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        return Self(c_ast_node)

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return True

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False

    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        return False

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn display_name(self) -> String:
        return self.__name__ + "(" + String(self._indices[]) + ")"

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return True

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code

    fn scope_level(self, tree_interface: TreeInterface) -> Int:
        return default_scope_level(self._indices[].mojo_parent_idx, tree_interface)

    fn scope_offset(self) -> Int:
        return 0

    fn finalize(mut self, parent_idx: Int, mut tree_interface: TreeInterface):
        pass


fn recursive_delete(mut tree_interface: TreeInterface, node_idx: Int, reason: String, as_comment: Bool):
    """Recursively deletes a node and all its children from the tree.
    
    Args:
        tree_interface: The tree interface containing the nodes.
        node_idx: Index of the node to delete.
    """
    var node = tree_interface.nodes[][node_idx]
    
    # First recursively delete all children
    for child_idx in node.indices()[].mojo_children_idxs[]:
        # NOTE: mojo lsp is complaining about recursive calls. 
        recursive_delete(tree_interface, child_idx[], reason, as_comment)
    
    # Then delete the node itself
    tree_interface.nodes[][node_idx] = AstNode(DeletedNode(node, reason, as_comment))
    