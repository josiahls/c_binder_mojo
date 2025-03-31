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


fn test_whitespace_node() raises:
    """Test the parsing and AST construction for whitespace nodes."""
    var logger = Logger.get_default_logger("test_whitespace_node")
    logger.info("Starting whitespace node test")

    # Path to the test header file
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_whitespace_node"
    )
    var test_file_path = test_dir / "test_whitespace_node.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Create output directory if it doesn't exist
    var output_dir = test_dir / "output"
    # Note: In real code we would create the directory, but Mojo doesn't have mkdir yet

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var tokens_file = output_dir / "test_whitespace_node.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = output_dir / "test_whitespace_node.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = output_dir / "test_whitespace_node.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = output_dir / "test_whitespace_node.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Generate Mojo AST
    var mojo_tree_log_file = output_dir / "test_whitespace_node_mojo.tree"
    var mojo_module_interface = make_mojo_tree(module_interface.nodes()[], String(mojo_tree_log_file))

    # Save Mojo AST for debugging
    var mojo_ast_file_just_code = output_dir / "test_whitespace_node.mojo"
    mojo_ast_file_just_code.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=mojo_module_interface
        )
    )
    var mojo_ast_file = output_dir / "test_whitespace_node.mojo_ast"
    mojo_ast_file.write_text(
        mojo_module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=mojo_module_interface
        )
    )


    # Debug token information with visualization
    var token_debug_file = output_dir / "token_debug.txt"
    var token_debug_content = String()
    for i in range(len(tokenizer.tokens)):
        var token = tokenizer.tokens[i]
        token_debug_content += "Token " + String(i) + ": "

        # Visualize whitespace characters
        var visual = String()
        for j in range(len(token.token)):
            if token.token[j] == " ":
                visual += "·"  # Middle dot for spaces
            elif token.token[j] == "\t":
                visual += "→"  # Right arrow for tabs
            elif token.token[j] == "\n":
                visual += "¶"  # Pilcrow for newlines
            elif token.token[j] == "\r":
                visual += "←"  # Left arrow for carriage returns
            else:
                visual += String(token.token[j])

        token_debug_content += (
            "'" + visual + "' (length: " + String(len(token.token)) + ")\n"
        )
    token_debug_file.write_text(token_debug_content)

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Count the number of WhitespaceNode instances and categorize them
    var whitespace_count = 0
    var space_only_count = 0
    var tab_count = 0
    var newline_count = 0
    var mixed_count = 0

    for i in range(len(module_interface.nodes()[])):
        # Check if the node is a WhitespaceNode by name
        if module_interface.nodes()[][i].name() == "WhitespaceNode":
            whitespace_count += 1
            var node_str = module_interface.nodes()[][i].to_string(
                just_code=True, module_interface=module_interface
            )

            # Categorize the whitespace
            var has_space = False
            var has_tab = False
            var has_newline = False

            for j in range(len(node_str)):
                if node_str[j] == " ":
                    has_space = True
                elif node_str[j] == "\t":
                    has_tab = True
                elif node_str[j] == "\n":
                    has_newline = True

            if has_space and not has_tab and not has_newline:
                space_only_count += 1
                logger.info("Found space-only whitespace")
            elif has_tab and not has_space and not has_newline:
                tab_count += 1
                logger.info("Found tab-only whitespace")
            elif has_newline:
                newline_count += 1
                logger.info("Found whitespace with newlines")
            else:
                mixed_count += 1
                logger.info("Found mixed whitespace")

    # We expect multiple whitespace nodes in our test file
    if whitespace_count < 5:
        raise Error(
            "Expected at least 5 whitespace nodes, but found "
            + String(whitespace_count)
        )

    logger.info(
        "Whitespace test passed with "
        + String(whitespace_count)
        + " total whitespace nodes:"
    )
    logger.info("  - " + String(space_only_count) + " space-only nodes")
    logger.info("  - " + String(tab_count) + " tab-only nodes")
    logger.info("  - " + String(newline_count) + " nodes with newlines")
    logger.info("  - " + String(mixed_count) + " nodes with mixed whitespace")

    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_whitespace_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
