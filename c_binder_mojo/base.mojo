# Native Mojo Modules
from collections.list import _ListIter
# Third Party Mojo Modules
# First Party Modules


@value
struct TokenBundle:
    var token:String
    var line_num:Int
    var col_num:Int

    fn __str__(self) -> String:
        return self.token \
            + ' line_num=' + String(self.line_num) \
            + ' col_num=' + String(self.col_num)


@value
struct TokenBundles(Stringable):
    var _token_bundles: List[TokenBundle]

    fn __init__(mut self):
        self._token_bundles = List[TokenBundle]()

    fn append(mut self, owned value: TokenBundle):
        self._token_bundles.append(value)

    fn __len__(self) -> Int:
        return len(self._token_bundles)

    fn __bool__(self) -> Bool:
        return Bool(self._token_bundles)

    fn __iter__(ref self) -> _ListIter[TokenBundle, False, __origin_of(self._token_bundles)]:
        return self._token_bundles.__iter__()

    fn __str__(self) -> String:
        var s:String = ""
        var line_num = -1
        for token in self._token_bundles:
            if line_num == -1:
                line_num = token[].line_num
            elif line_num != token[].line_num:
                line_num = token[].line_num
                s += '\n'
            s += String(token[].token) + " "
        return s


# TODO(josiahls): looks ugly. I think its better to just have start_statement_string, 
# end_statement_string methods instead.
alias STRING_SPLIT_AT = "<AST-SPLIT>"