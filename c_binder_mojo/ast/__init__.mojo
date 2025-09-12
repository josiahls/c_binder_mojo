# Native Mojo Modules

# Third Party Mojo Modules

# First Party Modules
from c_binder_mojo.ast.variant import Variant

# Custom Nodes
from c_binder_mojo.ast.custom.sign_node import SignNode
from c_binder_mojo.ast.custom.clang_simd_node import ClangSimdNode
from c_binder_mojo.ast.custom.return_decl_node import ReturnDeclNode

from c_binder_mojo.ast.translation_unit_decl_node import (
    TranslationUnitDeclNode,
)
from c_binder_mojo.ast.place_holder_node import PlaceHolderNode
from c_binder_mojo.ast.example_node import ExampleNode
from c_binder_mojo.ast.typedef_decl_node import TypedefDeclNode
from c_binder_mojo.ast.builtin_type_node import BuiltinTypeNode
from c_binder_mojo.ast.record_type_node import RecordTypeNode
from c_binder_mojo.ast.record_decl_node import RecordDeclNode
from c_binder_mojo.ast.pointer_type_node import PointerTypeNode
from c_binder_mojo.ast.constant_array_type_node import ConstantArrayTypeNode
from c_binder_mojo.ast.elaborated_type_node import (
    ElaboratedTypeNode,
)
from c_binder_mojo.ast.function_decl_node import (
    FunctionDeclNode,
)
from c_binder_mojo.ast.typedef_type_node import TypedefTypeNode
from c_binder_mojo.ast.mode_attr_node import ModeAttrNode
from c_binder_mojo.ast.qual_type_node import QualTypeNode
from c_binder_mojo.ast.var_decl_node import VarDeclNode
from c_binder_mojo.ast.enum_decl_node import EnumDeclNode
from c_binder_mojo.ast.enum_constant_decl_node import (
    EnumConstantDeclNode,
)
from c_binder_mojo.ast.constant_expr_node import (
    ConstantExprNode,
)
from c_binder_mojo.ast.paragraph_comment_node import (
    ParagraphCommentNode,
)
from c_binder_mojo.ast.full_comment_node import FullCommentNode
from c_binder_mojo.ast.text_comment_node import TextCommentNode
from c_binder_mojo.ast.binary_operator_node import (
    BinaryOperatorNode,
)
from c_binder_mojo.ast.integer_literal_node import (
    IntegerLiteralNode,
)
from c_binder_mojo.ast.enum_type_node import EnumTypeNode
from c_binder_mojo.ast.field_decl_node import FieldDeclNode
from c_binder_mojo.ast.indirect_field_decl_node import (
    IndirectFieldDeclNode,
)
from c_binder_mojo.ast.parm_var_decl_node import ParmVarDeclNode

alias AstNodeVariant = Variant[
    TranslationUnitDeclNode,
    # Custom nodes will have more advanced conditions.
    SignNode,
    ClangSimdNode,
    ReturnDeclNode,
    # Native clang ast nodes.
    TypedefDeclNode,
    BuiltinTypeNode,
    RecordTypeNode,
    ConstantArrayTypeNode,
    RecordDeclNode,
    PointerTypeNode,
    ElaboratedTypeNode,
    FunctionDeclNode,
    TypedefTypeNode,
    QualTypeNode,
    ModeAttrNode,
    VarDeclNode,
    EnumDeclNode,
    ParmVarDeclNode,
    EnumConstantDeclNode,
    ConstantExprNode,
    ParagraphCommentNode,
    FullCommentNode,
    TextCommentNode,
    BinaryOperatorNode,
    IntegerLiteralNode,
    EnumTypeNode,
    FieldDeclNode,
    IndirectFieldDeclNode,
    PlaceHolderNode,  # Placeholder must be the last node
    ExampleNode,
]
