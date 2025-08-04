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
    var node: ArcPointer[Self.type]

    fn __init__(out self, node: Self.type):
        self.node = ArcPointer[Self.type](node)

    fn __copyinit__(out self, other: Self):
        self.node = other.node

    fn __moveinit__(out self, owned other: Self):
        self.node = other.node^

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
                return T.create_from_json_object(json_object, level)
        print(
            "WARNING: none of the nodes accepted the json_object: "
            + String(json_object["kind"].string())
        )
        return PlaceHolderNode.create_from_json_object(json_object, level)

    @always_inline("nodebug")
    fn to_string(self, just_code: Bool) raises -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].to_string(just_code)
        print(
            "WARNING: to_string called on AstNode with no to_string method for"
            " node: "
            + self.__name__
        )
        return "<unknown type>"
