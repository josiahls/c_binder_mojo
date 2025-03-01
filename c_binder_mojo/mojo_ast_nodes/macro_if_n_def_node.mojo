# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, ScopeBehavior
from c_binder_mojo import c_ast_nodes

@value
struct MacroIfNDefNode(NodeAstLike):
    """
    Handles converting C Ifndef/#define/#endif blocks into Mojo code.

    Has a couple behaviors:
    - If this is a header guard, noted by ending in "_H_", then we lift the children up one level,
    and no function changes are made otherwise.
    - If this is a confitional block, we determine based on the condition which children to
    keep, and which to discard (will be commented out).

    Args:
        _is_triggered: Whether the macro has been triggered and its children should be
        kept. If False, the children will be commented out, and the #elseif or #else will be evaluated instead.
    """
    alias __name__ = "MacroIfNDefNode"
    
    var _token_bundles: TokenBundles
    var _parent_idx: Int
    var _current_idx: Int
    var _children_idxs: ArcPointer[List[Int]]
    var _str_just_code: Bool
    var _is_header_guard: Bool
    var _is_triggered: Bool

    fn __init__(out self, c_ast_node: c_ast_nodes.nodes.AstNode):
        self._token_bundles = c_ast_node.token_bundles()
        self._parent_idx = c_ast_node.parent_idx()
        self._current_idx = c_ast_node.current_idx()
        self._children_idxs = c_ast_node.children_idxs()
        self._str_just_code = False
        self._is_header_guard = False
        self._is_triggered = False
        # Check if this is a header guard
        if self._token_bundles[1].token.endswith("_H_"):
            self._is_header_guard = True
            self._is_triggered = False
        # Check if this is triggered

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool:
        return c_ast_node.node.isa[c_ast_nodes.nodes.MacroIfNDefNode]()

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        return Self(c_ast_node)

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False  # Takes tokens in C AST

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return True  # Complete after creation

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return True  # Can have children (both if and else blocks)

    # Actions
    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        return False

    fn add_child(mut self, child_idx: Int):
        self._children_idxs[].append(child_idx)

    fn parent_idx(self) -> Int:
        return self._parent_idx

    fn current_idx(self) -> Int:
        return self._current_idx

    fn set_current_idx(mut self, value: Int):
        self._current_idx = value

    fn children_idxs(mut self) -> ArcPointer[List[Int]]:
        return self._children_idxs

    fn display_name(self) -> String:
        var s:String = String(self.__name__)
        s += "(current_idx=" + String(self._current_idx) + ","
        s += "parent_idx=" + String(self._parent_idx) + ")"
        return s

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False  # Children should be on new lines

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code

    fn scope_offset(self) -> Int:
        # Lets first pretend that all nodes are simple and add to the scope level for their children.
        # if self._is_header_guard:
        #     return -1  # Reduces scope level
        return 1  # Doesn't affect scope

    fn scope_level(self, tree_interface: TreeInterface) -> Int:
        # Start with parent's level
        var level = 0
        var parent_idx = self.parent_idx()
        while parent_idx > 0:
            var parent = tree_interface.nodes[][parent_idx]
            level += parent.scope_offset()
            parent_idx = parent.parent_idx()
        
        return level

    fn get_scope_behavior(self) -> ScopeBehavior:
        if self._is_header_guard:
            return ScopeBehavior(ScopeBehavior.HEADER_GUARD)
        # return ScopeBehavior(ScopeBehavior.CONDITIONAL) 
        return ScopeBehavior(ScopeBehavior.KEEP_SCOPE)