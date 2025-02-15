# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.base import TokenBundle, STRING_SPLIT_AT
from c_binder_mojo.c_ast_nodes.common import CTokens

@value
struct CStruct(AbstractAstStatement):
    var token_bundles:List[TokenBundle]

    fn __init__(mut self, token_bundle:TokenBundle):
        """
        I think ifNDef's are expected to have just 1 token.
        """
        self.token_bundles = List[TokenBundle]()
        self.token_bundles.append(token_bundle)

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        if token_bundle.token == CTokens.CSTRUCT:
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        recent_token = String(self.token_bundles[-1].token.strip(' '))
        # print('original token: '  + self.token_bundles[-1].token)
        # print('stripeped token: '  + recent_token)
        if recent_token == '':
            return False
        if recent_token[-1] == CTokens.END_STATEMENT:
            return True
        return False

    fn line_num(self) -> Int:
        return self.token_bundles[0].line_num

    fn __str__(self) -> String:
        var s:String = "CStruct("
        s += "line_num=" + String(self.line_num())
        s += ") "
        for token in self.token_bundles:
            s += token[].token
            s += " "
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: 
        recent_token = String(token_bundle.token.strip(' '))
        if len(self.token_bundles) < 3:
            if recent_token != CTokens.SCOPE_BEGIN:
                if recent_token[-1] == CTokens.END_STATEMENT:
                    self.token_bundles.append(
                        TokenBundle(
                            STRING_SPLIT_AT,
                            token_bundle.line_num,
                            token_bundle.col_num
                        )
                    )
                self.token_bundles.append(token_bundle)
                return True
        return False

    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool: 
        return True
