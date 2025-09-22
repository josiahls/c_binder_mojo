# Native Mojo Modules
from testing import assert_equal

# Third Party Mojo Modules
from sys import ffi

# First Party Modules
from variadic_args_node import variadic_args_node


fn test_count_variadic_args() raises:
    var dl = variadic_args_node()
    # Note: c binded variadic args are not supported yet.
    # var result = dl.count_variadic_args(3, 10, 20, 30)
    # assert_equal(result, 60)
    _ = dl


fn main() raises:
    test_count_variadic_args()
