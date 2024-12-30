# Native Mojo Modules
from collections import Optional,Dict,Set
from memory import UnsafePointer
from memory import UnsafePointer,bitcast, OwnedPointer, ArcPointer
from sys.ffi import OpaquePointer
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
    var parent:   OpaquePointer
    var children: List[OpaquePointer]
    var string:  String

    fn __init__(mut self, read node:AstNode):
        try:
            self.string = to_string(node.ast_statement[])
        except e:
            self.string = "missing ast statement support, got: " + str(e)
        self.parent = OpaquePointer()
        self.children = List[OpaquePointer]()
        for child in node.children:
            typed_child = child[].bitcast[AstNode]()[] # segfaults here
            _ = typed_child
            # display_node_child = Self(typed_child[])
            # self.children.append(UnsafePointer.address_of(display_node_child).bitcast[NoneType]())

    fn indents(self) -> Int:
        indent = 0
        # node = self
        # while node.parent:
        #     node = node.parent.bitcast[Self]()[]
        #     indent += 1
        return indent

    def __str__(self) -> String: 
        var s = self.string
        # for child in self.children:
        #     s += "\n"
        #     for _ in range(self.indents()):
        #         s += "\t"
        #     s += str(child[])
        return s
