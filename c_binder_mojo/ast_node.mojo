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
    to_accumulate,
    to_do_make_child,
    to_replace,
    to_make_child
)
from c_binder_mojo.ast_statements.ast_statement_root import AstStatementRoot
from c_binder_mojo.ast_statements.ast_statement_place_holder import AstStatementPlaceHolder
from c_binder_mojo.primitives import TokenBundle


@value
struct AstNode(CollectionElement):
    var parent: Int
    var children: List[Int]
    var ast_statement: AstStatements
    var root: UnsafePointer[RootAstNode]

    # fn __del__(owned self):
    #     # self.root.de
    #     print('destroying ast node')

    fn __init__(mut self, root:UnsafePointer[RootAstNode]):
        self.parent = -1
        self.children = List[Int]()
        self.ast_statement = AstStatements(AstStatementPlaceHolder())
        self.root = root

    fn __init__(mut self, root:UnsafePointer[RootAstNode], path:Path):
        self.parent = -1
        self.children = List[Int]()
        self.ast_statement = AstStatements(AstStatementRoot(path))
        self.root = root


@value
struct RootAstNode(AnyType):
    var nodes:List[AstNode]

    fn __init__(mut self, path:Path):
        self.nodes = List[AstNode]()
        self.nodes.append(
            AstNode(UnsafePointer[mut=True].address_of(self), path)
        )

    fn __del__(owned self):
        self.nodes.clear()

    fn get_current_node(mut self, idx:Int, token_bundle: TokenBundle) raises -> Int:
        """Recursive function for getting the currently active node + aststatement.

        The flow of operations is:
        - to_replace ast statements
            - some ast statements can be converted to another ast statement.
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
        # node.ast_statement = to_replace(node.ast_statement, token_bundle)

        if to_done(self.nodes[idx].ast_statement, token_bundle):
            if self.nodes[idx].parent != -1:
                return self.get_current_node(self.nodes[idx].parent, token_bundle)

            # I don't think this should even happen.
            raise Error('Failure at: ' + token_bundle.token + '. For statement: ' + to_string(self.nodes[idx].ast_statement) +' No way to handle')

        if to_accumulate(self.nodes[idx].ast_statement, token_bundle):
            return idx

        if to_do_make_child(self.nodes[idx].ast_statement, token_bundle):
            statement = to_make_child(self.nodes[idx].ast_statement, token_bundle)
            child = AstNode(
                idx,
                List[Int](),
                statement,
                UnsafePointer[mut=True].address_of(self)
            )
            self.nodes.append(child)
            self.nodes[idx].children.append(len(self.nodes) - 1)
            return len(self.nodes) - 1

        raise Error('Dont know how to handle: ' + token_bundle.token + ' ' + str(token_bundle))
        


fn make_graph(path:Path) raises -> RootAstNode:
    root_node = RootAstNode(path)
    line_num = 0
    col_num = 0
    current_idx = 0
    for line in path.read_text().split('\n'):
        col_num = 0
        for token in line[].split(' '):
            token_bundle = TokenBundle(token[], line_num, col_num)
            current_idx = root_node.get_current_node(current_idx, token_bundle)
            col_num += len(token[])
        line_num += 1
        # print(line[])
        # break

    return root_node
