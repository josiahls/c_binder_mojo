# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, default_scope_level, NodeIndices
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.mojo_ast_nodes.deleted_node import DeletedNode

from c_binder_mojo.mojo_ast_nodes.basic_data_type_node import BasicDataTypeNode

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
        For basic types (int, char etc), converts to Mojo equivalent.
        For complex types (enum, struct etc), keeps as comment.
        """
        var alias_value = String()
        for child_idx in self._indices[].mojo_children_idxs[]:
            var child_node = tree_interface.nodes[][child_idx[]]
            
            # Check child node type
            if child_node.node[].isa[BasicDataTypeNode]():
                # Handle basic types
                alias_value = child_node.token_bundles()[0].token
            elif child_node.node[].isa[c_ast_nodes.nodes.EnumNode]():
                # For enums, keep original typedef as comment
                alias_value = "# Complex typedef (enum) not supported yet: " + String(self._token_bundles)
            elif child_node.node[].isa[c_ast_nodes.nodes.StructNode]():
                # For structs, keep original typedef as comment
                alias_value = "# Complex typedef (struct) not supported yet: " + String(self._token_bundles)
            else:
                # For other complex types, keep as comment
                alias_value = "# Complex typedef not supported yet: " + String(self._token_bundles)
            
            # Delete the child from the tree
            tree_interface.nodes[][child_idx[]] = AstNode(DeletedNode(
                ast_node=child_node,
                reason="Deleted because it has been consolidated into a mojo alias",
                as_comment=True
            ))

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
        var mojo_type = self.alias_value(tree_interface)
        
        # If it starts with #, it's a comment
        if mojo_type.startswith("#"):
            var comment = TokenBundles()
            comment.append(TokenBundle(token=mojo_type, line_num=self._token_bundles[0].line_num, col_num=0))
            self._token_bundles = comment
            return
            
        # Create Mojo alias declaration
        var mojo_format_token_bundles = TokenBundles()
        var line_num = self._token_bundles[0].line_num
        var col_num = 0
        for token in List[String]('alias', self._alias_name, '=', mojo_type):
            mojo_format_token_bundles.append(TokenBundle(token=token[], line_num=line_num, col_num=col_num))
            col_num += len(token[]) + 1
        self._token_bundles = mojo_format_token_bundles