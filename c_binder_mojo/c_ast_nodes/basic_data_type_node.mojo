# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes.nodes import node2string
from c_binder_mojo.c_ast_nodes.common import CPrimitiveTypes

@value
struct BasicDataTypeNode(NodeAstLike):
    """Represents a C data type, either basic or compound.
    
    Examples:
        - Basic: "unsigned char", "int", "float"
        - Compound: "enum mjtDisableBit_", "struct Point"
    """
    alias __name__ = "BasicDataTypeNode"
    
    var _token_bundles: TokenBundles
    var just_code: Bool
    var _parent: Int
    var _current_idx: Int
    var _children: ArcPointer[List[Int]]
    var is_compound: Bool

    fn __init__(out self, token_bundle: TokenBundle, parent: Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._children = ArcPointer(List[Int]())
        self.is_compound = False
        
    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    @staticmethod
    fn split_pointer_from_token(token: String) -> List[String]:
        try:
            tokens = token.split("*")
        except:
            tokens = List[String](token)
        return tokens

    @staticmethod
    fn accept(token_bundle: TokenBundle, mut tree:Tree) -> Bool:
        all_accepted = False
        for subtoken in BasicDataTypeNode.split_pointer_from_token(token_bundle.token):
            if subtoken[] in CPrimitiveTypes:
                all_accepted = True
                break

        return all_accepted

    @staticmethod
    fn create(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Self:
        return Self(token_bundle, parent_idx)

    fn append(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:

        # Handle compound types like "unsigned char" or "long int"
        split_token_bundles = List[TokenBundle]()
        failed_to_accept = False
        for subtoken in BasicDataTypeNode.split_pointer_from_token(token_bundle.token):
            split_token = TokenBundle(
                subtoken[], 
                token_bundle.line_num, 
                token_bundle.col_num, 
                token_bundle.is_splitter
            )
            if split_token.token in CPrimitiveTypes:
                self.is_compound = True
                split_token_bundles.append(split_token)
            else:
                failed_to_accept = True
                break
        if failed_to_accept:
            return False
        for split_token_bundle in split_token_bundles:
            self._token_bundles.append(split_token_bundle[])
        return True

    fn done(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # Done when we hit a non-type token
        return not token_bundle.token in CPrimitiveTypes

    fn make_child(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # Only make children for compound types (enum, struct, union)
        return False

    fn parent_idx(self) -> Int:
        return self._parent

    fn children_idxs(mut self) -> ArcPointer[List[Int]]:
        return self._children

    fn current_idx(self) -> Int:
        return self._current_idx

    fn set_current_idx(mut self, value: Int):
        self._current_idx = value

    fn done_no_cascade(self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        return False 
    
    fn display_name(self) -> String:
        s = String(self.__name__)
        s += String('(parent=') + String(self._parent) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(',')
        s += String('is_compound=') + String(self.is_compound) + String(')')
        return s

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return False
