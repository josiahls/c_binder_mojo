from sys.intrinsics import _type_is_eq
from sys.info import sizeof
from utils import StaticTuple


@always_inline("nodebug")
fn build_union_mlir_type[*Ts: ExplicitlyCopyable & Movable]() -> Int:
    var max_size: Int = 0

    @parameter
    for i in range(len(VariadicList(Ts))):
        alias current_size = sizeof[Ts[i]]()
        if current_size > max_size:
            max_size = current_size
    return max_size


# TODO(josiahls): We absolutely can't do it this way as a long term thing.
@register_passable("trivial")
struct C_Union[*Ts: ExplicitlyCopyable & Movable](
    Copyable, ExplicitlyCopyable, Movable
):
    """
    A union that can hold a runtime-variant value from a set of predefined
    types.

    Reference: https://en.cppreference.com/w/c/language/union.html

    `C_Union` expects the types to overlap in storage. It is only as big as its
    largest member. It provides no additional tracking or memory management unlike
    `Variant` which is a discriminated union type that maintains a tracking discriminant.
    """

    alias max_size = build_union_mlir_type[*Ts]()
    var _impl: StaticTuple[UInt8, Self.max_size]

    @implicit
    fn __init__[T: Movable](out self, var value: T):
        """Create a c union with one of the types.

        Parameters:
            T: The type to initialize the variant to. Generally this should
                be able to be inferred from the call type, eg. `C_Union[Int, String](4)`.

        Args:
            value: The value to initialize the variant with.
        """
        __mlir_op.`lit.ownership.mark_initialized`(__get_mvalue_as_litref(self))
        self._get_ptr[T]().init_pointee_move(value^)

    @staticmethod
    fn _check[T: AnyType]() -> Bool:
        @parameter
        for i in range(len(VariadicList(Ts))):
            if _type_is_eq[Ts[i], T]():
                return True
        return False

    @always_inline("nodebug")
    fn _get_ptr[T: AnyType](self) -> UnsafePointer[T]:
        alias is_supported = Self._check[T]()
        constrained[is_supported, "not a union element type"]()
        var max_size = build_union_mlir_type[*Ts]()
        var ptr = UnsafePointer(to=self._impl).bitcast[T]()
        return ptr
