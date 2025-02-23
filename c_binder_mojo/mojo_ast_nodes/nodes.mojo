# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.mojo_ast_nodes.tree import Tree
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike,ParsedTokenBundles
from c_binder_mojo.mojo_ast_nodes.node_variant import Variant
from c_binder_mojo.mojo_ast_nodes import (
    PlaceHolderNode,
    RootNode,
)


@value
struct AstNode(CollectionElement):
    alias type = Variant[
        RootNode,         # Must be first to handle root
        PlaceHolderNode,  # Must be last as fallback
    ]
    # NOTE: This is experimental.
    var node: ArcPointer[Self.type]

    fn __init__(out self, node: Self.type):
        self.node = ArcPointer[Self.type](node)

    fn __copyinit__(out self, other: Self):
        self.node = other.node

    fn __moveinit__(out self, owned other: Self):
        self.node = other.node^

    @always_inline("nodebug")
    @staticmethod
    fn accept(token_bundle: ParsedTokenBundles, parent_idx: Int, nodes: ArcPointer[List[AstNode]]) -> Self:
        """
        Iterates over each type in the variant at compile-time and calls accept.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if T.accept(token_bundle, parent_idx, nodes):
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                # var ref_val = self.node[T]
                # Now call the trait method:
                return Self(T.create(token_bundle,parent_idx, nodes))
        
        return Self(PlaceHolderNode.create(token_bundle, parent_idx, nodes))

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
    fn is_accepting_tokens(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].is_accepting_tokens(token_bundle, nodes)
        return False

    fn is_complete(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].is_complete(token_bundle, nodes)
        return True

    fn wants_child(self, token_bundle: ParsedTokenBundles, nodes: ArcPointer[List[AstNode]]) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].wants_child(token_bundle, nodes)
        return False

    # Actions
    fn append(mut self, token_bundle: ParsedTokenBundles) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].append(token_bundle)
        return False

    fn add_child(mut self, child_idx: Int):
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                val_ptr[].add_child(child_idx)
                return

    fn parent_idx(self) -> Int:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].parent_idx()
        return -1