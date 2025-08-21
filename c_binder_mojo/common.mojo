"""Common utilities and data structures for C binder implementation."""

# Native Mojo Modules
from collections.list import _ListIter
from pathlib import Path

# Third Party Mojo Modules
from firehose.logging import Logger

# First Party Modules


alias MOJO_KEYWORDS: List[String] = List[String](
    "alias", "fn", "struct", "enum", "union", "global", "var", "ref"
)

alias MOJO_METHOD_KEYWORDS: List[String] = List[String]("copy")
