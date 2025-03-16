# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant
# First Party Modules
from c_binder_mojo.common import TokenBundle, NodeIndices,NodeState, TokenBundles
from c_binder_mojo.c_ast_nodes.tree import TreeInterface
from c_binder_mojo.c_ast_nodes.nodes import AstNode, NodeAstLike


@value
struct RootNode(NodeAstLike):
    alias __name__ = "RootNode"
    var _indicies: ArcPointer[NodeIndices]
    var _token_bundles: ArcPointer[TokenBundles]

    fn __init__(out self, indicies:NodeIndices, token_bundles:TokenBundles):
        self._indicies = indicies
        self._token_bundles = token_bundles

    @staticmethod
    fn accept(token:TokenBundle, tree_interface:TreeInterface, indices:NodeIndices) -> Bool:
        return len(tree_interface.nodes()[]) == 0

    @staticmethod
    fn create(token:TokenBundle, tree_interface:TreeInterface, indices:NodeIndices) -> Self:
        return Self(indices, TokenBundles())

    fn determine_state(mut self, token:TokenBundle, tree_interface:TreeInterface, indices:NodeIndices) -> StringLiteral:
        return NodeState.WANTING_CHILD    

    fn process(mut self, token:TokenBundle, tree_interface:TreeInterface, indices:NodeIndices):
        pass

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies
        
    fn token_bundles(self) -> TokenBundles:
        return self._token_bundles[]

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        return self._token_bundles
        
    @always_inline("nodebug")
    fn __str__(self) -> String:
        return "RootNode"

    fn name(self, include_sig: Bool=False) -> String:
        if include_sig:
            return self.__name__ + "()"
        else:
            return self.__name__

