# Native Mojo Modules
from collections.list import _ListIter
# Third Party Mojo Modules
# First Party Modules


@value
struct TokenBundle(EqualityComparable):
    var token:String
    var line_num:Int
    var col_num:Int
    var is_splitter:Bool

    fn __init__(out self, token:String, line_num:Int, col_num:Int, is_splitter:Bool=False):
        self.token = token
        self.line_num = line_num
        self.col_num = col_num
        self.is_splitter = is_splitter

    fn __ne__(read self:Self, read other:Self) -> Bool: 
        if self.token != other.token: 
            return True
        elif self.line_num != other.line_num:
            return True
        elif self.col_num != other.col_num:
            return True
        elif self.is_splitter != other.is_splitter:
            return True
        return False

    fn __eq__(read self:Self, read other:Self) -> Bool: 
        return not self.__ne__(other)


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

    fn __getitem__(self, span: Slice) -> List[TokenBundle]:
        return self._token_bundles[span]

    fn __getitem__[I: Indexer](ref self, idx: I) -> ref [self._token_bundles] TokenBundle:
        return self._token_bundles[idx]

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

    fn clear(mut self):
        self._token_bundles.clear()


# TODO(josiahls): looks ugly. I think its better to just have start_statement_string, 
# end_statement_string methods instead.
alias STRING_SPLIT_AT = "<AST-SPLIT>"