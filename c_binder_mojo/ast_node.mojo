# Native Mojo Modules
from collections import Optional,Dict,Set
from memory import UnsafePointer
from utils import Variant
from pathlib import Path
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.ast_statements import (
    AstStatements,
    to_string,
    to_done,
    to_do_accumulate,
    to_accumulate,
    to_do_make_new,
    to_make_new
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

    fn __init__(inout self, owned ast_statement:AstStatements):
        self.parent   = UnsafePointer[AstNode]()
        self.children = List[AstNode]()
        self.ast_statement  = UnsafePointer.address_of(ast_statement)

    fn get_current_node(inout self, line:String, line_num:Int) raises -> UnsafePointer[Self]:
        if to_done(self.ast_statement[]):
            # If the current statement is done, see if we can move up a parent.
            if self.parent:
                return self.get_current_node(line, line_num)
            # I don't think this should even happen.
            raise Error('Failure at: ' + line + '. No way to handle ')
        # If the current statement is not done, then we can either
        # accumulate the line String, or add a new AstNode
        if to_do_accumulate(self.ast_statement[],line,line_num):
            to_accumulate(self.ast_statement[],line,line_num)
            return UnsafePointer.address_of(self)

        if to_do_make_new(self.ast_statement[],line,line_num):
            statement = to_make_new(self.ast_statement[],line,line_num)
            child = Self(statement)
            self.children.append(child)
            return UnsafePointer[Self].address_of(child)
        
        raise Error('Dont know how to handle: ' + line + ' ' + str(line_num))


fn make_graph(path:Path) raises -> UnsafePointer[AstNode]:
    root_node = AstNode()
    active_node = UnsafePointer.address_of(root_node)
    line_num = 0
    for line in path.read_text().split('\n'):
        active_node = active_node[].get_current_node(line[],line_num)
        line_num += 1
        print(line[])

    return UnsafePointer.address_of(root_node)

