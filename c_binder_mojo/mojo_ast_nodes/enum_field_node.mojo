# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode, default_to_string
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, node2string, TreeInterface, default_scope_level, NodeIndices
from c_binder_mojo import c_ast_nodes

@value
struct EnumFieldNode(NodeAstLike):
    """Handles C enum field declarations.
    
    Converts C enum fields to Mojo aliases:
    mjGEOM_PLANE = 0  ->  alias mjGEOM_PLANE = 0
    """
    alias __name__ = "EnumFieldNode"
    
    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _field_name: String
    var _field_value: UInt
    var _parent_enum_values: ArcPointer[List[UInt]]

    fn __init__(out self, c_ast_node: c_ast_nodes.nodes.AstNode, parent_enum_values: ArcPointer[List[UInt]]):
        self._token_bundles = c_ast_node.token_bundles()
        self._indices = ArcPointer(NodeIndices(
            c_node_idx=c_ast_node.current_idx(),
            c_parent_idx=c_ast_node.parent_idx(),
            mojo_node_idx=0,
            mojo_parent_idx=-1
        ))
        self._str_just_code = False
        self._parent_enum_values = parent_enum_values
        self._field_value = 0
        
        # Extract field name and value
        # TODO(josiahls): This is stupid. Lets update the c ast node to specify the field name and value.
        self._field_name = c_ast_node.node[c_ast_nodes.nodes.EnumFieldNode].token_bundles()[0].token

        # TODO(josiahls): So ugly lol
        if len(c_ast_node.node[c_ast_nodes.nodes.EnumFieldNode].token_bundles()) == 1:
            for value in self._parent_enum_values[]:
                if value[] > self._field_value:
                    self._field_value = value[]
            self._field_value += 1
            self._parent_enum_values[].append(self._field_value)
        elif len(c_ast_node.node[c_ast_nodes.nodes.EnumFieldNode].token_bundles()) == 2:
            for value in self._parent_enum_values[]:
                if value[] > self._field_value:
                    self._field_value = value[]
            self._field_value += 1
            self._parent_enum_values[].append(self._field_value)
        elif len(c_ast_node.node[c_ast_nodes.nodes.EnumFieldNode].token_bundles()) >= 3:
            var field_value = c_ast_node.node[c_ast_nodes.nodes.EnumFieldNode].field_value
            
            try:
                if "<<" in field_value:
                    var parts = field_value.split("<<")
                    var base = UInt(parts[0].__int__())
                    var shift = UInt(parts[1].__int__())
                    self._field_value = base << shift
                else:
                    self._field_value = UInt(field_value.__int__())
            except:
                print("Failed to convert field value to UInt: " + field_value)

            self._parent_enum_values[].append(self._field_value)
        else:
            print("EnumFieldNode: Unexpected number of token bundles: " + String(len(c_ast_node.node[c_ast_nodes.nodes.EnumFieldNode].token_bundles())))

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self._str_just_code)

    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Bool:
        return c_ast_node.node.isa[c_ast_nodes.nodes.EnumFieldNode]()

    @staticmethod
    fn create(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        var node = tree_interface.nodes[][parent_idx].node
        if node[].isa[ScopeNode]():
            node = tree_interface.nodes[][node[][ScopeNode]._indices[].mojo_parent_idx].node
        if node[].isa[EnumNode]():
            var enum_node = node[][EnumNode]
            return Self(c_ast_node, enum_node._enum_values)
        return Self(c_ast_node, ArcPointer(List[UInt]()))

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return True

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        return False  # Enum fields don't have children

    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        return False

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn display_name(self) -> String:
        return self.__name__ + "(name=" + self._field_name + ", value=" + String(self._field_value) + ", " + String(self._indices[]) + ")"

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
        return 0  # No additional indentation needed

    fn finalize(mut self, parent_idx: Int, mut tree_interface: TreeInterface):
        """Convert enum field to Mojo alias."""
        var mojo_format = TokenBundles()
        var line_num = self._token_bundles[0].line_num
        
        # Format as: alias NAME = VALUE
        mojo_format.append(TokenBundle(
            token="alias " + self._field_name + " = " + String(self._field_value),
            line_num=line_num,
            col_num=4  # Indent one level
        ))
        
        self._token_bundles = mojo_format

    fn name(self) -> String:
        """Returns the raw node name without any metadata."""
        return Self.__name__

    fn to_string(self, just_code: Bool, tree_interface: TreeInterface) -> String:
        return default_to_string(AstNode(self), self._str_just_code, tree_interface) 