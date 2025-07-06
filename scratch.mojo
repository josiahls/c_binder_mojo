struct BinaryFileHandle:
    fn __init__(out self):
        pass

    fn read(self) -> List[Byte]:
        return [1, 2, 3]

struct TextFileHandle:
    fn __init__(out self):
        pass
    
    fn read(self) -> String:
        return "Hello, World!"

fn open(mode: __type_of("rb")) -> BinaryFileHandle:
    return BinaryFileHandle()

fn open(mode: __type_of("r")) -> TextFileHandle:
    return TextFileHandle()

fn main() raises:
    print(open("rb").read().__str__()) # [SIMD[DType.uint8, 1](1), SIMD[DType.uint8, 1](2), SIMD[DType.uint8, 1](3)]
    print(open("r").read().__str__())  # "Hello, World!"