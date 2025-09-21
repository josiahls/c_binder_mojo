# Native Mojo Modules
from testing import assert_equal

# Third Party Mojo Modules

# First Party Modules
from example_node import example_node


# Test the identity function
fn test_identity() raises:
    var dl = example_node()
    # Test with a sample integer
    var value = 42
    # Ensure the identity function returns the same value
    assert_equal(dl.identity(value), value)


fn main() raises:
    test_identity()
