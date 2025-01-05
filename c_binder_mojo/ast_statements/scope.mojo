# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.primitives import TokenBundle, CTokens, STRING_SPLIT_AT
from c_binder_mojo.ast_statements.ast_statements import AstStatements,to_string
from c_binder_mojo.ast_statements.typedef import TypeDef
from c_binder_mojo.ast_statements.blank_space import BlankSpace
from c_binder_mojo.ast_statements.place_holder import PlaceHolder


alias ScopeableTypes = Variant[
    TypeDef, 
    BlankSpace, #TODO(josiahls) Not really implimented, but you can do this I think
    PlaceHolder
]


fn is_scopeable(x:AstStatements) -> Bool:
    # TODO(josiahls): Noto sure I want this. Id rather raise an error since I need to 
    # be able to handle every case.
    if x.isa[TypeDef](): return True
    if x.isa[BlankSpace](): return True
    return False


fn make_scopeable(x:AstStatements) raises -> ScopeableTypes:
    if x.isa[TypeDef]():      return ScopeableTypes(x[TypeDef])
    elif x.isa[BlankSpace](): return ScopeableTypes(x[BlankSpace])
    elif x.isa[PlaceHolder](): return ScopeableTypes(x[PlaceHolder])

    # raise Error('Failed to make type scopeable! for type: ' + to_string(x))
    print('Failed to make type scopeable! for type: ' + to_string(x))
    return ScopeableTypes(PlaceHolder())



@value
struct Scope(AbstractAstStatement):
    var token_bundles:List[TokenBundle]
    var scopeable_type:ScopeableTypes

    # fn __init__(mut self, scopeable_type:ScopeableTypes, token_bundle:TokenBundle):
    fn __init__(mut self, scopeable_type:ScopeableTypes, token_bundle:TokenBundle):
        """
        Simple curly bracket scoping.
        """
        self.token_bundles = List[TokenBundle]()
        self.token_bundles.append(token_bundle)
        self.scopeable_type = scopeable_type

    fn line_num(self) -> Int:
        return self.token_bundles[0].line_num

    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool:
        if token_bundle.token.strip(' ') == CTokens.SCOPE_BEGIN:
            return True
        return False

    fn done(self,token_bundle: TokenBundle) -> Bool:
        if self.token_bundles[-1].token.strip(' ')[-1] == CTokens.SCOPE_END:
            print('scope is done')
            return True

        return False

    fn __str__(self) -> String:
        var s:String = "Scope("
        s += "line_num=" + str(self.line_num())
        s += ") "
        for token in self.token_bundles:
            s += token[].token
            s += " "
        return s 

    fn accumulate(mut self, token_bundle:TokenBundle) -> Bool:
        var token = token_bundle.token.strip(' ')
        if  CTokens.SCOPE_END in token:
            self.token_bundles.append(
                TokenBundle(STRING_SPLIT_AT, token_bundle.line_num, token_bundle.col_num)
            )
            self.token_bundles.append(token_bundle)
            return True
        return False

    fn do_make_child(mut self, token_bundle:TokenBundle) -> Bool:
        return True
