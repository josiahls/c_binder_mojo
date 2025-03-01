# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, ScopeBehavior
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo import c_ast_nodes

@value
struct RootNode(NodeAstLike):
    """Root node of the Mojo AST.
    
    Represents the top-level module/file scope.
    """
    alias __name__ = "RootNode"
    
    var _token_bundles: TokenBundles
    var _parent_idx: Int
    var _current_idx: Int
    var _children_idxs: ArcPointer[List[Int]]
    var _str_just_code: Bool

    fn __init__(out self, c_ast_node: c_ast_nodes.nodes.AstNode):
        self._token_bundles = TokenBundles()
        self._parent_idx = c_ast_node.parent_idx()
        self._current_idx = c_ast_node.current_idx()
        self._children_idxs = c_ast_node.children_idxs()
        self._str_just_code = False
        
    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False  # Root doesn't accept tokens directly

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False  # Root is never complete until file ends

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return True  # Root always accepts children

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
        return self.__name__ + "(children=" + String(len(self._children_idxs[])) + ")"

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False

    # Node creation
    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool:
        return len(tree_interface.nodes[]) == 0

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        return Self(c_ast_node)

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code

    fn scope_level(self) -> Int:
        return 0  # Root is base level

    fn get_scope_behavior(self) -> ScopeBehavior:
        return ScopeBehavior(ScopeBehavior.KEEP_SCOPE)  # Root always keeps scope 