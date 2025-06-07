# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.lib_gen import append_to_mojo_file
from c_binder_mojo.testing import generic_test_outputs, test_ffi_bindings, make_so_file

fn test_ffi_basic() raises:
    """Test the parsing and AST construction for typedefs."""
    var logger = Logger.get_default_logger("test_ffi_basic")
    
    var module_interface = generic_test_outputs(
        "test_ffi_basic",
        logger,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output"),
    )

    var so_file_path = make_so_file(
        logger,
        "test_ffi_basic",
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings"),
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output"),
    )

    append_to_mojo_file(
        module_interface,
        Path("/home/c_binder_mojo_user/c_binder_mojo/tests/integration/test_bindings/output/test_ffi_basic.mojo"),
        so_file_path,
        "TestFFIBasic",
    )

    # Test basic integer identity function
    # logger.info("Testing int identity function...")
    # var test_int_identity = dl_handle.get_function[fn(Int32) -> Int32]("test_int_identity")
    # var int_result = test_int_identity(123)
    # if int_result != 123:
    #     raise Error("int identity test failed: expected 123, got " + String(int_result))
    # logger.info("✅ int identity test passed")

    # # Test basic return value function
    # logger.info("Testing return 42 function...")
    # var test_return_42 = dl_handle.get_function[fn() -> Int32]("test_return_42")
    # var return_result = test_return_42()
    # if return_result != 42:
    #     raise Error("return 42 test failed: expected 42, got " + String(return_result))
    # logger.info("✅ return 42 test passed")
    
    # # Test basic arithmetic
    # logger.info("Testing int addition function...")
    # var test_add_ints = lib.get_function[fn(Int32, Int32) -> Int32]("test_add_ints")
    # var add_result = test_add_ints(10, 32)
    # if add_result != 42:
    #     raise Error("add ints test failed: expected 42, got " + String(add_result))
    # logger.info("✅ int addition test passed")
    
    # # Test basic float operations
    # logger.info("Testing float identity function...")
    # var test_float_identity = lib.get_function[fn(Float32) -> Float32]("test_float_identity")
    # var float_result = test_float_identity(3.14)
    # if abs(float_result - 3.14) > 0.001:
    #     raise Error("float identity test failed: expected 3.14, got " + String(float_result))
    # logger.info("✅ float identity test passed")
    
    # logger.info("🎉 All FFI validation tests passed!")

fn main() raises:
    set_global_logger_settings(level=10)  # Set to DEBUG level
    try:
        test_ffi_basic()
        print("Test succeeded")
    except e:
        print("Test failed: " + String(e)) 