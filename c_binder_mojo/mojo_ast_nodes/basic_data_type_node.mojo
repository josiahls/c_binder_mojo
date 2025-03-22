# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.common import TokenBundle, TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import (
    NodeAstLike,
    node2string,
    TreeInterface,
    default_scope_level,
    NodeIndices,
)
from c_binder_mojo.mojo_ast_nodes.nodes import default_to_string, AstNode
from c_binder_mojo import c_ast_nodes_old


@value
struct BasicDataTypeNode(NodeAstLike):
    """Handles basic C data types and converts them to Mojo equivalents.

    Conversions:
    - int -> Int
    - float -> Float32
    - double -> Float64
    - char -> Int8
    - unsigned char -> UInt8
    """

    alias __name__ = "BasicDataTypeNode"

    var _token_bundles: TokenBundles
    var _indices: ArcPointer[NodeIndices]
    var _str_just_code: Bool
    var _is_compound: Bool

    fn __init__(out self, c_ast_node: c_ast_nodes_old.nodes.AstNode):
        self._token_bundles = c_ast_node.token_bundles()
        self._indices = ArcPointer(
            NodeIndices(
                c_node_idx=c_ast_node.current_idx(),
                c_parent_idx=c_ast_node.parent_idx(),
                mojo_node_idx=0,
                mojo_parent_idx=-1,
                c_children_idxs=c_ast_node.children_idxs(),
            )
        )
        self._str_just_code = False
        self._is_compound = c_ast_node.node[
            c_ast_nodes_old.nodes.BasicDataTypeNode
        ].is_compound

    fn __str__(self) -> String:
        return node2string(
            self.display_name(), self.token_bundles(), self._str_just_code
        )

    @staticmethod
    fn accept(
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        parent_idx: Int,
        tree_interface: TreeInterface,
    ) -> Bool:
        return c_ast_node.node.isa[c_ast_nodes_old.nodes.BasicDataTypeNode]()

    @staticmethod
    fn create(
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        parent_idx: Int,
        tree_interface: TreeInterface,
    ) -> Self:
        return Self(c_ast_node)

    # State checks
    fn is_accepting_tokens(
        self,
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        tree_interface: TreeInterface,
    ) -> Bool:
        return False

    fn is_complete(
        self,
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        tree_interface: TreeInterface,
    ) -> Bool:
        return True

    fn wants_child(
        self,
        c_ast_node: c_ast_nodes_old.nodes.AstNode,
        tree_interface: TreeInterface,
    ) -> Bool:
        return False

    fn append(mut self, c_ast_node: c_ast_nodes_old.nodes.AstNode) -> Bool:
        return False

    fn indices(self) -> ArcPointer[NodeIndices]:
        return self._indices

    fn add_child(mut self, child_idx: Int):
        self._indices[].mojo_children_idxs[].append(child_idx)

    fn display_name(self) -> String:
        return (
            self.__name__
            + "(type="
            + self._token_bundles[0].token
            + ", is_compound="
            + String(self._is_compound)
            + ", "
            + String(self._indices[])
            + ")"
        )

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return True

    fn str_just_code(mut self) -> Bool:
        return self._str_just_code

    fn set_str_just_code(mut self, str_just_code: Bool):
        self._str_just_code = str_just_code

    fn scope_level(self, tree_interface: TreeInterface) -> Int:
        return default_scope_level(
            self._indices[].mojo_parent_idx, tree_interface
        )

    fn scope_offset(self) -> Int:
        return 0

    fn c_type_to_mojo_type(self, c_type: String) -> String:
        if c_type == "int":
            return "Int"
        elif c_type == "float":
            return "Float32"
        elif c_type == "double":
            return "Float64"
        elif c_type == "char":
            return "Int8"
        elif c_type == "unsigned char":
            return "UInt8"
        else:
            return "# Complex typedef not supported yet: " + String(
                self._token_bundles
            )

    fn finalize(mut self, parent_idx: Int, mut tree_interface: TreeInterface):
        if self._is_compound:
            print(
                "Compound type not supported yet: "
                + String(self._token_bundles)
            )
            return
        # Convert C type to Mojo type
        var c_type = self._token_bundles[0].token
        var line_num = self._token_bundles[0].line_num
        var col_num = self._token_bundles[0].col_num
        var mojo_type = c_type
        if c_type == "int":
            mojo_type = "Int"
        elif c_type == "float":
            mojo_type = "Float32"
        elif c_type == "double":
            mojo_type = "Float64"
        elif c_type == "char":
            mojo_type = "Int8"
        elif c_type == "unsigned char":
            mojo_type = "UInt8"

        # Update token bundle with Mojo type
        self._token_bundles = TokenBundles()
        self._token_bundles.append(
            TokenBundle(token=mojo_type, line_num=line_num, col_num=col_num)
        )

    fn to_string(
        self, just_code: Bool, tree_interface: TreeInterface
    ) -> String:
        return default_to_string(
            AstNode(self), self._str_just_code, tree_interface
        )

    fn name(self) -> String:
        """Returns the raw node name without any metadata."""
        return Self.__name__
