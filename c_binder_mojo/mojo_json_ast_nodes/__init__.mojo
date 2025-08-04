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


alias JsonAstNodeVariant = Variant[
    TranslationUnitDeclNode,
    TypedefDeclNode,
    BuiltinTypeNode,
    RecordTypeNode,
    RecordDeclNode,
    PlaceHolderNode,  # Placeholder must be the last node
    ExampleNode,
]
