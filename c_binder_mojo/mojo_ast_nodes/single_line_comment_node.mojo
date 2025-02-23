# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, MojoTokens
from c_binder_mojo import c_ast_nodes

@value
struct SingleLineCommentNode(NodeAstLike):
    alias __name__ = "SingleLineCommentNode"
    
    var _token_bundles: TokenBundles
    var _parent_idx: Int
    var _current_idx: Int
    var _children_idxs: ArcPointer[List[Int]]
    var _str_just_code: Bool

    fn __init__(out self, c_ast_node: c_ast_nodes.nodes.AstNode):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(
            TokenBundle(
                MojoTokens.COMMENT_SINGLE_LINE_BEGIN,
                c_ast_node.token_bundles()[0].line_num,
                c_ast_node.token_bundles()[0].col_num,
                c_ast_node.token_bundles()[0].is_splitter
            )
        )
        for i in range(len(c_ast_node.token_bundles())):
            if i > 0:
                self._token_bundles.append(c_ast_node.token_bundles()[i])
        
        self._parent_idx = c_ast_node.parent_idx()
        self._current_idx = c_ast_node.current_idx()
        self._children_idxs = c_ast_node.children_idxs()
        self._str_just_code = False

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Bool:
        # Check if C node is a single line comment
        return c_ast_node.node.isa[c_ast_nodes.nodes.SingleCommentNode]()

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Self:
        return Self(c_ast_node)

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return False  # Single line comment takes just one token

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return True  # Complete after first token

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return False  # Comments don't have children

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
        return True 