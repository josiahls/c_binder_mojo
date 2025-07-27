from simple_type_defs import *
from testing import assert_almost_equal, assert_equal


fn test_simple_type_defs() raises:
    var simple_type_defs = simple_type_defs()
    assert_almost_equal(simple_type_defs.get_simple_type_float(1.0), 1.0)
    assert_almost_equal(simple_type_defs.get_simple_type_double(2.0), 2.0)
    assert_equal(simple_type_defs.get_simple_type_byte(3), 3)
    assert_equal(simple_type_defs.get_simple_type_short(4), 4)
    assert_equal(simple_type_defs.get_simple_type_uint(5), 5)

fn main() raises:
    test_simple_type_defs()

