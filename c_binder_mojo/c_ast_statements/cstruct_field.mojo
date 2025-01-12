# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.c_ast_statements.ast_statements import AstStatements
from c_binder_mojo.c_ast_statements.scope import Scope
from c_binder_mojo.c_ast_statements.cstruct import CStruct
from c_binder_mojo.c_primitives import TokenBundle, CTokens, STRING_SPLIT_AT


fn is_valid_scope(x:AstStatements) -> Bool:
    if x.isa[Scope]():
        scope = x[Scope]
        return scope.scopeable_type.isa[CStruct]()
    return False


@value
struct CStructField(AbstractAstStatement):
    var token_bundles:List[TokenBundle]

    fn __init__(mut self, token_bundle:TokenBundle):
        """
        I think ifNDef's are expected to have just 1 token.
        """
        self.token_bundles = List[TokenBundle]()
        self.token_bundles.append(token_bundle)

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        """This function relies heavily on `is_valid_scope`.
        """
        if token_bundle.token.strip(' ') == '':
            return False
        return True

    fn done(self,token_bundle: TokenBundle) -> Bool:
        recent_token = String(self.token_bundles[-1].token.strip(' '))
        # print('original token: '  + self.token_bundles[-1].token)
        # print('stripeped token: '  + recent_token)
        if recent_token == '':
            return False
        if recent_token[-1] == CTokens.END_STATEMENT:
            return True
        return False

    fn line_num(self) -> Int:
        return self.token_bundles[0].line_num

    fn __str__(self) -> String:
        var s:String = "CStructField("
        s += "line_num=" + str(self.line_num())
        s += ") "
        for token in self.token_bundles:
            s += token[].token
            s += " "
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: 
        self.token_bundles.append(token_bundle)
        return True

    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool: 
        "Multiline fields like structs will be caught and processed prior to this step."
        return False
