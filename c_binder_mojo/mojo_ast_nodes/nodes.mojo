# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.mojo_ast_nodes.tree import Tree
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike, TreeInterface, NodeIndices
from c_binder_mojo.mojo_ast_nodes.node_variant import Variant
from c_binder_mojo.mojo_ast_nodes import (
    PlaceHolderNode,
    RootNode,
    SingleLineCommentNode,  # Updated name
    WhitespaceNode,  # Add import
    MacroIfNDefNode,  # Add import
    MacroElseNode,  # Add import
    MacroDefineNode,  # Add import
    DeletedNode,  # Add import
)
from c_binder_mojo import c_ast_nodes


@value
struct AstNode(CollectionElement):
    alias type = Variant[
        RootNode,                # Must be first to handle root
        MacroIfNDefNode,         # Handle macros before comments
        MacroElseNode,          # Handle else blocks
        MacroDefineNode,        # Handle define directives
        SingleLineCommentNode,   # Handle comments before fallback
        WhitespaceNode,         # Handle whitespace
        DeletedNode,            # Handle deleted nodes
        PlaceHolderNode,        # Must be last as fallback
    ]
    # NOTE: This is experimental.
    var node: ArcPointer[Self.type]

    fn __init__(out self, node: Self.type):
        self.node = ArcPointer[Self.type](node)

    fn __copyinit__(out self, other: Self):
        self.node = other.node

    fn __moveinit__(out self, owned other: Self):
        self.node = other.node^

    fn indices(self) -> ArcPointer[NodeIndices]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].indices()
        print("No indices found for node: ", String(self))
        return ArcPointer[NodeIndices](NodeIndices(0, 0, 0, 0))

    @always_inline("nodebug")
    @staticmethod
    fn accept(c_ast_node: c_ast_nodes.nodes.AstNode, parent_idx: Int, tree_interface: TreeInterface) -> Self:
        """
        Iterates over each type in the variant at compile-time and calls accept.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if T.accept(c_ast_node, parent_idx, tree_interface):
                return Self(T.create(c_ast_node, parent_idx, tree_interface))
        
        return Self(PlaceHolderNode.create(c_ast_node, parent_idx, tree_interface))

    @always_inline("nodebug")
    fn __str__(self) -> String:
        """
        Iterates over each type in the variant at compile-time and calls to_string.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            # NOTE: Originally was self.node.isa...
            if self.node[].isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                # NOTE: Originally was self.node._get_ptr[T]()
                var val_ptr = self.node[]._get_ptr[T]()
                # Now call the trait method:
                return String(val_ptr[]) 

        # If we somehow never matched (should never happen if the variant covers all):
        return "<unknown type>"

    # State checks
    fn is_accepting_tokens(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].is_accepting_tokens(c_ast_node, tree_interface)
        return False

    fn is_complete(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].is_complete(c_ast_node, tree_interface)
        return True

    fn wants_child(self, c_ast_node: c_ast_nodes.nodes.AstNode, tree_interface: TreeInterface) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].wants_child(c_ast_node, tree_interface)
        return False

    # Actions
    fn append(mut self, c_ast_node: c_ast_nodes.nodes.AstNode) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].append(c_ast_node)
        return False

    fn add_child(mut self, child_idx: Int):
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                val_ptr[].add_child(child_idx)
                return

    fn str_just_code(mut self) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].str_just_code()
        print("No str_just_code found for node: ", String(self))
        return False

    fn set_str_just_code(mut self, str_just_code: Bool):
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                val_ptr[].set_str_just_code(str_just_code)
                return
        print("No set_str_just_code found for node: ", String(self))
        return

    fn scope_level(self, tree_interface: TreeInterface) -> Int:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].scope_level(tree_interface)

        print("No scope level found for node: ", String(self))
        return 0  # Default scope level if no specific behavior is found

    fn scope_offset(self) -> Int:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].scope_offset()

        print("No scope offset found for node: ", String(self))
        return 0

    fn finalize(mut self, parent_idx: Int, mut tree_interface: TreeInterface):
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                val_ptr[].finalize(parent_idx, tree_interface)
                return
        print("No finalize found for node: ", String(self))
        return


    fn display_name(self) -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].display_name()
        print("No display name found for node: ", String(self))
        return ""

    fn token_bundles(self) -> TokenBundles:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].token_bundles()
        print("No token bundles found for node: ", String(self))
        return TokenBundles()
