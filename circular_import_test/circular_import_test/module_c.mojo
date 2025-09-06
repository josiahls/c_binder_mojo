"""
Module C - Part of circular import test
This module depends on Module A (completing the circular dependency)
"""

from circular_import_test.module_a import ClassA

# from circular_import_test import ClassVariant, VariantWrapper
from circular_import_test.variant_wrapper import VariantWrapper


struct ClassC(Copyable & Movable):
    var name: String
    var a_instance: VariantWrapper

    fn __init__(out self, name: String):
        self.name = name
        print("ClassC __init__")
        self.a_instance = VariantWrapper()
        print("ClassC __init__ done")
        # NOTE: don't uncomment this. This will produce a infinite loop.
        # self.a_instance.append(VariantWrapper(ClassVariant(ClassA("A from C"))))

    fn __copyinit__(out self, other: Self):
        print("ClassC __copyinit__")
        self.name = other.name
        self.a_instance = other.a_instance

    fn __moveinit__(out self, deinit other: Self):
        print("ClassC __moveinit__")
        self.name = other.name
        print("ClassC __moveinit__ other.a_instance")
        self.a_instance = other.a_instance
        print("ClassC __moveinit__ done")

    fn get_info(self) -> String:
        return (
            "ClassC("
            + self.name
            + ") contains: "
            + String(len(self.a_instance))
        )


fn create_c() -> ClassC:
    return ClassC("Default C")
