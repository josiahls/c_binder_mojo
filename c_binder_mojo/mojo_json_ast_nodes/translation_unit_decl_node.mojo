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


fn move_record_decls_to_top_level(
    mut ast_node: JsonAstNode,
) raises -> List[JsonAstNode]:
    var record_decls: List[JsonAstNode] = []
    for ref node in ast_node.children[mut=True]():
        if node.node[].isa[RecordDeclNode]():
            record_decls.append(node)

    for node in record_decls:
        ast_node.children().remove(node)
    return record_decls


fn move_enum_decls_to_top_level(
    mut ast_node: JsonAstNode,
) raises -> List[JsonAstNode]:
    var enum_decls: List[JsonAstNode] = []
    for ref node in ast_node.children[mut=True]():
        if node.node[].isa[EnumDeclNode]():
            enum_decls.append(node)

    for node in enum_decls:
        ast_node.children().remove(node)
    return enum_decls


struct TranslationUnitDeclNode(JsonNodeAstLike):
    alias __name__ = "TranslationUnitDecl"

    var children_: List[JsonAstNode]
    var level: Int

    fn __init__(out self, object: Object, level: Int):
        self.children_ = List[JsonAstNode]()
        self.level = level
        try:
            for value in object["inner"].array():
                var node = JsonAstNode.accept_from_json_object(
                    value.object(), level
                )

                for record_decl in move_record_decls_to_top_level(node):
                    self.children_.append(record_decl)

                # while (
                #     get_global_record_decl_node_queue()[].record_decl_node_queue
                # ):
                #     var node = (
                #         get_global_record_decl_node_queue()[].record_decl_node_queue.pop()
                #     )
                #     self.children.append(node)
                self.children_.append(node)

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
            for child in self.children_:
                s += child.to_string(just_code)
        else:
            s += indent + "# " + self.signature() + "\n"
            for child in self.children_:
                s += child.to_string(just_code)
        return s

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[JsonAstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
