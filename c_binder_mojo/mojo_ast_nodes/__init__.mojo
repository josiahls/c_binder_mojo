# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode
from .single_line_comment_node import SingleLineCommentNode
from .multi_line_comment_node import MultiLineCommentNode
from .whitespace_node import WhitespaceNode
from .macro_define_node import MacroDefineNode
from .macro_define_value_node import MacroDefineValueNode
from .enum_node import EnumNode
from .scope_node import ScopeNode
from .enum_field_node import EnumFieldNode
from .macro_if_def_node import MacroIfDefNode
from .function_call_node import FunctionCallNode
from .variable_node import VariableNode
# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    RootNode,
    SingleLineCommentNode,
    MultiLineCommentNode,
    ScopeNode,
    WhitespaceNode,
    MacroDefineNode,
    MacroDefineValueNode,
    EnumNode,
    EnumFieldNode,
    MacroIfDefNode,
    FunctionCallNode,
    VariableNode,
    PlaceHolderNode,  # Placeholder must be the last node
]

# Tree
from .nodes import AstNode, NodeAstLike
from .tree import ModuleInterface, make_tree
