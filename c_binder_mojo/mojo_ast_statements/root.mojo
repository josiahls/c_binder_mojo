# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.base import TokenBundle
from c_binder_mojo import c_ast_statements

@value
struct Root(AbstractAstStatement):
    var s:String

    fn __init__(mut self):
        self.s = String("")

    fn __init__(mut self, root: c_ast_statements.Root):
        self.s = String("")
        self.s += root.text
            

    @staticmethod
    fn accept(ast_statement: c_ast_statements.ast_statements.AstStatements) -> Bool:
        if ast_statement.isa[c_ast_statements.Root]():
            return True
        return False

    fn __str__(self) -> String:
        return "Root() for: " + self.s

