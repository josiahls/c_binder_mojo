# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
from memory import ArcPointer
import sys

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast import AstNodeVariant
from c_binder_mojo.ast.traits import AstNodeLike


alias VERBOSE: Bool = False


@fieldwise_init
struct NodeExceptionHandler(Movable):
    var node_name: String
    var function_name: String

    fn __enter__(mut self) -> ref [self] Self:
        if VERBOSE:
            print(
                "Entering node: ",
                self.node_name,
                " function: ",
                self.function_name,
            )
        return self

    fn __exit__(mut self):
        if VERBOSE:
            print(
                "Exiting node: ",
                self.node_name,
                " function: ",
                self.function_name,
            )

    fn __exit__(mut self, e: Error) raises -> Bool:
        print(
            "Error occured in node: ",
            self.node_name,
            " function: ",
            self.function_name,
        )
        return False


struct AstNode(Copyable & Movable):
    alias __name__ = "AstNode"
    alias type = AstNodeVariant
    # FIXME: Ideally we shouldn't be doing c `void*` generics, however due to https://github.com/modular/modular/issues/5287
    # We need to keep this for now to avoid recursive type compilation errors related to Variants.
    var _impl: OpaquePointer

    fn __init__(out self, var node: Self.type):
        # Allocate heap storage for the variant to ensure it persists
        var heap_ptr = UnsafePointer[Self.type].alloc(1)
        heap_ptr.init_pointee_move(node^)
        self._impl = heap_ptr.bitcast[NoneType]()

    fn __copyinit__(out self, other: Self):
        # Deep copy: allocate new heap memory and copy the variant
        if not other._impl:
            self._impl = OpaquePointer()
            return
        var heap_ptr = UnsafePointer[Self.type].alloc(1)
        heap_ptr.init_pointee_move(other._impl.bitcast[Self.type]()[].copy())
        self._impl = heap_ptr.bitcast[NoneType]()

    fn isa[T: AnyType](self) -> Bool:
        return self._impl.bitcast[Self.type]()[].isa[T]()

    fn __getitem__[T: AnyType](ref self) -> ref [self._impl[]] T:
        return self._impl.bitcast[Self.type]()[][T]

    @always_inline("nodebug")
    fn name(self) raises -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.isa[T]():
                return T.__name__
        raise Error("Missing name method")

    @always_inline("nodebug")
    @staticmethod
    fn accept_create_from(
        read json_object: Object, read level: Int
    ) raises -> Self:
        """
        Iterates over each type in the variant at compile-time and calls accept.
        """

        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if T.accept_create_from(json_object):
                with NodeExceptionHandler(T.__name__, "create_from"):
                    return Self(T.create_from(json_object, level))
        raise Error("Missing accept_create_from method")

    @always_inline("nodebug")
    @staticmethod
    fn impute(mut json_object: Object) raises:
        """
        Iterates over each type in the variant at compile-time and calls impute.

        Used for update the json ast with missing nodes or fleshing out the ast.
        """

        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if T.accept_impute(json_object):
                with NodeExceptionHandler(T.__name__, "impute"):
                    T.impute(json_object)
                    return  # Only call impute on the first matching type

    @always_inline("nodebug")
    fn to_string(self, just_code: Bool) raises -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.isa[T]():
                with NodeExceptionHandler(T.__name__, "to_string"):
                    return self[T].to_string(just_code)
        raise Error("Missing to_string method")

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self: Self) raises -> ref [self._impl[]] List[Self]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.isa[T]():
                with NodeExceptionHandler(T.__name__, "children"):
                    return self[T].children()
        raise Error("Missing children method")
