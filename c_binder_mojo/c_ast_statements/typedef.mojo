# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.base import TokenBundle, STRING_SPLIT_AT
from c_binder_mojo.c_primitives import CTokens

@value
struct TypeDef(AbstractAstStatement):
    # TODO(josiahls): Might still be better to have a completely separate
    # enum type def statement tbh.
    var token_bundles:List[TokenBundle]
    var make_children:Bool
    var stop_making_children:Bool

    fn __init__(mut self, token_bundle:TokenBundle):
        """
        I think ifNDef's are expected to have just 1 token.
        """
        self.token_bundles = List[TokenBundle]()
        self.token_bundles.append(token_bundle)
        self.make_children = False
        self.stop_making_children = True

    fn line_num(self) -> Int:
        return self.token_bundles[0].line_num

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        if token_bundle.token.strip(' ') == CTokens.TYPE_DEF:
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        if self.token_bundles[-1].token.strip(' ') == CTokens.END_STATEMENT:
            return True

        return False

    fn __str__(self) -> String:
        var s:String = "TypeDef("
        s += "line_num=" + String(self.line_num())
        s += ") "
        for token in self.token_bundles:
            s += token[].token
            s += " "
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool:
        var token = token_bundle.token.strip(' ')
        if token == CTokens.SCOPE_BEGIN:
            self.token_bundles.append(
                TokenBundle(STRING_SPLIT_AT, token_bundle.line_num, token_bundle.col_num)
            )
            return False

        self.token_bundles.append(token_bundle)
        return True

    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool:
        return True
