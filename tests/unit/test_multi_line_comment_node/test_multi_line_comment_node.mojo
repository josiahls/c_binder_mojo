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
from c_binder_mojo.mojo_ast_nodes.root_node import RootNode
from c_binder_mojo.testing import generic_test_outputs


fn test_multi_line_comment_node() raises:
    """Test the parsing and AST construction for multiline comments."""
    var logger = Logger.get_default_logger("test_multi_line_comment_node")
    
    (module_interface, mojo_module_interface) = generic_test_outputs(
        "test_multi_line_comment_node",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_multi_line_comment_node"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_multi_line_comment_node/output"),
    )

    # Debug token information
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_multi_line_comment_node"
    )
    var output_dir = test_dir / "output"
    var test_file_path = test_dir / "test_multi_line_comment_node.h"
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)
    
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
