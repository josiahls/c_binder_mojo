# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes_old.tree import Tree
from c_binder_mojo.c_ast_nodes_old.common import NodeAstLike, CTokens
from c_binder_mojo.c_ast_nodes_old.node_variant import Variant
from c_binder_mojo.c_ast_nodes_old.nodes import node2string

@value
struct StructNode(NodeAstLike):
    alias __name__ = "StructNode"
    
    var _token_bundles: TokenBundles
    var just_code: Bool
    var _parent: Int
    var _current_idx: Int
    var _children: ArcPointer[List[Int]]
    var struct_name: String
    var _inside_typedef: Bool

    fn __init__(out self, token_bundle: TokenBundle, parent: Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._children = ArcPointer(List[Int]())
        self.struct_name = "AnonymousStruct"
        self._inside_typedef = False
    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    @staticmethod
    fn accept(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Bool:
        # Direct struct declaration
        if token_bundle.token == "struct":
            return True
            
        # Inside a struct field that's marked for struct
        # if tree.nodes[parent_idx].node.isa[StructFieldNode]():
        #     var field_node = tree.nodes[parent_idx].node[StructFieldNode]
        #     if field_node._is_struct:
        #         # Accept opening brace or identifier for anonymous struct
        #         return token_bundle.token == CTokens.SCOPE_BEGIN
        return False

    fn append(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        if self._token_bundles[-1].token == 'mjLROpt_' and self._inside_typedef:
            print('here')
        # Handle the struct name first
        if len(self._token_bundles) == 1:  # Only have 'struct' token so far
            # Handle anonymous structs
            if token_bundle.token != CTokens.SCOPE_BEGIN:
                self.struct_name = token_bundle.token
                self._token_bundles.append(token_bundle)
                return True

        if token_bundle.token == CTokens.END_STATEMENT:
            # Add token splitter
            self._token_bundles.append(
                TokenBundle(
                    token='',
                    is_splitter=True,
                    line_num=token_bundle.line_num,
                    col_num=token_bundle.col_num
                )
            )
            self._token_bundles.append(token_bundle)
            return True

        return False

    @staticmethod
    fn create(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Self:
        var node = Self(token_bundle, parent_idx)
        
        if tree.nodes[parent_idx].node.isa[TypedefNode]():
            node._inside_typedef = True
        return node

    fn done(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        if token_bundle.token == 'mjLROpt_' and self._inside_typedef:
            print('here')
        # Same logic as enum - check for semicolon and scope completion
        if self._inside_typedef and len(self._token_bundles) == 2:
            return True
        if token_bundle.token == CTokens.END_STATEMENT:
            return False
        if self._token_bundles[-1].token == CTokens.END_STATEMENT:
            return True
        if len(self._children[]) == 0:
            return False
        last_child_idx = self._children[][-1]
        if tree.nodes[last_child_idx].token_bundles()[-1].token == CTokens.SCOPE_END:
            return True
        return False

    fn make_child(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return token_bundle.token == CTokens.SCOPE_BEGIN

    fn parent_idx(self) -> Int:
        return self._parent

    fn children_idxs(mut self) -> ArcPointer[List[Int]]:
        return self._children

    fn current_idx(self) -> Int:
        return self._current_idx

    fn set_current_idx(mut self, value: Int):
        self._current_idx = value

    fn display_name(self) -> String:
        s = String(self.__name__)
        s += String('(name=') + self.struct_name + String(',')
        s += String('parent=') + String(self._parent) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(')')
        return s

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False 