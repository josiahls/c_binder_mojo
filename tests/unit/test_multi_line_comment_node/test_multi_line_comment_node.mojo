# Native Mojo Modules
import os
from pathlib import Path

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.common import Tokenizer
from c_binder_mojo.c_ast_nodes.tree import make_tree
from c_binder_mojo.c_ast_nodes.nodes import AstNode
from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree



fn test_multi_line_comment_node() raises:
    """Test the parsing and AST construction for multiline comments."""
    var logger = Logger.get_default_logger("test_multi_line_comment_node")
    logger.info("Starting multi-line comment node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_multi_line_comment_node"
    )
    var test_file_path = test_dir / "test_multi_line_comment_node.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Create output directory if it doesn't exist
    var output_dir = test_dir / "output"
    # Note: In real code we would create the directory, but Mojo doesn't have mkdir yet

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var tokens_file = output_dir / "test_multi_line_comment_node.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / "test_multi_line_comment_node.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = output_dir / "test_multi_line_comment_node.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = output_dir / "test_multi_line_comment_node.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )


    # Generate Mojo AST
    var mojo_tree_log_file = output_dir / "test_multi_line_comment_node_mojo.tree"
    var mojo_module_interface = make_mojo_tree(module_interface.nodes()[], String(mojo_tree_log_file))

    # Save Mojo AST for debugging
    var mojo_ast_file_just_code = output_dir / "test_multi_line_comment_node.mojo"
    mojo_ast_file_just_code.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=mojo_module_interface
        )
    )
    var mojo_ast_file = output_dir / "test_multi_line_comment_node.mojo_ast"
    mojo_ast_file.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=mojo_module_interface
        )
    )

    # Debug token information
    var token_debug_file = output_dir / "token_debug.txt"
    var token_debug_content = String()
    for i in range(len(tokenizer.tokens)):
        var token = tokenizer.tokens[i]
        token_debug_content += (
            "Token " + String(i) + ": '" + token.token + "'\n"
        )
    token_debug_file.write_text(token_debug_content)

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count and verify multiline comment nodes
    var comment_count = 0
    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        if node.name() == "MultiLineCommentNode":
            comment_count += 1
            # Get the actual comment content
            var comment_text = node.to_string(
                just_code=True, module_interface=module_interface
            )
            logger.trace(
                "Found multiline comment "
                + String(comment_count)
                + ": "
                + node.name(include_sig=True)
                + "\n    Content: "
                + comment_text
            )

    # We expect exactly 12 multiline comments in our test file
    if comment_count != 12:
        raise Error(
            "Expected 12 multiline comments, but found " + String(comment_count)
        )

    logger.info(
        "Multiline comment test passed with "
        + String(comment_count)
        + " comments"
    )
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_multi_line_comment_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
