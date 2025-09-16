# Native Mojo Modules

# Third Party Mojo Modules

# First Party Modules
from c_binder_mojo.ast.variant import Variant

# Custom Nodes
from c_binder_mojo.ast.custom.sign_node import SignNode
from c_binder_mojo.ast.custom.clang_simd_node import ClangSimdNode
from c_binder_mojo.ast.custom.return_decl_node import ReturnDeclNode
from c_binder_mojo.ast.custom.sugared_type_node import SugaredTypeNode

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
from c_binder_mojo.ast.visibility_attr_node import VisibilityAttrNode
from c_binder_mojo.ast.format_attr_node import FormatAttrNode
from c_binder_mojo.ast.no_throw_attr_node import NoThrowAttrNode
from c_binder_mojo.ast.pure_attr_node import PureAttrNode
from c_binder_mojo.ast.non_null_attr_node import NonNullAttrNode
from c_binder_mojo.ast.builtin_attr_node import BuiltinAttrNode
from c_binder_mojo.ast.compound_stmt_node import CompoundStmtNode
from c_binder_mojo.ast.warn_unsed_result_attr_node import (
    WarnUnusedResultAttrNode,
)
from c_binder_mojo.ast.restrict_attr_node import RestrictAttrNode
from c_binder_mojo.ast.alloc_align_attr_node import AllocAlignAttrNode
from c_binder_mojo.ast.const_attr_node import ConstAttrNode
from c_binder_mojo.ast.deprecated_attr_node import DeprecatedAttrNode
from c_binder_mojo.ast.section_attr_node import SectionAttrNode
from c_binder_mojo.ast.cold_attr_node import ColdAttrNode
from c_binder_mojo.ast.asm_label_attr_node import AsmLabelAttrNode
from c_binder_mojo.ast.always_inline_attr_node import AlwaysInlineAttrNode
from c_binder_mojo.ast.error_attr_node import ErrorAttrNode
from c_binder_mojo.ast.alloc_size_attr_node import AllocSizeAttrNode
from c_binder_mojo.ast.aligned_attr_node import AlignedAttrNode
from c_binder_mojo.ast.paren_type_node import ParenTypeNode
from c_binder_mojo.ast.function_proto_type_node import FunctionProtoTypeNode
from c_binder_mojo.ast.param_comment_node import ParamCommandCommentNode
from c_binder_mojo.ast.verbatim_block_line_comment_node import (
    VerbatimBlockLineCommentNode,
)
from c_binder_mojo.ast.verbatim_block_comment_node import (
    VerbatimBlockCommentNode,
)
from c_binder_mojo.ast.block_command_comment_node import (
    BlockCommandCommentNode,
)
from c_binder_mojo.ast.packed_attr_node import PackedAttrNode


alias AstNodeVariant = Variant[
    TranslationUnitDeclNode,
    # Custom nodes will have more advanced conditions.
    PointerTypeNode,
    SignNode,
    ClangSimdNode,
    ReturnDeclNode,
    # Native clang ast nodes.
    TypedefDeclNode,
    FunctionProtoTypeNode,
    BuiltinTypeNode,
    QualTypeNode,
    RecordTypeNode,
    ConstantArrayTypeNode,
    RecordDeclNode,
    ElaboratedTypeNode,
    FunctionDeclNode,
    TypedefTypeNode,
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
    ParamCommandCommentNode,
    VisibilityAttrNode,
    FormatAttrNode,
    NoThrowAttrNode,
    PureAttrNode,
    ErrorAttrNode,
    NonNullAttrNode,
    BuiltinAttrNode,
    CompoundStmtNode,
    WarnUnusedResultAttrNode,
    RestrictAttrNode,
    AllocAlignAttrNode,
    DeprecatedAttrNode,
    ConstAttrNode,
    AsmLabelAttrNode,
    SectionAttrNode,
    ColdAttrNode,
    AlwaysInlineAttrNode,
    ParenTypeNode,
    AllocSizeAttrNode,
    AlignedAttrNode,
    BlockCommandCommentNode,
    VerbatimBlockLineCommentNode,
    VerbatimBlockCommentNode,
    PackedAttrNode,
    SugaredTypeNode,  # Second to last node for json object imputation
    PlaceHolderNode,  # Placeholder must be the last node
    ExampleNode,
]
