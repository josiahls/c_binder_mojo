# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.ast_statements.ast_statement_single_line_comment import AstStatementSingleLineComment
from c_binder_mojo.ast_node import TokenBundle


struct MultilineCommentType:
    alias SINGLE_LINE_COMMENT = "SINGLE_LINE_COMMENT"
    alias MULTI_LINE_COMMENT = "MULTI_LINE_COMMENT"
    alias UNKNOWN = "UNKNOWN"


@value
struct AstStatementMultiLineComment(AbstractAstStatement):
    var lines: List[TokenBundle]
    var multiline_comment_type:StringLiteral

    fn __init__(mut self, token_bundle: TokenBundle):
        "AstStatementMultiLineComment represents a block of multiple lines of comments."
        self.lines = List[TokenBundle]()
        self.multiline_comment_type = self.comment_type(token_bundle.token)
        self.lines.append(token_bundle)

    fn __init__(mut self, statement:AstStatementSingleLineComment, token_bundle: TokenBundle) raises:
        "AstStatementMultiLineComment represents a block of multiple lines of comments."
        self.lines = List[TokenBundle]()
        self.multiline_comment_type = self.comment_type(statement.token_bundle.token)
        var multiline_comment_type = self.comment_type(statement.token_bundle.token)
        self.lines.append(statement.token_bundle)
        if multiline_comment_type != self.multiline_comment_type:
            raise Error('AstStatementMultiLineComment got conflicting stuff')
        self.lines.append(token_bundle)

    @staticmethod
    fn comment_type(line:String) -> StringLiteral:
        var line_:String = line.lstrip(" ")
        if line_.startswith('//'):
            return MultilineCommentType.SINGLE_LINE_COMMENT
        elif line_.startswith('/*'):
            return MultilineCommentType.MULTI_LINE_COMMENT
        else:
            return MultilineCommentType.UNKNOWN

    @staticmethod
    fn accept(token_bundle: TokenBundle) -> Bool:
        """AstStatementMultiLineComment will accept the following conditions for its creation.

        - Single comment lines starting with //
        - Single comment lines starting with /*

        Spaces are removed at the beginning of the lines.

        Args:
            line: A line of code from a c header.
        """
        s = AstStatementMultiLineComment.comment_type(token_bundle.token)
        return s != MultilineCommentType.UNKNOWN

    fn done(self, token_bundle: TokenBundle) -> Bool:
        "Multiline statment will not be done until the end of the file."
        return True

    fn __str__(self) -> String:
        var s = String("AstStatementMultiLineComment")
        s += "("
        s += "multiline_comment_type=" + String(self.multiline_comment_type)
        s += ") \\ \n\t"
        var idx = 0
        for line in self.lines:
            if idx > 0:
                s += "\n\t" + line[].token
            else:
                s += line[].token
            idx += 1
        return s

    fn accumulate(self, token_bundle: TokenBundle) -> Bool: return False
    
    # TODO(josiahls): Would be nice of a ast statement could return an alternate version of it. 
    # e.g.: Return a single line comment over multiple lines.
    fn do_make_child(self, token_bundle: TokenBundle) -> Bool: return False
