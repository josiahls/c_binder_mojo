# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules


@value
struct TokenBundle:
    var token:String
    var line_num:Int
    var col_num:Int

    fn __str__(self) -> String:
        return self.token \
            + ' line_num=' + str(self.line_num) \
            + ' col_num=' + str(self.col_num)



struct CommentEnum:
    alias SINGLE_LINE_COMMENT = "SINGLE_LINE_COMMENT"
    alias MULTI_LINE_INLINE_COMMENT = "MULTI_LINE_INLINE_COMMENT"
    alias MULTI_LINE_COMMENT = "MULTI_LINE_COMMENT"
    alias UNKNOWN = "UNKNOWN"


fn comment_type(line:String) -> StringLiteral:
    var line_:String = line.lstrip(" ")
    if line_.startswith('//'):
        return CommentEnum.SINGLE_LINE_COMMENT
    elif line_.startswith('/**'):
        # TODO(josiahls): kind of naive, really we need to make sure that /** 
        # comes before **/
        if '**/' in line_:
            return CommentEnum.MULTI_LINE_INLINE_COMMENT
        else:
            return CommentEnum.MULTI_LINE_COMMENT
    elif line_.startswith('/*'):
        # TODO(josiahls): Same deal as above
        if '*/' in line_:
            return CommentEnum.MULTI_LINE_INLINE_COMMENT
        else:
            return CommentEnum.MULTI_LINE_COMMENT
    else:
        return CommentEnum.UNKNOWN