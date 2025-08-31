from os import abort
from sys.intrinsics import _type_is_eq
from memory import ArcPointer


# from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike


trait AstNodeLike(ExplicitlyCopyable & Copyable & Movable):
    # alias __name__: String

    # @staticmethod
    # fn accept_from_json_object(
    #     read json_object: Object, read level: Int
    # ) raises -> Bool:
    #     pass

    # @staticmethod
    # fn create_from_json_object(
    #     read json_object: Object, read level: Int
    # ) raises -> Self:
    #     pass

    fn to_string(self, just_code: Bool) raises -> String:
        pass

    fn children[
        T: ExplicitlyCopyable & Movable
    ](ref self) -> ref [self] List[T]:
        pass


struct Variant[*Ts: AstNodeLike](ExplicitlyCopyable & Movable):
    # Fields
    alias _sentinel: Int = -1
    alias _mlir_type = __mlir_type[
        `!kgen.variant<[rebind(:`, __type_of(Ts), ` `, Ts, `)]>`
    ]
    var _impl: Self._mlir_type

    fn __init__(out self, *, unsafe_uninitialized: ()):
        __mlir_op.`lit.ownership.mark_initialized`(__get_mvalue_as_litref(self))

    @implicit
    fn __init__[T: Movable](out self, var value: T):
        __mlir_op.`lit.ownership.mark_initialized`(__get_mvalue_as_litref(self))

        alias idx = Self._check[T]()
        self._get_discr() = idx
        self._get_ptr[T]().init_pointee_move(value^)

    fn copy(self, out copy: Self):
        copy = Self(unsafe_uninitialized=())
        copy._get_discr() = self._get_discr()

        @parameter
        for i in range(len(VariadicList(Ts))):
            alias T = Ts[i]
            if copy._get_discr() == i:
                copy._get_ptr[T]().init_pointee_move(
                    self._get_ptr[T]()[].copy()
                )
                return

    fn __copyinit__(out self, other: Self):
        # Delegate to explicit copy initializer.
        self = other.copy()

    fn __moveinit__(out self, deinit other: Self):
        __mlir_op.`lit.ownership.mark_initialized`(__get_mvalue_as_litref(self))
        self._get_discr() = other._get_discr()

        @parameter
        for i in range(len(VariadicList(Ts))):
            alias T = Ts[i]
            if self._get_discr() == i:
                # Calls the correct __moveinit__
                other._get_ptr[T]().move_pointee_into(self._get_ptr[T]())
                return

    fn __del__(deinit self):
        @parameter
        for i in range(len(VariadicList(Ts))):
            if self._get_discr() == i:
                self._get_ptr[Ts[i]]().destroy_pointee()
                return

    fn __getitem__[T: AnyType](ref self) -> ref [self] T:
        if not self.isa[T]():
            abort("get: wrong variant type")

        return self.unsafe_get[T]()

    @always_inline("nodebug")
    fn _get_ptr[T: AnyType](self) -> UnsafePointer[T]:
        alias idx = Self._check[T]()
        constrained[idx != Self._sentinel, "not a union element type"]()
        var ptr = UnsafePointer(to=self._impl).address
        var discr_ptr = __mlir_op.`pop.variant.bitcast`[
            _type = UnsafePointer[T]._mlir_type, index = idx._mlir_value
        ](ptr)
        return discr_ptr

    @always_inline("nodebug")
    fn _get_discr(ref self) -> ref [self] UInt8:
        var ptr = UnsafePointer(to=self._impl).address
        var discr_ptr = __mlir_op.`pop.variant.discr_gep`[
            _type = __mlir_type.`!kgen.pointer<scalar<ui8>>`
        ](ptr)
        return UnsafePointer(discr_ptr).bitcast[UInt8]()[]

    @always_inline
    fn take[T: Movable](mut self) -> T:
        if not self.isa[T]():
            abort("taking the wrong type!")

        return self.unsafe_take[T]()

    @always_inline
    fn unsafe_take[T: Movable](mut self) -> T:
        debug_assert(self.isa[T](), "taking wrong type")
        # don't call the variant's deleter later
        self._get_discr() = Self._sentinel
        return self._get_ptr[T]().take_pointee()

    @always_inline
    fn replace[Tin: Movable, Tout: Movable](mut self, var value: Tin) -> Tout:
        if not self.isa[Tout]():
            abort("taking out the wrong type!")

        return self.unsafe_replace[Tin, Tout](value^)

    @always_inline
    fn unsafe_replace[
        Tin: Movable, Tout: Movable
    ](mut self, var value: Tin) -> Tout:
        debug_assert(self.isa[Tout](), "taking out the wrong type!")

        var x = self.unsafe_take[Tout]()
        self.set[Tin](value^)
        return x^

    fn set[T: Movable](mut self, var value: T):
        self = Self(value^)

    fn isa[T: AnyType](self) -> Bool:
        alias idx = Self._check[T]()
        return self._get_discr() == idx

    fn unsafe_get[T: AnyType](ref self) -> ref [self] T:
        debug_assert(self.isa[T](), "get: wrong variant type")
        return self._get_ptr[T]()[]

    @staticmethod
    fn _check[T: AnyType]() -> Int:
        @parameter
        for i in range(len(VariadicList(Ts))):
            if _type_is_eq[Ts[i], T]():
                return i
        return Self._sentinel

    @staticmethod
    fn is_type_supported[T: AnyType]() -> Bool:
        return Self._check[T]() != Self._sentinel

    fn to_string(self: Self, just_code: Bool) raises -> String:
        @parameter
        for i in range(len(VariadicList(Self.Ts))):
            alias T = Self.Ts[i]
            if self.isa[T]():
                return self._get_ptr[T]()[].to_string(just_code=just_code)
        print(
            "WARNING: to_string called on AstNode with no to_string method for"
            " node: "
        )
        return "<unknown type>"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self: Self) -> ref [self] List[Self]:
        @parameter
        for i in range(len(VariadicList(Self.Ts))):
            alias Type = Self.Ts[i]
            if self.isa[Type]():
                var children = self._get_ptr[Type]()[].children[Self]()
                print("assigned children")
                return UnsafePointer[mut=mut](to=children).origin_cast[
                    origin = __origin_of(self)
                ]()[]

        return UnsafePointer[mut=mut](to=List[Self]()).origin_cast[
            origin = __origin_of(self)
        ]()[]


@fieldwise_init
struct AstNodeImplA(AstNodeLike):
    var children_: List[AstNodeVariant]
    var _name: String

    fn __init__(out self):
        self.children_ = List[AstNodeVariant]()
        self._name = "AstNodeImplA"

    fn __copyinit__(out self, other: Self):
        print("Copying children: " + String(len(other.children_)))
        self.children_ = other.children_
        self._name = other._name

    fn __moveinit__(out self, deinit other: Self):
        print("Moving children: " + String(len(other.children_)))
        self.children_ = other.children_
        self._name = other._name

    fn to_string(self: Self, just_code: Bool) raises -> String:
        return self._name

    fn children[
        T: ExplicitlyCopyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )


# @fieldwise_init
# struct AstNodeImplB(AstNodeLike):
#     var children_: List[AstNodeVariant]

#     fn __init__(out self):
#         self.children_ = List[AstNodeVariant]()

#     fn to_string(self: Self, just_code: Bool) raises -> String:
#         return "AstNodeImplB"

#     fn children[T: ExplicitlyCopyable & Movable = AstNodeVariant](self: Self) -> List[T]:
#         return UnsafePointer(to=self.children_).bitcast[List[T]]()[]

alias AstNodeVariant = Variant[AstNodeImplA]


fn main() raises:
    var ast_node_a = AstNodeImplA()
    # print(ast_node_a.to_string(True))
    ast_node_a_1 = AstNodeImplA()
    ast_node_a_2 = AstNodeImplA()
    ast_node_a.children_.append(AstNodeVariant(ast_node_a_1))
    ast_node_a.children_.append(AstNodeVariant(ast_node_a_2))

    print("ast_node_a is built")

    for child in ast_node_a.children[AstNodeVariant]():
        print(child.to_string(True))

    print("ptr is built")
    # ast_node_b = AstNodeImplB()
    # print(ast_node_b.to_string(True))

    ast_node = AstNodeVariant(ast_node_a)
    # print(ast_node.to_string(True))
    print("ast_node is built")
    for ref child in ast_node.children():
        print("got child")
        child[AstNodeImplA]._name = "AstNodeImplB - looped"
        print(child.to_string(True))
        print(ast_node[AstNodeImplA].children_[0].to_string(True))
        print(ast_node[AstNodeImplA].children_[1].to_string(True))
        # print(child.to_string(True))
    print("ast_node children are built")
    # ast_node = AstNodeVariant(ast_node_b)
    print(ast_node.to_string(True))
