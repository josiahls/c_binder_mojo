"""
Circular Import Test Package
"""

from utils import Variant
from circular_import_test.module_a import ClassA, create_a
from circular_import_test.module_b import ClassB, create_b
from circular_import_test.module_c import ClassC, create_c


alias ClassVariant = Variant[ClassA, ClassB, ClassC]
# alias ClassVariant = Variant[ClassA]
