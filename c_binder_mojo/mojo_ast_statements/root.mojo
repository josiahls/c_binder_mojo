# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.common import TokenBundle
from c_binder_mojo import c_ast_statements


fn make_token(x:c_ast_statements.AstStatements) raises -> TokenBundle:
    if x.isa[c_ast_statements.Root]():
        return TokenBundle(x[c_ast_statements.Root].text, 0,0)

    raise Error('make_token does not support: ' + c_ast_statements.to_string(x))



@value
struct Root(AbstractAstStatement):
    var s:TokenBundle
    var string_just_code:Bool

    fn __init__(mut self, x: c_ast_statements.AstStatements) raises:
        self.s = make_token(x)
        self.string_just_code = False

    @staticmethod
    fn accept(ast_statement: c_ast_statements.ast_statements.AstStatements) -> Bool:
        if ast_statement.isa[c_ast_statements.Root]():
            return True
        return False

    fn togggle_string_just_code(mut self, string_just_code:Bool) -> None:
        self.string_just_code = string_just_code

    fn __str__(self) -> String:
        if self.string_just_code:
            # Roots don't have any code themselves.
            return ""
        return "Root() at " + self.s.token

