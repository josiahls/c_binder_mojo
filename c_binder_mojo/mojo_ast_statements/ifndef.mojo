# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo import c_ast_statements
from c_binder_mojo.base import TokenBundle,TokenBundles


@value
struct IfNDef(AbstractAstStatement):
    var token_bundles:TokenBundles
    var string_just_code:Bool

    fn __init__(mut self, x:c_ast_statements.AstStatements) raises:
        """
        Mojo does not contain IfNDef ops. We need to be more clever with how we set this up.
        
        """
        self.string_just_code = False
        self.token_bundles = TokenBundles()
        if x.isa[c_ast_statements.IfNDef](): 
            token_bundles = TokenBundles()
            for token in x[c_ast_statements.IfNDef].token_bundles:
                token_bundles.append(token[])
            self.translate(token_bundles)
        else:
            raise Error('IfNDef does not support: ' + c_ast_statements.to_string(x))


    fn translate(mut self, token_bundles:TokenBundles):
        """Converts a #ifndef SOMEVAR line to a struct


        """
        line_num = token_bundles[0].line_num
        variable_name = token_bundles[1].token 
        struct_name = "Config_" + variable_name
        self.token_bundles.append(TokenBundle("struct", line_num, 0))
        self.token_bundles.append(TokenBundle(struct_name, line_num, 0))
        self.token_bundles.append(TokenBundle(":", line_num, 0))
        line_num += 1


    @staticmethod
    fn accept(ast_statement: c_ast_statements.ast_statements.AstStatements) -> Bool:
        if ast_statement.isa[c_ast_statements.IfNDef]():
            # Additionally, the ast statement needs to have a token bundle len of 2 e.g.:
            # #define SOME_VAR
            # and the last var ends in _H_ so we know for a fact its a header guard.
            # This usually implies a header guard.
            x = ast_statement[c_ast_statements.IfNDef]
            if len(x.token_bundles) == 2 and x.token_bundles[-1].token.endswith('_H_'):
                return False 
            return True
        return False

    fn togggle_string_just_code(mut self, string_just_code:Bool) -> None:
        self.string_just_code = string_just_code

    fn __str__(self) -> String:
        s = String(self.token_bundles)
        if self.string_just_code:
            return s

        return "IfNDef (mojo migrated)() " + s

