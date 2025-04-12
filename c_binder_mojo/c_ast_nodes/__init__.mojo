# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode
from .single_line_comment_node import SingleLineCommentNode
from .multi_line_comment_node import MultiLineCommentNode
from .whitespace_node import WhitespaceNode
from .macro_if_n_def_node import MacroIfNDefNode
from .macro_if_def_node import MacroIfDefNode
from .macro_define_node import MacroDefineNode
from .macro_define_value_node import MacroDefineValueNode
from .typedef_node import TypedefNode
from .scope_node import ScopeNode
from .enum_node import EnumNode
from .struct_node import StructNode
from .enum_field_node import EnumFieldNode
from .struct_field_node import StructFieldNode
from .include_node import IncludeNode
from .end_file_node import EndFileNode
# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    EndFileNode,
    RootNode,
    WhitespaceNode,
    SingleLineCommentNode,
    MultiLineCommentNode,
    MacroIfDefNode,
    MacroIfNDefNode,
    MacroDefineNode,
    MacroDefineValueNode,
    TypedefNode,
    ScopeNode,
    EnumNode,
    StructNode,
    IncludeNode,
    EnumFieldNode,
    StructFieldNode,
    PlaceHolderNode
]

# Tree
from .nodes import AstNode, NodeAstLike
from .tree import ModuleInterface, make_tree
