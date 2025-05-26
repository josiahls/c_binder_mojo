# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode
from .full_comment_node import FullCommentNode

# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    RootNode,
    FullCommentNode,
    PlaceHolderNode,  # Placeholder must be the last node
]
