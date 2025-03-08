# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode, default_to_string
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, default_scope_level, NodeIndices
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.mojo_ast_nodes.struct_node import StructNode

@value
struct StructFieldNode(NodeAstLike):
    """Handles C struct field declarations.
    
    For basic fields:
        int flag;      -> var flag: Int32
        double* ptr;   -> var ptr: Pointer[Float64]
    
    For nested structs:
        struct { int x; } field;  -> 
            struct ParentStruct_field:
                var x: Int32
            ...
            var field: ParentStruct_field
    """
    # TODO(josiahls): This still doesn't handle nested structs that are
    # nested within other structs.
    # TODO(josiahls): Indenting is a little weird in the results
    alias __name__ = "StructFieldNode"
    
    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _field_name: String
    var _field_type: String
    var _is_struct: Bool
    var _parent_struct_name: String
    
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
        self._field_name = c_ast_node.node[c_ast_nodes.nodes.StructFieldNode].field_name
        self._field_type = ""  # Will be set in finalize
        self._parent_struct_name = ""
        self._is_struct = c_ast_node.node[c_ast_nodes.nodes.StructFieldNode]._is_struct
        if self._is_struct:
            print("DEBUG: Struct field node is struct: " + self.display_name())


    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool:
        print("DEBUG: StructFieldNode.accept called for node: " + c_ast_node.display_name())
        print("DEBUG: With parent_idx: " + String(parent_idx))
        return c_ast_node.node.isa[c_ast_nodes.nodes.StructFieldNode]()

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        print("DEBUG: StructFieldNode.create called for node: " + c_ast_node.display_name())
        print("DEBUG: With parent_idx: " + String(parent_idx))
        var node = Self(c_ast_node)
        return node

    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        # If we're a struct field and haven't processed all our children yet, we're not complete
        if self._is_struct:
            return c_ast_node.current_idx() not in self._indices[].c_children_idxs[]
        return True

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return self._is_struct  # Accept children only if we're a struct field

    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        return False

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn display_name(self) -> String:
        return self.__name__ + "(name=" + self._field_name + ", type=" + self._field_type + ", " + String(self._indices[]) + ")"

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
        """Convert struct field to Mojo field, handling nested structs."""
        var mojo_format = TokenBundles()
        var line_num = self._token_bundles[0].line_num
        
        if self._is_struct:
            print("DEBUG: Struct field node is struct: " + self.display_name())
            # Get parent struct name to create unique nested struct names
            var _parent_idx = parent_idx
            while _parent_idx >= 0:
                var parent_node = tree_interface.nodes[][_parent_idx]
                # print('Checking parent node: ' + parent_node.display_name())
                if parent_node.node[].isa[StructNode]():
                    # TODO(josiahls): We actually should turn this into an append op.
                    self._parent_struct_name = parent_node.node[][StructNode]._struct_name
                    break
                _parent_idx = parent_node.indices()[].mojo_parent_idx
            
            if not self._parent_struct_name:
                print("No parent struct name found for " + self._field_name)
                self._parent_struct_name = "AnonymousStruct"
            
            # For struct fields, create a unique name by combining parent and field names
            self._field_type = self._parent_struct_name + "_" + self._field_name
            
            # Update the struct node's name (it should be our only child)
            if len(self._indices[].mojo_children_idxs[]) > 0:
                for struct_child_idx in self._indices[].mojo_children_idxs[]:
                    if tree_interface.nodes[][struct_child_idx[]].node[].isa[StructNode]():
                        var struct_node = tree_interface.nodes[][struct_child_idx[]].node[][StructNode]
                        struct_node._struct_name = self._field_type
        else:
            # Basic field - use first token as type
            self._field_type = self._token_bundles[0].token
        
        # Format as: var NAME: TYPE
        mojo_format.append(TokenBundle(
            token="var " + self._field_name + ": " + self._field_type,
            line_num=line_num,
            col_num=4  # Indent one level
        ))
        
        self._token_bundles = mojo_format

    fn name(self) -> String:
        """Returns the raw node name without any metadata."""
        return Self.__name__

    fn to_string(self, just_code: Bool, tree_interface: TreeInterface) -> String:
        return default_to_string(AstNode(self), just_code, tree_interface) 