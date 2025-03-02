# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode, default_to_string
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, default_scope_level, NodeIndices
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.mojo_ast_nodes import DeletedNode, EnumNode, BasicDataTypeNode

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
        """Finalizes the typedef node.
        
        For basic types: Creates a Mojo alias (e.g., alias foo_t = Int)
        For enums: Keeps the enum definition and creates an alias to it
        For structs: Comments out for now (TODO)
        """
        # Get the first child which should be the type
        if len(self._indices[].mojo_children_idxs[]) == 0:
            print("Warning: Typedef has no children: " + String(self._token_bundles))
            return

        # TODO(josiahls): Might either support multiple children or at least add a debug_assert
        var child_idx = self._indices[].mojo_children_idxs[][0]
        var child_node = tree_interface.nodes[][child_idx]

        # Create Mojo alias declaration
        var mojo_format_token_bundles = TokenBundles()
        var line_num = self._token_bundles[0].line_num
        var col_num = 0

        # Handle different child types
        if child_node.node[].isa[BasicDataTypeNode]():
            # For basic types, create simple alias
            for token in List[String]('alias', self._alias_name, '=', child_node.token_bundles()[0].token):
                mojo_format_token_bundles.append(TokenBundle(token=token[], line_num=line_num, col_num=col_num))
                col_num += len(token[]) + 1


            # Delete the child from the tree since it's been handled
            tree_interface.nodes[][child_idx] = AstNode(DeletedNode(
                ast_node=child_node,
                reason="Deleted because it has been consolidated into a mojo alias",
                as_comment=True
            ))

        elif child_node.node[].isa[EnumNode]():
            # For enums, keep the enum definition and create alias to it
            var enum_name = child_node.node[][EnumNode]._enum_name
            # Children for complex types like structs/enums need to be defined the line before the alias
            mojo_format_token_bundles.append(TokenBundle(token="", line_num=line_num, col_num=col_num, is_splitter=True))
            for token in List[String]('alias', self._alias_name, '=', enum_name):
                mojo_format_token_bundles.append(TokenBundle(token=token[], line_num=line_num, col_num=col_num))
                col_num += len(token[]) + 1

        elif child_node.node[].isa[c_ast_nodes.nodes.StructNode]():
            # For now, just comment out struct typedefs
            mojo_format_token_bundles.append(TokenBundle(
                token="# Complex typedef (struct) not supported yet: " + String(self._token_bundles),
                line_num=line_num,
                col_num=0
            ))

        else:
            # For unknown types, comment out
            mojo_format_token_bundles.append(TokenBundle(
                token="# Complex typedef not supported yet: " + String(self._token_bundles),
                line_num=line_num,
                col_num=0
            ))

        self._token_bundles = mojo_format_token_bundles

    fn to_string(self, just_code: Bool, tree_interface: TreeInterface) -> String:
        return default_to_string(AstNode(self), just_code, tree_interface) 
