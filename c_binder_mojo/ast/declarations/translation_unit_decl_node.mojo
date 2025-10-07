# Native Mojo Modules
import os
from pathlib import Path
from collections import Set
import sys

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


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
    mut children: List[AstNode],
    mut node: AstNode,
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
    mut children: List[AstNode],
    mut node: AstNode,
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


fn move_reassign_var_decls_to_top_level(
    mut children: List[AstNode],
) raises:
    var name: String = ""
    for ref child in children:
        if child.isa[RecordDeclNode]():
            name = child[RecordDeclNode].record_name

        elif child.isa[EnumDeclNode]():
            name = child[EnumDeclNode].name

        elif child.isa[TypedefDeclNode]():
            name = child[TypedefDeclNode].name

        elif child.isa[VarDeclNode]():
            if child[VarDeclNode].is_anonomous_record_type:
                child[VarDeclNode].value = name.copy()


fn prune_repeated_decls(
    mut children: List[AstNode],
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
        elif name in materialize[BANNED_TYPES]():
            indicies.append(i)
        else:
            names.add(name)

    indicies.reverse()
    for i in indicies:
        _ = children.pop(i)


struct TranslationUnitDeclNode(AstNodeLike):
    alias __name__ = "TranslationUnitDecl"

    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = List[AstNode]()
        self.level = level
        for value in json_object["inner"].array():
            var node = AstNode.accept_create_from(value.object(), level)
            move_record_decls_to_top_level(self.children_, node)
            move_enum_decls_to_top_level(self.children_, node)
            self.children_.append(node^)
        # move_reassign_var_decls_to_top_level(self.children_)
        prune_repeated_decls(self.children_)

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String(HEADER) + "\n"
        s += self.children_to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
