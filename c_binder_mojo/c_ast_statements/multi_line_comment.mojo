# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_statements.abstract_ast_statement import AbstractAstStatement
from c_binder_mojo.c_ast_statements.ast_statements import AstStatements
from c_binder_mojo.c_ast_statements.single_line_comment import SingleLineComment
from c_binder_mojo.c_primitives import TokenBundle, comment_type, comment_token, CommentEnum,CTokens


@value
struct MultiLineComment(AbstractAstStatement):
    var token_bundles: List[TokenBundle]
    var comment_type:StringLiteral
    var _done:Bool

    fn __init__(mut self, token_bundle: TokenBundle):
        "MultiLineComment represents a block of multiple lines of comments."
        self.token_bundles = List[TokenBundle]()
        self.comment_type = comment_type(token_bundle.token)
        self.token_bundles.append(token_bundle)
        self._done = False

    @staticmethod
    fn do_replace(x:AstStatements, token_bundle:TokenBundle) -> Bool:
        return False

    @staticmethod
    fn accept(token_bundle: TokenBundle) -> Bool:
        """MultiLineComment will accept the following conditions for its creation.

        - Single comment lines starting with //
        - Single comment lines starting with /*

        Spaces are removed at the beginning of the lines.

        Args:
            token_bundle: A line of code from a c header.
        """
        s = comment_type(token_bundle.token)
        return s in [CommentEnum.COMMENT_MULTI_LINE,CommentEnum.COMMENT_MULTI_LINE_INLINE]

    fn done(self, token_bundle: TokenBundle) -> Bool:
        return self._done

    fn __str__(self) -> String:
        var s = String("MultiLineComment")
        s += "("
        s += "comment_type=" + String(self.comment_type)
        s += ", line_num="
        var unique_nums = List[Int]()
        for token_bundle in self.token_bundles:
            if token_bundle[].line_num not in unique_nums:
                unique_nums.append(token_bundle[].line_num)
        for n in unique_nums:
            s += str(n[]) + ','
        s += ") \\ \n\t"
        var line_num = -1
        for token_bundle in self.token_bundles:
            if line_num != -1 and token_bundle[].line_num != line_num:
                s += '\n\t'

            s += token_bundle[].token
            s += ' '
            line_num = token_bundle[].line_num
        return s

    fn accumulate(mut self, token_bundle: TokenBundle) -> Bool: 
        if self.comment_type == CommentEnum.COMMENT_MULTI_LINE:
            self._done = comment_token(token_bundle.token) == CTokens.COMMENT_MULTI_LINE_END
        if self.comment_type == CommentEnum.COMMENT_MULTI_LINE_INLINE:
            # NOTE(josiahls): I think it can either be a inline end or regular end actually. 
            self._done = comment_token(token_bundle.token) == CTokens.COMMENT_MULTI_LINE_INLINE_END
        self.token_bundles.append(token_bundle)
        return True
    
    fn do_make_child(mut self, token_bundle: TokenBundle) -> Bool: return False
