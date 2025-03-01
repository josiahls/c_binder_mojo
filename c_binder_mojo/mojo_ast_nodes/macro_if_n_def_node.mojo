# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, ScopeBehavior, default_scope_level, NodeIndices
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
        _is_defined: Whether the macro has been triggered and its children should be
        kept. If False, the children will be commented out, and the #elseif or #else will be evaluated instead.
    """
    alias __name__ = "MacroIfNDefNode"
    
    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _is_header_guard: Bool
    var _is_defined: Bool

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
        self._is_header_guard = False
        self._is_defined = False
        # Check if this is a header guard
        if self._token_bundles[1].token.endswith("_H_"):
            self._is_header_guard = True
            self._is_defined = False
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
        # We check that `c_ast_node` is still a child of the original Ifndef c node.
        if c_ast_node.current_idx() not in self._indices[].c_children_idxs[]:
            return True  # Complete after creation
        return False

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return True  # Can have children (both if and else blocks)

    # Actions
    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        return False

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn display_name(self) -> String:
        return self.__name__ + "(" + String(self._indices[]) + ")"

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False  # Children should be on new lines

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code

    fn scope_level(self, tree_interface: TreeInterface) -> Int:
        return default_scope_level(self._indices[].mojo_parent_idx, tree_interface)

    fn scope_offset(self) -> Int:
        # For now, all macro nodes add one level of scope
        return 1

    fn get_scope_behavior(self) -> ScopeBehavior:
        if self._is_header_guard:
            return ScopeBehavior(ScopeBehavior.HEADER_GUARD)
        # return ScopeBehavior(ScopeBehavior.CONDITIONAL) 
        return ScopeBehavior(ScopeBehavior.KEEP_SCOPE)

    fn finalize(mut self, parent_idx: Int, tree_interface: TreeInterface):
        """Evaluate the ifndef condition and mark sections as triggered/untriggered."""
        # Check if macro is defined
        var macro_name = self._token_bundles[1].token
        for macro in tree_interface.macro_defs[]:
            # NOTE: macro is a string pointer
            if macro[] == macro_name:
                self._is_defined = True
                return
        self._is_defined = False