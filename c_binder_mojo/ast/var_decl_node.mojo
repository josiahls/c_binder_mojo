# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.typing import TypeMapper
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


struct VarDeclNode(AstNodeLike):
    alias __name__ = "VarDecl"

    var level: Int
    var name: String
    var mangled_name: String
    var type: String
    var children_: List[AstNode]
    var is_anonomous_record_type: Bool
    var value: String

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.type = ""
        self.is_anonomous_record_type = False
        self.children_ = List[AstNode]()
        self.name = self.get_field(json_object, "name")
        self.mangled_name = self.get_field(json_object, "mangledName")
        self.value = ""
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.type = self.get_field(type_object, "qualType")
            if self.type.startswith("struct (unnamed struct"):
                self.is_anonomous_record_type = True

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        if json_object["kind"].string() == Self.__name__:
            if "inner" not in json_object:
                return True
        return False

    @staticmethod
    fn impute(mut json_object: Object) raises:
        var s = String(
            json_object["type"].object()["qualType"].string().strip()
        )
        inner_json_object = (
            UnprocessedTypeNode.make_unprocessed_type_json_object(s)
        )
        if "inner" not in json_object:
            json_object["inner"] = Array()
        json_object["inner"].array().append(inner_json_object^)
        for ref child in json_object["inner"].array():
            AstNode.impute(child.object())

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        s += "alias " + self.name + " = "
        s += self.children_to_string(just_code)
        if self.value != "":
            s += self.value + "\n"
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
