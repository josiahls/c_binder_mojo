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


alias JsonAstNodeVariant = Variant[
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
    PlaceHolderNode,  # Placeholder must be the last node
    ExampleNode,
]
