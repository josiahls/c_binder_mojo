# Native Mojo Modules
from collections import Optional,Dict,Set
from memory import UnsafePointer, bitcast, OwnedPointer, ArcPointer
from sys.ffi import OpaquePointer
from utils import Variant
from pathlib import Path
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements import (
    AstStatements,
    to_string,
    to_accept,
    indent_children
)
from c_binder_mojo.c_ast_statements.root import Root
from c_binder_mojo.c_ast_node import AstNode, RootAstNode
from c_binder_mojo.base import STRING_SPLIT_AT


@value
struct MojoAstNode(CollectionElement):
    """AstNode is a datastructure that represents the structure ofa C codebase.

    This node is part of a bidirectional acyclical graph.    
    """
    var parent: Int
    var children: List[Int]
    var ast_statement: AstStatements
    var root: UnsafePointer[RootMojoAstNode]

    fn indents(self) -> Int:
        var indent = 0
        var _parent = self.parent
        while _parent != -1:
            _parent = self.root[].nodes[_parent].parent
            indent += 1
        return indent

@value
struct RootMojoAstNode(AnyType):
    var nodes:List[MojoAstNode]

    fn __init__(mut self, read root:RootAstNode) raises:
        self.nodes = List[MojoAstNode]()
        _ = self.update_nodes(-1, 0, root)

    fn update_nodes(mut self, parent_idx:Int, idx: Int, read root:RootAstNode) raises -> Bool:
        node = root.nodes[idx]

        self.nodes.append(
            MojoAstNode(
                parent_idx, 
                List[Int](),
                to_accept(node.ast_statement),
                UnsafePointer[mut=True].address_of(self)
            )
        )


        if len(node.children) == 0:
            return False

        do_indent_children = indent_children(self.nodes[-1].ast_statement) 
        if not do_indent_children:
            current_idx = parent_idx
            self.nodes[current_idx].children.append(len(self.nodes) - 1)
        else:
            current_idx = idx

        for child in node.children:
            result = self.update_nodes(current_idx, child[], root)
            if not result:
                self.nodes[current_idx].children.append(child[])

        return not do_indent_children

        
    fn __del__(owned self):
        self.nodes.clear()

    def __str__(self) -> String: 
        idx = 0
        node = self.nodes[idx]
        var s = 'hi' # String(node)
        return s