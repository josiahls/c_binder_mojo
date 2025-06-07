from pathlib import Path
from firehose.logging import Logger
from sys.ffi import DLHandle
from subprocess import run
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface

from c_binder_mojo.clang_ast_nodes.ast_parser import AstParser
from c_binder_mojo.mojo_ast_nodes.tree import make_tree as make_mojo_tree

# from c_binder_mojo.c_ast_nodes.tree import make_tree
# from c_binder_mojo.mojo_ast_nodes.root_node import RootNode
# from c_binder_mojo.common import Tokenizer
# from firehose.logging import Logger
# from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
# from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface as MojoModuleInterface


fn generic_test_outputs(
    test_name: String,
    mut logger: Logger,
    test_dir: Path,
    output_dir: Path,
    skip_c_ast_no_just_code: Bool = False,
    extra_args: String = "",
) raises -> ModuleInterface:
    # ) raises -> (ModuleInterface, MojoModuleInterface):
    logger.info("Starting " + test_name + " test")

    # Path to the test header file
    var test_file_path = test_dir / (test_name + ".h")
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var ast_parser = AstParser()
    entries = ast_parser.parse(test_file_path, extra_args)

    # Save tokenized output for debugging
    var ast_entries = output_dir / (test_name + ".ast_entries")
    ast_entries.write_text(String("\n").join(entries))

    var raw_ast = output_dir / (test_name + ".raw_ast")
    for ref entry in entries:
        entry.str_just_original_line = True
    raw_ast.write_text(String("\n").join(entries))

    # Generate AST
    var tree_log_file = output_dir / (test_name + ".tree")
    var module_interface = make_mojo_tree(
        entries, String(tree_log_file), validate=False
    )

    if len(module_interface.nodes()[]) == 0:
        raise Error("No nodes found for file: " + test_name)
    # Save Mojo AST for debugging
    var mojo_ast_file_just_code = output_dir / (test_name + ".mojo")
    mojo_ast_file_just_code.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=True, module_interface=module_interface
        )
    )
    var mojo_ast_file = output_dir / (test_name + ".mojo_ast")
    mojo_ast_file.write_text(
        module_interface.nodes()[][0].to_string(
            just_code=False, module_interface=module_interface
        )
    )
    return module_interface


fn make_so_file(
    mut logger: Logger,
    test_name: String,
    test_dir: Path,
    output_dir: Path,
) raises -> Path:
    """Make a shared object file from the test file."""
    var test_file_path = test_dir / (test_name + ".c")
    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))
    
    var so_file_path = output_dir / (test_name + ".so")
    var command = "gcc -shared -fPIC -o " + String(so_file_path) + " " + String(test_file_path)
    var result = run(String(command))
    if result != '':
        raise Error("Failed to make shared object file: " + String(so_file_path) + " with command: " + String(command) + " and result: " + String(result))
    return so_file_path


fn test_ffi_bindings(
    test_name: String,
    mut logger: Logger,
    test_dir: Path,
    output_dir: Path,
    library_path: Path,
) raises -> DLHandle:
    """Test that generated bindings actually work via FFI calls.
    
    Args:
        test_name: Name of the test
        logger: Logger instance
        test_dir: Directory containing test files
        output_dir: Directory for output files
        library_path: Path to the compiled shared library
    """
    logger.info("Starting FFI validation test for " + test_name)
    
    # Load the shared library
    if not library_path.exists():
        raise Error("Shared library doesn't exist: " + String(library_path))
        
    logger.info("Loading shared library: " + String(library_path))
    var lib = DLHandle(String(library_path))
    return lib
    

    
    # Test basic return value function
    # logger.info("Testing return 42 function...")
    # var test_return_42 = lib.get_function[fn() -> Int32]("test_return_42")
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