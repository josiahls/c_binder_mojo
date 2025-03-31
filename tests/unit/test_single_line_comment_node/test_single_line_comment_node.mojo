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
from c_binder_mojo.c_ast_nodes.single_line_comment_node import (
    SingleLineCommentNode,
)
from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree


fn test_single_line_comment_node() raises:
    """Test the parsing and AST construction for single line comments."""
    var logger = Logger.get_default_logger("test_single_line_comment_node")
    logger.info("Starting single line comment node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_single_line_comment_node"
    )
    var test_file_path = test_dir / "test_single_line_comment_node.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var output_dir = test_dir
    # No need to create directory as it should already exist
    var tokens_file = output_dir / "output/test_single_line_comment_node.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / "output/test_single_line_comment_node.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = output_dir / "output/test_single_line_comment_node.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = output_dir / "output/test_single_line_comment_node.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Generate Mojo AST
    var mojo_tree_log_file = output_dir / "output/test_single_line_comment_node_mojo.tree"
    var mojo_module_interface = make_mojo_tree(module_interface.nodes()[], String(mojo_tree_log_file))

    # Save Mojo AST for debugging
    var mojo_ast_file_just_code = output_dir / "output/test_single_line_comment_node.mojo"
    mojo_ast_file_just_code.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=mojo_module_interface
        )
    )
    var mojo_ast_file = output_dir / "output/test_single_line_comment_node.mojo_ast"
    mojo_ast_file.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=mojo_module_interface
        )
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count the number of SingleLineCommentNode instances
    var comment_count = 0
    for i in range(len(module_interface.nodes()[])):
        # Check if the node is a SingleLineCommentNode by name
        if module_interface.nodes()[][i].name() == "SingleLineCommentNode":
            comment_count += 1
            # We can't use cast directly, so we'll just log the node info
            logger.info(
                "Found comment node: "
                + module_interface.nodes()[][i].name(include_sig=True)
            )

    # We expect at least 11 single line comments in our test file
    # (not counting the one after code which might be handled differently)
    if comment_count < 11:
        raise Error(
            "Expected at least 11 single line comments, but found "
            + String(comment_count)
        )

    logger.info(
        "Single line comment test passed with "
        + String(comment_count)
        + " comments found"
    )
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_single_line_comment_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
