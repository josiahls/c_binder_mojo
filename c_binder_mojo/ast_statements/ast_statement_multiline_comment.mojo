# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement

@value
struct AstStatementMultilineComment(AbstractAstStatement):
    var line:String
    var line_num: Int

    @staticmethod
    fn accept(line:String) -> Bool:
        return True

    fn done(self) -> Bool:
        "Multiline statment will not be done until the end of the file."
        return True

    fn __str__(self) -> String:
        return "AstStatementMultilineComment() \\ \n\t" + self.line

    fn accumulate(self, text:String, line_num:Int) -> Bool: return False
    
    @staticmethod
    fn do_make_child(text:String, line_num:Int) -> Bool: return False
