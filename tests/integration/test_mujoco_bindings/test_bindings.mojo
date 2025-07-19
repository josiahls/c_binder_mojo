# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.lib_gen import append_to_mojo_file
from c_binder_mojo.testing import generic_test_outputs, test_ffi_bindings, make_so_file
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

    # var test_ffi_basic = TestFFIBasic()
    # var int_result = test_ffi_basic.test_int_identity(123)
    # if int_result != 123:
    #     raise Error("int identity test failed: expected 123, got " + String(int_result))
    # logger.info("✅ int identity test passed")

    # var uint_result = test_ffi_basic.test_uint_identity(123)
    # if uint_result != 123:
    #     raise Error("uint identity test failed: expected 123, got " + String(uint_result))
    # logger.info("✅ uint identity test passed")

    # var long_result = test_ffi_basic.test_long_identity(123)
    # if long_result != 123:
    #     raise Error("long identity test failed: expected 123, got " + String(long_result))
    # logger.info("✅ long identity test passed")

    # var float_result = test_ffi_basic.test_float_identity(1.23)
    # if float_result != 1.23:
    #     raise Error("float identity test failed: expected 1.23, got " + String(float_result))
    # logger.info("✅ float identity test passed")

    # var double_result = test_ffi_basic.test_double_identity(1.23)
    # if double_result != 1.23:
    #     raise Error("double identity test failed: expected 1.23, got " + String(double_result))
    # logger.info("✅ double identity test passed")

    # logger.info("🎉 All FFI validation tests passed!")
 

fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_mujoco_bindings()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e)) 