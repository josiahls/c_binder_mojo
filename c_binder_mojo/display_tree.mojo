# Native Mojo Modules
from collections import Optional,Dict,Set
from memory import UnsafePointer
from utils import Variant
from pathlib import Path
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.ast_statements import (
    AstStatements,
    to_string
)
from c_binder_mojo.ast_statements.ast_statement_root import AstStatementRoot
from c_binder_mojo.ast_node import AstNode


@value
struct DisplayAstNode(CollectionElement):
    """AstNode is a datastructure that represents the structure ofa C codebase.

    This node is part of a bidirectional acyclical graph.    
    """
    var parent:   UnsafePointer[Self]
    var children: List[Self]
    var string:  String

    fn __init__(inout self, node:AstNode):
        self.string = to_string(node.ast_statement[])
        self.parent = UnsafePointer[Self]()
        self.children = List[Self]()
        for child in node.children:
            self.children.append(Self(child[]))

    fn indents(self) -> Int:
        indent = 0
        node = self
        while node.parent:
            node = node.parent[]
            indent += 1
        return indent

    def __str__(self) -> String: 
        var s = self.string
        for child in self.children:
            s += "\n"
            for _ in range(self.indents()):
                s += "\t"
            s += str(child[])
        return s
