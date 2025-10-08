from c_binder_mojo.ast.declarations.enum_decl_node import EnumDeclNode
from c_binder_mojo.ast.declarations.enum_constant_decl_node import (
    EnumConstantDeclNode,
)
from c_binder_mojo.ast.declarations.typedef_decl_node import TypedefDeclNode
from c_binder_mojo.ast.declarations.record_decl_node import RecordDeclNode
from c_binder_mojo.ast.declarations.var_decl_node import VarDeclNode
from c_binder_mojo.ast.declarations.function_decl_node import FunctionDeclNode
from c_binder_mojo.ast.declarations.field_decl_node import FieldDeclNode
from c_binder_mojo.ast.declarations.parm_var_decl_node import ParmVarDeclNode
from c_binder_mojo.ast.declarations.translation_unit_decl_node import (
    TranslationUnitDeclNode,
)
from c_binder_mojo.ast.declarations.static_assert_decl_node import (
    StaticAssertDeclNode,
)
from c_binder_mojo.ast.declarations.indirect_field_decl_node import (
    IndirectFieldDeclNode,
)


from c_binder_mojo.ast.variant import Variant

alias AstDeclarationVariant = Variant[
    EnumDeclNode,
    EnumConstantDeclNode,
    TypedefDeclNode,
    RecordDeclNode,
    VarDeclNode,
    FunctionDeclNode,
    FieldDeclNode,
    ParmVarDeclNode,
    TranslationUnitDeclNode,
    StaticAssertDeclNode,
    IndirectFieldDeclNode,
]
