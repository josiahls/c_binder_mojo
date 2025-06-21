# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.testing import generic_test_outputs



fn test_struct_node() raises:
    """Test the parsing and AST construction for structs."""
    var logger = Logger.get_default_logger("test_struct_node")
    
    generic_test_outputs(
        "test_struct_node",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_struct_node"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_struct_node/output"),
    ) 


fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_struct_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e))