# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string
from c_binder_mojo import c_ast_nodes
@value
struct PlaceHolderNode(NodeAstLike):
    alias __name__ = "PlaceHolderNode"
    
    var _token_bundles: TokenBundles
    var _parent_idx: Int
    var _current_idx: Int
    var _children_idxs: ArcPointer[List[Int]]
    var _str_just_code: Bool

    fn __init__(out self, c_ast_node: c_ast_nodes.nodes.AstNode):
        self._token_bundles = c_ast_node.token_bundles()
        self._parent_idx = c_ast_node.parent_idx()
        self._current_idx = c_ast_node.current_idx()
        self._children_idxs = c_ast_node.children_idxs()
        self._str_just_code = False

    fn __str__(self) -> String:
        var s = self.display_name()
        # For placeholders, lets show full thing, but commented out.
        if self._str_just_code:
            s = '# ' + s
        return node2string(s, self.token_bundles(), False)

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return True  # Accept everything as fallback

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Self:
        return Self(c_ast_node)

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return False 

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return True  # Placeholder node should be 1:1 with token bundle

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return False  # Never creates children

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
        return self.__name__ + "(" + String(self._token_bundles) + ")"

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return True 

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code 