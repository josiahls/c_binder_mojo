# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import TreeInterface, NodeIndices
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo import c_ast_nodes




trait NodeAstLike(CollectionElement, Stringable): 
    alias __name__: String

    @staticmethod
    fn accept(token:TokenBundle, tree_interface:TreeInterface) -> Bool:...
    @staticmethod
    fn create(token:TokenBundle, tree_interface:TreeInterface) -> Self:...
    fn determine_state(mut self, token:TokenBundle, tree_interface:TreeInterface) -> StringLiteral:...
    fn process(mut self,token:TokenBundle, tree_interface:TreeInterface):...
    # NOTE(josiahls): I think this will return a immutable reference.
    fn indicies(self) -> NodeIndices:...
    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:...
    # NOTE(josiahls): I think this will return a immutable reference.
    fn token_bundles(self) -> TokenBundles:...
    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:...
    fn name(self) -> String:...
    

@value
struct AstNode(CollectionElement):
    alias type = Variant[
        c_ast_nodes.RootNode,                # Must be first to handle root
        c_ast_nodes.PlaceHolderNode
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
    fn accept(token:TokenBundle, tree_interface: TreeInterface) -> Self:
        """
        Iterates over each type in the variant at compile-time and calls accept.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if T.accept(token, tree_interface):
                return Self(T.create(token, tree_interface))
        print('WARNING: accept called on AstNode with no accept method')
        return Self(PlaceHolderNode.create(token, tree_interface))

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
        print('WARNING: __str__ called on AstNode with no __str__ method')
        return "<unknown type>"

    # State checks
    fn is_accepting_tokens(self, tree_interface: TreeInterface) -> Bool:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                var val_ptr = self.node[]._get_ptr[T]()
                return val_ptr[].is_accepting_tokens(tree_interface)

        print('WARNING: is_accepting_tokens called on AstNode with no accepting tokens')
        return False

    fn indicies(self) -> NodeIndices:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].indicies()
        print('WARNING: indicies called on AstNode with no indicies')
        return NodeIndices(-1, -1)

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].indicies_ptr()
        print('WARNING: indicies_ptr called on AstNode with no indicies')
        return ArcPointer[NodeIndices](NodeIndices(-1, -1))
        
    fn determine_state(mut self, token:TokenBundle, tree_interface:TreeInterface) -> StringLiteral:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].determine_state(token, tree_interface)
        print('WARNING: determine_state called on AstNode with no determine_state method')
        return NodeState.COMPLETE

    fn process(mut self, token:TokenBundle, tree_interface:TreeInterface):
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():    
                self.node[]._get_ptr[T]()[].process(token, tree_interface)
        print('WARNING: process called on AstNode with no process method')

    fn name(self) -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].name()
        print('WARNING: name called on AstNode with no name method')
        return "<unknown type>"