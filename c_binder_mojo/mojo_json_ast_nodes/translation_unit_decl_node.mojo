# Native Mojo Modules
import os
from pathlib import Path
from collections import Set
import sys

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


alias HEADER: String = """
from sys.ffi import DLHandle
from sys import ffi
from os import abort, getenv, setenv
from python._cpython import ExternalFunction
from pathlib import Path
from c_binder_mojo.stdlib_ext import C_Union
from utils import StaticTuple
"""

alias BANNED_TYPES: Set[String] = Set[String]("abort", "getenv", "setenv")


fn move_record_decls_to_top_level(
    mut children: List[JsonAstNode],
    mut node: JsonAstNode,
) raises:
    var indicies: List[Int] = []
    var i: Int = 0

    for ref child in node.children[mut=True]():
        if child.isa[RecordDeclNode]():
            indicies.append(i)

        move_record_decls_to_top_level(children, child)
        i += 1

    indicies.reverse()
    for i in indicies:
        children.append(node.children[mut=True]().pop(i))


fn move_enum_decls_to_top_level(
    mut children: List[JsonAstNode],
    mut node: JsonAstNode,
) raises:
    var indicies: List[Int] = []
    var i: Int = 0
    for ref child in node.children[mut=True]():
        if child.isa[EnumDeclNode]():
            indicies.append(i)

        move_enum_decls_to_top_level(children, child)
        i += 1

    indicies.reverse()
    for i in indicies:
        children.append(node.children[mut=True]().pop(i))


fn prune_repeated_decls(
    mut children: List[JsonAstNode],
) raises:
    var names: Set[String] = Set[String]()
    var indicies: List[Int] = []
    var i: Int = -1
    for child in children:
        i += 1
        var name = ""
        if child.isa[RecordDeclNode]():
            name = child[RecordDeclNode].record_name

        elif child.isa[EnumDeclNode]():
            name = child[EnumDeclNode].name

        elif child.isa[TypedefDeclNode]():
            name = child[TypedefDeclNode].name

        elif child.isa[VarDeclNode]():
            name = child[VarDeclNode].name

        elif child.isa[FunctionDeclNode]():
            name = child[FunctionDeclNode].function_name

        if name == "":
            continue

        if name in names:
            indicies.append(i)
        elif name in BANNED_TYPES:
            indicies.append(i)
        else:
            names.add(name)

    indicies.reverse()
    for i in indicies:
        _ = children.pop(i)


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
                move_record_decls_to_top_level(self.children_, node)
                move_enum_decls_to_top_level(self.children_, node)
                self.children_.append(node)

            prune_repeated_decls(self.children_)
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
    ) raises -> Self:
        return Self(json_object, level)

    fn signature(self) -> String:
        return "Node: " + self.__name__ + "()"

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        s += String(HEADER) + "\n"
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
