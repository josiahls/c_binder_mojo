# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.primitives import TokenBundle

@value
struct AstStatementSingleLineComment(AbstractAstStatement):
    var token_bundles: List[TokenBundle]
    var _done: Bool
    var line_num: Int

    fn __init__(mut self, token_bundle: TokenBundle):
        self.token_bundles = List[TokenBundle]()
        self.token_bundles.append(token_bundle)
        self.line_num = token_bundle.line_num
        self._done = False

    # fn __del__(owned self):
    #     print('deleting')
    #     self.token_bundles.clear()

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        var s = token_bundle.token
        if s.lstrip(' ').startswith('//'):
            return True
        return False

    fn _is_valid(self,token_bundle:TokenBundle) -> Bool:
        if self.line_num != token_bundle.line_num:
            return False
        return True

    fn done(self,token_bundle: TokenBundle) -> Bool:
        if not self._is_valid(token_bundle):
            return True
        return self._done

    fn _string_bundles(self) -> String:
        var s:String = ""
        var line_num = -1
        for token in self.token_bundles:
            if line_num == -1:
                line_num = token[].line_num
            elif line_num != token[].line_num:
                s += "AstStatementSingleLineComment some how has multiple lines worth of tokens. This should never happen."
                line_num = token[].line_num
                s += '\n'
            s += str(token[].token) + " "
        return s

    fn __str__(self) -> String:
        var s:String = "AstStatementSingleLineComment("
        s += 'line_num=' + str(self.line_num)
        s += ') '

        return s + self._string_bundles()

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: 
        var valid = self._is_valid(token_bundle)
        if valid:
            self.token_bundles.append(token_bundle)
        else:
            self._done = False

        return valid

    fn do_make_child(self, token_bundle:TokenBundle) -> Bool: return False
