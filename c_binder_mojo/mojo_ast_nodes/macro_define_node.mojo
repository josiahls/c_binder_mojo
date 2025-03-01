# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, default_scope_level, NodeIndices
from c_binder_mojo import c_ast_nodes

@value
struct MacroDefineNode(NodeAstLike):
    """Handles #define directives in C code.
    
    Has two behaviors:
    1. For header guards (ending in _H_), keeps the define as a comment
    2. For other macros, registers them in macro_defs and optionally stores their value
    """
    alias __name__ = "MacroDefineNode"
    
    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _is_header_guard: Bool
    var _macro_name: String
    # TODO(josiahls): Need to also figure out what datatype it is and fix the formatting
    var _macro_value: String

    fn __init__(out self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface):
        self._token_bundles = c_ast_node.token_bundles()
        self._indices = ArcPointer(NodeIndices(
            c_node_idx=c_ast_node.current_idx(),
            c_parent_idx=c_ast_node.parent_idx(),
            mojo_node_idx=0,
            mojo_parent_idx=-1,
            c_children_idxs=c_ast_node.children_idxs()
        ))
        self._str_just_code = False
        
        # Extract macro name and value
        self._macro_name = self._token_bundles[1].token
        self._macro_value = ""
        if len(self._token_bundles) > 2:
            self._macro_value = self._token_bundles[2].token
            
        # Check if this is a header guard
        self._is_header_guard = self._macro_name.endswith("_H_")
        
        # If not a header guard, register the macro
        if not self._is_header_guard:
            tree_interface.c_macro_defs[].append(String(self._macro_name))

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool:
        return c_ast_node.node.isa[c_ast_nodes.nodes.MacroDefineNode]()

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        return Self(c_ast_node, tree_interface)

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return True

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False  # Define nodes don't have children

    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        return False

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn display_name(self) -> String:
        var s = String(self.__name__) + "(" 
        if self._is_header_guard:
            s += "header_guard="
        else:
            s += "macro="
        s += String(self._macro_name)
        if self._macro_value != "":
            s += ", value=" + String(self._macro_value)
        s += ", " + String(self._indices[]) + ")"
        return s

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
        mojo_format_token_bundles = TokenBundles()
        line_num = self._token_bundles[0].line_num
        col_num = 0
        for token in List[String]('alias', self._macro_name, '=', self._macro_value):
            mojo_format_token_bundles.append(TokenBundle(token=token[], line_num=line_num, col_num=col_num))
            col_num += len(token[]) + 1
        self._token_bundles = mojo_format_token_bundles
        tree_interface.mojo_aliases[].append(String(self._macro_name))