# Native Mojo Modules
# from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.mojo_ast_nodes.tree import Tree
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike
from c_binder_mojo.mojo_ast_nodes.node_variant import Variant
from c_binder_mojo.mojo_ast_nodes import (
    ExampleNode
)





struct AstNode(Movable):
    alias type = Variant[
        ExampleNode
    ]
    var node: Self.type

    fn __init__(out self, node: Self.type):
        self.node = node

    fn __moveinit__(out self, owned existing: Self):
        self.node = existing.node^
