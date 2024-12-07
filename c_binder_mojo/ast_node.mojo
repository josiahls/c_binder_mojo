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
    to_do_make_child,
    to_make_child
)
from c_binder_mojo.ast_statements.ast_statement_root import AstStatementRoot


# @value
struct AstNode(CollectionElement):
    """AstNode is a datastructure that represents the structure ofa C codebase.

    This node is part of a bidirectional acyclical graph.    
    """
    var parent:   UnsafePointer[AstNode]
    var children: List[AstNode]
    var ast_statement:  UnsafePointer[AstStatements]

    fn __init__(mut self):
        """
        
        Args:
            parent: The parent this node is connected to.
            children: The immediate subnodes that have this node as a parent.
            ast_statement: The handle instance for this node.
        """
        self.parent   = UnsafePointer[Self]()
        self.children = List[Self]()
        ast_statement = AstStatements(AstStatementRoot())
        self.ast_statement  = UnsafePointer.address_of(ast_statement)


    fn __init__(mut self, read parent:UnsafePointer[Self], owned ast_statement:AstStatements):
        self.parent   = parent
        self.children = List[AstNode]()
        self.ast_statement  = UnsafePointer.address_of(ast_statement)
        _ = self.ast_statement
        try:
            print('init from statement: ' + to_string(self.ast_statement[]))
        except:
            print('something weird happened lolololololololo')

    fn __moveinit__(mut self, owned existing:Self):
        self.parent = existing.parent
        self.children = existing.children^
        self.ast_statement = existing.ast_statement

    fn __copyinit__(mut self, read existing:Self):
        self.parent = existing.parent
        self.children = List[AstNode]()
        for child in existing.children:
            self.children.append(child[])
        self.ast_statement = existing.ast_statement


    fn get_current_node(mut self, line:String, line_num:Int) raises -> UnsafePointer[Self]:
        """Recursive function for getting the currently active node + aststatement.

        The flow of operations is:
        - If done
            - If has a parent
                - go up to the parent, and call get_current_node again
            - Else
                - Raise failure, since if it is done, but doesn't have a parent, It
                  really should have been the root node, which is never done.

        - If not done
            - If accumulate
                - Some AST statements require multiple lines. We allow the statement
                of interest to accumulate the line, and just return the current node to
                either accumulate more lines, or complete.
            - If make child
                - 

        """
        if to_done(self.ast_statement[]):
            # If the current statement is done, see if we can move up a parent.
            if self.parent:
                return self.parent[].get_current_node(line, line_num)
            # I don't think this should even happen.
            raise Error('Failure at: ' + line + '. For statement: ' + to_string(self.ast_statement[]) +' No way to handle')
        # If the current statement is not done, then we can either
        # accumulate the line String, or add a new AstNode
        if to_do_accumulate(self.ast_statement[],line,line_num):
            to_accumulate(self.ast_statement[],line,line_num)
            return UnsafePointer.address_of(self)

        if to_do_make_child(self.ast_statement[],line,line_num):
            statement = to_make_child(self.ast_statement[],line,line_num)
            child = Self(UnsafePointer.address_of(self), statement)
            self.children.append(child)
            return UnsafePointer[Self].address_of(self.children[-1])
        
        raise Error('Dont know how to handle: ' + line + ' ' + str(line_num))


fn make_graph(path:Path) raises -> UnsafePointer[AstNode]:
    root_node = AstNode()
    active_node = UnsafePointer.address_of(root_node)
    line_num = 0
    for line in path.read_text().split('\n'):
        active_node = active_node[].get_current_node(line[],line_num)
        line_num += 1
        # print(line[])
        # break

    return UnsafePointer.address_of(root_node)

