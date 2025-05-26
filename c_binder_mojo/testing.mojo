from pathlib import Path
from firehose.logging import Logger

from c_binder_mojo.clang_ast_nodes.ast_parser import AstParser
from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree
# from c_binder_mojo.c_ast_nodes.tree import make_tree
# from c_binder_mojo.mojo_ast_nodes.root_node import RootNode
# from c_binder_mojo.common import Tokenizer
# from firehose.logging import Logger
# from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
# from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface as MojoModuleInterface

fn generic_test_outputs(
    test_name: String,
    mut logger: Logger,
    test_dir: Path,
    output_dir: Path,
    skip_c_ast_no_just_code: Bool = False
) raises:
# ) raises -> (ModuleInterface, MojoModuleInterface):
    logger.info("Starting " + test_name + " test")

    # Path to the test header file
    var test_file_path = test_dir / (test_name + ".h")
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var ast_parser = AstParser()
    entries = ast_parser.parse(test_file_path)

    # Save tokenized output for debugging
    var ast_entries = output_dir / (test_name + ".ast_entries")
    ast_entries.write_text(String("\n").join(entries))

    var raw_ast = output_dir / (test_name + ".raw_ast")
    for entry in entries:
        entry[].str_just_original_line = True
    raw_ast.write_text(String("\n").join(entries))

    # Generate AST
    var tree_log_file = output_dir / (test_name + ".tree")
    var module_interface = make_mojo_tree(entries, String(tree_log_file), validate=False)


    if len(module_interface.nodes()[]) == 0:
        raise Error("No nodes found for file: " + test_name)
    # Save Mojo AST for debugging
    var mojo_ast_file_just_code = output_dir / (test_name + ".mojo")
    mojo_ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var mojo_ast_file = output_dir / (test_name + ".mojo_ast")
    mojo_ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )
    # return (module_interface, mojo_module_interface)