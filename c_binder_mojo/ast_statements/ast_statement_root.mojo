# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
from pathlib import Path
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement

@value
struct AstStatementRoot(AbstractAstStatement):
    var text:String

    fn __init__(mut self, path:Path):
        self.text = str(path)

    @staticmethod
    fn accept(line:String) -> Bool:
        "This should only be instantiated once."
        return False

    fn done(self) -> Bool:
        "Root statment will not be done until the end of the file."
        return False

    fn __str__(self) -> String:
        return "AstStatementRoot(): text: " + self.text

    @staticmethod
    fn do_accumulate(text:String, line_num:Int) -> Bool: return False
    fn accumulate(self, text:String, line_num:Int) -> None: ...
    @staticmethod
    fn do_make_child(text:String, line_num:Int) -> Bool: return True
