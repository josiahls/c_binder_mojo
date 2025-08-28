# Native Mojo Modules

# Third Party Mojo Modules

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.node_variant import Variant
from c_binder_mojo.mojo_json_ast_nodes.translation_unit_decl_node import (
    TranslationUnitDeclNode,
)
from c_binder_mojo.mojo_json_ast_nodes.place_holder_node import PlaceHolderNode
from c_binder_mojo.mojo_json_ast_nodes.example_node import ExampleNode
from c_binder_mojo.mojo_json_ast_nodes.typedef_decl_node import TypedefDeclNode
from c_binder_mojo.mojo_json_ast_nodes.builtin_type_node import BuiltinTypeNode
from c_binder_mojo.mojo_json_ast_nodes.record_type_node import RecordTypeNode
from c_binder_mojo.mojo_json_ast_nodes.record_decl_node import RecordDeclNode
from c_binder_mojo.mojo_json_ast_nodes.pointer_type_node import PointerTypeNode
from c_binder_mojo.mojo_json_ast_nodes.elaborated_type_node import (
    ElaboratedTypeNode,
)
from c_binder_mojo.mojo_json_ast_nodes.function_decl_node import (
    FunctionDeclNode,
)
from c_binder_mojo.mojo_json_ast_nodes.typedef_type_node import TypedefTypeNode
from c_binder_mojo.mojo_json_ast_nodes.mode_attr_node import ModeAttrNode
from c_binder_mojo.mojo_json_ast_nodes.qual_type_node import QualTypeNode
from c_binder_mojo.mojo_json_ast_nodes.var_decl_node import VarDeclNode
from c_binder_mojo.mojo_json_ast_nodes.enum_decl_node import EnumDeclNode
from c_binder_mojo.mojo_json_ast_nodes.enum_constant_decl_node import (
    EnumConstantDeclNode,
)
from c_binder_mojo.mojo_json_ast_nodes.constant_expr_node import (
    ConstantExprNode,
)
from c_binder_mojo.mojo_json_ast_nodes.paragraph_comment_node import (
    ParagraphCommentNode,
)
from c_binder_mojo.mojo_json_ast_nodes.full_comment_node import FullCommentNode
from c_binder_mojo.mojo_json_ast_nodes.text_comment_node import TextCommentNode
from c_binder_mojo.mojo_json_ast_nodes.binary_operator_node import (
    BinaryOperatorNode,
)
from c_binder_mojo.mojo_json_ast_nodes.integer_literal_node import (
    IntegerLiteralNode,
)
from c_binder_mojo.mojo_json_ast_nodes.enum_type_node import EnumTypeNode
from c_binder_mojo.mojo_json_ast_nodes.field_decl_node import FieldDeclNode
from c_binder_mojo.mojo_json_ast_nodes.indirect_field_decl_node import (
    IndirectFieldDeclNode,
)


alias AstNodeVariant = Variant[
    TranslationUnitDeclNode,
    TypedefDeclNode,
    BuiltinTypeNode,
    RecordTypeNode,
    RecordDeclNode,
    PointerTypeNode,
    ElaboratedTypeNode,
    FunctionDeclNode,
    TypedefTypeNode,
    QualTypeNode,
    ModeAttrNode,
    VarDeclNode,
    EnumDeclNode,
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
