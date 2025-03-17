# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant
# First Party Modules
from c_binder_mojo.common import TokenBundle, NodeIndices, TokenBundles, NodeState
from c_binder_mojo.c_ast_nodes.tree import TreeInterface
from c_binder_mojo.c_ast_nodes.nodes import AstNode, NodeAstLike, default_scope_level, default_to_string


@value
struct PlaceHolderNode(NodeAstLike):
    alias __name__ = "PlaceHolderNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]

    fn __init__(out self, indicies:NodeIndices, token_bundles:TokenBundles):
        self._indicies = indicies
        self._token_bundles = token_bundles

    @staticmethod
    fn accept(token:TokenBundle, tree_interface:TreeInterface, indices:NodeIndices) -> Bool:
        return True    

    @staticmethod
    fn create(token:TokenBundle, tree_interface:TreeInterface, indices:NodeIndices) -> Self:
        return Self(indices, TokenBundles())

    fn determine_state(mut self, token:TokenBundle, tree_interface:TreeInterface) -> StringLiteral:
        return NodeState.COMPLETE

    fn process(mut self, token:TokenBundle, node_state:StringLiteral, tree_interface:TreeInterface):
        pass    

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies

    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles[]

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        return self._token_bundles

    fn token_bundles_tail(self) -> TokenBundles:
        return TokenBundles()

    @always_inline("nodebug")
    fn __str__(self) -> String:
        return "PlaceHolderNode"

    fn name(self, include_sig: Bool=False) -> String:
        if include_sig:
            return self.__name__ + "(" + String(self._indicies[]) + ")"
        else:
            return self.__name__

    fn to_string(self, just_code: Bool, tree_interface: TreeInterface) -> String:
        return default_to_string(AstNode(self), just_code, tree_interface)

    fn scope_level(self, just_code: Bool, tree_interface: TreeInterface) -> Int:
        return default_scope_level(self._indicies[].original_parent_idx, just_code, tree_interface)

    fn scope_offset(self, just_code: Bool) -> Int:
        return 0 if just_code else 0  # Root adds one level of scope