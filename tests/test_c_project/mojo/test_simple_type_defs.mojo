from simple_type_defs import *
from testing import assert_almost_equal, assert_equal


fn test_simple_type_defs() raises:
    var simple_type_defs = simple_type_defs()
    # Byte types
    assert_equal(simple_type_defs.get_simple_type_byte(3), 3)
    assert_equal(simple_type_defs.get_simple_type_sbyte(-3), -3)
    assert_equal(simple_type_defs.get_simple_type_ubyte(3), 3)
    # Short types
    assert_equal(simple_type_defs.get_simple_type_short(4), 4)
    assert_equal(simple_type_defs.get_simple_type_sshort(-4), -4)
    assert_equal(simple_type_defs.get_simple_type_ushort(4), 4)
    # Int types
    assert_equal(simple_type_defs.get_simple_type_int(5), 5)
    assert_equal(simple_type_defs.get_simple_type_sint(-5), -5)
    assert_equal(simple_type_defs.get_simple_type_uint(5), 5)
    # Long types
    assert_equal(simple_type_defs.get_simple_type_long(6), 6)
    assert_equal(simple_type_defs.get_simple_type_slong(-6), -6)
    assert_equal(simple_type_defs.get_simple_type_ulong(6), 6)
    # Long long types
    assert_equal(simple_type_defs.get_simple_type_long_long(7), 7)
    assert_equal(simple_type_defs.get_simple_type_slong_long(-7), -7)
    assert_equal(simple_type_defs.get_simple_type_ulong_long(7), 7)
    # Float types
    assert_almost_equal(simple_type_defs.get_simple_type_float(1.0), 1.0)
    assert_almost_equal(simple_type_defs.get_simple_type_float(-1.0), -1.0)
    # Double types
    assert_almost_equal(simple_type_defs.get_simple_type_double(2.0), 2.0)
    assert_almost_equal(simple_type_defs.get_simple_type_double(-2.0), -2.0)
    # Long double types
    assert_almost_equal(simple_type_defs.get_simple_type_long_double(3.0), 3.0)
    assert_almost_equal(
        simple_type_defs.get_simple_type_long_double(-3.0), -3.0
    )


fn main() raises:
    test_simple_type_defs()
