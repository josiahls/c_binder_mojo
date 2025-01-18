# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements import PlaceHolder, Root,SingleLineComment
from c_binder_mojo import c_ast_statements

alias AstStatements = Variant[
    PlaceHolder,
    SingleLineComment,
    Root
]

fn to_string(read x:AstStatements) raises -> String:
    if x.isa[PlaceHolder]():      return String(x[PlaceHolder])
    elif x.isa[Root]():             return String(x[Root])
    elif x.isa[SingleLineComment](): return String(x[SingleLineComment])

    raise Error('to_string does not exist for input x!')


fn to_accept(read x:c_ast_statements.ast_statements.AstStatements) raises -> AstStatements:
    if Root.accept(x):
        return AstStatements(Root(x))
    elif SingleLineComment.accept(x):
        return AstStatements(SingleLineComment(x))
    elif PlaceHolder.accept(x):
        return AstStatements(PlaceHolder(x))
    

    raise Error('No mojo ast statement for statement: ', c_ast_statements.ast_statements.to_string(x))