# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundles
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo import c_ast_nodes_old


struct MojoTokens:
    alias COMMENT_SINGLE_LINE_BEGIN = "#"
    

fn node2string(name:String,token_bundles:TokenBundles, just_code:Bool) -> String:
    var s:String = ""
    if not just_code:
        s += name + " " + String(token_bundles)
    else:
        s += String(token_bundles)
    return s


@value
struct TreeInterface:
    """
    A minimal interface to the Tree struct for AstNode's to use.
    """
    var nodes: ArcPointer[List[AstNode]]
    var c_macro_defs: ArcPointer[List[String]]
    var mojo_aliases: ArcPointer[List[String]]


@value
struct NodeIndices:
    """Tracks both C AST and Mojo AST indices for a node."""
    var c_node_idx: Int  # Current index in C AST
    var c_parent_idx: Int  # Parent index in C AST
    var c_children_idxs: ArcPointer[List[Int]]  # Children indices in C AST
    
    var mojo_node_idx: Int  # Current index in Mojo AST
    var mojo_parent_idx: Int  # Parent index in Mojo AST
    var mojo_children_idxs: ArcPointer[List[Int]]  # Children indices in Mojo AST

    fn _child_str(self, children_idxs: ArcPointer[List[Int]]) -> String:
        var s = String('')
        n_children = len(children_idxs[])
        i = 0
        for child_idx in children_idxs[]:
            if i == 0:
                s += "("
            s += String(child_idx[])
            if i < n_children - 1:
                s += ", "
            i += 1
            if i > 5:
                s += "...) len=" + String(n_children)
                break
        if i > 0 and i < 5:
            s += ")"
        return s

    fn __str__(self) -> String:
        var s = String('')
        s += "c_node_idx=" + String(self.c_node_idx) + ", c_parent_idx=" + String(self.c_parent_idx) + ", mojo_node_idx=" + String(self.mojo_node_idx) + ", mojo_parent_idx=" + String(self.mojo_parent_idx)

        if len(self.c_children_idxs[]) > 0:
            s += ", c_children_idxs=" + self._child_str(self.c_children_idxs)
        if len(self.mojo_children_idxs[]) > 0:
            s += ", mojo_children_idxs=" + self._child_str(self.mojo_children_idxs)
        return s

    fn __init__(out self, c_node_idx: Int, c_parent_idx: Int, mojo_node_idx: Int, mojo_parent_idx: Int):
        self.c_node_idx = c_node_idx
        self.c_parent_idx = c_parent_idx
        self.c_children_idxs = ArcPointer(List[Int]())
        
        self.mojo_node_idx = mojo_node_idx
        self.mojo_parent_idx = mojo_parent_idx
        self.mojo_children_idxs = ArcPointer(List[Int]())

    fn __init__(out self, c_node_idx: Int, c_parent_idx: Int, mojo_node_idx: Int, mojo_parent_idx: Int, c_children_idxs: ArcPointer[List[Int]]):
        self.c_node_idx = c_node_idx
        self.c_parent_idx = c_parent_idx
        self.c_children_idxs = c_children_idxs

        self.mojo_node_idx = mojo_node_idx
        self.mojo_parent_idx = mojo_parent_idx
        self.mojo_children_idxs = ArcPointer(List[Int]())


trait NodeAstLike(CollectionElement, Stringable): 
    alias __name__: String
    
    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes_old.nodes.AstNode, tree_interface: TreeInterface) -> Bool: ...
    fn is_complete(self, c_ast_node: c_ast_nodes_old.nodes.AstNode, tree_interface: TreeInterface) -> Bool: ...
    fn wants_child(self, c_ast_node: c_ast_nodes_old.nodes.AstNode, tree_interface: TreeInterface) -> Bool: ...
    
    # Actions
    fn append(mut self, c_ast_node: c_ast_nodes_old.nodes.AstNode) -> Bool: ...
    fn add_child(mut self, child_idx: Int): ...
    fn indices(self) -> ArcPointer[NodeIndices]: ...
    fn display_name(self) -> String: ...
    fn token_bundles(self) -> TokenBundles: ...
    fn should_children_inline(self) -> Bool: ...
    fn str_just_code(mut self) -> Bool: ...
    fn set_str_just_code(mut self, str_just_code: Bool): ...
    fn scope_level(self, tree_interface: TreeInterface) -> Int: ...
    fn scope_offset(self) -> Int: ...
    fn finalize(mut self, parent_idx: Int, mut tree_interface: TreeInterface):
        """Called after node is complete to do final evaluation and cleanup.
        
        This is where nodes can:
        1. Evaluate conditions
        2. Clean up internal state
        3. Make final scope decisions
        """
        pass  # Default no-op implementation
    
    fn to_string(self, just_code: Bool, tree_interface: TreeInterface) -> String:
        """Returns string representation of this node and its children.
        
        Args:
            just_code: If True, only output code (no comments or node display names).
            tree_interface: Interface to access tree data.
        """
        pass

    fn name(self) -> String:
        """Returns the raw node name without any metadata."""
        pass

    # Node creation
    @staticmethod
    fn accept(c_ast_node: c_ast_nodes_old.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool: ...
    @staticmethod
    fn create(c_ast_node: c_ast_nodes_old.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self: ...


fn default_scope_level(parent_idx: Int, tree_interface: TreeInterface) -> Int:
    """Default scope level implementation that most nodes can use.
    
    Calculates scope level by walking up parent chain and summing scope_offsets.
    """
    var level = 0
    var current_parent_idx = parent_idx
    if parent_idx == -1:
        var parent = tree_interface.nodes[][0]
        var scope_offset = parent.scope_offset()
        return scope_offset
    
    while current_parent_idx != -1:
        var parent = tree_interface.nodes[][current_parent_idx]
        level += parent.scope_offset()
        current_parent_idx = parent.indices()[].mojo_parent_idx
    return level
