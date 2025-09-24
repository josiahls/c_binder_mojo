# Native Mojo Modules
import os
from pathlib import Path, DIR_SEPARATOR
from memory import UnsafePointer
import sys

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import to_string


# First Party Modules
from c_binder_mojo.binding_tools.ast_parser import AstParser
from c_binder_mojo.ast.nodes import AstNode


fn generate_bindings(
    input_header_path: Path,
    output_path: Path,
    mut logger: Logger,
    extra_args: String = "",
    debug_output: Bool = False,
) raises -> AstNode:
    logger.info("Outputing binded module to: " + String(output_path))

    var module_name = input_header_path.name().split(".")[0]

    # Path to the test header file
    var test_file_path = input_header_path

    if not test_file_path.exists():
        raise Error("Test file doesn't exist: " + String(test_file_path))

    # Tokenize the file
    var raw_ast: Optional[Path] = None
    var modified_ast: Optional[Path] = None
    if debug_output:
        raw_ast = output_path / (module_name + "_raw_ast.json")
        modified_ast = output_path / (module_name + "_modified_ast.json")

    var ast_parser = AstParser(verbose=debug_output)
    var json_value = ast_parser.parse(
        test_file_path, extra_args=extra_args, raw_ast=raw_ast
    )
    AstNode.impute(json_value.object())
    if modified_ast:
        modified_ast[].write_text(
            to_string[pretty=True](json_value.object().copy())
        )
    var root_node = AstNode.accept_create_from(json_value.object(), level=0)

    # Save Mojo AST for debugging
    (output_path / (module_name + ".mojo")).write_text(
        root_node.to_string(just_code=True)
    )

    return root_node^
