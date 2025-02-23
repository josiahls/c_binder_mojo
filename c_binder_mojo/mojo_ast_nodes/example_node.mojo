# Native Mojo Modules
from pathlib import Path
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle,TokenBundles
from c_binder_mojo.mojo_ast_nodes.common import NodeAstLike


@value
struct ExampleNode(NodeAstLike):
    alias __name__ = 'ExampleNode'

    fn __str__(self) -> String:
        return String('ExampleNode')

