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

fn test_struct_node() raises:
    """Test the parsing and AST construction for struct nodes."""
    var logger = Logger.get_default_logger("test_struct_node")
    logger.info("Starting struct node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_struct_node"
    )
    var test_file_path = test_dir / "test_struct_node.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var output_dir = test_dir / "output"
    # Create output directory if it doesn't exist
    if not output_dir.exists():
        os.makedirs(String(output_dir))
    var tokens_file = output_dir / "test_struct_node.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / "test_struct_node.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = output_dir / "test_struct_node.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = output_dir / "test_struct_node.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count and verify struct nodes
    var struct_count = 0
    var expected_struct_names = List[String]("Point", "Person", "Empty", "Complex", "Inner", "BitFields")
    var expected_struct_names_str = String('')
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
                        "Unexpected struct name: " + struct_name + 
                        ". Expected one of: " + expected_struct_names_str
                    )
            logger.info("  - Name: " + struct_name)

    # We expect 7 struct nodes in our test file (6 named + 1 anonymous)
    var expected_count = len(expected_struct_names) + 1  # +1 for anonymous struct
    if struct_count != expected_count:
        raise Error(
            "Expected " + String(expected_count) + " struct nodes, but found " + String(struct_count)
        )

    logger.info("Struct node test passed with " + String(struct_count) + " struct nodes")
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_struct_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e)) 