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
            + ' line_num=' + String(self.line_num) \
            + ' col_num=' + String(self.col_num)


# TODO(josiahls): looks ugly. I think its better to just have start_statement_string, 
# end_statement_string methods instead.
alias STRING_SPLIT_AT = "<AST-SPLIT>"