from testing import assert_equal
from enum_decl_node import enum_decl_node


fn test_typedef_enum() raises:
    var dl = enum_decl_node()
    assert_equal(dl.use_enum_value(PYMEM_DOMAIN_RAW), 0)


fn main() raises:
    test_typedef_enum()
