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

fn test_define_node() raises:
    """Test the parsing and AST construction for #define nodes."""
    var logger = Logger.get_default_logger("test_define_node")
    
    (module_interface, mojo_module_interface) = generic_test_outputs(
        "test_define_node",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_define_node"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_define_node/output"),
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count and verify define nodes
    var define_count = 0
    var empty_define_count = 0  # Defines with no value like #define FOO

    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        if node.name() == "MacroDefineNode":
            define_count += 1
            logger.trace("Found define node: " + node.name(include_sig=True))

            # Check if this is an empty define (no value)
            var indices = node.indicies()
            if len(indices.c_child_idxs) == 0:
                empty_define_count += 1
                logger.trace("Found empty define node")

    # We expect 10 define nodes in our test file
    if define_count != 10:
        raise Error(
            "Expected 10 define nodes, but found " + String(define_count)
        )

    # We should have exactly 2 empty defines
    if empty_define_count != 2:
        raise Error(
            "Expected 2 empty defines, but found " + String(empty_define_count)
        )

    logger.info("Define node test passed with:")
    logger.info("  - " + String(define_count) + " define nodes")
    logger.info("  - " + String(empty_define_count) + " empty defines")


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_define_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
