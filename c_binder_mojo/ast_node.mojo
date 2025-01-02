# Native Mojo Modules
from collections import Optional,Dict,Set
from memory import UnsafePointer,bitcast, OwnedPointer, ArcPointer
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



@value
struct AstNode(CollectionElement):
    var parent: Int
    var children: List[Int]
    var ast_statement: AstStatements
    var root: UnsafePointer[RootASTNode]

    fn __init__(mut self, mut root:UnsafePointer[RootASTNode]):
        self.parent = -1
        self.children = List[Int]()
        self.ast_statement = AstStatements(AstStatementRoot())
        self.root = root


@value
struct RootASTNode(AnyType):
    var nodes:List[AstNode]

    fn __init__(mut self):
        self.nodes = List[AstNode]()
        self.nodes.append(
            AstNode(UnsafePointer.address_of(self))
        )

    fn __del__(owned self):
        self.nodes.clear()

    fn get_current_node(mut self, idx:Int, line:String, line_num:Int) raises -> Int:
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
                - Create a new ASTNode based on line
                - Add to the children list.
        """
        current_node = self.nodes[idx]


        return 100
        


fn make_graph(path:Path) raises -> RootASTNode:
    root_node = RootASTNode()
    line_num = 0
    current_idx = 0
    for line in path.read_text().split('\n'):
        current_idx = root_node.get_current_node(current_idx, line[],line_num)
        line_num += 1
        print(line[])
        break

    return root_node
