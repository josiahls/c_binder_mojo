# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.testing import generic_test_outputs

fn test_ifdef_node() raises:
    """Test the parsing and AST construction for ifdef directives."""
    var logger = Logger.get_default_logger("test_ifdef_node")
    
    generic_test_outputs(
        "test_ifdef_node",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_ifdef_node"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/unit/test_ifdef_node/output"),
        extra_args="-D BASIC_DEFINE -D WITH_ELSE -D OUTER -D INNER -D _WIN32 -D __APPLE__ -D COMMENTED -D EMPTY -D MIXED -D MULTIPLE_DEFINES",
    )

fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_ifdef_node()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e)) 