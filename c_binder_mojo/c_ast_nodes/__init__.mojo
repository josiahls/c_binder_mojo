# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode
from .single_line_comment_node import SingleLineCommentNode
from .multi_line_comment_node import MultiLineCommentNode
from .whitespace_node import WhitespaceNode
from .macro_if_n_def_node import MacroIfNDefNode
from .macro_if_def_node import MacroIfDefNode

# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    RootNode,
    SingleLineCommentNode,
    MultiLineCommentNode,
    WhitespaceNode,
    MacroIfDefNode,
    MacroIfNDefNode,
    PlaceHolderNode,
]

# Tree
from .nodes import AstNode, NodeAstLike
from .tree import ModuleInterface, make_tree
