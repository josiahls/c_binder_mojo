from memory import UnsafePointer
from collections import List
from utils import Variant


@value
struct Statement1:
    pass

@value
struct Statement2:
    pass

alias AstStatements = Variant[Statement1, Statement2]

@value
struct AstNode:
    var parent: UnsafePointer[AstNode]
    var children: List[AstNode]
    var ast_statement: UnsafePointer[AstStatements]
    
    fn __init__(mut self):
        self.parent = UnsafePointer[AstNode] ()
        self.children = List[AstNode] ()
        self.ast_statement = UnsafePointer[AstStatements] ()

fn main():
    node = AstNode()
    print("AstNode initialized")
    _ = node