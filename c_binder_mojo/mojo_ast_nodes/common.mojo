# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundles
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo import c_ast_nodes


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
    var macro_defs: ArcPointer[List[StringLiteral]]


@value
struct ScopeBehavior:
    alias KEEP_SCOPE = 0      # Normal scoped node
    alias LIFT_CHILDREN = 1   # Move children to parent
    alias HEADER_GUARD = 2    # Special case for header guards
    alias CONDITIONAL = 3     # Feature conditionals
    
    var behavior: Int

    fn __init__(out self, behavior: Int):
        self.behavior = behavior


trait NodeAstLike(CollectionElement, Stringable): 
    alias __name__: String
    
    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool: ...
    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool: ...
    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool: ...
    
    # Actions
    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool: ...
    fn add_child(mut self, child_idx: Int): ...
    fn parent_idx(self) -> Int: ...
    fn current_idx(self) -> Int: ...
    fn set_current_idx(mut self, value:Int): ...
    fn children_idxs(mut self) -> ArcPointer[List[Int]]: ...
    fn display_name(self) -> String: ...
    fn token_bundles(self) -> TokenBundles: ...
    fn should_children_inline(self) -> Bool: ...
    fn str_just_code(mut self) -> Bool: ...
    fn set_str_just_code(mut self, str_just_code: Bool): ...
    fn scope_level(self, tree_interface: TreeInterface) -> Int: ...
    fn get_scope_behavior(self) -> ScopeBehavior: ...
    fn scope_offset(self) -> Int: ...
    fn finalize(mut self, parent_idx: Int, tree_interface: TreeInterface):
        """Called after node is complete to do final evaluation and cleanup.
        
        This is where nodes can:
        1. Evaluate conditions
        2. Clean up internal state
        3. Make final scope decisions
        """
        pass  # Default no-op implementation
    
    # Node creation
    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool: ...
    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self: ...




fn default_scope_level(parent_idx: Int, tree_interface: TreeInterface) -> Int:
    """Default scope level implementation that most nodes can use.
    
    Calculates scope level by walking up parent chain and summing scope_offsets.
    """
    var level = 0
    var current_parent_idx = parent_idx
    while current_parent_idx > 0:
        var parent = tree_interface.nodes[][current_parent_idx]
        level += parent.scope_offset()
        current_parent_idx = parent.parent_idx()
    return level