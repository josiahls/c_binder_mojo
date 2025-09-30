# Native Mojo Modules
from testing import assert_equal
from sys import size_of

# Third Party Mojo Modules

# First Party Modules
from field_decl_node import field_decl_node, simple_field_struct


# Test the simple field struct
fn test_simple_field_struct() raises:
    var dl = field_decl_node()

    var test_struct = simple_field_struct(a=1)
    var result = dl.identity_function_pointer(UnsafePointer(to=test_struct))
    assert_equal(result[].a, 1)


fn main() raises:
    test_simple_field_struct()
