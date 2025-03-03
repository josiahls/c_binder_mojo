# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.c_ast_nodes.common import NodeAstLike, CTokens
from c_binder_mojo.c_ast_nodes.node_variant import Variant
from c_binder_mojo.c_ast_nodes.nodes import node2string
from c_binder_mojo.c_ast_nodes.scope_node import ScopeNode, ScopeType
@value
struct EnumFieldNode(NodeAstLike):
    """Represents a field in an enum definition.
    
    Examples:
        FIELD_NAME,
        FIELD_NAME = 1,
        FIELD_NAME = SOME_CONSTANT,
    """
    alias __name__ = "EnumFieldNode"
    
    var _token_bundles: TokenBundles
    var just_code: Bool
    var _parent: Int
    var _current_idx: Int
    var _children: ArcPointer[List[Int]]
    var field_name: String
    var field_value: String # Keep this as a string for mojo to handle conversion.
    var _is_done: Bool

    fn __init__(out self, token_bundle: TokenBundle, parent: Int):
        self._token_bundles = TokenBundles()
        self._token_bundles.append(token_bundle)
        self.just_code = False
        self._parent = parent
        self._current_idx = 0
        self._children = ArcPointer(List[Int]())
        self.field_name = token_bundle.token  # First token is the field name
        self._is_done = False
        self.field_value = ""

    fn __str__(self) -> String:
        return node2string(self.display_name(), self.token_bundles(), self.just_code)

    @staticmethod
    fn accept(token_bundle: TokenBundle, parent_idx:Int, mut tree: Tree) -> Bool:
        if tree.nodes[parent_idx].node.isa[ScopeNode]():
            var scope_node = tree.nodes[parent_idx].node[ScopeNode]
            return scope_node.scope_type.type == ScopeType.ENUM
        return False

    fn append(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # I think for the most part we can just append the continuous chunk of tokens.
        # enum fields don't have children, so once the `done` function is called, we are done.
        if token_bundle.token == " " or token_bundle.token == "":
            return True # Lets just ignore whitespace for now.
        if token_bundle.token == ",":
            self._is_done = True
        self._token_bundles.append(token_bundle)
        return True

    @staticmethod
    fn create(token_bundle: TokenBundle, parent_idx: Int, mut tree: Tree) -> Self:
        return Self(token_bundle, parent_idx)

    fn done(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # Done when we hit a comma
        if self._is_done:
            return True

        # If the token is a comment, we are done.
        # NOTE: Wondering if it is a better policy to check if the comment nodes 
        # would accept this token, instead of checking directly.
        if token_bundle.token in [
            String(CTokens.COMMENT_SINGLE_LINE_BEGIN), 
            String(CTokens.COMMENT_MULTI_LINE_BEGIN), 
            String(CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN)
        ]:
            return True

        # If the second to last token is an `=`, we are done also.
        # Handles the case where the very last enum field doesn't have a comma.
        if len(self._token_bundles) > 1:
            if self._token_bundles[-2].token == '=' and token_bundle.token != ',':
                self.field_value = self._token_bundles[-1].token
                return True

        return False

    fn make_child(mut self, token_bundle: TokenBundle, mut tree: Tree) -> Bool:
        # Enum fields don't have children
        return False

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
        s += String('(field_name=') + self.field_name + String(',')
        s += String('parent=') + String(self._parent) + String(',')
        s += String('current_idx=') + String(self._current_idx) + String(')')
        return s

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles

    fn should_children_inline(self) -> Bool:
        return True 