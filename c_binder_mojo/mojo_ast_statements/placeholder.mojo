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
struct PlaceHolder(AbstractAstStatement):
    var s:String

    fn __init__(mut self):
        self.s = String("")

    fn __init__(mut self, ast_statement: c_ast_statements.ast_statements.AstStatements):
        self.s = String("")
        self.s += 'hi' #token_bundle.token

    @staticmethod
    fn accept(ast_statement: c_ast_statements.ast_statements.AstStatements) -> Bool:
        return True

    fn __str__(self) -> String:
        return "PlaceHolder() " + self.s

