# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo import c_ast_statements
from c_binder_mojo.common import TokenBundle


@value
struct AstTemplate(AbstractAstStatement):
    var string_just_code:Bool

    fn __init__(mut self, x:c_ast_statements.AstStatements) raises:
        self.string_just_code = False
        if x.isa[c_ast_statements.PlaceHolder](): 
            # Add usages
            ...
        else:
            raise Error('AstTemplate does not support: ' + c_ast_statements.to_string(x))


    @staticmethod
    fn accept(ast_statement: c_ast_statements.ast_statements.AstStatements) -> Bool:
        return True

    fn togggle_string_just_code(mut self, string_just_code:Bool) -> None:
        self.string_just_code = string_just_code

    fn __str__(self) -> String:
        return "AstTemplate() "

