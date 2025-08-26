# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
from sys.ffi import external_call
from collections.list import _ListIter
from subprocess import run

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import parse, to_string, Object

# First Party Modules

from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode, JsonNodeAstLike


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

    fn parse(
        self,
        file_path: Path,
        extra_args: String = "",
        raw_ast: Optional[Path] = None,
    ) raises -> JsonAstNode:
        result = self.clang_call(file_path, extra_args)
        var root_object = parse(result)

        if raw_ast:
            raw_ast[].write_text(to_string[pretty=True](root_object))

        var root_node = JsonAstNode.accept_from_json_object(
            root_object.object(), level=0
        )
        return root_node
