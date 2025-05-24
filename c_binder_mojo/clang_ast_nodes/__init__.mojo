# Ast Nodes
from .translation_unit_decl_node import TranslationUnitDeclNode
from .placeholder_node import PlaceHolderNode

# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    TranslationUnitDeclNode,
    PlaceHolderNode
]

# Tree
from .nodes import AstNode, NodeAstLike
