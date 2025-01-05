# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.primitives import TokenBundle, CTokens, STRING_SPLIT_AT

@value
struct Scope(AbstractAstStatement):
    var token_bundles:List[TokenBundle]

    fn __init__(mut self, token_bundle:TokenBundle):
        """
        Simple curly bracket scoping.
        """
        self.token_bundles = List[TokenBundle]()
        self.token_bundles.append(token_bundle)

    fn line_num(self) -> Int:
        return self.token_bundles[0].line_num

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        if token_bundle.token.strip(' ') == CTokens.SCOPE_BEGIN:
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        if self.token_bundles[-1].token.strip(' ')[-1] == CTokens.SCOPE_END:
            return True

        return False

    fn __str__(self) -> String:
        var s:String = "Scope("
        s += "line_num=" + str(self.line_num())
        s += ") "
        for token in self.token_bundles:
            s += token[].token
            s += " "
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool:
        var token = token_bundle.token.strip(' ')
        if token == CTokens.SCOPE_END:
            self.token_bundles.append(
                TokenBundle(STRING_SPLIT_AT, token_bundle.line_num, token_bundle.col_num)
            )
            self.token_bundles.append(token_bundle)
            return True
        return False

    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool:
        return True
