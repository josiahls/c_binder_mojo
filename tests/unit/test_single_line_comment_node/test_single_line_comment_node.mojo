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
from c_binder_mojo.mojo_ast_nodes.root_node import RootNode
from c_binder_mojo.testing import generic_test_outputs


fn test_single_line_comment_node() raises:
    """Test the parsing and AST construction for single line comments."""
    var logger = Logger.get_default_logger("test_single_line_comment_node")
    
    (module_interface, mojo_module_interface) = generic_test_outputs(
        "test_single_line_comment_node",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_single_line_comment_node"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_single_line_comment_node/output"),
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
