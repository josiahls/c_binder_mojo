from testing import assert_equal
from record_decl_node import record_decl_node, CodecState


fn test_forward_declared_struct_has_fields() raises:
    """Test that struct defined AFTER a forward declaration typedef still has fields.

    This reproduces the ImagingCodecStateInstance bug where:
    1. typedef struct CodecState *CodecStatePtr; (forward declaration)
    2. struct CodecState { fields... }; (full definition)

    The full definition should NOT be pruned - it should have the actual fields!
    If the bug exists, CodecState will be an empty opaque struct (just "pass").
    If fixed, it should have the fields from the full definition.
    """
    var dl = record_decl_node()

    # Create instance and set field values
    var cs = CodecState(
        count=10,
        state=1,
        errcode=0,
        x=5,
        y=7,
    )

    # Verify we can read the values back
    assert_equal(cs.count, 10)
    assert_equal(cs.state, 1)
    assert_equal(cs.errcode, 0)
    assert_equal(cs.x, 5)
    assert_equal(cs.y, 7)

    print("✓ Forward declared struct correctly has fields from full definition")


fn main() raises:
    test_forward_declared_struct_has_fields()
