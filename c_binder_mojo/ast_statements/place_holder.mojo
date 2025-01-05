# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.primitives import TokenBundle

@value
struct PlaceHolder(AbstractAstStatement):
    var s:String

    fn __init__(mut self):
        self.s = String("")

    fn __init__(mut self, token_bundle:TokenBundle):
        self.s = String("")
        self.s += token_bundle.token

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        return True

    fn done(self,token_bundle: TokenBundle) -> Bool:
        return True

    fn __str__(self) -> String:
        return "PlaceHolder() " + self.s

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: return False

    fn do_make_child(self, token_bundle:TokenBundle) -> Bool: return False
