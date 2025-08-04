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


alias JsonAstNodeVariant = Variant[
    TranslationUnitDeclNode,
    TypedefDeclNode,
    PlaceHolderNode,  # Placeholder must be the last node
    ExampleNode,
]
