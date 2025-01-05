# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.primitives import TokenBundle

@value
struct BlankSpace(AbstractAstStatement):
    var token_bundle:TokenBundle

    fn __init__(mut self, token_bundle:TokenBundle):
        self.token_bundle = token_bundle

    fn line_num(self) -> Int:
        return self.token_bundle.line_num

    @staticmethod
    fn is_blank(token_bundle:TokenBundle) -> Bool:
        return token_bundle.token.strip(' ') == ''

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        if BlankSpace.is_blank(token_bundle):
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        if token_bundle.line_num != self.line_num():
            return True
        return not self.is_blank(token_bundle)

    fn __str__(self) -> String:
        var s:String = "BlankSpace("
        s += "line_num=" + str(self.line_num())
        s += ")"
        return s

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: 
        "Will not actually accumulate blank tokens because why?"
        if token_bundle.line_num != self.line_num():
            return False
        return self.is_blank(token_bundle)

    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool: return False
