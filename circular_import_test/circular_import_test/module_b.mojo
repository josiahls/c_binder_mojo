"""
Module B - Part of circular import test
This module depends on Module C
"""

from circular_import_test.module_c import ClassC
from circular_import_test.variant_wrapper import VariantWrapper


struct ClassB(Copyable & Movable):
    var name: String
    var c_instance: VariantWrapper

    fn __init__(out self, name: String):
        self.name = name
        print("ClassB __init__")
        class_c = ClassC("C from B")
        print("ClassB __init__ class_c")
        class_c_variant = ClassVariant(class_c)
        print("ClassB __init__ class_c_variant")
        self.c_instance = VariantWrapper(class_c_variant)
        print("ClassB __init__ done")

    fn __copyinit__(out self, other: Self):
        print("ClassB __copyinit__")
        self.name = other.name
        self.c_instance = other.c_instance

    fn __moveinit__(out self, deinit other: Self):
        print("ClassB __moveinit__")
        self.name = other.name
        self.c_instance = other.c_instance

    fn get_info(self) -> String:
        return (
            "ClassB("
            + self.name
            + ") contains: "
            + String(len(self.c_instance))
        )


fn create_b() -> ClassB:
    return ClassB("Default B")
