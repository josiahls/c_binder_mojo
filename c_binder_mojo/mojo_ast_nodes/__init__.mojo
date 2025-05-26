# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode
from .comment_node import CommentNode
# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    RootNode,
    CommentNode,
    PlaceHolderNode,  # Placeholder must be the last node
]