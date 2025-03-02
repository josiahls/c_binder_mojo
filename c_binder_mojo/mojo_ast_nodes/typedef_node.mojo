# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, default_scope_level, NodeIndices
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.mojo_ast_nodes.deleted_node import DeletedNode
@value
struct TypedefNode(NodeAstLike):
    """Handles C typedef declarations.
    
    Converts C typedefs into Mojo aliases:
    typedef int foo_t;  ->  alias foo_t = Int
    """
    alias __name__ = "TypedefNode"
    
    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _alias_name: String  # The new name being defined

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
        
        self._alias_name = c_ast_node.node[c_ast_nodes.nodes.TypedefNode].type_name().token
        
        # Register the alias
        tree_interface.mojo_aliases[].append(String(self._alias_name))

    fn alias_value(self, tree_interface: TreeInterface) -> String:
        """Returns the value of the alias.
        
        The values are determined by the children of the typedef node.
        """
        var alias_value = String()
        for child_idx in self._indices[].mojo_children_idxs[]:
            alias_value += tree_interface.nodes[][child_idx[]].token_bundles()[0].token
            # Delete the child from the tree
            # NOTE: Not sure if this will break complex type defs. Revisit
            tree_interface.nodes[][child_idx[]] = AstNode(DeletedNode(
                ast_node=tree_interface.nodes[][child_idx[]],
                reason="Deleted because typedef node is being converted to a mojo alias",
                as_comment=True
            ))


        if alias_value == "int":
            mojo_type = "Int"
        elif alias_value == "float":
            mojo_type = "Float32"
        elif alias_value == "double":
            mojo_type = "Float64"
        elif alias_value == "char":
            mojo_type = "Int8"
        elif alias_value == "unsigned char":
            mojo_type = "UInt8"

        return alias_value

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool:
        return c_ast_node.node.isa[c_ast_nodes.nodes.TypedefNode]()

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        return Self(c_ast_node, tree_interface)

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        # Check if c_ast_node is still a child of original C node
        if c_ast_node.current_idx() not in self._indices[].c_children_idxs[]:
            return True
        return False

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        # TODO(josiah): Mojo doesn't support complex typedefs yet. For now we'll accept children
        # but they won't affect the alias declaration. Once Mojo adds support, we should properly
        # handle struct/union/enum typedefs.
        return True

    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        return False

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn display_name(self) -> String:
        return self.__name__ + "(alias=" + self._alias_name + ", " + String(self._indices[]) + ")"

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
        # Convert C type to Mojo type
        var mojo_type = self.alias_value(tree_interface)
        
        # Create Mojo alias declaration
        var mojo_format_token_bundles = TokenBundles()
        var line_num = self._token_bundles[0].line_num
        var col_num = 0
        for token in List[String]('alias', self._alias_name, '=', mojo_type):
            mojo_format_token_bundles.append(TokenBundle(token=token[], line_num=line_num, col_num=col_num))
            col_num += len(token[]) + 1
        self._token_bundles = mojo_format_token_bundles