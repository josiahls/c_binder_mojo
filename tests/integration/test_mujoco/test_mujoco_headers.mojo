# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.testing import generic_test_outputs

fn test_mjtnum_header():
    var logger = Logger.get_default_logger("test_mjtnum_header")
    generic_test_outputs(
        "test_mjtnum",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco/output"),
    )

fn test_mjmodel_header():
    var logger = Logger.get_default_logger("test_mjmodel_header")
    generic_test_outputs(
        "test_mjmodel",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco/output"),
    )

fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_mjtnum_header()
        test_mjmodel_header()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e)) 