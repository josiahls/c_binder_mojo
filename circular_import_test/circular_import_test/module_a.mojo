"""
Module A - Part of circular import test
This module depends on Module B
"""

from circular_import_test.module_b import ClassB

# from circular_import_test import ClassVariant, VariantWrapper
from circular_import_test.variant_wrapper import VariantWrapper


struct ClassA(Copyable & Movable):
    var name: String
    var b_instance: VariantWrapper

    fn __init__(out self, name: String):
        self.name = name
        print("ClassA __init__ 1")
        self.b_instance = VariantWrapper(ClassVariant(ClassB("B from A")))
        # self.b_instance = VariantWrapper()
        print("ClassA __init__")

    fn __copyinit__(out self, other: Self):
        print("ClassA __copyinit__")
        self.name = other.name
        self.b_instance = other.b_instance

    fn __moveinit__(out self, deinit other: Self):
        print("ClassA __moveinit__")
        self.name = other.name
        self.b_instance = other.b_instance

    fn get_info(self) -> String:
        return (
            "ClassA("
            + self.name
            + ") contains: "
            + String(len(self.b_instance))
        )


fn create_a() -> ClassA:
    return ClassA("Default A")
