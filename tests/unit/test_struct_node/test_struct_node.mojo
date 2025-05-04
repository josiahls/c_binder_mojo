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
from c_binder_mojo.c_ast_nodes.struct_node import StructNode
from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree
from c_binder_mojo.mojo_ast_nodes.root_node import RootNode
from c_binder_mojo.testing import generic_test_outputs


fn test_struct_node() raises:
    """Test the parsing and AST construction for struct nodes."""
    var logger = Logger.get_default_logger("test_struct_node")
    
    (module_interface, mojo_module_interface) = generic_test_outputs(
        "test_struct_node",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_struct_node"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_struct_node/output"),
        skip_c_ast_no_just_code=True
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count and verify struct nodes
    var struct_count = 0
    var expected_struct_names = List[String](
        "Point", "Person", "Empty", "Complex", "Inner", "BitFields"
    )
    var expected_struct_names_str = String("")
    for name in expected_struct_names:
        expected_struct_names_str += name[] + ", "

    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        if node.name() == "StructNode":
            struct_count += 1
            logger.info("Found struct node: " + node.name(include_sig=True))

            # Verify struct name
            var struct_name = node.node[][StructNode].get_struct_name()
            if struct_name not in expected_struct_names:
                # Skip anonymous structs (they have empty names)
                if struct_name != "":
                    raise Error(
                        "Unexpected struct name: "
                        + struct_name
                        + ". Expected one of: "
                        + expected_struct_names_str
                    )
            logger.info("  - Name: " + struct_name)

    # We expect 7 struct nodes in our test file (6 named + 1 anonymous)
    var expected_count = len(
        expected_struct_names
    ) + 1  # +1 for anonymous struct
    if struct_count != expected_count:
        raise Error(
            "Expected "
            + String(expected_count)
            + " struct nodes, but found "
            + String(struct_count)
        )

    logger.info(
        "Struct node test passed with " + String(struct_count) + " struct nodes"
    )
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_struct_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
