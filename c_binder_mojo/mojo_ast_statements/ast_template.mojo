# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.abstract_ast_statement import AbstractAstStatement


@value
struct AstTemplate(AbstractAstStatement):
    var string_just_code:Bool

    fn __init__(mut self):
        self.string_just_code = False

    @staticmethod
    fn accept(ast_statement: c_ast_statements.ast_statements.AstStatements) -> Bool:
        return True

    fn togggle_string_just_code(mut self, string_just_code:Bool) -> None:
        self.string_just_code = string_just_code

    fn __str__(self) -> String:
        return "AstTemplate() "

