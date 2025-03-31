# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode

# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    RootNode,
    PlaceHolderNode,
]

# Tree
from .nodes import AstNode, NodeAstLike
from .tree import ModuleInterface, make_tree
