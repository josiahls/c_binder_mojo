# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode
from .full_comment_node import FullCommentNode
from .field_decl_node import FieldDeclNode
from .record_decl_node import RecordDeclNode
from .enum_decl_node import EnumDeclNode
from .enum_constant_decl_node import EnumConstantDeclNode
from .end_file_node import EndFileNode

# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    RootNode,
    FullCommentNode,
    RecordDeclNode,
    FieldDeclNode,
    EnumDeclNode,
    EnumConstantDeclNode,
    EndFileNode,
    PlaceHolderNode,  # Placeholder must be the last node
]
