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
from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree
from c_binder_mojo.mojo_ast_nodes.root_node import RootNode
from c_binder_mojo.testing import generic_test_outputs


fn test_ifdef_node() raises:
    """Test the parsing and AST construction for #ifdef nodes."""
    var logger = Logger.get_default_logger("test_ifdef_node")
    
    (module_interface, mojo_module_interface) = generic_test_outputs(
        "test_ifdef_node",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_ifdef_node"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_ifdef_node/output"),
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count and verify ifdef nodes
    var ifdef_count = 0
    var nested_ifdef_count = 0

    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        if node.name() == "MacroIfDefNode":
            ifdef_count += 1
            logger.info("Found ifdef node: " + node.name(include_sig=True))

            # Check for nested ifdef nodes
            var indices = node.indicies()
            for j in range(len(indices.c_child_idxs)):
                var child_idx = indices.c_child_idxs[j]
                var child_node = module_interface.nodes()[][child_idx]
                if child_node.name() == "MacroIfDefNode":
                    nested_ifdef_count += 1
                    logger.info(
                        "Found nested ifdef node: "
                        + child_node.name(include_sig=True)
                    )

    # We expect 9 ifdef nodes in our test file
    if ifdef_count != 9:
        raise Error("Expected 9 ifdef nodes, but found " + String(ifdef_count))

    # We should have exactly 1 nested ifdef
    if nested_ifdef_count != 1:
        raise Error(
            "Expected 1 nested ifdef, but found " + String(nested_ifdef_count)
        )

    logger.info("Ifdef node test passed with:")
    logger.info("  - " + String(ifdef_count) + " ifdef nodes")
    logger.info("  - " + String(nested_ifdef_count) + " nested ifdef nodes")
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_ifdef_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
