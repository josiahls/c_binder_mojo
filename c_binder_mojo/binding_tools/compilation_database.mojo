"""
Used for automatically finding corresponding headers for a given source file.

https://clang.llvm.org/docs/JSONCompilationDatabase.html
"""
# Native Mojo Modules
import os
from pathlib import Path, DIR_SEPARATOR
from memory import UnsafePointer
from sys.ffi import external_call
from collections.list import _ListIter
from subprocess import run

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import parse, to_string, Object, Value, Array

# First Party Modules


@fieldwise_init
struct CompilationDatabaseEntry(Copyable & Movable & Writable):
    var directory: String
    var command: String
    var file: String
    var output: String

    fn __init__(out self):
        self.directory = ""
        self.command = ""
        self.file = ""
        self.output = ""

    fn parent_path(self) -> Path:
        var parent = Path(self.file).parts()[:-1]
        return Path(DIR_SEPARATOR.join(parent))

    fn has_so_file(self) -> Bool:
        directory = Path(self.directory)
        if not directory.exists():
            return False
        full_lib_path = self.so_file_path()
        return full_lib_path.exists()

    fn so_file_path(self) -> Path:
        var directory = Path(self.directory)
        var inner_path_s: String = String(self.inner_lib_path())
        var inner_path = Path(inner_path_s + ".so")
        return directory / inner_path

    fn inner_lib_path(self) -> Path:
        var output = self.output
        var parts = output.split(".a.p")
        return Path(parts[0])

    fn is_empty(self) -> Bool:
        return (
            self.directory == ""
            and self.command == ""
            and self.file == ""
            and self.output == ""
        )

    fn libname(self) -> String:
        return self.inner_lib_path().name()

    fn merge(mut self, ref other: CompilationDatabaseEntry):
        "Merges only the command for now since we just need the headers."
        self.command += " " + other.command

    fn get_included_headers(self, prefix: String = "") -> String:
        var command = self.command
        var parts = command.split(" ")
        var headers = List[String]()
        for part in parts:
            if part.startswith("-I"):
                var predixed_part = "-I" + prefix + part.removeprefix("-I")
                if (
                    predixed_part.endswith(".h")
                    or "." not in predixed_part
                    and String(predixed_part) not in headers
                ):
                    headers.append(String(predixed_part))
        return String(" ".join(headers))

    fn write_to(self, mut writer: Some[Writer]):
        writer.write(
            self.libname() + ": Headers: " + self.get_included_headers()
        )
        # writer.write(self.directory + "\n")
        # writer.write(self.command + "\n")
        # writer.write(self.file + "\n")
        # writer.write(self.output + "\n")


struct _CompilationDatabaseIter[mut: Bool, //, origin: Origin[mut]](Iterator):
    alias Element = Optional[CompilationDatabaseEntry]
    var index: Int
    var database: Pointer[Array, origin]
    var length: Int
    var consolidated_entry: CompilationDatabaseEntry

    fn __init__(out self, ref [origin]database: Array):
        self.index = 0
        self.database = Pointer(to=database)
        self.length = len(database)
        self.consolidated_entry = CompilationDatabaseEntry()

    fn __iter__(var self) -> _CompilationDatabaseIter[origin]:
        return self^

    @always_inline
    fn __has_next__(self) -> Bool:
        return self.index < self.length

    @always_inline
    fn __next__(mut self) -> Self.Element:
        while self.__has_next__():
            ref value = self.database[][self.index]
            ref object = value.object()

            try:
                entry = CompilationDatabaseEntry(
                    directory=object["directory"].string(),
                    command=object["command"].string(),
                    file=object["file"].string(),
                    output=object["output"].string(),
                )
                if self.consolidated_entry.is_empty():
                    self.consolidated_entry = entry^
                elif self.consolidated_entry.libname() == entry.libname():
                    self.consolidated_entry.merge(entry^)
                elif self.consolidated_entry.libname() != entry.libname():
                    var tmp = self.consolidated_entry^
                    self.consolidated_entry = entry^
                    return tmp^
                self.index += 1
            except e:
                print("Error parsing compilation database: ", e)
                return None

        # Handle the final consolidated entry
        if not self.consolidated_entry.is_empty():
            var result = self.consolidated_entry^
            self.consolidated_entry = (
                CompilationDatabaseEntry()
            )  # Reset to empty state
            return result^
        return None


@fieldwise_init
struct CompilationDatabase:
    var verbose: Bool
    var database: Array

    fn __init__(out self, file_path: Path):
        self.verbose = False
        try:
            var value = parse(file_path.read_text())
            self.database = value._data.take[Array]()
        except e:
            print("Error parsing compilation database: ", e)
            self.database = Array()

    fn __iter__(
        ref self,
    ) -> _CompilationDatabaseIter[__origin_of(self.database)]:
        return _CompilationDatabaseIter(self.database)
