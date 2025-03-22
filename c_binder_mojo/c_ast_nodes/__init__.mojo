# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode
from .single_line_comment_node import SingleLineCommentNode
from .multi_line_comment_node import MultiLineCommentNode

# Setup Variant
from .node_variant import Variant
alias AstNodeVariant = Variant[
    RootNode,
    SingleLineCommentNode,
    MultiLineCommentNode,
    PlaceHolderNode
]

# Tree
from .nodes import AstNode, NodeAstLike
from .tree import TreeInterface, make_tree

