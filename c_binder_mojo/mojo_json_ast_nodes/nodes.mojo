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
from c_binder_mojo.mojo_json_ast_nodes import JsonAstNodeVariant
from c_binder_mojo.mojo_json_ast_nodes.node_variant import Variant
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike


struct JsonAstNode(Copyable & Movable):
    alias __name__ = "JsonAstNode"
    alias type = JsonAstNodeVariant
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

    @always_inline("nodebug")
    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[JsonAstNode]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.isa[T]():
                # Brekaing this down:
                # Get the underlying reference to the variant intance: self._impl[]
                # Get a pointer to the specific type of node: ._get_ptr[T]()
                # Cast the ptr to the mut and origin: .origin_cast[mut=mut, origin=origin]()
                # Dereference the pointer: []
                # Return the result of children: children()
                return (
                    self._impl[]
                    ._get_ptr[T]()
                    .origin_cast[mut=mut, origin=origin]()[]
                    .children()
                )
        print(
            "WARNING: to_string called on AstNode with no to_string method for"
            " node: "
            + self.__name__
        )
        # NOTE: this node does not have any children, so it will return an empty list
        return UnsafePointer[mut=mut](to=List[JsonAstNode]()).origin_cast[
            origin = __origin_of(self)
        ]()[]
