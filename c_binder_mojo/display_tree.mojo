# Native Mojo Modules
from collections import Optional,Dict,Set
from memory import UnsafePointer, bitcast, OwnedPointer, ArcPointer
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
from c_binder_mojo.ast_node import AstNode, RootASTNode


@value
struct DisplayAstNode(CollectionElement):
    """AstNode is a datastructure that represents the structure ofa C codebase.

    This node is part of a bidirectional acyclical graph.    
    """
    var parent: Int
    var children: List[Int]
    var string:  String
    var root: UnsafePointer[RootDisplayASTNode]

    fn indents(self) -> Int:
        var indent = 0
        var _parent = self.parent
        while _parent != -1:
            _parent = self.root[].nodes[_parent].parent
            indent += 1
        return indent

    def __str__(self) -> String: 
        var s = String("")
        for _ in range(self.indents()):
            s += "\t"
        s += self.string
        for child in self.children:
            s += "\n"
            s += str(self.root[].nodes[child[]])
        return s

@value
struct RootDisplayASTNode(AnyType):
    var nodes:List[DisplayAstNode]

    fn __init__(mut self, read root:RootASTNode) raises:
        self.nodes = List[DisplayAstNode]()
        self.update_nodes(-1, 0, root)

    fn update_nodes(mut self, parent_idx:Int, idx: Int, read root:RootASTNode) raises:
        node = root.nodes[idx]

        self.nodes.append(
            DisplayAstNode(
                parent_idx, 
                List[Int](),
                to_string(node.ast_statement),
                UnsafePointer[mut=True].address_of(self)
            )
        )

        if len(node.children) == 0:
            return None

        for child in node.children:
            self.update_nodes(idx, child[], root)
            self.nodes[idx].children.append(child[])

        
    fn __del__(owned self):
        self.nodes.clear()

    def __str__(self) -> String: 
        idx = 0
        node = self.nodes[idx]
        var s = str(node)
        return s