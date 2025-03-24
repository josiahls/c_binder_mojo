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


fn test_typedef_node() raises:
    """Test the parsing and AST construction for typedef nodes."""
    var logger = Logger.get_default_logger("test_typedef_node")
    logger.info("Starting typedef node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/test_typedef_node"
    )
    var test_file_path = test_dir / "test_typedef_node.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var output_dir = test_dir / "output"
    # No need to create directory as it should already exist
    var tokens_file = output_dir / "test_typedef_node.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / "test_typedef_node.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = output_dir / "test_typedef_node.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = output_dir / "test_typedef_node.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count and verify typedef nodes
    var typedef_count = 0
    var basic_typedef_count = 0   # typedefs of basic types (int, char, etc)
    var enum_typedef_count = 0    # typedefs of enums
    var inline_struct_count = 0   # struct defined within typedef
    var named_struct_count = 0    # struct defined separately and then typedef'd

    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        if node.name() == "TypedefNode":
            typedef_count += 1
            logger.info("Found typedef node: " + node.name(include_sig=True))
            
            # Check typedef type based on tokens
            var tokens = node.token_bundles()
            var has_enum = False
            var has_struct = False
            
            for token in tokens:
                if token[].token == "enum":
                    has_enum = True
                elif token[].token == "struct":
                    has_struct = True
            
            if has_enum:
                enum_typedef_count += 1
                logger.info("Found enum typedef")
            elif has_struct:
                # For now we'll count all struct typedefs as inline
                # We can enhance the named struct detection later
                inline_struct_count += 1
                logger.info("Found struct typedef")
            else:
                basic_typedef_count += 1
                logger.info("Found basic typedef")

    # We expect 6 typedef nodes in our test file
    if typedef_count != 6:
        raise Error(
            "Expected 6 typedef nodes, but found " + String(typedef_count)
        )

    # We should have exactly 3 basic typedefs
    if basic_typedef_count != 3:
        raise Error(
            "Expected 3 basic typedefs, but found " + String(basic_typedef_count)
        )

    # We should have exactly 1 enum typedef
    if enum_typedef_count != 1:
        raise Error(
            "Expected 1 enum typedef, but found " + String(enum_typedef_count)
        )

    # We should have exactly 1 inline struct typedef
    if inline_struct_count != 1:
        raise Error(
            "Expected 1 inline struct typedef, but found " + String(inline_struct_count)
        )

    # We should have exactly 1 named struct typedef
    if named_struct_count != 1:
        raise Error(
            "Expected 1 named struct typedef, but found " + String(named_struct_count)
        )

    logger.info("Typedef node test passed with:")
    logger.info("  - " + String(typedef_count) + " total typedef nodes")
    logger.info("  - " + String(basic_typedef_count) + " basic typedefs")
    logger.info("  - " + String(enum_typedef_count) + " enum typedefs")
    logger.info("  - " + String(inline_struct_count) + " inline struct typedefs")
    logger.info("  - " + String(named_struct_count) + " named struct typedefs")
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_typedef_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e)) 