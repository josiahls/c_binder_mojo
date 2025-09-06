from circular_import_test import ClassVariant


struct VariantWrapper[address_space: AddressSpace = AddressSpace.GENERIC](
    Copyable & Movable & Sized
):
    alias type = ClassVariant
    var _variant: OpaquePointer

    fn __init__(out self):
        null_variant = ClassVariant(unsafe_uninitialized=())
        ptr = UnsafePointer(to=null_variant)
        self._variant = ptr.bitcast[NoneType]()

    fn __init__(out self, var variant: ClassVariant):
        ptr = UnsafePointer(to=variant)
        self._variant = ptr.bitcast[NoneType]()

    fn variant(self: Self) -> ref [self._variant] Self.type:
        return self._variant.bitcast[Self.type]()[]

    fn __len__(self) -> Int:
        return 1
