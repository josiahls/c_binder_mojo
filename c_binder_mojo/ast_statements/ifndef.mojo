# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.primitives import TokenBundle, CTokens

@value
struct IfNDef(AbstractAstStatement):
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
        if token_bundle.token.strip(' ') == CTokens.MACRO_IFNDEF:
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        # We need to wait to see if there is a single comment at the end of the 
        # endif
        var _token:String = token_bundle.token.strip(' ')
        if _token in [str(CTokens.MACRO_ELSE), str(CTokens.MACRO_ENDIF)]:
            return True
        return False

    fn __str__(self) -> String:
        var s:String = "IfNDef("
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
    fn do_make_child(self, token_bundle:TokenBundle) -> Bool: return True
