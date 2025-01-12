# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.primitives import TokenBundle, CTokens

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
        if len(self.token_bundles) == 2:
            # I think structs have struct NAME ... (;).
            # But the semi colon is usually tied to another character. 
            # I'm thinking that semi colons need to be separated into their own token tbh.
            return True
        return False

    fn line_num(self) -> Int:
        return self.token_bundles[0].line_num

    fn __str__(self) -> String:
        var s:String = "CStruct("
        s += "line_num=" + str(self.line_num())
        s += ") "
        for token in self.token_bundles:
            s += token[].token
            s += " "
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool: return False

    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool: return False
