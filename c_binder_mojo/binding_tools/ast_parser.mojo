# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
from sys.ffi import external_call
from collections.list import _ListIter
from subprocess import run

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import parse, to_string, Object, Value

# First Party Modules


@fieldwise_init
struct AstParser:
    var verbose: Bool

    fn __init__(out self):
        self.verbose = False

    fn _clang_call(
        self, file_path: Path, extra_args: String = ""
    ) raises -> String:
        """Get the AST dump of the processed code."""
        cmd = (
            "clang -Xclang -ast-dump=json -fsyntax-only -fparse-all-comments"
            " -fno-color-diagnostics "
            + file_path.path
            + " "
            + extra_args
        )
        if self.verbose:
            print("clang call: " + cmd)
        return run(cmd)

    fn parse(
        self,
        file_path: Path,
        extra_args: String = "",
        raw_ast: Optional[Path] = None,
        recursive_header_include: String = "",
    ) raises -> Value:
        result = self._clang_call(file_path, extra_args)
        var json_value = parse(result)

        if raw_ast:
            raw_ast[].write_text(to_string[pretty=True](json_value))

        return json_value^
