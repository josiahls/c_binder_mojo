# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.extensions.unprocessed_type_node import (
    UnprocessedTypeNode,
)


struct PointerTypeNode(AstNodeLike):
    alias __name__ = "PointerType"

    var children_: List[AstNode]
    var qualifiers: List[String]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = self.make_children[assert_in=True](json_object, 0)
        self.qualifiers = List[String]()
        # TODO: Handle restrict qualifiers.
        for node in self.children():
            if node.isa[QualTypeNode]():
                for s in node[QualTypeNode].qualifiers.split(" "):
                    self.qualifiers.append(String(s))

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    ref s = json_object["type"].object()["qualType"].string()
                    if s.endswith("*"):
                        return True
        return False

    @staticmethod
    fn impute(mut json_object: Object) raises:
        var s = json_object["type"].object()["qualType"].string().copy()
        json_object["id"] = ""
        json_object["kind"] = Self.__name__
        json_object["inner"] = Array()
        json_object["qualifiers"] = ""
        json_object["type"] = Object()
        json_object["type"].object()["_qualType"] = s.copy()
        json_object["type"].object()["qualType"] = "*"
        s = String(s.removesuffix("*"))
        if s.startswith("const "):
            s = String(s.removeprefix("const "))
            json_object["qualifiers"] = (
                json_object["qualifiers"].string() + "const"
            )
        var unprocessed_type_json_object = (
            UnprocessedTypeNode.make_unprocessed_type_json_object(
                String(s.strip())
            )
        )
        json_object["inner"].array().append(unprocessed_type_json_object^)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute(inner_object.object())

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        # NOTE: We don't indent since this is typically part of a more complex type.
        var dtype = self.children_to_string(just_code)

        # NOTE: decomposition of child types, the * is from right to left.
        dtype = "UnsafePointer[" + dtype
        if "const" in self.qualifiers:
            dtype += ", mut=False"
        dtype += "]"
        if dtype == "UnsafePointer[NoneType]":
            dtype = "OpaquePointer"
        return dtype

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
