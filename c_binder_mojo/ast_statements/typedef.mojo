# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.primitives import TokenBundle, CTokens

@value
struct TypeDef(AbstractAstStatement):
    var token_bundles:List[TokenBundle]

    fn __init__(mut self, token_bundle:TokenBundle):
        """
        I think ifNDef's are expected to have just 1 token.
        """
        self.token_bundles = List[TokenBundle]()
        self.token_bundles.append(token_bundle)

    fn line_num(self) -> Int:
        return self.token_bundles[0].line_num

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        if token_bundle.token.strip(' ') == CTokens.TYPE_DEF:
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        var _token:String = token_bundle.token.strip(' ')
        if _token in [
            str(CTokens.COMMENT_SINGLE_LINE_BEGIN),
            str(CTokens.COMMENT_MULTI_LINE_BEGIN),
            str(CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN)
        ]:
            return True

        if self.token_bundles[-1].token.strip(' ') == CTokens.END_STATEMENT:
            return True

        # NOTE: Probably should never get here. typedef should always end in a semicolon
        if self.line_num() != token_bundle.line_num:
            return True
        return False

    fn __str__(self) -> String:
        var s:String = "EndIf("
        s += "line_num=" + str(self.line_num())
        s += ") "
        for token in self.token_bundles:
            s += token[].token
            s += " "
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool:
        if token_bundle.line_num == self.line_num():
            self.token_bundles.append(token_bundle)
            return True 
        return False
    fn do_make_child(self, token_bundle:TokenBundle) -> Bool:  
        return False
