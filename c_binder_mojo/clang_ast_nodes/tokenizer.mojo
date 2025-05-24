# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
from sys.ffi import (
    external_call
)

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from subprocess import run

@fieldwise_init
struct Tokenizer:

    @staticmethod
    fn clang_call(file_path: Path) raises -> List[String]:
        cmd = "clang -Xclang -ast-dump -fsyntax-only -fparse-all-comments " + file_path.path
        result = run(cmd)
        return result.split("\n")

    fn tokenize(self, file_path: Path) raises:
        result = self.clang_call(file_path)
        for line in result:
            print(line[])
