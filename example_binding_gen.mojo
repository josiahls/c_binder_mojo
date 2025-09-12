# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
import sys

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.binding_tools.ast_parser import AstParser
from c_binder_mojo.binding_tools.lib_gen import append_to_mojo_file
from c_binder_mojo.binding_tools.binding_gen import generate_bindings
from c_binder_mojo.ast.nodes import AstNode


fn main() raises:
    var logger = Logger.get_default_logger("c_binder_mojo")

    var args = sys.argv()
    var skip_so_file_and_module_bindings = False
    if not (len(args) in [2, 3]):
        raise Error(
            "Usage: example_binding_gen.mojo <input_header_path>"
            " [skip_so_file_and_module_bindings]"
        )

    var input_header_path = Path(args[1])

    if len(args) == 3:
        skip_so_file_and_module_bindings = args[2] == "true"

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

    var so_file_path: Path = output_dir / (
        "lib" + input_header_path.name().split(".")[0] + ".so"
    )

    if not skip_so_file_and_module_bindings:
        if not so_file_path.exists():
            raise Error(
                "Shared object file doesn't exist: " + String(so_file_path)
            )

    var debug_output = True

    print("Generating bindings for: " + String(input_header_path))

    root_node = generate_bindings(
        input_header_path,
        output_dir,
        logger,
        extra_args="",
        debug_output=debug_output,
    )
    print("Done generating bindings")

    var header_name = String(input_header_path.name().split(".")[0])
    var output_file_path = output_dir / (
        input_header_path.name().split(".")[0] + ".mojo"
    )

    if not skip_so_file_and_module_bindings:
        append_to_mojo_file(
            root_node,
            output_file_path,
            so_file_path,
            header_name,
            include_only_prefixes=List[String](),
        )
    else:
        logger.info("Skipping so file and module bindings")

    logger.info("Done")
