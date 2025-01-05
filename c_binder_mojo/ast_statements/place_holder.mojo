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
    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        return True

    fn done(self,token_bundle: TokenBundle) -> Bool:
        return True

    fn __str__(self) -> String:
        return "PlaceHolder()"

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: return False

    fn do_make_child(self, token_bundle:TokenBundle) -> Bool: return False
