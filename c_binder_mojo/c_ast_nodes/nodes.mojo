# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer,UnsafePointer
# from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes import (
    SingleCommentNode,
    MacroIfNDefNode,
    MacroDefineNode,
    RootNode,
    MacroTypedefNode,
    MacroEndIfNode,
    MacroElseNode,
    WhitespaceNode,
    MultiLineCommentNode,
    IncludeNode,
    DataTypeNode,
)



fn node2string(name:String,token_bundles:TokenBundles, just_code:Bool) -> String:
    var s:String = ""
    if not just_code:
        s += name + " " + String(token_bundles)
    else:
        s += String(token_bundles)
    return s

@value
struct DeletedNode(NodeAstLike):
    alias __name__ = "DeletedNode"

    var _children: ArcPointer[List[Int]]  # Add field to store children

    fn __init__(out self):
        self._children = ArcPointer(List[Int]())  # Initialize in constructor

    fn __str__(self) -> String: return self.__name__
    @staticmethod
    fn accept(token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False
    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self()
    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False
    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False
    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False
    fn parent_idx(self) -> Int: return 0
    fn children_idxs(mut self) -> ArcPointer[List[Int]]: return self._children
    fn current_idx(self) -> Int: return 0
    fn set_current_idx(mut self, value:Int): ...
    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False
    fn display_name(self) -> String: return self.__name__
    fn token_bundles(self) -> TokenBundles: return TokenBundles()
    fn should_children_inline(self) -> Bool: return False

@value
struct PlaceHolderNode(NodeAstLike):
    alias __name__ = "PlaceHolderNode"

    var _token_bundles: TokenBundles
    var just_code:Bool
    var _parent_idx:Int
    var _current_idx:Int
    var _children: ArcPointer[List[Int]]  # Add field to store children

    fn __init__(out self,token_bundle:TokenBundle, parent_idx:Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent_idx = parent_idx
        self._current_idx = 0
        self._children = ArcPointer(List[Int]())  # Initialize in constructor

    fn __str__(self) -> String: return node2string(self.display_name(),self.token_bundles(),self.just_code)

    @staticmethod
    fn accept(token_bundle:TokenBundle, mut tree:Tree) -> Bool: return True
    @staticmethod
    fn create(token_bundle:TokenBundle, parent_idx:Int,  mut tree:Tree) -> Self:
        return Self(token_bundle, parent_idx)
    fn done(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return True
    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False
    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool: return False
    fn parent_idx(self) -> Int: return self._parent_idx
    fn children_idxs(mut self) -> ArcPointer[List[Int]]: return self._children
    fn current_idx(self) -> Int: return self._current_idx
    fn set_current_idx(mut self, value:Int): self._current_idx = value
    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree: Tree) -> Bool: return False
    fn display_name(self) -> String:
        s = String(self.__name__)
        s += String('(parent=') + String(self._parent_idx) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(')')
        return s

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False


@value
struct AstNode(CollectionElement):
    alias type = Variant[
        SingleCommentNode,
        DeletedNode,
        MacroIfNDefNode,
        MacroDefineNode,
        WhitespaceNode,
        RootNode,
        MacroTypedefNode,
        MacroEndIfNode,
        MacroElseNode,
        IncludeNode,
        MultiLineCommentNode,
        DataTypeNode,
        PlaceHolderNode, # Must be last in the list
    ]
    var node: Self.type

    @staticmethod
    fn accept(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Self:
        """
        Iterates over each type in the variant at compile-time and calls accept.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if T.accept(token_bundle, tree):
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                # var ref_val = self.node[T]
                # Now call the trait method:
                return Self(T.create(token_bundle,parent_idx, tree))
        
        return Self(PlaceHolderNode.create(token_bundle, parent_idx, tree))

    fn done(self, token_bundle:TokenBundle, mut tree:Tree) -> Bool:
        """
        Iterates over each type in the variant at compile-time and calls apple_context.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                return val_ptr[].done(token_bundle, tree)
        
        print(String(self) + " does not have a done?")
        return False

    fn display_name(self) -> String:
        """
        Iterates over each type in the variant at compile-time and calls display_name.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                var val_ptr = self.node._get_ptr[T]()
                return val_ptr[].display_name()
        
        print(String(self) + " does not have a display_name?")
        return "<unknown type>"

    fn token_bundles(self) -> TokenBundles:
        """
        Iterates over each type in the variant at compile-time and calls token_bundles.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                var val_ptr = self.node._get_ptr[T]()
                return val_ptr[].token_bundles()
        
        print(String(self) + " does not have a token_bundles?")
        return TokenBundles()

    fn should_children_inline(self) -> Bool:
        """
        Iterates over each type in the variant at compile-time and calls should_children_inline.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                var val_ptr = self.node._get_ptr[T]()
                return val_ptr[].should_children_inline()
        
        print(String(self) + " does not have a should_children_inline?")
        return False

    fn done_no_cascade(self, token_bundle:TokenBundle, mut tree:Tree) -> Bool:
        """
        Iterates over each type in the variant at compile-time and calls apple_context.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                return val_ptr[].done_no_cascade(token_bundle, tree)
        
        print(String(self) + " does not have a done_no_cascade?")
        return False


    fn current_idx(self) -> Int:
        """
        Iterates over each type in the variant at compile-time and calls apple_context.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                return val_ptr[].current_idx()
        
        print(String(self) + " does not have a current_idx?")
        return -1

    fn parent_idx(self) -> Int:
        """
        Iterates over each type in the variant at compile-time and calls apple_context.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                return val_ptr[].parent_idx()
        
        print(String(self) + " does not have a current_idx?")
        return -1


    fn children_idxs(self) -> ArcPointer[List[Int]]:
        """
        Iterates over each type in the variant at compile-time and calls apple_context.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                return val_ptr[].children_idxs()
        
        print(String(self) + " does not have a children_idxs?")
        return ArcPointer(List[Int]())


    fn append(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool:
        """
        Iterates over each type in the variant at compile-time and calls append.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                return val_ptr[].append(token_bundle, tree)
        
        print(String(self) + " does not have a append?")
        return False


    fn set_current_idx(mut self, current_idx:Int):
        """
        Iterates over each type in the variant at compile-time and calls append.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                val_ptr[].set_current_idx(current_idx)
                return
        
        print(String(self) + " does not have a set_current_idx?")


    fn make_child(mut self, token_bundle:TokenBundle, mut tree:Tree) -> Bool:
        """
        Iterates over each type in the variant at compile-time and calls append.
        """
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            if self.node.isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                return val_ptr[].make_child(token_bundle, tree)
        
        print(String(self) + " does not have a make_child?")
        return False


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
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                var val_ptr = self.node._get_ptr[T]()
                # Now call the trait method:
                return String(val_ptr[]) 

        # If we somehow never matched (should never happen if the variant covers all):
        return "<unknown type>"