from c_binder_mojo.typing import TypeMapper
from testing import assert_almost_equal, assert_equal


fn test_type_mapper() raises:
    # assert_equal(TypeMapper.convert_c_type_to_mojo_type("int"), "Int32")
    # assert_equal(TypeMapper.convert_c_type_to_mojo_type("double"), "Float64")
    # assert_equal(TypeMapper.convert_c_type_to_mojo_type("float"), "Float32")
    # assert_equal(TypeMapper.convert_c_type_to_mojo_type("char"), "Int8")
    # assert_equal(TypeMapper.convert_c_type_to_mojo_type("unsigned char"), "UInt8")
    # assert_equal(TypeMapper.convert_c_type_to_mojo_type("short"), "Int16")
    # assert_equal(TypeMapper.convert_c_type_to_mojo_type("unsigned short"), "UInt16")
    assert_equal(
        TypeMapper.convert_c_type_to_mojo_type("const int *[10]"),
        "StaticTuple[UnsafePointer[Int32], 10]",
    )
    assert_equal(
        TypeMapper.convert_c_type_to_mojo_type(
            "const int *(const int *, int *)", is_fn_decl=True
        ),
        (
            "fn (read UnsafePointer[Int32], UnsafePointer[Int32]) ->"
            " UnsafePointer[Int32]"
        ),
    )
    assert_equal(
        TypeMapper.convert_c_type_to_mojo_type(
            "void (const char *, ...)", is_fn_decl=True
        ),
        "fn (read *UnsafePointer[Int8]) -> NoneType",
    )


fn main() raises:
    test_type_mapper()
