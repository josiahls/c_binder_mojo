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
    Root,
    Skip
]

fn to_string(read x:AstStatements) raises -> String:
    if x.isa[PlaceHolder]():      return String(x[PlaceHolder])
    elif x.isa[Root]():             return String(x[Root])
    elif x.isa[SingleLineComment](): return String(x[SingleLineComment])
    elif x.isa[Skip](): return String(x[Skip])

    raise Error('to_string does not exist for input x!')


fn to_toggle_string_just_code(mut x:AstStatements,string_just_code:Bool) raises -> None:
    if x.isa[PlaceHolder]():        x[PlaceHolder].togggle_string_just_code(string_just_code)
    elif x.isa[Root]():             x[Root].togggle_string_just_code(string_just_code)
    elif x.isa[SingleLineComment](): x[SingleLineComment].togggle_string_just_code(string_just_code)
    elif x.isa[Skip](): x[Skip].togggle_string_just_code(string_just_code)
    else:
        raise Error('to_toggle_string_just_code does not exist for input:' + to_string(x))


fn to_accept(read x:c_ast_statements.ast_statements.AstStatements) raises -> AstStatements:
    if Root.accept(x):
        return AstStatements(Root(x))
    elif Skip.accept(x):
        return AstStatements(Skip(x))
    elif SingleLineComment.accept(x):
        return AstStatements(SingleLineComment(x))
    elif PlaceHolder.accept(x):
        return AstStatements(PlaceHolder(x))

    

    raise Error('No mojo ast statement for statement: ', c_ast_statements.ast_statements.to_string(x))