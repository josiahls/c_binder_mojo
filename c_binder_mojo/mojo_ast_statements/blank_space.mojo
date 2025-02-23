# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo import c_ast_statements
from c_binder_mojo.common import TokenBundle, TokenBundles


@value
struct BlankSpace(AbstractAstStatement):
    var token_bundle:TokenBundle
    var string_just_code:Bool

    fn __init__(mut self, x:c_ast_statements.AstStatements) raises:
        self.string_just_code = False
        self.token_bundle = x[c_ast_statements.BlankSpace].token_bundle
        

    @staticmethod
    fn accept(ast_statement: c_ast_statements.AstStatements) -> Bool:
        if ast_statement.isa[c_ast_statements.BlankSpace]():
            return True
        return False

    fn togggle_string_just_code(mut self, string_just_code:Bool) -> None:
        self.string_just_code = string_just_code

    fn __str__(self) -> String:
        var s = String(self.token_bundle.token)
        if self.string_just_code:
            return s
        return "BlankSpace(): " + s

