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
    @staticmethod
    fn clang_call(file_path: Path, extra_args: String = "") raises -> String:
        """Get the AST dump of the processed code."""
        cmd = (
            "clang -Xclang -ast-dump=json -fsyntax-only -fparse-all-comments"
            " -fno-color-diagnostics "
            + file_path.path
            + " "
            + extra_args
        )
        return run(cmd)

    @staticmethod
    fn process_recursive_header_include(
        recursive_header_include: String,
    ) raises -> String:
        if recursive_header_include == "":
            return ""

        var dirs = recursive_header_include.split(",")
        var extra_args = ""
        for d in dirs:
            if not Path(d).exists():
                raise Error("Path `" + d + "` does not exist")

            extra_args += " -I" + d

        return extra_args

    fn parse(
        self,
        file_path: Path,
        extra_args: String = "",
        raw_ast: Optional[Path] = None,
        recursive_header_include: String = "",
    ) raises -> Value:
        var _extra_args = extra_args + self.process_recursive_header_include(
            recursive_header_include
        )
        result = self.clang_call(file_path, _extra_args)
        var json_value = parse(result)

        if raw_ast:
            raw_ast[].write_text(to_string[pretty=True](json_value))

        return json_value^
