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
struct EndIf(AbstractAstStatement):
    var token_bundle:TokenBundle

    fn __init__(mut self, token_bundle:TokenBundle):
        self.token_bundle = token_bundle

    fn line_num(self) -> Int:
        return self.token_bundle.line_num

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        if token_bundle.token.strip(' ') == CTokens.MACRO_ENDIF:
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        return True

    fn __str__(self) -> String:
        var s:String = "EndIf("
        s += "line_num=" + String(self.line_num())
        s += ") "
        s += self.token_bundle.token
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: return False
    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool:  return False
