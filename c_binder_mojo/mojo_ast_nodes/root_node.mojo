# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, ParsedTokenBundles, node2string
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode

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

    fn __init__(out self, bundle: ParsedTokenBundles):
        self._token_bundles = TokenBundles()
        self._parent_idx = bundle.parent_idx
        self._current_idx = bundle.current_idx
        self._children_idxs = bundle.children_idxs
        self._str_just_code = False
        
    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    # State checks
    fn is_accepting_tokens(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return False  # Root doesn't accept tokens directly

    fn is_complete(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return False  # Root is never complete until file ends

    fn wants_child(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return True  # Root always accepts children

    # Actions
    fn append(mut self, token_bundle: ParsedTokenBundles) -> Bool:
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
    fn accept(bundle: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Bool:
        return len(nodes[]) == 0

    @staticmethod
    fn create(bundle: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Self:
        return Self(bundle) 