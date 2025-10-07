# Native Mojo Modules

# Third Party Mojo Modules

# First Party Modules
from c_binder_mojo.ast.variant import Variant

# Custom Nodes
from c_binder_mojo.ast.extensions.sign_node import SignNode
from c_binder_mojo.ast.extensions.clang_simd_node import ClangSimdNode
from c_binder_mojo.ast.extensions.return_decl_node import ReturnDeclNode
from c_binder_mojo.ast.extensions.sugared_type_node import SugaredTypeNode

from c_binder_mojo.ast.translation_unit_decl_node import (
    TranslationUnitDeclNode,
)
from c_binder_mojo.ast.place_holder_node import PlaceHolderNode
from c_binder_mojo.ast.example_node import ExampleNode
from c_binder_mojo.ast.declarations import (
    TypedefDeclNode,
    RecordDeclNode,
    FunctionDeclNode,
    VarDeclNode,
    EnumDeclNode,
    EnumConstantDeclNode,
    FieldDeclNode,
    ParmVarDeclNode,
)
from c_binder_mojo.ast.attributes import (
    ModeAttrNode,
    VisibilityAttrNode,
    FormatAttrNode,
    NoThrowAttrNode,
    PureAttrNode,
    NonNullAttrNode,
    BuiltinAttrNode,
    WarnUnusedResultAttrNode,
    RestrictAttrNode,
    AllocAlignAttrNode,
    DeprecatedAttrNode,
    ConstAttrNode,
    AsmLabelAttrNode,
    SectionAttrNode,
    ColdAttrNode,
    AlwaysInlineAttrNode,
    AllocSizeAttrNode,
    AlignedAttrNode,
    PackedAttrNode,
    ReturnsTwiceAttrNode,
    UnusedAttrNode,
    WeakAttrNode,
    ErrorAttrNode,
)
from c_binder_mojo.ast.builtin_type_node import BuiltinTypeNode
from c_binder_mojo.ast.record_type_node import RecordTypeNode
from c_binder_mojo.ast.pointer_type_node import PointerTypeNode
from c_binder_mojo.ast.constant_array_type_node import ConstantArrayTypeNode
from c_binder_mojo.ast.elaborated_type_node import (
    ElaboratedTypeNode,
)
from c_binder_mojo.ast.typedef_type_node import TypedefTypeNode
from c_binder_mojo.ast.qual_type_node import QualTypeNode
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
from c_binder_mojo.ast.indirect_field_decl_node import (
    IndirectFieldDeclNode,
)
from c_binder_mojo.ast.compound_stmt_node import CompoundStmtNode
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
from c_binder_mojo.ast.inline_command_comment_node import (
    InlineCommandCommentNode,
)
from c_binder_mojo.ast.static_assert_decl_node import StaticAssertDeclNode
from c_binder_mojo.ast.verbatim_line_comment_node import VerbatimLineCommentNode
from c_binder_mojo.ast.atomic_type_node import AtomicTypeNode
from c_binder_mojo.ast.variadic_args_node import VariadicArgsNode

alias AstNodeVariant = Variant[
    TranslationUnitDeclNode,
    # Custom nodes will have more advanced conditions.
    VariadicArgsNode,
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
    VerbatimLineCommentNode,
    PackedAttrNode,
    InlineCommandCommentNode,
    StaticAssertDeclNode,
    ReturnsTwiceAttrNode,
    UnusedAttrNode,
    WeakAttrNode,
    AtomicTypeNode,
    SugaredTypeNode,  # Second to last node for json object imputation
    PlaceHolderNode,  # Placeholder must be the last node
    ExampleNode,
]
