from testing import assert_equal
from anonymous_declaration_node import (
    anonymous_declaration_node,
    AnonymousEnumType,
)


fn test_anonymous_enum_typedef() raises:
    """Test that anonymous enum in typedef works correctly."""
    var dl = anonymous_declaration_node()
    # Test that the anonymous enum values are accessible
    assert_equal(dl.use_anonymous_enum(AnonymousEnumType.ANON_VALUE_A), 0)


fn main() raises:
    test_anonymous_enum_typedef()
