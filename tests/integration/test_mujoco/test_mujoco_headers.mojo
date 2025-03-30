# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.common import Tokenizer, TokenBundles
from c_binder_mojo.c_ast_nodes.tree import make_tree
from c_binder_mojo.c_ast_nodes.nodes import AstNode
from c_binder_mojo.c_ast_nodes.struct_node import StructNode
from c_binder_mojo.c_ast_nodes.typedef_node import TypedefNode
from c_binder_mojo.c_ast_nodes.macro_if_n_def_node import MacroIfNDefNode


fn verify_struct_node_contents(node: StructNode) raises:
    """Verify that a struct node does not contain unrelated tokens."""
    var logger = Logger.get_default_logger("test_mujoco_headers")

    # Log all tokens for debugging
    var tokens = node.token_bundles()._token_bundles
    for token in tokens:
        logger.info("Token: " + String(token[].token))

        # Check for typedef tokens
        if token[].token == "typedef":
            raise Error("Found typedef token inside struct node")

        # Check for preprocessor directives
        if token[].token.startswith("#"):
            raise Error(
                "Found preprocessor directive inside struct node: "
                + String(token[].token)
            )


fn verify_preprocessor_scope(node: AstNode) raises:
    """Verify that preprocessor directives are properly scoped."""
    var logger = Logger.get_default_logger("test_mujoco_headers")
    var ifdef_stack = List[String]()  # Stack to track #ifdef/#ifndef

    var tokens = node.token_bundles()._token_bundles
    for token in tokens:
        var token_str = String(token[].token)

        if token_str == "#ifdef" or token_str == "#ifndef":
            ifdef_stack.append(token_str)
            logger.info(
                "Found "
                + token_str
                + ", stack depth: "
                + String(len(ifdef_stack))
            )
        elif token_str == "#endif":
            if len(ifdef_stack) == 0:
                raise Error("Found #endif without matching #ifdef/#ifndef")
            _ = ifdef_stack.pop()
            logger.info(
                "Found #endif, stack depth: " + String(len(ifdef_stack))
            )

    if len(ifdef_stack) > 0:
        raise Error(
            "Found unclosed preprocessor blocks: "
            + String(len(ifdef_stack))
            + " remaining"
        )


fn test_mjtnum_header() raises:
    """Test parsing the mjtnum header file."""
    var logger = Logger.get_default_logger("test_mujoco_headers")
    logger.info("Starting mjtnum header test")

    # Path to the test header file
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco"
    )
    var test_file_path = test_dir / "mjtnum.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var tokens_file = test_dir / "output/test_mjtnum.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = test_dir / "output/test_mjtnum.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = test_dir / "output/test_mjtnum.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = test_dir / "output/test_mjtnum.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Verify preprocessor scoping
    verify_preprocessor_scope(root_node)

    # Count and verify node types
    var typedef_count = 0
    var struct_count = 0
    var ifdef_count = 0
    var ifndef_count = 0

    var nodes = module_interface.nodes()[]
    for node in nodes:
        var node_name = node[].name()

        if node_name == "TypedefNode":
            typedef_count += 1
            logger.info("Found typedef node: " + node[].name(include_sig=True))
        elif node_name == "StructNode":
            struct_count += 1
            verify_struct_node_contents(node[].node[][StructNode])
            logger.info("Found struct node: " + node[].name(include_sig=True))
        elif node_name == "MacroIfDefNode":
            ifdef_count += 1
            logger.info("Found ifdef node: " + node[].name(include_sig=True))
            # Check tail tokens for #endif
            var tail_tokens = node[].token_bundles_tail()._token_bundles
            for token in tail_tokens:
                if token[].token == "#endif":
                    logger.info("Found endif in ifdef tail tokens")
        elif node_name == "MacroIfNDefNode":
            ifndef_count += 1
            logger.info("Found ifndef node: " + node[].name(include_sig=True))
            # Check tail tokens for #endif
            var tail_tokens = node[].token_bundles_tail()._token_bundles
            for token in tail_tokens:
                if token[].token == "#endif":
                    logger.info("Found endif in ifndef tail tokens")

    # Verify counts
    if typedef_count != 3:  # 2 mjtNum and mjtByte
        raise Error("Expected 3 typedefs, but found " + String(typedef_count))
    if struct_count != 0:
        raise Error("Expected 0 structs, but found " + String(struct_count))
    if ifndef_count != 2:  # mjUSESINGLE and MUJOCO_INCLUDE_MJTNUM_H_
        raise Error("Expected 2 ifndef, but found " + String(ifndef_count))


fn test_mjmodel_header() raises:
    """Test parsing the mjmodel header file."""
    var logger = Logger.get_default_logger("test_mujoco_headers")
    logger.info("Starting mjmodel header test")

    # Path to the test header file
    var test_dir = Path(
        "/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco"
    )
    var test_file_path = test_dir / "mjmodel.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Save tokenized output for debugging
    var tokens_file = test_dir / "output/test_mjmodel.tokenized"
    tokens_file.write_text(tokenizer.to_string())

    # Generate AST
    var tree_log_file = test_dir / "output/test_mjmodel.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Save AST for debugging
    var ast_file_just_code = test_dir / "output/test_mjmodel.ast_just_code"
    ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var ast_file = test_dir / "output/test_mjmodel.ast"
    ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Verify preprocessor scoping
    verify_preprocessor_scope(root_node)

    # Count and verify node types
    var typedef_count = 0
    var struct_count = 0
    var ifdef_count = 0
    var ifndef_count = 0

    var nodes = module_interface.nodes()[]
    for node in nodes:
        var node_name = node[].name()

        if node_name == "TypedefNode":
            typedef_count += 1
            logger.info("Found typedef node: " + node[].name(include_sig=True))
        elif node_name == "StructNode":
            struct_count += 1
            verify_struct_node_contents(node[].node[][StructNode])
            logger.info("Found struct node: " + node[].name(include_sig=True))
        elif node_name == "MacroIfDefNode":
            ifdef_count += 1
            logger.info("Found ifdef node: " + node[].name(include_sig=True))
            # Check tail tokens for #endif
            var tail_tokens = node[].token_bundles_tail()._token_bundles
            for token in tail_tokens:
                if token[].token == "#endif":
                    logger.info("Found endif in ifdef tail tokens")
        elif node_name == "MacroIfNDefNode":
            ifndef_count += 1
            logger.info("Found ifndef node: " + node[].name(include_sig=True))
            # Check tail tokens for #endif
            var tail_tokens = node[].token_bundles_tail()._token_bundles
            for token in tail_tokens:
                if token[].token == "#endif":
                    logger.info("Found endif in ifndef tail tokens")

    # Verify counts
    if typedef_count < 30:  # Many typedefs in mjmodel.h
        raise Error(
            "Expected at least 30 typedefs, but found " + String(typedef_count)
        )
    if struct_count < 5:  # Multiple structs in mjmodel.h
        raise Error(
            "Expected at least 5 structs, but found " + String(struct_count)
        )
    if ifndef_count != 1:  # MUJOCO_MJMODEL_H_
        raise Error("Expected 1 ifndef, but found " + String(ifndef_count))


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_mjtnum_header()
        test_mjmodel_header()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))
