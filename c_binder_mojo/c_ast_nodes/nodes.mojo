# Native Mojo Modules
from pathlib import Path
# from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike
from c_binder_mojo.c_ast_nodes.node_variant import Variant



fn node2string(name:String,token_bundles:TokenBundles, just_code:Bool) -> String:
    var s:String = ""
    if not just_code:
        s += name + " " + String(token_bundles)
    else:
        s += String(token_bundles)
    return s


@value
struct ExampleNode(NodeAstLike):
    alias __name__ = "ExampleNode"
    
    var token_bundles: TokenBundles
    var just_code:Bool

    fn __init__(out self,token_bundle:TokenBundle):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)

    fn apply_context(self, mut tree: Tree):
        print(len(tree.nodes))
    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: return False
    @staticmethod
    fn create(token_bundle:TokenBundle, mut tree:Tree) -> Self:
        return Self(token_bundle)

@value
struct AstNodeA(NodeAstLike):
    alias __name__ = "AstNodeA"
    
    var token_bundles: TokenBundles
    var just_code:Bool

    fn __init__(out self,token_bundle:TokenBundle):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)

    fn apply_context(self, mut tree: Tree):
        print(len(tree.nodes))
    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: return False
    @staticmethod
    fn create(token_bundle:TokenBundle, mut tree:Tree) -> Self:
        return Self(token_bundle)

@value
struct AstNodeB(NodeAstLike):
    alias __name__ = "AstNodeB"

    var token_bundles: TokenBundles
    var just_code:Bool

    fn __init__(out self,token_bundle:TokenBundle):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)

    fn apply_context(self, mut tree: Tree):
        print(len(tree.nodes))
    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: return False
    @staticmethod
    fn create(token_bundle:TokenBundle, mut tree:Tree) -> Self:
        return Self(token_bundle)

@value
struct DeletedNode(NodeAstLike):
    alias __name__ = "DeletedNode"

    fn apply_context(self, mut tree: Tree): ...
    fn __str__(self) -> String: return self.__name__
    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: return False
    @staticmethod
    fn create(token_bundle:TokenBundle, mut tree:Tree) -> Self:
        return Self()

@value
struct PlaceHolderNode(NodeAstLike):
    alias __name__ = "PlaceHolderNode"

    var token_bundles: TokenBundles
    var just_code:Bool

    fn __init__(out self,token_bundle:TokenBundle):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)

    fn apply_context(self, mut tree: Tree): ...
    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: return True
    @staticmethod
    fn create(token_bundle:TokenBundle, mut tree:Tree) -> Self:
        return Self(token_bundle)


@value
struct AstNode(CollectionElement):
    alias type = Variant[
        AstNodeA,
        AstNodeB,
        DeletedNode,
        PlaceHolderNode # Must be last in the list
    ]
    var node:Self.type

    @staticmethod
    fn accept(token_bundle:TokenBundle, mut tree:Tree) -> Self.type:
        """
        Iterates over each type in the variant at compile-time and calls apple_context.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if T.accept(token_bundle):
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                # var ref_val = self.node[T]
                # Now call the trait method:
                return Self.type(T.create(token_bundle, tree))
        
        return Self.type(PlaceHolderNode.create(token_bundle,tree))


    fn apply_context(self, node:Self.type, mut tree:Tree):
        """
        Iterates over each type in the variant at compile-time and calls apple_context.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                var ref_val = self.node.unsafe_get[T]()  # or node[T]
                # Now call the trait method:
                ref_val.apply_context(tree)
                return
        
        print(String(self) + " does not have a apply_context?")


    fn __str__(self) -> String:
        """
        Iterates over each type in the variant at compile-time and calls to_string.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                var ref_val = self.node.unsafe_get[T]()  # or node[T]
                # Now call the trait method:
                return String(ref_val) 

        # If we somehow never matched (should never happen if the variant covers all):
        return "<unknown type>"