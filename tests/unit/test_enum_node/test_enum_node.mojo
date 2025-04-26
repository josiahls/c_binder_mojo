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
from c_binder_mojo.c_ast_nodes.enum_node import EnumNode
from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree
from c_binder_mojo.mojo_ast_nodes.root_node import RootNode


fn test_enum_node() raises:
    """Test the parsing and AST construction for enum nodes."""
    var logger = Logger.get_default_logger("test_enum_node")
    logger.info("Starting enum node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_enum_node"
    )
    var test_file_path = test_dir / "test_enum_node.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var output_dir = test_dir / "output"
    # No need to create directory as it should already exist
    var tokens_file = output_dir / "test_enum_node.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / "test_enum_node.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file), validate=True)

    # Save AST for debugging
    var ast_file_just_code = output_dir / "test_enum_node.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = output_dir / "test_enum_node.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Generate Mojo AST
    var mojo_tree_log_file = output_dir / "test_enum_node_mojo.tree"
    var mojo_module_interface = make_mojo_tree(module_interface.nodes()[], String(mojo_tree_log_file))
    mojo_module_interface.nodes()[][0].node[][RootNode]._add_main_function = True

    # Save Mojo AST for debugging
    var mojo_ast_file_just_code = output_dir / "test_enum_node.mojo"
    mojo_ast_file_just_code.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=mojo_module_interface
        )
    )
    var mojo_ast_file = output_dir / "test_enum_node.mojo_ast"
    mojo_ast_file.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=mojo_module_interface
        )
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count and verify enum nodes
    var enum_count = 0
    var expected_enum_names = List[String](
        "Color", "Direction", "Status", "Empty", "Flags", "ByteValues"
    )
    var expected_enum_names_str = String("")
    for name in expected_enum_names:
        expected_enum_names_str += name[] + ", "

    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        if node.name() == "EnumNode":
            enum_count += 1
            logger.info("Found enum node: " + node.name(include_sig=True))

            # Verify enum name
            var enum_name = node.node[][EnumNode].get_enum_name()
            if enum_name not in expected_enum_names:
                raise Error(
                    "Unexpected enum name: "
                    + enum_name
                    + ". Expected one of: "
                    + expected_enum_names_str
                )
            logger.info("  - Name: " + enum_name)

    # We expect 5 enum nodes in our test file
    if enum_count != len(expected_enum_names):
        raise Error(
            "Expected "
            + String(len(expected_enum_names))
            + " enum nodes, but found "
            + String(enum_count)
        )

    logger.info(
        "Enum node test passed with " + String(enum_count) + " enum nodes"
    )
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_enum_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
