# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.ast_statement_root import AstStatementRoot
from c_binder_mojo.ast_statements.ast_statement_other_root import AstStatementOtherRoot

alias AstStatements = Variant[
    AstStatementRoot,
    AstStatementOtherRoot
]

fn to_string(x:AstStatements) -> String:
    if   x.isa[AstStatementRoot]():      return str(x[AstStatementRoot])
    elif x.isa[AstStatementOtherRoot](): return str(x[AstStatementOtherRoot])
    return 'none'
