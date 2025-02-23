# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo import c_ast_statements
from c_binder_mojo.common import TokenBundle, TokenBundles


@value
struct Skip(AbstractAstStatement):
    var token_bundles:TokenBundles
    var string_just_code:Bool

    fn __init__(mut self, x:c_ast_statements.AstStatements) raises:
        self.string_just_code = False
        if x.isa[c_ast_statements.IfNDef]():
            self.token_bundles = TokenBundles()
            for token in x[c_ast_statements.IfNDef].token_bundles:
                self.token_bundles.append(token[])
        elif x.isa[c_ast_statements.Define]():
            self.token_bundles = TokenBundles()
            for token in x[c_ast_statements.Define].token_bundles:
                self.token_bundles.append(token[])
        else:
            raise Error('Skip does not support: ' + c_ast_statements.to_string(x))

    @staticmethod
    fn accept(ast_statement: c_ast_statements.AstStatements) -> Bool:
        if ast_statement.isa[c_ast_statements.IfNDef]():
            return True
        if ast_statement.isa[c_ast_statements.Define]():
            # Additionally, the ast statement needs to have a token bundle len of 2 e.g.:
            # #define SOME_VAR
            # and the last var ends in _H_ so we know for a fact its a header guard.
            # This usually implies a header guard.
            x = ast_statement[c_ast_statements.Define]
            if len(x.token_bundles) == 2 and x.token_bundles[-1].token.endswith('_H_'):
                return True
        return False

    fn togggle_string_just_code(mut self, string_just_code:Bool) -> None:
        self.string_just_code = string_just_code

    fn __str__(self) -> String:
        var s = "Skip() unsupported in mojo: " + String(self.token_bundles)
        if self.string_just_code:
            return "# " + s
        return s

