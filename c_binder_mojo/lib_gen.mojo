from pathlib import Path
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface
from c_binder_mojo.mojo_ast_nodes.function_decl_node import FunctionDeclNode
from c_binder_mojo.mojo_ast_nodes.typedef_decl_node import TypedefDeclNode
from c_binder.typing import MOJO_FUNCTIONS


fn _get_module_dl_handle(
    lib_name: String,
    so_file: Path,
    external_declarations: List[ExternalFunctionBuilder],
) raises -> String:
    """Get the DLHandle for the module."""

    fields: String = String()
    for external_declaration in external_declarations:
        fields += String("\n    var {0}: {1}.type").format(external_declaration.dl_field_name, external_declaration.mojo_name)

    field_inits: String = String()
    for external_declaration in external_declarations:
        field_inits += String("\n        self.{0} = {1}.load(self.lib)").format(external_declaration.dl_field_name, external_declaration.mojo_name)

    return String("""\n
@fieldwise_init
struct {0}(Copyable, Movable):
    \"""Handle to the CPython interpreter present in the current process.\"""

    # ===-------------------------------------------------------------------===#
    # Fields
    # ===-------------------------------------------------------------------===#

    var lib: DLHandle
    {2}

    fn __init__(out self):
        try:
            self.lib = DLHandle(\'{1}\')
        except e:
            self.lib = abort[DLHandle](
                String("Failed to load {0} from", \'{1}\', ":\\n", e)
            )

    {3}

""").format(lib_name, String(so_file), fields, field_inits)


fn _get_import_statements(
    ast_tree: ModuleInterface,
) raises -> String:
    """Get the import statements for the module."""

    statements: List[String] = [
        "from sys.ffi import DLHandle",
        "from os import abort, getenv, setenv",
        "from python._cpython import ExternalFunction",
    ]
    return String("\n").join(statements) + "\n"



struct ExternalFunctionBuilder(Copyable, Movable):
    var mojo_name: String
    var c_name: String
    var meta_name: String
    var dl_field_name: String

    fn __init__(out self, lib_name: String, c_name: String) raises:
        self.mojo_name = String("{0}_{1}").format(lib_name, c_name)
        self.c_name = c_name
        self.meta_name = String("alias {1}_{0} = ExternalFunction[\'{0}\', {0}]").format(c_name, lib_name)
        self.dl_field_name = c_name # String("{0}_{1}_func").format(lib_name, c_name)


fn _get_function_external_declarations(
    lib_name: String,
    ast_tree: ModuleInterface,
    include_private_methods:Bool,
    include_only_prefixes:List[String]
) raises -> List[ExternalFunctionBuilder]:
    """Get the function external declarations for the module."""
    external_declarations: List[ExternalFunctionBuilder] = []
    function_names: List[String] = []
    for node in ast_tree.nodes()[]:
        if node.node[].isa[FunctionDeclNode]() and not node.node[][FunctionDeclNode]._is_disabled:
            name = node.node[][FunctionDeclNode]._function_name
            if not include_private_methods and name.startswith('_'):
                continue
            if len(include_only_prefixes) != 0:
                starts_with_prefix:Bool = False
                for prefix in include_only_prefixes:
                    if name.startswith(prefix):
                        starts_with_prefix = True
                if not starts_with_prefix:
                    continue
            external_function = ExternalFunctionBuilder(lib_name, name)
            if external_function.mojo_name not in function_names:
                external_declarations.append(external_function)
                function_names.append(external_function.mojo_name)
        # elif node.node.isa(TypedefDeclNode):
        #     external_declarations.append(String("alias {0} = {1}".format(node.node.name(), node.node.type())))
    return external_declarations


fn append_to_mojo_file(
    ast_tree: ModuleInterface,
    mojo_file: Path,
    so_file: Path,
    lib_name: String = "",
    include_only_prefixes: List[String] = [],
    include_private_methods: Bool= False
) raises:
    """Append the contents of the shared object file to the mojo file."""
    var _lib_name:String = lib_name if lib_name != "" else mojo_file.path.split("/")[-1].split(".")[0]
    if include_private_methods:
        print('Warning: Some libs such as mujoco seg fault when include_private_methods=True')

    text:String = _get_import_statements(ast_tree)
    text += mojo_file.read_text() + "\n"
    external_declarations = _get_function_external_declarations(
        _lib_name, 
        ast_tree, 
        include_private_methods,
        include_only_prefixes
    )
    for external_declaration in external_declarations:
        text += String("\n") + external_declaration.meta_name

    text += _get_module_dl_handle(_lib_name, so_file, external_declarations)

    mojo_file.write_text(text)