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


struct AstEntry(Copyable & Movable & Stringable):
    """A single line entry from the clang ast dump."""

    # Data fields
    var ast_name: String
    var mem_address: String
    var full_location: String
    var precise_location: String
    var tokens: List[String]

    # Meta fields
    var level: Int

    fn __init__(out self):
        self.ast_name = ""
        self.mem_address = ""
        self.full_location = ""
        self.precise_location = ""
        self.tokens = List[String]()
        self.level = 0

    fn __str__(read self: Self) -> String:
        var s:String = "AstEntry("
        s += "ast_name: " + self.ast_name + ", "
        s += "mem_address: " + self.mem_address + ", "
        s += "full_location: " + self.full_location + ", "
        s += "precise_location: " + self.precise_location + ", "
        s += "tokens: " + String(", ").join(self.tokens) + ", "
        s += "level: " + String(self.level)
        s += ")"
        return s

@fieldwise_init
struct AstParser:

    @staticmethod
    fn clang_call(file_path: Path) raises -> List[String]:
        cmd = "clang -Xclang -ast-dump -fsyntax-only -fparse-all-comments -fno-color-diagnostics " + file_path.path
        result = run(cmd)
        return result.split("\n")

    fn parse(self, file_path: Path) raises:
        result = self.clang_call(file_path)
        for line in result:
            var ast_entry = AstEntry()
            for token in line[].split(" "):
                if token[].startswith("0x") and ast_entry.mem_address == "":
                    ast_entry.mem_address = token[]
                elif token[].startswith("|-") and ast_entry.ast_name == "":
                    ast_entry.ast_name = token[][2:]
                elif token[].startswith("`-") and ast_entry.ast_name == "":
                    ast_entry.ast_name = token[][2:]
                elif token[].startswith("TranslationUnitDecl") and ast_entry.ast_name == "":
                    ast_entry.ast_name = token[]
                elif token[].startswith("<") and ast_entry.full_location == "":
                    ast_entry.full_location = token[]
                elif token[].endswith(">") and not ast_entry.full_location.endswith(">"):
                    ast_entry.full_location += " " + token[]
                elif "<<invalid sloc>>" in token[] and ast_entry.full_location == "":
                    ast_entry.full_location = "invalid"
                elif "<invalid sloc>" in token[] and ast_entry.precise_location == "":
                    ast_entry.precise_location = "invalid"
                elif token[].startswith("col:") and ast_entry.precise_location == "":
                    ast_entry.precise_location = token[]
                elif token[].startswith("line:") and ast_entry.precise_location == "":
                    ast_entry.precise_location = token[]
                
            if ast_entry.ast_name == "":
                raise Error('Could not find name for line: ' + line[])
            print(String(ast_entry))
