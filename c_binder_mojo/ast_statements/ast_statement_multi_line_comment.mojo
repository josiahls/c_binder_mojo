# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.ast_statements.ast_statements import AstStatements
from c_binder_mojo.ast_statements.ast_statement_single_line_comment import AstStatementSingleLineComment
from c_binder_mojo.primitives import TokenBundle, comment_type, CommentEnum


@value
struct AstStatementMultiLineComment(AbstractAstStatement):
    var lines: List[TokenBundle]
    var multiline_comment_type:StringLiteral

    fn __init__(mut self, token_bundle: TokenBundle):
        "AstStatementMultiLineComment represents a block of multiple lines of comments."
        self.lines = List[TokenBundle]()
        self.multiline_comment_type = comment_type(token_bundle.token)
        self.lines.append(token_bundle)

    fn __init__(mut self, statement:AstStatementSingleLineComment, token_bundle: TokenBundle):
        "AstStatementMultiLineComment represents a block of multiple lines of comments."
        self.lines = List[TokenBundle]()
        self.multiline_comment_type = comment_type(token_bundle.token)
        for token_bundle in statement.token_bundles:
            self.lines.append(token_bundle[])
        self.lines.append(token_bundle)

    @staticmethod
    fn do_replace(x:AstStatements, token_bundle:TokenBundle) -> Bool:
        if x.isa[AstStatementSingleLineComment]() and AstStatementMultiLineComment.accept(token_bundle):
            # Check if the current `token_bundle`  is the same comment type as 
            # the ones in `x`
            var multiline_comment_type = comment_type(token_bundle.token)
            for _token_bundle in x[AstStatementSingleLineComment].token_bundles:
                var other_multiline_comment_type = comment_type(_token_bundle[].token)
                if multiline_comment_type != other_multiline_comment_type:
                    return False
            return True
        return False

    @staticmethod
    fn accept(token_bundle: TokenBundle) -> Bool:
        """AstStatementMultiLineComment will accept the following conditions for its creation.

        - Single comment lines starting with //
        - Single comment lines starting with /*

        Spaces are removed at the beginning of the lines.

        Args:
            token_bundle: A line of code from a c header.
        """
        s = comment_type(token_bundle.token)
        return s != CommentEnum.UNKNOWN

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

    fn accumulate(mut self, token_bundle: TokenBundle) -> Bool: return False
    
    # TODO(josiahls): Would be nice of a ast statement could return an alternate version of it. 
    # e.g.: Return a single line comment over multiple lines.
    fn do_make_child(self, token_bundle: TokenBundle) -> Bool: return False
