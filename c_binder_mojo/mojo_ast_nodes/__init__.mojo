# Ast Nodes
from .root_node import RootNode
from .place_holder_node import PlaceHolderNode
from .full_comment_node import FullCommentNode
from .field_decl_node import FieldDeclNode
from .record_decl_node import RecordDeclNode
from .enum_decl_node import EnumDeclNode
from .enum_constant_decl_node import EnumConstantDeclNode
from .end_file_node import EndFileNode
from .var_decl_node import VarDeclNode
from .typedef_decl_node import TypedefDeclNode
from .function_decl_node import FunctionDeclNode
from .pointer_type_node import PointerTypeNode
from .builtin_type_node import BuiltinTypeNode
from .typedef_type_node import TypedefTypeNode
from .typedef_node import TypedefNode
from .record_type_node import RecordTypeNode
from .constant_array_type_node import ConstantArrayTypeNode
from .elaborated_type_node import ElaboratedTypeNode
from .parm_var_decl_node import ParmVarDeclNode
from .translation_unit_decl_node import TranslationUnitDeclNode
from .record_node import RecordNode
from .example_node import ExampleNode
from .mode_attr_node import ModeAttrNode
from .constant_expr_node import ConstantExprNode
from .value_node import ValueNode
from .qual_type_node import QualTypeNode
from .paren_type_node import ParenTypeNode
from .function_proto_type_node import FunctionProtoTypeNode
from .enum_type_node import EnumTypeNode
from .enum_node import EnumNode
from .aligned_attr_node import AlignedAttrNode
from .visibility_attr_node import VisibilityAttrNode
# Setup Variant
from .node_variant import Variant

alias AstNodeVariant = Variant[
    RootNode,
    ModeAttrNode,
    PointerTypeNode,
    BuiltinTypeNode,
    ParmVarDeclNode,
    ConstantExprNode,
    ValueNode,
    TypedefTypeNode,
    TypedefNode,
    RecordTypeNode,
    RecordNode,
    ConstantArrayTypeNode,
    ElaboratedTypeNode,
    FullCommentNode,
    TranslationUnitDeclNode,
    RecordDeclNode,
    FieldDeclNode,
    EnumDeclNode,
    EnumConstantDeclNode,
    EndFileNode,
    VarDeclNode,
    TypedefDeclNode,
    FunctionDeclNode,
    QualTypeNode,
    ParenTypeNode,
    FunctionProtoTypeNode,
    EnumTypeNode,
    EnumNode,
    AlignedAttrNode,
    VisibilityAttrNode,
    PlaceHolderNode,  # Placeholder must be the last node
    ExampleNode
]
