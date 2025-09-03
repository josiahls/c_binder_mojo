# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
import sys

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.ast_parser import AstParser

from c_binder_mojo.lib_gen.lib_gen import append_to_mojo_file

from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode


fn generate_bindings(
    input_header_path: Path,
    output_path: Path,
    so_file_path: Path,
    mut logger: Logger,
    extra_args: String = "",
    debug_output: Bool = False,
    recursive_header_include: String = "",
) raises -> AstNode:
    logger.info("Outputing binded module to: " + String(output_path))

    var module_name = input_header_path.name().split(".")[0]

    # Path to the test header file
    var test_file_path = input_header_path

    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var raw_ast: Optional[Path] = None
    if debug_output:
        raw_ast = output_path / (module_name + "_raw_ast.json")

    var ast_parser = AstParser()
    var json_value = ast_parser.parse(
        test_file_path,
        extra_args=extra_args,
        raw_ast=raw_ast,
        recursive_header_include=recursive_header_include,
    )
    var root_node = AstNode.accept_from_json_object(
        json_value.object(), level=0
    )

    # Save Mojo AST for debugging
    (output_path / (module_name + ".mojo")).write_text(
        root_node.to_string(just_code=True)
    )

    return root_node^


fn main() raises:
    var logger = Logger.get_default_logger("c_binder_mojo")

    var args = sys.argv()
    if len(args) != 2:
        raise Error("Usage: example_binding_gen.mojo <input_header_path>")

    var input_header_path = Path(args[1])

    if not input_header_path.exists():
        raise Error(
            "Input header file doesn't exist: " + String(input_header_path)
        )
    if not input_header_path.path.endswith(".h"):
        raise Error(
            "Input header file must end in .h: " + String(input_header_path)
        )

    var output_dir = Path("tests/test_c_project/build")

    if not output_dir.exists():
        raise Error("Output directory doesn't exist: " + String(output_dir))

    var so_file_path: Path
    so_file_path = output_dir / (
        "lib" + input_header_path.name().split(".")[0] + ".so"
    )

    if not so_file_path.exists():
        raise Error("Shared object file doesn't exist: " + String(so_file_path))

    var debug_output = True

    print("Generating bindings for: " + String(input_header_path))

    root_node = generate_bindings(
        input_header_path,
        output_dir,
        so_file_path,
        logger,
        extra_args="",
        debug_output=debug_output,
        recursive_header_include="",
    )
    print("Done generating bindings")

    var header_name = String(input_header_path.name().split(".")[0])
    var output_file_path = output_dir / (
        input_header_path.name().split(".")[0] + ".mojo"
    )

    append_to_mojo_file(
        root_node,
        output_file_path,
        so_file_path,
        header_name,
        include_only_prefixes=List[String](),
    )

    logger.info("Done")
