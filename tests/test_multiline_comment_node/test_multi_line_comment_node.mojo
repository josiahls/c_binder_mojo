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


fn test_multi_line_comment_node() raises:
    """Test the parsing and AST construction for multiline comments."""
    var logger = Logger.get_default_logger("test_multi_line_comment_node")
    logger.info("Starting multi-line comment node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/test_multiline_comment_node"
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
    var tree_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = output_dir / "test_multi_line_comment_node.ast_just_code"
    ast_file_just_code.write_text(
        tree_interface.nodes()[][0].to_string(
            just_code=True, tree_interface=tree_interface
        )
    )
    var ast_file = output_dir / "test_multi_line_comment_node.ast"
    ast_file.write_text(
        tree_interface.nodes()[][0].to_string(
            just_code=False, tree_interface=tree_interface
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
    var root_node = tree_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count the number of MultilineCommentNode instances
    var comment_count = 0
    var doc_comment_count = 0
    for i in range(len(tree_interface.nodes()[])):
        # Check if the node is a MultilineCommentNode by name
        if tree_interface.nodes()[][i].name() == "MultilineCommentNode":
            comment_count += 1
            var node_str = tree_interface.nodes()[][i].to_string(
                just_code=True, tree_interface=tree_interface
            )

            # Check if it's a documentation comment (starts with /**)
            if "/**" in node_str:
                doc_comment_count += 1
                logger.info(
                    "Found documentation comment: " + node_str[:40] + "..."
                )
            else:
                logger.info(
                    "Found regular multiline comment: " + node_str[:40] + "..."
                )

    # We expect at least 10 multiline comments in our test file (not counting the single line comment)
    if comment_count < 10:
        raise Error(
            "Expected at least 10 multiline comments, but found "
            + String(comment_count)
        )

    # We expect at least 2 documentation comments (/**) in our test file
    if doc_comment_count < 2:
        raise Error(
            "Expected at least 2 documentation comments, but found "
            + String(doc_comment_count)
        )

    logger.info(
        "Multi-line comment test passed with "
        + String(comment_count)
        + " total comments, including "
        + String(doc_comment_count)
        + " documentation comments"
    )
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_multi_line_comment_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
