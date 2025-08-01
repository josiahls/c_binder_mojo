# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
import sys

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.clang_ast_nodes.ast_parser import AstParser
from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree
from c_binder_mojo.lib_gen.lib_gen import append_to_mojo_file
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface


fn generate_bindings(
    input_header_path: Path,
    output_path: Path,
    so_file_path: Path,
    mut logger: Logger,
    extra_args: String = ""
) raises -> ModuleInterface:
    logger.info("Outputing binded module to: " + String(output_path))

    var module_name = input_header_path.path.split("/")[-1].split(".")[0]

    # Path to the test header file
    var test_file_path = input_header_path
    
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var ast_parser = AstParser()
    entries = ast_parser.parse(test_file_path, extra_args)

    # Save tokenized output for debugging
    var ast_entries = output_path / (module_name + ".ast_entries")
    ast_entries.write_text(String("\n").join(entries))

    var raw_ast = output_path / (module_name + ".raw_ast")
    for ref entry in entries:
        entry.str_just_original_line = True
    raw_ast.write_text(String("\n").join(entries))

    # Generate AST
    var tree_log_file = output_path / (module_name + ".tree")
    var module_interface = make_mojo_tree(
        entries, String(tree_log_file), validate=False
    )

    if len(module_interface.nodes()[]) == 0:
        raise Error("No nodes found for file: " + String(input_header_path))
    # Save Mojo AST for debugging
    (output_path / (module_name + ".mojo")).write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    return module_interface


alias HELP_STRING = """
Usage:
    c_binder_mojo <input_header_path> <output_dir> <so_file_path> <extra_args> <include_only_prefixes>

Positional Arguments:
    input_header_path: The path to the header file to bind. Should end in .h.
    output_dir: The path to the output directory. Will create a file in this directory with the name of the input header file.
    so_file_path: The path to the shared object file. Should end in .so.

Optional Arguments:
    extra_args: Extra arguments to pass to the clang compiler. e.g.: `clang -I /some/extra/include/path`
    include_only_prefixes: Only include symbols with these prefixes. Comma separated list. e.g.: `mj` for only binding mujoco symbols.
"""



fn main() raises:
    var logger = Logger.get_default_logger("c_binder_mojo")

    var args = sys.argv()

    for arg in args:
        if '--help' in arg or '-h' in arg or 'help' in arg:
            print(HELP_STRING)
            return

    if len(args) < 4:
        var s:String = ""
        for arg in args:
            s += String(arg) + " "
        raise Error("Requires at least 4 positional arguments: input_header_path, output_path, so_file_path. Instead got: " + s)

    var input_header_path = Path(args[1])
    if not input_header_path.exists():
        raise Error("Input header file doesn't exist: " + String(input_header_path))
    if not input_header_path.path.endswith(".h"):
        raise Error("Input header file must end in .h: " + String(input_header_path))
    var output_dir = Path(args[2])
    if not output_dir.exists():
        print("Output directory doesn't exist, will create it: " + String(output_dir))
    var so_file_path = Path(args[3])
    if not so_file_path.exists():
        raise Error("Shared object file doesn't exist: " + String(so_file_path))
    var extra_args = String(args[4]) if len(args) > 4 else String("")
    var include_only_prefixes = String(args[5]) if len(args) > 5 else String("")
    
    module_interface = generate_bindings(
        input_header_path, 
        output_dir, 
        so_file_path, 
        logger, 
        extra_args=extra_args
    )

    var handler_name = String(input_header_path.path.split("/")[-1].split(".")[0])
    var output_file_path = (output_dir / (input_header_path.path.split("/")[-1].split(".")[0] + ".mojo"))
    var include_only_prefixes_list = [String(prefix) for prefix in include_only_prefixes.split(",")]

    append_to_mojo_file(
        module_interface,
        output_file_path,
        so_file_path,
        handler_name,
        include_only_prefixes = include_only_prefixes_list
    )

    logger.info("Done")