# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.common import Tokenizer
from c_binder_mojo.c_ast_nodes.tree import make_tree
from c_binder_mojo.c_ast_nodes.nodes import AstNode


fn test_ifndef_node() raises:
    """Test the parsing and AST construction for #ifndef nodes."""
    var logger = Logger.get_default_logger("test_ifndef_node")
    logger.info("Starting ifndef node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/test_ifndef_node"
    )
    var test_file_path = test_dir / "test_ifndef_node.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var output_dir = test_dir / "output"
    # No need to create directory as it should already exist
    var tokens_file = output_dir / "test_ifndef_node.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / "test_ifndef_node.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = output_dir / "test_ifndef_node.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = output_dir / "test_ifndef_node.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count the number of #ifndef nodes and their children
    var ifndef_count = 0
    var define_count = 0
    var nested_ifndef_count = 0

    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        var node_name = node.name()

        if node_name == "MacroIfNDefNode":
            ifndef_count += 1
            logger.info("Found ifndef node: " + node.name(include_sig=True))

            # Check for nested ifndef nodes
            var indices = node.indicies()
            for j in range(len(indices.original_child_idxs)):
                var child_idx = indices.original_child_idxs[j]
                var child_node = module_interface.nodes()[][child_idx]
                if child_node.name() == "MacroIfNDefNode":
                    nested_ifndef_count += 1
                    logger.info(
                        "Found nested ifndef node: "
                        + child_node.name(include_sig=True)
                    )

        if node_name == "MacroDefineNode":
            define_count += 1
            logger.info("Found define node: " + node.name(include_sig=True))

    # We expect at least 8 ifndef nodes in our test file
    if ifndef_count < 8:
        raise Error(
            "Expected at least 8 ifndef nodes, but found "
            + String(ifndef_count)
        )

    # We should have at least 1 nested ifndef
    if nested_ifndef_count < 1:
        raise Error(
            "Expected at least 1 nested ifndef, but found "
            + String(nested_ifndef_count)
        )

    # We should have at least 8 define nodes (one for each ifndef)
    if define_count < 8:
        raise Error(
            "Expected at least 8 define nodes, but found "
            + String(define_count)
        )

    logger.info("Ifndef node test passed with:")
    logger.info("  - " + String(ifndef_count) + " ifndef nodes")
    logger.info("  - " + String(nested_ifndef_count) + " nested ifndef nodes")
    logger.info("  - " + String(define_count) + " define nodes")
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_ifndef_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
