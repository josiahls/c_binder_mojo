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

fn to_done(x:AstStatements) -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].done()
    elif x.isa[AstStatementOtherRoot](): return x[AstStatementOtherRoot].done()
    return False

fn to_do_accumulate(x:AstStatements, line:String, line_num:Int) -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].do_accumulate(line,line_num)
    elif x.isa[AstStatementOtherRoot](): return x[AstStatementOtherRoot].do_accumulate(line,line_num)
    return False

fn to_accumulate(x:AstStatements, line:String, line_num:Int) -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].accumulate(line,line_num)
    elif x.isa[AstStatementOtherRoot](): return x[AstStatementOtherRoot].accumulate(line,line_num)
    return False

fn to_do_make_new(x:AstStatements, line:String, line_num:Int) -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].do_make_new(line,line_num)
    elif x.isa[AstStatementOtherRoot](): return x[AstStatementOtherRoot].do_make_new(line,line_num)
    return False

fn to_make_new(x:AstStatements, line:String, line_num:Int) -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].make_new(line,line_num)
    elif x.isa[AstStatementOtherRoot](): return x[AstStatementOtherRoot].make_new(line,line_num)
    return False