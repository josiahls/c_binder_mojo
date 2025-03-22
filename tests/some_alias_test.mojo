from testing import assert_equal


fn test_bit_shifts() raises:
    # C style bit shifts for creating flags
    var base: UInt32 = 1

    # In C: 1<<0, 1<<1, 1<<2, etc
    var flag0 = base << 0  # 0000 0001 = 1
    var flag1 = base << 1  # 0000 0010 = 2
    var flag2 = base << 2  # 0000 0100 = 4
    var flag3 = base << 3  # 0000 1000 = 8
    var flag4 = base << 15  # 0001 0000 = 16

    assert_equal(flag0, 1)
    assert_equal(flag1, 2)
    assert_equal(flag2, 4)
    assert_equal(flag3, 8)
    assert_equal(flag4, 32768)
    # Combining flags with OR (|)
    var combined = flag0 | flag1  # 0000 0011 = 3
    assert_equal(combined, 3)

    # Testing flags with AND (&)
    assert_equal(combined & flag0, flag0)  # Has flag0
    assert_equal(combined & flag2, 0)  # Doesn't have flag2


fn main():
    try:
        test_bit_shifts()
        print("All tests passed!")
    except e:
        print("Failed: " + String(e))
