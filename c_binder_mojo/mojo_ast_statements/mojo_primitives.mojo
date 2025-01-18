# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules


struct MojoTokens:
    alias COMMENT_SINGLE_LINE_BEGIN = "#"
    alias COMMENT_MULTI_LINE_INLINE_BEGIN = "\""
    alias COMMENT_MULTI_LINE_INLINE_END = "\""
    alias COMMENT_MULTI_LINE_BEGIN = '"""'
    alias COMMENT_MULTI_LINE_END = '"""'
    alias MACRO_IFNDEF = "if"
    alias MACRO_DEFINE = "alias"
    alias MACRO_ELSE = "else"
    alias MACRO_ENDIF = ""
    alias TYPE_DEF = "alias"
    alias MOJO_STRUCT = "struct"
    alias ENUM = "enum"
    alias SCOPE_BEGIN = "\t"
    alias SCOPE_END = ""
    alias END_STATEMENT = "\n"
    alias UNKNOWN = "UNKNOWN"
    alias MACRO_INCLUDE = "import"


struct CommentEnum:
    alias COMMENT_SINGLE_LINE = "COMMENT_SINGLE_LINE"
    alias COMMENT_MULTI_LINE_INLINE = "COMMENT_MULTI_LINE_INLINE"
    alias COMMENT_MULTI_LINE = "COMMENT_MULTI_LINE"
    alias UNKNOWN = "UNKNOWN"


fn comment_token(token:String) -> StringLiteral:
    token_ = String(token.lstrip(" "))
    if token_.startswith(CTokens.COMMENT_SINGLE_LINE_BEGIN):
        return CTokens.COMMENT_SINGLE_LINE_BEGIN
    elif token_.startswith(CTokens.COMMENT_MULTI_LINE_BEGIN):
        return CTokens.COMMENT_MULTI_LINE_BEGIN
    elif token_.startswith(CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN):
        return CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN
    # NOTE: order matters `startswith('/*')` is true for both /** and /*.
    elif token_ == CTokens.COMMENT_MULTI_LINE_INLINE_END:
        return CTokens.COMMENT_MULTI_LINE_INLINE_END
    elif token_ == CTokens.COMMENT_MULTI_LINE_END:
        return CTokens.COMMENT_MULTI_LINE_END
    return CTokens.UNKNOWN


fn comment_type(token:String) -> StringLiteral:
    var _token = comment_token(token)
    if _token in [CTokens.COMMENT_SINGLE_LINE_BEGIN]:
        return CommentEnum.COMMENT_SINGLE_LINE
    elif _token in [CTokens.COMMENT_MULTI_LINE_BEGIN,CTokens.COMMENT_MULTI_LINE_END]:
        return CommentEnum.COMMENT_MULTI_LINE
    elif _token in [CTokens.COMMENT_MULTI_LINE_INLINE_BEGIN, CTokens.COMMENT_MULTI_LINE_INLINE_END]:
        return CommentEnum.COMMENT_MULTI_LINE_INLINE
    else:
        return CommentEnum.UNKNOWN
    