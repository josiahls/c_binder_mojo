# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.ast_statement_root import AstStatementRoot
from c_binder_mojo.ast_statements.ast_statement_other_root import AstStatementOtherRoot
from c_binder_mojo.ast_statements.ast_statement_multiline_comment import AstStatementMultilineComment

alias AstStatements = Variant[
    AstStatementRoot,
    AstStatementOtherRoot,
    AstStatementMultilineComment
]

fn to_string(read x:AstStatements) raises -> String:
    if   x.isa[AstStatementRoot]():      return str(x[AstStatementRoot])
    elif x.isa[AstStatementOtherRoot](): return str(x[AstStatementOtherRoot])
    elif x.isa[AstStatementMultilineComment](): return str(x[AstStatementMultilineComment])

    raise Error('to_string does not exist for input x!')


fn to_done(x:AstStatements) raises -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].done()
    elif x.isa[AstStatementOtherRoot](): return x[AstStatementOtherRoot].done()
    elif x.isa[AstStatementMultilineComment](): return x[AstStatementMultilineComment].done()

    raise Error('to_done does not exist for input x!')

fn to_do_accumulate(x:AstStatements, line:String, line_num:Int) raises -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].do_accumulate(line,line_num)
    elif x.isa[AstStatementOtherRoot](): return x[AstStatementOtherRoot].do_accumulate(line,line_num)
    elif x.isa[AstStatementMultilineComment](): return x[AstStatementMultilineComment].do_accumulate(line,line_num)

    raise Error('to_do_accumulate does not exist to handle line: ' + line + ' ' + str(line_num))

fn to_accumulate(x:AstStatements, line:String, line_num:Int) -> None:
    if   x.isa[AstStatementRoot]():      x[AstStatementRoot].accumulate(line,line_num)
    elif x.isa[AstStatementOtherRoot](): x[AstStatementOtherRoot].accumulate(line,line_num)
    elif x.isa[AstStatementMultilineComment](): x[AstStatementMultilineComment].accumulate(line,line_num)

fn to_do_make_child(x:AstStatements, line:String, line_num:Int) raises -> Bool:
    if   x.isa[AstStatementRoot]():      return x[AstStatementRoot].do_make_child(line,line_num)
    elif x.isa[AstStatementOtherRoot](): return x[AstStatementOtherRoot].do_make_child(line,line_num)
    elif x.isa[AstStatementMultilineComment](): return x[AstStatementMultilineComment].do_make_child(line,line_num)

    raise Error('to_do_make_child does not exist to handle line: ' + line + ' ' + str(line_num))

fn to_make_child(x:AstStatements, line:String, line_num:Int) raises -> AstStatements:
    if AstStatementRoot.accept(line):      
        print('accepted AstStatementRoot')
        return AstStatements(AstStatementRoot())
    elif AstStatementOtherRoot.accept(line): 
        print('accepted AstStatementOtherRoot')
        return AstStatements(AstStatementOtherRoot()) 
    elif AstStatementMultilineComment.accept(line):
        print('accepted AstStatementMultilineComment')
        return AstStatements(AstStatementMultilineComment())
    
    raise Error('to_make_child does not exist to handle line: ' + line + ' ' + str(line_num))
