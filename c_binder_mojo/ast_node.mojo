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




@value
struct AstNode(CollectionElement):
    """AstNode is a datastructure that represents the structure ofa C codebase.

    This node is part of a bidirectional acyclical graph.    
    """
    var parent:   UnsafePointer[AstNode]
    var children: List[AstNode]
    var ast_statement:  UnsafePointer[AstStatements]

    fn __init__(inout self):
        """
        
        Args:
            parent: The parent this node is connected to.
            children: The immediate subnodes that have this node as a parent.
            ast_statement: The handle instance for this node.
        """
        self.parent   = UnsafePointer[Self]()
        self.children = List[Self]()
        self.ast_statement  = UnsafePointer.address_of(AstStatements(AstStatementRoot()))

    fn __init__(inout self, borrowed other: AstNode, owned ast_statement:AstStatements):
        self.parent   = UnsafePointer[AstNode]()
        self.children = List[AstNode]()
        self.ast_statement  = UnsafePointer.address_of(ast_statement)

    fn get_current_node(self, line:String, line_num:Int) -> UnsafePointer[Self]:
        return UnsafePointer.address_of(self)


fn make_graph(path:Path) raises -> UnsafePointer[AstNode]:
    root_node = AstNode()
    for line in path.read_text().split(';'):
        print(line[])

    return UnsafePointer.address_of(root_node)

