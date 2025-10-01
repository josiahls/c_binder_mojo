# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.typing import TypeMapper
from c_binder_mojo.common import MOJO_KEYWORDS, MOJO_METHOD_KEYWORDS
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


struct FieldDeclNode(AstNodeLike):
    alias __name__ = "FieldDecl"

    var name: String
    var children_: List[AstNode]
    var level: Int
    var type: String
    var desugared_type: String
    var is_union: Bool
    var is_anonomous_type: Bool
    var is_struct: Bool
    var is_bitfield: Bool

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.name = ""
        self.children_ = self.make_children[assert_in=True](json_object, level)
        self.level = 1  # Fields must always be at the top level + 1
        self.type = ""
        self.desugared_type = ""
        self.is_union = False
        self.is_struct = False
        self.is_anonomous_type = False
        self.is_bitfield = False
        self.name = self.get_field(json_object, "name")
        self.is_bitfield = self.get_field_bool(json_object, "isBitfield")
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.type = self.get_field(type_object, "qualType")
            if self.type.startswith("union "):
                self.is_union = True
            if self.type.startswith("struct "):
                self.is_struct = True
            if "anonymous at" in self.type:
                self.is_anonomous_type = True
            self.desugared_type = self.get_field(
                type_object, "desugaredQualType"
            )

            if "anonymous at" in self.desugared_type:
                self.is_anonomous_type = True

    @staticmethod
    fn impute(mut json_object: Object) raises:
        var unknown_type_object = json_object.copy()
        unknown_type_object["id"] = Self.make_object_id(unknown_type_object)
        unknown_type_object["kind"] = UnprocessedTypeNode.__name__
        if "inner" not in unknown_type_object:
            unknown_type_object["inner"] = Array()
        unknown_type_object["wrappingType"] = Array()
        unknown_type_object["wrappingType"].array().append(Self.__name__)
        json_object["id"] = Self.make_object_id(json_object)
        json_object["kind"] = Self.__name__
        json_object["inner"] = Array()
        json_object["inner"].array().append(unknown_type_object^)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute(inner_object.object())

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        var indent: String = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"

        name = self.name
        if (
            name in materialize[MOJO_KEYWORDS]()
            or name in materialize[MOJO_METHOD_KEYWORDS]()
        ):
            name = name + "_"

        s += indent + "var " + name + " : "

        s += self.children_to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
