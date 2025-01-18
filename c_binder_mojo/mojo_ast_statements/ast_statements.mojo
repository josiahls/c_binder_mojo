# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.placeholder import PlaceHolder
from c_binder_mojo import c_ast_statements

alias AstStatements = Variant[
    PlaceHolder
]

fn to_string(read x:AstStatements) raises -> String:
    if x.isa[PlaceHolder]():      return String(x[PlaceHolder])

    raise Error('to_string does not exist for input x!')


fn to_accept(read x:c_ast_statements.ast_statements.AstStatements) raises -> AstStatements:
    if PlaceHolder.accept(x):
        return AstStatements(PlaceHolder(x))

    raise Error('No mojo ast statement for statement: ', c_ast_statements.ast_statements.to_string(x))