# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.lib_gen import append_to_mojo_file
from c_binder_mojo.testing import generic_test_outputs, make_so_file
# from tests.integration.test_mujoco_bindings.output.test_mujoco_bindings import TestMujocoBindings

fn test_mujoco_bindings() raises:
    """Test the parsing and AST construction for typedefs."""
    var logger = Logger.get_default_logger("test_mujoco_bindings")
    
    var module_interface = generic_test_outputs(
        "test_mujoco_bindings",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco_bindings"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco_bindings/output"),
        header_filepath='/home/c_binder_mojo_user/c_binder_mojo/mujoco/include/mujoco/mujoco.h',
        extra_args="-I /home/c_binder_mojo_user/c_binder_mojo/mujoco/include"
    )

    # var so_file_path = make_so_file(
    #     logger,
    #     "test_ffi_basic",
    #     Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco_bindings"),
    #     Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco_bindings/output"),
    # )
    var so_file_path = Path("/home/c_binder_mojo_user/c_binder_mojo/mujoco/build/lib/libmujoco.so")

    append_to_mojo_file(
        module_interface,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_mujoco_bindings/output/test_mujoco_bindings.mojo"),
        so_file_path,
        "LibMuJoCo",
        include_only_prefixes = ['mj']
    )
 

fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_mujoco_bindings()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e)) 