from pathlib import Path

from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree
from c_binder_mojo.c_ast_nodes.tree import make_tree
from c_binder_mojo.mojo_ast_nodes.root_node import RootNode
from c_binder_mojo.common import Tokenizer
from firehose.logging import Logger
from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface as MojoModuleInterface

fn generic_test_outputs(
    test_name: String,
    mut logger: Logger,
    test_dir: Path,
    output_dir: Path,
    skip_c_ast_no_just_code: Bool = False
) raises -> (ModuleInterface, MojoModuleInterface):
    logger.info("Starting " + test_name + " test")

    # Path to the test header file
    var test_file_path = test_dir / (test_name + ".h")
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var tokens_file = output_dir / (test_name + ".tokenized")
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / (test_name + ".tree")
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file), validate=True)

    # Save AST for debugging
    var ast_file_just_code = output_dir / (test_name + ".ast_just_code")
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    if not skip_c_ast_no_just_code:
        ast_file.write_text(
            first_node.to_string(
                just_code=False, module_interface=module_interface
            )
        )


    print('entering mojo make tree')
    # Generate Mojo AST
    var mojo_tree_log_file = output_dir / (test_name + "_mojo.tree")
    var mojo_module_interface = make_mojo_tree(module_interface.nodes()[], String(mojo_tree_log_file))
    mojo_module_interface.nodes()[][0].node[][RootNode]._add_main_function = True

    # Save Mojo AST for debugging
    var mojo_ast_file_just_code = output_dir / (test_name + ".mojo")
    mojo_ast_file_just_code.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=mojo_module_interface
        )
    )
    var mojo_ast_file = output_dir / (test_name + ".mojo_ast")
    mojo_ast_file.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=mojo_module_interface
        )
    )
    return (module_interface, mojo_module_interface)