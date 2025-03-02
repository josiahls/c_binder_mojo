# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode, default_to_string
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, default_scope_level, NodeIndices
from c_binder_mojo import c_ast_nodes

@value
struct EnumNode(NodeAstLike):
    """Handles C enum declarations.
    
    For now, keeps them as comments since Mojo doesn't support enums yet.
    Example:
    enum mjtDisableBit_ { ... } -> # enum mjtDisableBit_ { ... }
    """
    alias __name__ = "EnumNode"
    
    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _enum_name: String
    var _enum_values: ArcPointer[List[UInt]]

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
        self._enum_name = c_ast_node.node[c_ast_nodes.nodes.EnumNode].enum_name
        self._enum_values = ArcPointer(List[UInt]())

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool:
        return c_ast_node.node.isa[c_ast_nodes.nodes.EnumNode]()

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        return Self(c_ast_node)

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        # Check if c_ast_node is still a child of original C node
        if c_ast_node.current_idx() not in self._indices[].c_children_idxs[]:
            return True
        return False

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return True  # Accept children to preserve enum values

    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        return False

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn display_name(self) -> String:
        return self.__name__ + "(name=" + self._enum_name + ", " + String(self._indices[]) + ")"

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False  # Each enum value on new line

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code

    fn scope_level(self, tree_interface: TreeInterface) -> Int:
        return default_scope_level(self._indices[].mojo_parent_idx, tree_interface)

    fn scope_offset(self) -> Int:
        return 1  # Indent enum values

    fn name(self) -> String:
        """Returns the raw node name without any metadata."""
        return Self.__name__

    fn finalize(mut self, parent_idx: Int, mut tree_interface: TreeInterface):
        """Convert C enum to Mojo struct with aliases."""
        var mojo_format = TokenBundles()
        var line_num = self._token_bundles[0].line_num
        var col_num = 0

        # Add struct header
        mojo_format.append(TokenBundle(token="# Mojo Enum", line_num=line_num, col_num=col_num))
        line_num += 1
        mojo_format.append(TokenBundle(token="struct " + self._enum_name + ":", line_num=line_num, col_num=col_num))
        
        # Add splitter to insert enum values
        mojo_format.append(TokenBundle(token="", line_num=line_num, col_num=col_num, is_splitter=True))

        # NOTE: The children (enum values) will be inserted here due to the splitter
        # Each child should be formatted as: alias VALUE_NAME = value

        # Replace token bundles
        _ = self._token_bundles._token_bundles
        self._token_bundles = mojo_format

    fn to_string(self, just_code: Bool, tree_interface: TreeInterface) -> String:
        return default_to_string(AstNode(self), just_code, tree_interface) 
