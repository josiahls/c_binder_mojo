# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.base import TokenBundle
from c_binder_mojo import c_ast_statements
from c_binder_mojo.c_primitives import CTokens,CommentEnum
from c_binder_mojo.mojo_ast_statements import MojoTokens


fn make_tokens(x:c_ast_statements.AstStatements) raises -> List[TokenBundle]:
    if x.isa[c_ast_statements.SingleLineComment]():
        return x[c_ast_statements.SingleLineComment].token_bundles

    raise Error('make_token does not support: ' + c_ast_statements.to_string(x))



@value
struct SingleLineComment(AbstractAstStatement):
    var token_bundles: List[TokenBundle]
    var line_num: Int
    var comment_type: String
    var string_just_code:Bool

    fn __init__(mut self, x: c_ast_statements.AstStatements) raises:
        self.string_just_code = False
        if x.isa[c_ast_statements.SingleLineComment]():
            statement = x[c_ast_statements.SingleLineComment]
            self.token_bundles = List[TokenBundle]()
            self.line_num = statement.line_num
            self.comment_type = statement.comment_type
            self.translate(statement.token_bundles)
        else:
            raise Error('SingleLineComment does not support: ' + c_ast_statements.to_string(x))

    fn translate(mut self, token_bundles:List[TokenBundle]) -> None:
        translated_beginning = False
        for token in token_bundles:
            if not translated_beginning and self.comment_type==CommentEnum.COMMENT_SINGLE_LINE and token[].token.startswith(CTokens.COMMENT_SINGLE_LINE_BEGIN):
                translated_beginning = True
                # TODO(josiahls): Feeling lazy, really I need to find the first instance of the
                # beginning comment and just replace that.
                self.token_bundles.append(
                    TokenBundle(
                        token[].token.replace(CTokens.COMMENT_SINGLE_LINE_BEGIN,MojoTokens.COMMENT_SINGLE_LINE_BEGIN), 
                        token[].line_num, 
                        token[].col_num
                    )
                )
            else:
                self.token_bundles.append(token[])



    @staticmethod
    fn accept(ast_statement: c_ast_statements.ast_statements.AstStatements) -> Bool:
        if ast_statement.isa[c_ast_statements.SingleLineComment]():
            return True
        return False

    fn togggle_string_just_code(mut self, string_just_code:Bool) -> None:
        self.string_just_code = string_just_code

    fn _string_bundles(self) -> String:
        var s:String = ""
        var line_num = -1
        for token in self.token_bundles:
            if line_num == -1:
                line_num = token[].line_num
            elif line_num != token[].line_num:
                s += "SingleLineComment some how has multiple lines worth of tokens. This should never happen."
                line_num = token[].line_num
                s += '\n'
            s += String(token[].token) + " "
        return s

    fn __str__(self) -> String:
        if self.string_just_code:
            return self._string_bundles()
        var s:String = "SingleLineComment("
        s += 'line_num=' + String(self.line_num)
        s += ') '

        return s + self._string_bundles()

