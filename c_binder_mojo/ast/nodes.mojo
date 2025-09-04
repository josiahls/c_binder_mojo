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


struct AstNode(Copyable & Movable):
    alias __name__ = "AstNode"
    alias type = AstNodeVariant
    var _impl: ArcPointer[Self.type]

    fn __init__(out self, node: Self.type):
        self._impl = ArcPointer[Self.type](node)

    fn isa[T: AnyType](self) -> Bool:
        return self._impl[].isa[T]()

    fn __getitem__[T: AnyType](ref self) -> ref [self._impl[]] T:
        return self._impl[][T]

    @always_inline("nodebug")
    fn name(self) -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.isa[T]():
                return T.__name__
        print(
            "WARNING: to_string called on AstNode with no to_string method for"
            " node: "
            + self.__name__
        )
        return "<unknown type>"

    @always_inline("nodebug")
    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Self:
        """
        Iterates over each type in the variant at compile-time and calls accept.
        """

        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if T.accept_from_json_object(json_object, level):
                return Self(T.create_from_json_object(json_object, level))
        print(
            "WARNING: none of the nodes accepted the json_object: "
            + String(json_object["kind"].string())
        )
        return Self(PlaceHolderNode.create_from_json_object(json_object, level))

    @always_inline("nodebug")
    fn to_string(self, just_code: Bool) raises -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.isa[T]():
                return self[T].to_string(just_code)
        print(
            "WARNING: to_string called on AstNode with no to_string method for"
            " node: "
            + self.__name__
        )
        return "<unknown type>"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self: Self) -> ref [self] List[Self]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias Type = Self.type.Ts[i]
            if self.isa[Type]():
                return UnsafePointer[mut=mut](
                    to=self[Type].children[Self]()
                ).origin_cast[origin = __origin_of(self)]()[]

        return UnsafePointer[mut=mut](to=List[Self]()).origin_cast[
            origin = __origin_of(self)
        ]()[]
