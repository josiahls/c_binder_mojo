# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.base import TokenBundle
from c_binder_mojo.c_primitives import CTokens

@value
struct MacroElse(AbstractAstStatement):
    var token_bundle:List[TokenBundle]

    fn __init__(mut self, token_bundle:TokenBundle):
        self.token_bundle = List(token_bundle)

    fn line_num(self) -> Int:
        return self.token_bundle[0].line_num

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        if token_bundle.token.strip(' ') == CTokens.MACRO_ELSE:
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        # We need to wait to see if there is a single comment at the end of the 
        # endif
        var _token:String = String(token_bundle.token.strip(' '))
        if _token in [String(CTokens.MACRO_ENDIF)]:
            return True
        return False

    fn __str__(self) -> String:
        var s:String = "MacroElse("
        s += "line_num=" + String(self.line_num())
        s += ") "
        for token in self.token_bundle:
            s += token[].token
            s += " "
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: return False
    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool:  return True
