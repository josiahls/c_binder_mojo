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


struct TranslationUnitDeclNode(JsonNodeAstLike):
    alias __name__ = "TranslationUnitDecl"

    var nodes: List[JsonAstNode]
    var level: Int

    fn __init__(out self, object: Object, level: Int):
        self.nodes = List[JsonAstNode]()
        self.level = level
        try:
            for value in object["inner"].array():
                self.nodes.append(
                    JsonAstNode.accept_from_json_object(value.object(), level)
                )
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
        return JsonAstNode(TranslationUnitDeclNode(json_object, level))

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * self.level
        if not just_code:
            for node in self.nodes:
                s += node.to_string(just_code)
        else:
            s += indent + "Node: " + self.__name__ + "\n"
            for node in self.nodes:
                s += node.to_string(just_code)
        return s
