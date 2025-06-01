# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
from sys.ffi import external_call
from collections.list import _ListIter
from subprocess import run

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings

# First Party Modules
from c_binder_mojo.common import C_BINDER_MOJO_END_FILE


struct AstEntry(Copyable & Movable & Stringable & Writable):
    """A single line entry from the clang ast dump."""

    # Data fields
    var ast_name: String
    var mem_address: String
    var full_location: String
    var precise_location: String
    var tokens: List[String]
    var original_line: String

    # Meta fields
    var level: Int
    var str_just_original_line: Bool

    fn __init__(out self):
        self.ast_name = ""
        self.mem_address = ""
        self.full_location = ""
        self.precise_location = ""
        self.tokens = List[String]()
        self.original_line = ""
        self.level = 0
        self.str_just_original_line = False

    fn __str__(read self: Self) -> String:
        var s: String = ""
        s += " " * self.level
        s += "AstEntry("
        s += "ast_name: " + self.ast_name + ", "
        s += "mem_address: " + self.mem_address + ", "
        s += "full_location: " + self.full_location + ", "
        s += "precise_location: " + self.precise_location + ", "
        s += "tokens: " + String(", ").join(self.tokens) + ", "
        s += "level: " + String(self.level)
        s += ")"
        return s

    fn write_to[W: Writer](self, mut writer: W):
        if self.str_just_original_line:
            writer.write(self.original_line)
        else:
            writer.write(String(self))


@fieldwise_init
struct AstEntries(Stringable, Movable, Copyable, Sized):
    """A collection of AstEntry objects with list-like operations.

    This struct provides a container for multiple AstEntry with standard
    collection operations like append, length checking, iteration, and indexing.

    This primarly acs as a passthrough to the underlying list, but
    allows extending the list with additional functionality.
    """

    var _ast_entries: List[AstEntry]

    fn __init__(out self):
        """Initialize an empty AstEntries collection."""
        self._ast_entries = List[AstEntry]()

    fn join(
        self,
        sep: String,
        indent: String = "",
        just_tokens: Bool = False,
    ) -> String:
        """Join the AstEntries into a single string.

        Args:
            sep: The separator to use between tokens.
            indent: The indent to use for newlines.
        """
        var s = String()
        var n_entries = len(self._ast_entries)
        var idx = 0
        for entry in self._ast_entries:
            if len(s) > 0:
                s += sep

            if just_tokens:
                s += sep.join(entry[].tokens)
            else:
                s += entry[].original_line

            s += indent
            idx += 1
            if idx < n_entries:
                s += "\n"
        return s

    fn append(mut self, owned value: AstEntry):
        """Add a new TokenBundle to the collection.

        Args:
            value: The TokenBundle to append.
        """
        self._ast_entries.append(value)

    fn __len__(self) -> Int:
        """Get the number of TokenBundles in the collection.

        Returns:
            The count of TokenBundles.
        """
        return len(self._ast_entries)

    fn __bool__(self) -> Bool:
        """Check if the collection is non-empty.

        Returns:
            True if the collection contains any TokenBundles, False otherwise.
        """
        return Bool(self._ast_entries)

    fn __iter__(
        ref self,
    ) -> _ListIter[AstEntry, False, __origin_of(self._ast_entries)]:
        """Get an iterator over the TokenBundles.

        Returns:
            An iterator that yields TokenBundles.
        """
        return self._ast_entries.__iter__()

    fn __getitem__(self, span: Slice) -> List[AstEntry]:
        """Get a slice of TokenBundles.

        Args:
            span: The slice range to extract.

        Returns:
            A list of TokenBundles within the specified range.
        """
        return self._ast_entries[span]

    fn __getitem__[
        I: Indexer
    ](ref self, idx: I) -> ref [self._ast_entries] AstEntry:
        """Get a TokenBundle at a specific index.

        Args:
            idx: The index to access.

        Returns:
            A reference to the TokenBundle at the specified index.
        """
        return self._ast_entries[idx]

    fn __str__(self) -> String:
        """Convert the AstEntries to a string representation.

        Returns:
            A string showing all tokens with appropriate line breaks.
        """
        var s: String = ""
        var precise_location = String()
        for entry in self._ast_entries:
            if precise_location == "":
                precise_location = entry[].precise_location
            elif precise_location != entry[].precise_location:
                precise_location = entry[].precise_location
                s += "\n"
            s += String(entry[].ast_name) + " "  # TODO(josiahls): add tokens
        return s

    fn clear(mut self):
        """Remove all TokenBundles from the collection."""
        self._ast_entries.clear()


@fieldwise_init
struct AstParser:
    @staticmethod
    fn clang_call(file_path: Path, extra_args: String = "") raises -> List[String]:
        """Get the AST dump of the processed code."""
        cmd = (
            "clang -Xclang -ast-dump -fsyntax-only -fparse-all-comments -fno-color-diagnostics -ast-dump-filter=\"\" -nostdinc "
            + file_path.path
            + " "
            + extra_args
        )
        result = run(cmd)
        return result.split("\n")

    @staticmethod
    fn get_includes(file_path: Path, extra_args: String = "") raises -> List[AstEntry]:
        """Get include directives from the file without expansion.
        
        Uses clang -E -dI to extract include directives as AstEntry objects.
        This avoids the massive header expansion that occurs with -ast-dump.
        
        Args:
            file_path: Path to the C header file to analyze
            extra_args: Additional arguments to pass to clang
            
        Returns:
            List of AstEntry objects representing include directives
        """
        cmd = (
            "clang -E -dI -nostdinc "
            + file_path.path
            + " "
            + extra_args
            + " 2>/dev/null"
        )
        result = run(cmd)
        var lines = result.split("\n")
        var entries: List[AstEntry] = []
        
        for line in lines:
            # Look for lines that start with #include
            var line_str = String(line[])
            if line_str.strip().startswith("#include"):
                var ast_entry = AstEntry()
                
                # Parse the include line: #include <header.h> /* clang -E -dI */
                var clean_line = String(line_str.strip())
                if " /* clang -E -dI */" in clean_line:
                    clean_line = clean_line.replace(" /* clang -E -dI */", "")
                
                # Set basic fields
                ast_entry.ast_name = "IncludeDirective"
                ast_entry.original_line = line_str
                ast_entry.level = 0
                ast_entry.str_just_original_line = False
                
                # Parse tokens from the include line
                var tokens = clean_line.split(" ")
                for token in tokens:
                    var token_str = String(token[])
                    if token_str.strip() != "":
                        ast_entry.tokens.append(token_str)
                
                # Extract the header file name for full_location
                if len(ast_entry.tokens) >= 2:
                    var header_file = ast_entry.tokens[1]
                    # Remove < > or " " from header file name
                    if header_file.startswith("<") and header_file.endswith(">"):
                        header_file = String(header_file[1:-1])
                    elif header_file.startswith('"') and header_file.endswith('"'):
                        header_file = String(header_file[1:-1])
                    ast_entry.full_location = header_file
                
                # Leave these fields blank as they don't apply to include directives
                ast_entry.mem_address = ""
                ast_entry.precise_location = ""
                
                entries.append(ast_entry^)
        
        return entries

    fn parse(self, file_path: Path, extra_args: String = "") raises -> List[AstEntry]:

        result = self.clang_call(file_path, extra_args)
        var entries: List[AstEntry] = []

        includes = self.get_includes(file_path, extra_args)
        for include in includes:
            entries.append(include[])

        for line in result:
            level = 0
            consequetive_space = False
            expect_parent_address = False
            var ast_entry = AstEntry()
            for token in line[].split(" "):
                if token[].startswith("0x") and ast_entry.mem_address == "":
                    ast_entry.mem_address = token[]
                elif token[] == "parent" and ast_entry.full_location == "":
                    # Check if the next token is a valid address. This happens immendiately
                    # before the location section of the ast output.
                    expect_parent_address = True
                elif expect_parent_address and token[].startswith("0x"):
                    ast_entry.mem_address = token[] + " -> " + ast_entry.mem_address
                    expect_parent_address = False
                elif token[].startswith("|-") and ast_entry.ast_name == "":
                    ast_entry.ast_name = token[][2:]
                    level += 1
                elif token[].startswith("`-") and ast_entry.ast_name == "":
                    ast_entry.ast_name = token[][2:]
                    level += 1
                elif (
                    token[].startswith("TranslationUnitDecl")
                    and ast_entry.ast_name == ""
                ):
                    # TranslationUnitDecl is a special case which is located at the root
                    # of the ast output.
                    ast_entry.ast_name = token[]
                elif token[].startswith("<") and ast_entry.full_location == "":
                    ast_entry.full_location = token[]
                elif token[].endswith(
                    ">"
                ) and not ast_entry.full_location.endswith(">"):
                    ast_entry.full_location += " " + token[]
                elif (
                    "<<invalid sloc>>" in token[]
                    and ast_entry.full_location == ""
                ):
                    ast_entry.full_location = "invalid"
                elif (
                    "<invalid sloc>" in token[]
                    and ast_entry.precise_location == ""
                ):
                    ast_entry.precise_location = "invalid"
                elif (
                    token[].startswith("col:")
                    and ast_entry.precise_location == ""
                ):
                    ast_entry.precise_location = token[]
                elif (
                    token[].startswith("line:")
                    and ast_entry.precise_location == ""
                ):
                    ast_entry.precise_location = token[]
                elif (
                    token[] == ""
                    and ast_entry.ast_name == ""
                    and consequetive_space
                ):
                    level += 1
                    consequetive_space = False
                elif (
                    token[] == ""
                    and ast_entry.ast_name == ""
                    and not consequetive_space
                ):
                    consequetive_space = True
                elif token[] == "|" and ast_entry.ast_name == "":
                    level += 1
                else:
                    ast_entry.tokens.append(token[])

                # Cancel checking for consequtive spaces if the next token
                # isn't an empty space.
                if consequetive_space and token[] != "":
                    consequetive_space = False

            ast_entry.original_line = line[]
            ast_entry.level = level
            if ast_entry.ast_name == "":
                raise Error("Could not find name for line: " + line[])

            entries.append(ast_entry^)

        entry = AstEntry()
        entry.ast_name = C_BINDER_MOJO_END_FILE
        entry.level = 0
        entry.original_line = C_BINDER_MOJO_END_FILE
        entry.tokens = List[String]()
        entry.mem_address = ""
        entry.full_location = ""
        entry.precise_location = ""
        entries.append(entry^)
        return entries
