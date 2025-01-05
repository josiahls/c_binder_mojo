# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.root import Root
from c_binder_mojo.ast_statements.place_holder import PlaceHolder
from c_binder_mojo.ast_statements.multi_line_comment import MultiLineComment
from c_binder_mojo.ast_statements.single_line_comment import SingleLineComment
from c_binder_mojo.ast_statements.blank_space import BlankSpace
from c_binder_mojo.primitives import TokenBundle

alias AstStatements = Variant[
    Root,
    PlaceHolder,
    MultiLineComment,
    SingleLineComment,
    BlankSpace
]

fn to_replace(read x:AstStatements, token_bundle: TokenBundle) -> AstStatements:
    # if MultiLineComment.do_replace(x,token_bundle):
    #     return AstStatements(MultiLineComment(x[SingleLineComment], token_bundle))
    return x

fn to_string(read x:AstStatements) raises -> String:
    if   x.isa[Root]():             return str(x[Root])
    elif x.isa[SingleLineComment](): return str(x[SingleLineComment])
    elif x.isa[MultiLineComment](): return str(x[MultiLineComment])
    elif x.isa[BlankSpace]():      return str(x[BlankSpace])
    elif x.isa[PlaceHolder]():      return str(x[PlaceHolder])

    raise Error('to_string does not exist for input x!')


fn to_done(x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[Root]():      return x[Root].done(token_bundle)
    elif x.isa[SingleLineComment](): return x[SingleLineComment].done(token_bundle)
    elif x.isa[MultiLineComment](): return x[MultiLineComment].done(token_bundle)
    elif x.isa[BlankSpace](): return x[BlankSpace].done(token_bundle)
    elif x.isa[PlaceHolder](): return x[PlaceHolder].done(token_bundle)

    raise Error('to_done does not exist for input x!')

fn to_accumulate(mut x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[Root]():             return x[Root].accumulate(token_bundle)
    elif x.isa[SingleLineComment](): return x[SingleLineComment].accumulate(token_bundle)
    elif x.isa[MultiLineComment](): return x[MultiLineComment].accumulate(token_bundle)
    elif x.isa[BlankSpace](): return x[BlankSpace].accumulate(token_bundle)
    elif x.isa[PlaceHolder]():      return x[PlaceHolder].accumulate(token_bundle)

    raise Error('to_accumulate does not exist to handle line: ' + str(token_bundle))

fn to_do_make_child(x:AstStatements, token_bundle: TokenBundle) raises -> Bool:
    if   x.isa[Root]():      return x[Root].do_make_child(token_bundle)
    elif x.isa[SingleLineComment](): return x[SingleLineComment].do_make_child(token_bundle)
    elif x.isa[MultiLineComment](): return x[MultiLineComment].do_make_child(token_bundle)
    elif x.isa[BlankSpace](): return x[BlankSpace].do_make_child(token_bundle)
    elif x.isa[PlaceHolder](): return x[PlaceHolder].do_make_child(token_bundle)

    raise Error('to_do_make_child does not exist to handle line: ' + str(token_bundle))

fn to_make_child(x:AstStatements, token_bundle: TokenBundle) raises -> AstStatements:
    if Root.accept(token_bundle):     
        return AstStatements(Root(token_bundle))
    elif SingleLineComment.accept(token_bundle):
        return AstStatements(SingleLineComment(token_bundle))
    elif MultiLineComment.accept(token_bundle):
        return AstStatements(MultiLineComment(token_bundle))
    elif BlankSpace.accept(token_bundle): 
        return AstStatements(BlankSpace(token_bundle)) 
    elif PlaceHolder.accept(token_bundle): 
        return AstStatements(PlaceHolder(token_bundle)) 
    
    raise Error('to_make_child does not exist to handle line: ' + str(token_bundle))
