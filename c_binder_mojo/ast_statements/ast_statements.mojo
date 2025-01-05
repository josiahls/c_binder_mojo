# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.ast_statement_root import AstStatementRoot
from c_binder_mojo.ast_statements.ast_statement_place_holder import AstStatementPlaceHolder
from c_binder_mojo.ast_statements.ast_statement_multi_line_comment import AstStatementMultiLineComment
from c_binder_mojo.ast_statements.ast_statement_single_line_comment import AstStatementSingleLineComment
from c_binder_mojo.primitives import TokenBundle

alias AstStatements = Variant[
    AstStatementRoot,
    AstStatementPlaceHolder,
    AstStatementMultiLineComment,
    AstStatementSingleLineComment
]

fn to_replace(read x:AstStatements, token_bundle: TokenBundle) -> AstStatements:
    # if AstStatementMultiLineComment.do_replace(x,token_bundle):
    #     return AstStatements(AstStatementMultiLineComment(x[AstStatementSingleLineComment], token_bundle))
    return x

fn to_string(read x:AstStatements) raises -> String:
    if   x.isa[AstStatementRoot]():             return str(x[AstStatementRoot])
    elif x.isa[AstStatementSingleLineComment](): return str(x[AstStatementSingleLineComment])
    elif x.isa[AstStatementMultiLineComment](): return str(x[AstStatementMultiLineComment])
    elif x.isa[AstStatementPlaceHolder]():      return str(x[AstStatementPlaceHolder])

    raise Error('to_string does not exist for input x!')


fn to_done(x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].done(token_bundle)
    elif x.isa[AstStatementSingleLineComment](): return x[AstStatementSingleLineComment].done(token_bundle)
    elif x.isa[AstStatementMultiLineComment](): return x[AstStatementMultiLineComment].done(token_bundle)
    elif x.isa[AstStatementPlaceHolder](): return x[AstStatementPlaceHolder].done(token_bundle)

    raise Error('to_done does not exist for input x!')

fn to_accumulate(mut x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[AstStatementRoot]():             return x[AstStatementRoot].accumulate(token_bundle)
    elif x.isa[AstStatementSingleLineComment](): return x[AstStatementSingleLineComment].accumulate(token_bundle)
    elif x.isa[AstStatementMultiLineComment](): return x[AstStatementMultiLineComment].accumulate(token_bundle)
    elif x.isa[AstStatementPlaceHolder]():      return x[AstStatementPlaceHolder].accumulate(token_bundle)

    raise Error('to_accumulate does not exist to handle line: ' + str(token_bundle))

fn to_do_make_child(x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].do_make_child(token_bundle)
    elif x.isa[AstStatementSingleLineComment](): return x[AstStatementSingleLineComment].do_make_child(token_bundle)
    elif x.isa[AstStatementMultiLineComment](): return x[AstStatementMultiLineComment].do_make_child(token_bundle)
    elif x.isa[AstStatementPlaceHolder](): return x[AstStatementPlaceHolder].do_make_child(token_bundle)

    raise Error('to_do_make_child does not exist to handle line: ' + str(token_bundle))

fn to_make_child(x:AstStatements, token_bundle: TokenBundle) raises -> AstStatements:
    if AstStatementRoot.accept(token_bundle):     
        return AstStatements(AstStatementRoot(token_bundle))
    elif AstStatementSingleLineComment.accept(token_bundle):
        return AstStatements(AstStatementSingleLineComment(token_bundle))
    elif AstStatementMultiLineComment.accept(token_bundle):
        return AstStatements(AstStatementMultiLineComment(token_bundle))
    elif AstStatementPlaceHolder.accept(token_bundle): 
        return AstStatements(AstStatementPlaceHolder()) 
    
    raise Error('to_make_child does not exist to handle line: ' + str(token_bundle))
