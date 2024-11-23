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
struct DisplayCol:
    var s:String 
    var length:Int
    var parent_col:Int


@value
struct DisplayTree:
    var rows:Dict[Int, List[DisplayCol]]

    fn __init__(inout self):
        self.rows = Dict[Int,List[DisplayCol]]()

    fn add(inout self, parent_col:Int, row: UInt, ast_statement:UnsafePointer[AstStatements]):
        s = to_string(ast_statement[])
        try:
            if row not in self.rows:
                self.rows[row] = List[DisplayCol]()
            self.rows[row].append(DisplayCol(s, len(s), parent_col))
        except Exceptions:
            print('some issue!')

    fn __str__(self) -> String:
        var s:String = ""
        for row_cols in self.rows.items():
            row,cols = row_cols[].key,row_cols[].value
            for col in cols:
                s += col[].s
            s += "\n"
        return s



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


    fn append_tree(self, inout tree: DisplayTree, row:Int, col:Int):
        for child in self.children:
            tree.add(row, col, child[].ast_statement)
            child[].append_tree(tree, row + 1, col)


    fn __str__(self) -> String: 
        "Prints the current node and all of its children."
        var tree: DisplayTree = DisplayTree()
        tree.add(0, 0, self.ast_statement) # Row zero
        self.append_tree(tree, 1, 0) # Make a new first row, col 0
        return str(tree)


fn make_graph(path:Path) raises -> UnsafePointer[AstNode]:
    root_node = AstNode()
    for line in path.read_text().split(';'):
        print(line[])

    return UnsafePointer.address_of(root_node)

