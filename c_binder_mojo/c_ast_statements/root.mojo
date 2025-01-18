# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
from pathlib import Path
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.c_primitives import TokenBundle

@value
struct Root(AbstractAstStatement):
    var text:String

    fn __init__(mut self, path:Path):
        self.text = String(path)

    fn __init__(mut self, token_bundle:TokenBundle):
        self.text = String(token_bundle.token)

    @staticmethod
    fn accept(token_bundle: TokenBundle) -> Bool:
        "This should only be instantiated once."
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        "Root statment will not be done until the end of the file."
        return False

    fn __str__(self) -> String:
        return "Root(): text: " + self.text

    fn accumulate(mut self, token_bundle: TokenBundle) -> Bool: return False

    fn do_make_child(mut self, token_bundle: TokenBundle) -> Bool: return True
