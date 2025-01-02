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

    fn __init__(mut self, root:UnsafePointer[RootDisplayASTNode]):
        self.parent = -1
        self.children = List[Int]()
        self.string = "root"
        self.root = root

    fn indents(self) -> Int:
        indent = 0
        # node = self
        # while node.parent:
        #     node = node.parent.bitcast[Self]()[]
        #     indent += 1
        return indent

    def __str__(self) -> String: 
        var s = self.string
        print(len(self.children))
        for child in self.children:
            s += "\n"
            for _ in range(self.indents()):
                s += "\t"
            print(child[])
            s += str(self.root[].nodes[child[]])
        return s

@value
struct RootDisplayASTNode(AnyType):
    var nodes:List[DisplayAstNode]

    fn __init__(mut self, read root:RootASTNode) raises:
        self.nodes = List[DisplayAstNode]()
        self.update_nodes(0, root)

    fn update_nodes(mut self, other_idx: Int, read root:RootASTNode) raises:
        idx = other_idx
        node = root.nodes[idx]
        self.nodes.append(
            DisplayAstNode(
                idx,
                List[Int](),
                to_string(node.ast_statement),
                UnsafePointer[mut=True].address_of(self)
            )
        )
        if len(node.children) == 0:
            return None

        for child in node.children:
            self.update_nodes(child[], root)
            print('appending children to node at index: ' + str(idx))
            # NOTE: still needs work. Indicies seem stuck at the root
            self.nodes[idx].children.append(child[])
        
    fn __del__(owned self):
        self.nodes.clear()

    fn indents(self) -> Int:
        indent = 0
        # node = self
        # while node.parent:
        #     node = node.parent.bitcast[Self]()[]
        #     indent += 1
        return indent

    def __str__(self) -> String: 
        idx = 0
        node = self.nodes[idx]
        var s = str(node)
        return s