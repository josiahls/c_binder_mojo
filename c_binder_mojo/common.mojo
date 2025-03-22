"""Common utilities and data structures for C binder implementation."""

# Native Mojo Modules
from collections.list import _ListIter
from pathlib import Path

# Third Party Mojo Modules
from firehose.logging import Logger

# First Party Modules


struct NodeState:
    """State of a node in the AST.

    Reference usage in the c_ast_nodes.tree.mojo:get_current_node function
    for what these mean.
    """

    # AST Tree States
    alias MODULE_INIT = "MODULE_INIT"  # Tree has just started, no nodes exist yet

    # Node States
    alias NODE_INIT = "NODE_INIT"  # Node has just been created, processing initial data
    alias COMPLETE = "COMPLETE"  # Node is complete, no more tokens will be accepted
    alias APPENDING = "APPENDING"  # Node is collecting tokens for itself
    alias WANTING_CHILD = "WANTING_CHILD"  # Node expects a child node for the next token

    # Legacy aliases for backward compatibility
    alias STARTED = "MODULE_INIT"  # Deprecated: use MODULE_INIT for tree or NODE_INIT for nodes


struct CTokens:
    alias COMMENT_SINGLE_LINE_BEGIN = "//"
    alias COMMENT_MULTI_LINE_INLINE_BEGIN = "/*"
    alias COMMENT_MULTI_LINE_INLINE_END = "*/"
    alias COMMENT_MULTI_LINE_BEGIN = "/**"
    alias COMMENT_MULTI_LINE_END = "**/"
    alias MACRO_IFNDEF = "#ifndef"
    alias MACRO_DEFINE = "#define"
    alias MACRO_ELSE = "#else"
    alias MACRO_ENDIF = "#endif"
    alias TYPE_DEF = "typedef"
    alias CSTRUCT = "struct"
    alias ENUM = "enum"
    alias SCOPE_BEGIN = "{"
    alias SCOPE_END = "}"
    alias END_STATEMENT = ";"
    alias UNKNOWN = "UNKNOWN"
    alias MACRO_INCLUDE = "#include"


@value
struct NodeIndices:
    """Stores indices for tracking node relationships in the AST.

    This struct maintains references between original and new positions of nodes
    in the tree, allowing for tree transformations while preserving relationships.
    """

    alias UNSET = -1

    var original_parent_idx: Int
    """Index of the parent node in the original tree."""
    var original_current_idx: Int
    """Index of the current node in the original tree."""
    var original_child_idxs: List[Int]
    """Indices of the child nodes in the original tree."""
    var new_parent_idx: Int
    """Index of the parent node in the new tree."""
    var new_current_idx: Int
    """Index of the current node in the new tree."""
    var new_child_idxs: List[Int]
    """Indices of the child nodes in the new tree."""

    fn __init__(
        out self,
        original_parent_idx: Int,
        original_current_idx: Int,
        new_parent_idx: Int = Self.UNSET,
        new_current_idx: Int = Self.UNSET,
    ):
        """Initialize a new NodeIndices instance.

        Args:
            original_parent_idx: Index of the parent node in the original tree.
            original_current_idx: Index of the current node in the original tree.
            new_parent_idx: Index of the parent node in the new tree (default: -1).
            new_current_idx: Index of the current node in the new tree (default: -1).
        """
        self.original_parent_idx = original_parent_idx
        self.original_current_idx = original_current_idx
        self.original_child_idxs = List[Int]()
        self.new_parent_idx = new_parent_idx
        self.new_current_idx = new_current_idx
        self.new_child_idxs = List[Int]()

    fn _child_str(self, children_idxs: List[Int]) -> String:
        var s = String("")
        n_children = len(children_idxs)

        if n_children == 0:
            return "()"

        s += "("

        # If we have more than 6 elements, show first 5 then ellipsis
        var display_count = n_children
        if n_children > 6:
            display_count = 5

        for i in range(display_count):
            s += String(children_idxs[i])
            if i < display_count - 1:
                s += ", "

        if n_children > 6:
            s += ", ...) len=" + String(n_children)
        else:
            s += ")"

        return s

    fn __str__(self) -> String:
        var s = String("")
        if self.original_parent_idx != Self.UNSET:
            s += "original_parent_idx=" + String(self.original_parent_idx)
        if self.original_current_idx != Self.UNSET:
            if len(s) > 0:
                s += ", "
            s += "original_current_idx=" + String(self.original_current_idx)
        if self.new_parent_idx != Self.UNSET:
            if len(s) > 0:
                s += ", "
            s += "new_parent_idx=" + String(self.new_parent_idx)
        if self.new_current_idx != Self.UNSET:
            if len(s) > 0:
                s += ", "
            s += "new_current_idx=" + String(self.new_current_idx)

        if len(self.original_child_idxs) > 0:
            s += ", original_child_idxs=" + self._child_str(
                self.original_child_idxs
            )
        if len(self.new_child_idxs) > 0:
            s += ", new_child_idxs=" + self._child_str(self.new_child_idxs)
        return s


@value
struct TokenBundle(EqualityComparable):
    """A bundle containing a token and its position information in source code.

    This struct represents a single token along with its originallocation (row and column numbers)
    in the source code. It implements equality comparison for token matching.

    Attributes:
        token: The actual token string.
        row_num: The line number where this token appears (0-based).
        col_num: The column number where this token starts (0-based).
    """

    var token: String
    var row_num: Int
    var col_num: Int
    var deleted: Bool

    fn __init__(
        out self,
        token: String,
        row_num: Int,
        col_num: Int,
        deleted: Bool = False,
    ):
        """Initialize a new TokenBundle.

        Args:
            token: The token string to store.
            row_num: The line number where this token appears.
            col_num: The column number where this token starts.
            deleted: Whether this token is deleted, be still present in the source code.
        """
        self.token = token
        self.row_num = row_num
        self.col_num = col_num
        self.deleted = deleted

    fn __ne__(read self: Self, read other: Self) -> Bool:
        """Check if two TokenBundles are not equal.

        Args:
            other: Another TokenBundle to compare with.

        Returns:
            True if any field differs between the two bundles, False otherwise.
        """
        if self.token != other.token:
            return True
        elif self.row_num != other.row_num:
            return True
        elif self.col_num != other.col_num:
            return True
        return False

    fn __eq__(read self: Self, read other: Self) -> Bool:
        """Check if two TokenBundles are equal.

        Args:
            other: Another TokenBundle to compare with.

        Returns:
            True if all fields match between the two bundles, False otherwise.
        """
        return not self.__ne__(other)

    fn __str__(self) -> String:
        """Convert the TokenBundle to a string representation.

        Returns:
            A string showing the position and token content.
        """
        if self.deleted:
            return "TokenBundle(deleted)"
        else:
            return (
                "TokenBundle("
                + "row_num="
                + String(self.row_num)
                + ", col_num="
                + String(self.col_num)
                + ")"
                + " "
                + self.token
            )


@value
struct TokenBundles(Stringable):
    """A collection of TokenBundle objects with list-like operations.

    This struct provides a container for multiple TokenBundles with standard
    collection operations like append, length checking, iteration, and indexing.

    This primarly acs as a passthrough to the underlying list, but
    allows extending the list with additional functionality.
    """

    var _token_bundles: List[TokenBundle]

    fn __init__(mut self):
        """Initialize an empty TokenBundles collection."""
        self._token_bundles = List[TokenBundle]()

    fn append(mut self, owned value: TokenBundle):
        """Add a new TokenBundle to the collection.

        Args:
            value: The TokenBundle to append.
        """
        self._token_bundles.append(value)

    fn __len__(self) -> Int:
        """Get the number of TokenBundles in the collection.

        Returns:
            The count of TokenBundles.
        """
        return len(self._token_bundles)

    fn __bool__(self) -> Bool:
        """Check if the collection is non-empty.

        Returns:
            True if the collection contains any TokenBundles, False otherwise.
        """
        return Bool(self._token_bundles)

    fn __iter__(
        ref self,
    ) -> _ListIter[TokenBundle, False, __origin_of(self._token_bundles)]:
        """Get an iterator over the TokenBundles.

        Returns:
            An iterator that yields TokenBundles.
        """
        return self._token_bundles.__iter__()

    fn __getitem__(self, span: Slice) -> List[TokenBundle]:
        """Get a slice of TokenBundles.

        Args:
            span: The slice range to extract.

        Returns:
            A list of TokenBundles within the specified range.
        """
        return self._token_bundles[span]

    fn __getitem__[
        I: Indexer
    ](ref self, idx: I) -> ref [self._token_bundles] TokenBundle:
        """Get a TokenBundle at a specific index.

        Args:
            idx: The index to access.

        Returns:
            A reference to the TokenBundle at the specified index.
        """
        return self._token_bundles[idx]

    fn __str__(self) -> String:
        """Convert the TokenBundles to a string representation.

        Returns:
            A string showing all tokens with appropriate line breaks.
        """
        var s: String = ""
        var row_num = -1
        for token in self._token_bundles:
            if row_num == -1:
                row_num = token[].row_num
            elif row_num != token[].row_num:
                row_num = token[].row_num
                s += "\n"
            s += String(token[].token) + " "
        return s

    fn clear(mut self):
        """Remove all TokenBundles from the collection."""
        self._token_bundles.clear()


@value
struct Tokenizer:
    """A utility for breaking source code into tokens.

    This struct provides functionality to read source code and break it into
    individual tokens while preserving their position information.
    """

    var tokens: List[TokenBundle]

    alias ISOLATED_TOKEN_CHARS: List[String] = List[String](";", ",", "{", "}")

    fn __init__(mut self):
        """Initialize an empty Tokenizer."""
        self.tokens = List[TokenBundle]()

    fn tokenize_line(mut self, line: String) -> List[String]:
        """Split a single line into tokens.

        Args:
            line: The line of source code to tokenize.

        Returns:
            A list of token strings.
        """
        _line = line
        for char in self.ISOLATED_TOKEN_CHARS:
            _line = _line.replace(char[], " " + char[] + " ")
        try:
            return _line.split(" ")
        except e:
            return List[String](_line)

    fn tokenize(mut self, path: Path) raises -> None:
        """Tokenize an entire source file.

        Args:
            path: Path to the source file to tokenize.

        Raises:
            May raise file reading or parsing related exceptions.
        """
        var logger = Logger.get_default_logger("c_binder_mojo.common.tokenizer")
        logger.info("Tokenizing: " + String(path))
        current_row_num = 0
        lines = path.read_text().split("\n")
        self.tokens.reserve(len(lines))
        for line_ptr in lines:
            line = line_ptr[]
            col_num = 0
            for token_string in self.tokenize_line(line):
                token = TokenBundle(token_string[], current_row_num, col_num)
                self.tokens.append(token)
                col_num += len(token_string[])
            current_row_num += 1

    fn to_string(self, make_flat: Bool = False) -> String:
        """Convert all tokens to a string representation.

        Args:
            make_flat: If True, puts each token on a new line.

        Returns:
            A string containing all tokens with appropriate formatting.
        """
        s = String("")
        current_row_num = -1
        for token in self.tokens:
            if make_flat:
                s += "\n"  # Add new line for each token
            elif current_row_num == -1:
                current_row_num = token[].row_num
            elif current_row_num != token[].row_num:
                current_row_num = token[].row_num
                s += "\n"
            s += String(token[]) + " "
        return s

    fn __str__(self) -> String:
        """Convert the Tokenizer's contents to a string.

        Returns:
            A string representation of all tokens.
        """
        return self.to_string()
