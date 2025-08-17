from c_binder_mojo.stdlib_ext import C_Union
from sys import sizeof

alias _mlir_type = __mlir_type[`!pop.union<`, `ui8`, `>`]

alias _mlir_type_variant = __mlir_type[
    `!kgen.variant<`, `ui8`, `,`, `ui16`, `>`
]


fn test_c_union() raises:
    alias example_union = C_Union[UInt8, UInt16]
    var c_union = C_Union[UInt8, UInt32](UInt32(4))
    print("sizeof[example_union]: ", sizeof[example_union]())

    print("sizeof[_mlir_type]: ", sizeof[_mlir_type]())
    print("sizeof[UInt8]: ", sizeof[UInt8]())
    print("sizeof[Int8]: ", sizeof[Int8]())
    print("sizeof[_mlir_type_variant]: ", sizeof[_mlir_type_variant]())


fn main() raises:
    test_c_union()
