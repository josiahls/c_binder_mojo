# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
from memory import ArcPointer
import sys

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode
from c_binder_mojo.mojo_json_ast_nodes.record_decl_node import (
    get_global_record_decl_node_queue,
)


alias header: String = """
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
"""


struct TranslationUnitDeclNode(JsonNodeAstLike):
    alias __name__ = "TranslationUnitDecl"

    var children: List[JsonAstNode]
    var level: Int

    fn __init__(out self, object: Object, level: Int):
        self.children = List[JsonAstNode]()
        self.level = level
        try:
            for value in object["inner"].array():
                self.children.append(
                    JsonAstNode.accept_from_json_object(value.object(), level)
                )

                while (
                    get_global_record_decl_node_queue()[].record_decl_node_queue
                ):
                    var node = (
                        get_global_record_decl_node_queue()[].record_decl_node_queue.pop()
                    )
                    self.children.append(node)
        except e:
            print("Error creating TranslationUnitDeclNode: ", e)

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return Self.__name__ == json_object["kind"].string()

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> JsonAstNode:
        return JsonAstNode(Self(json_object, level))

    fn signature(self) -> String:
        return "Node: " + self.__name__ + "()"

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        s += String(header) + "\n"
        var indent = "\t" * self.level
        if not just_code:
            for child in self.children:
                s += child.to_string(just_code)
        else:
            s += indent + "# " + self.signature() + "\n"
            for child in self.children:
                s += child.to_string(just_code)
        return s
