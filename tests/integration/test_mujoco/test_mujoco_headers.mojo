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
            raise Error("Found preprocessor directive inside struct node: " + String(token[].token))


fn verify_preprocessor_scope(node: AstNode) raises:
    """Verify that preprocessor directives are properly scoped."""
    var logger = Logger.get_default_logger("test_mujoco_headers")
    var ifdef_stack = List[String]()  # Stack to track #ifdef/#ifndef
    
    var tokens = node.token_bundles()._token_bundles
    for token in tokens:
        var token_str = String(token[].token)
        
        if token_str == "#ifdef" or token_str == "#ifndef":
            ifdef_stack.append(token_str)
            logger.info("Found " + token_str + ", stack depth: " + String(len(ifdef_stack)))
        elif token_str == "#endif":
            if len(ifdef_stack) == 0:
                raise Error("Found #endif without matching #ifdef/#ifndef")
            _ = ifdef_stack.pop()
            logger.info("Found #endif, stack depth: " + String(len(ifdef_stack)))
    
    if len(ifdef_stack) > 0:
        raise Error("Found unclosed preprocessor blocks: " + String(len(ifdef_stack)) + " remaining")


fn test_mjtnum_header() raises:
    """Test parsing the mjtnum header file."""
    var logger = Logger.get_default_logger("test_mujoco_headers")
    logger.info("Starting mjtnum header test")

    # Path to the test header file
    var test_dir = Path(
        "/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/integration/test_mujoco"
    )
    var test_file_path = test_dir / "mjtnum.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Generate AST
    var tree_log_file = test_dir / "output" / "mjtnum.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

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
    var endif_count = 0
    
    var nodes = module_interface.nodes()[]
    for i in range(len(nodes)):
        var node = nodes[i]
        var node_name = node.name()
        
        if node_name == "TypedefNode":
            typedef_count += 1
            logger.info("Found typedef node: " + node.name(include_sig=True))
        elif node_name == "StructNode":
            struct_count += 1
            verify_struct_node_contents(node.node[][StructNode])
            logger.info("Found struct node: " + node.name(include_sig=True))
        elif node_name == "MacroIfDefNode":
            ifdef_count += 1
            logger.info("Found ifdef node: " + node.name(include_sig=True))
        elif node_name == "MacroIfNDefNode":
            ifndef_count += 1
            logger.info("Found ifndef node: " + node.name(include_sig=True))
        elif node_name == "MacroEndIfNode":
            endif_count += 1
            logger.info("Found endif node: " + node.name(include_sig=True))

    # Verify counts
    if typedef_count != 2:  # mjtNum and mjtByte
        raise Error("Expected 2 typedefs, but found " + String(typedef_count))
    if struct_count != 0:
        raise Error("Expected 0 structs, but found " + String(struct_count))
    if ifndef_count != 1:  # mjUSESINGLE
        raise Error("Expected 1 ifndef, but found " + String(ifndef_count))
    if endif_count != ifndef_count + ifdef_count:
        raise Error(
            "Mismatched endif count. Expected "
            + String(ifndef_count + ifdef_count)
            + " but found "
            + String(endif_count)
        )


fn test_mjmodel_header() raises:
    """Test parsing the mjmodel header file."""
    var logger = Logger.get_default_logger("test_mujoco_headers")
    logger.info("Starting mjmodel header test")

    # Path to the test header file
    var test_dir = Path(
        "/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/integration/test_mujoco"
    )
    var test_file_path = test_dir / "mjmodel.h"
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var tokenizer = Tokenizer()
    tokenizer.tokenize(test_file_path)

    # Generate AST
    var tree_log_file = test_dir / "output" / "mjmodel.tree"
    var module_interface = make_tree(tokenizer.tokens, String(tree_log_file))

    # Verify the AST structure
    var root_node = module_interface.nodes()[][0]
    logger.info("Root node: " + root_node.name())

    # Verify preprocessor scoping
    verify_preprocessor_scope(root_node)

    # Count and verify node types
    var struct_count = 0
    var parent_types = List[String]()
    
    var nodes = module_interface.nodes()[]
    for i in range(len(nodes)):
        var node = nodes[i]
        
        if node.name() == "StructNode":
            struct_count += 1
            verify_struct_node_contents(node.node[][StructNode])
            
            # Log parent node type for debugging
            var parent_idx = node.indicies().original_parent_idx
            if parent_idx >= 0:
                var parent_node = nodes[parent_idx]
                parent_types.append(parent_node.name())
                logger.info(
                    "Found struct node with parent type: " + parent_node.name()
                )

    # Verify counts
    if struct_count != 1:  # mjModel
        raise Error("Expected 1 struct, but found " + String(struct_count))


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_mjtnum_header()
        test_mjmodel_header()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))