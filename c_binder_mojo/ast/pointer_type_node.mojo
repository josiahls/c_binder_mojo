# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


struct PointerTypeNode(AstNodeLike):
    alias __name__ = "PointerType"

    var children_: List[AstNode]
    var qualifiers: String

    fn __init__(out self, object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.qualifiers = ""
        # TODO: Handle restrict qualifiers.
        try:
            if "inner" in object:
                for child in object["inner"].array():
                    node = AstNode.accept_from_json_object(child.object(), 0)
                    if node.isa[QualTypeNode]():
                        self.qualifiers = node[QualTypeNode].qualifiers
                    self.children_.append(node^)
        except e:
            print("Error creating PointerTypeNode: ", e)

    @staticmethod
    fn accept_impute_json_object(read json_object: Object) raises -> Bool:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    ref s = json_object["type"].object()["qualType"].string()
                    if s.endswith("*"):
                        return True
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
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
            json_object["qualifiers"] = "const"
        var unprocessed_type_json_object = (
            UnprocessedTypeNode.make_unprocessed_type_json_object(
                String(s.strip())
            )
        )
        json_object["inner"].array().append(unprocessed_type_json_object)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var dtype = String()
        # NOTE: We don't indent since this is typically part of a more complex type.
        for child in self.children_:
            dtype += child.to_string(just_code)

        # NOTE: decomposition of child types, the * is from right to left.
        dtype = "UnsafePointer[" + dtype
        if self.qualifiers == "const":
            dtype += ", mut=False"
        dtype += "]"
        return dtype

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
