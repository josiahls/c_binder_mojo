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
from c_binder_mojo.c_ast_nodes import MacroIfNDefNode, TypedefNode, StructNode


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
    var preprocessor_typedef_count = 0  # typedefs inside preprocessor blocks

    # Track parent-child relationships
    var typedefs_in_struct = 0    # typedefs that are incorrectly inside struct nodes
    var typedefs_in_ifdef = 0     # typedefs correctly inside ifdef nodes
    
    for i in range(len(module_interface.nodes()[])):
        var node = module_interface.nodes()[][i]
        
        # Check if node is a typedef
        if node.name() == "TypedefNode":
            typedef_count += 1
            logger.info("Found typedef node: " + node.name(include_sig=True))
            
            # Check parent type
            var parent_idx = node.indicies().original_parent_idx
            if parent_idx >= 0:
                var parent_node = module_interface.nodes()[][parent_idx]
                if parent_node.name() == "StructNode":
                    typedefs_in_struct += 1
                    logger.error("Found typedef incorrectly inside struct node")
                elif parent_node.name() == "MacroIfNDefNode":
                    typedefs_in_ifdef += 1
                    logger.info("Found typedef correctly inside ifdef node")
            
            # Check typedef type based on tokens and children
            var is_basic = True  # Default to basic unless we find enum or struct
            
            # Check if this typedef has children (enum or struct)
            if len(node.indicies().original_child_idxs) > 0:
                var child_idx = node.indicies().original_child_idxs[0]
                var child_node = module_interface.nodes()[][child_idx]
                
                if child_node.name() == "EnumNode":
                    enum_typedef_count += 1
                    is_basic = False
                    logger.info("Found enum typedef")
                elif child_node.name() == "StructNode":
                    if len(child_node.node[][StructNode].name) == 0:
                        inline_struct_count += 1
                        logger.info("Found inline struct typedef")
                    else:
                        named_struct_count += 1
                        logger.info("Found named struct typedef")
                    is_basic = False
            
            if is_basic:
                basic_typedef_count += 1
                logger.info("Found basic typedef")

        # Check struct nodes for incorrect typedef children
        elif node.name() == "StructNode":
            var struct_name = String(node.node[][StructNode].name)
            logger.info("Found struct node: " + struct_name)
            
            # Check children for typedefs
            for child_idx in node.indicies().original_child_idxs:
                var child_node = module_interface.nodes()[][child_idx]
                if child_node.name() == "TypedefNode":
                    typedefs_in_struct += 1
                    logger.error(
                        "Found typedef incorrectly inside struct " + struct_name
                    )

    # Verify counts
    if basic_typedef_count != 5:  # uint_t, int64_t, byte_t, integer_t, float_t
        raise Error(
            "Expected 5 basic typedefs, but found " + String(basic_typedef_count)
        )
    if enum_typedef_count != 1:  # NodeState
        raise Error(
            "Expected 1 enum typedef, but found " + String(enum_typedef_count)
        )
    if inline_struct_count != 3:  # Point2D, NestedStruct, anonymous struct
        raise Error(
            "Expected 3 inline struct typedefs, but found " + String(inline_struct_count)
        )
    if named_struct_count != 1:  # Rectangle
        raise Error(
            "Expected 1 named struct typedef, but found " + String(named_struct_count)
        )
    if typedefs_in_struct > 0:
        raise Error(
            "Found " + String(typedefs_in_struct) + " typedefs incorrectly inside struct nodes"
        )
    
    logger.info(
        "Typedef test passed with "
        + String(typedef_count)
        + " total typedefs found"
    )
    return


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_typedef_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e)) 