"""Tests for the IncludeNode AST node."""
# Native Mojo Modules
import os
from pathlib import Path

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.common import Tokenizer
from c_binder_mojo.c_ast_nodes.tree import make_tree
from c_binder_mojo.c_ast_nodes.nodes import AstNode
from c_binder_mojo.c_ast_nodes.include_node import IncludeNode


fn test_include_node() raises:
    """Test the parsing and AST construction for include nodes.

    Tests:
    1. System includes (<stdio.h>)
    2. Local includes ("my_header.h")
    3. Relative path includes ("../relative/path.h")
    4. Includes with comments
    5. Includes with extra whitespace
    """
    var logger = Logger.get_default_logger("test_include_node")
    logger.info("Starting include node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_include_node"
    )
    var test_file_path = test_dir / "test_include_node.h"
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
    var tokens_file = output_dir / "test_include_node.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / "test_include_node.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = output_dir / "test_include_node.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = output_dir / "test_include_node.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count and verify include nodes
    var include_count = 0
    var system_includes = 0
    var local_includes = 0
    var expected_system_includes = List[String](
        "stdio.h", "stdlib.h", "string.h", "math.h", "time.h"
    )
    var expected_local_includes = List[String](
        "my_header.h", "../relative/path.h", "local/header.h"
    )

    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        if node.name() == "IncludeNode":
            include_count += 1
            logger.info("Found include node: " + node.name(include_sig=True))

            var include_node = node.node[][IncludeNode]
            var path = include_node.get_include_path()
            logger.info("  - Path: " + path)

            if include_node.is_system_include():
                system_includes += 1
                if path not in expected_system_includes:
                    raise Error("Unexpected system include: " + path)
            else:
                local_includes += 1
                if path not in expected_local_includes:
                    raise Error("Unexpected local include: " + path)

    # Verify counts
    if include_count != 8:
        raise Error("Expected 8 includes, found " + String(include_count))
    if system_includes != 5:
        raise Error(
            "Expected 5 system includes, found " + String(system_includes)
        )
    if local_includes != 3:
        raise Error(
            "Expected 3 local includes, found " + String(local_includes)
        )

    logger.info(
        "Include node test passed with "
        + String(include_count)
        + " include nodes"
    )
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_include_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
