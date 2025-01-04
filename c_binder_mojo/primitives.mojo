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