"""
Test circular imports with List-based struct references
This demonstrates that even with List solving the struct recursion,
the circular imports themselves still crash the compiler.
"""

from circular_import_test.module_a import ClassA, create_a
from circular_import_test.module_b import ClassB, create_b
from circular_import_test.module_c import ClassC, create_c


fn main():
    print("Testing circular imports with List-based references...")

    # Try to create instances - this should crash due to circular imports
    # even though List solves the struct recursion issue
    var a = create_a()
    print("Created ClassA:", a.get_info())

    var b = create_b()
    print("Created ClassB:", b.get_info())

    var c = create_c()
    print("Created ClassC:", c.get_info())

    print("Getting variant")

    ref variant = a.b_instance.variant()
    print("im here")
    _ = variant
    print("Variant:", variant[ClassB].get_info())

    print("SUCCESS: If you see this, circular imports worked!")
