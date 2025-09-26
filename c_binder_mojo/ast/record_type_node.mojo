# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode

# from c_binder_mojo.ast.record_decl_node import (
#     get_global_record_decl_node_queue,
# )


alias RECORD_TYPES: List[String] = ["struct", "union", "enum"]


struct RecordTypeNode(AstNodeLike):
    alias __name__ = "RecordType"

    var mem_address: String
    var level: Int
    var record_name: String

    var children_: List[AstNode]

    var is_struct: Bool

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.mem_address = ""
        self.record_name = ""
        self.children_ = self.make_children(json_object, level + 1)
        self.is_struct = False

        self.mem_address = self.get_field(json_object, "id")
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            record_name = self.get_field(type_object, "qualType")
            self.is_struct = record_name.startswith("struct")
            if self.is_struct:
                self.record_name = record_name.replace("struct ", "")

        if "decl" in json_object:
            decl_record_node = AstNode.accept_create_from(
                json_object["decl"].object(), 1
            )
            if decl_record_node.isa[RecordDeclNode]():
                self.record_name = decl_record_node[RecordDeclNode].record_name
            self.children_.append(decl_record_node^)

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    ref s = json_object["type"].object()["qualType"].string()
                    for record_type in materialize[RECORD_TYPES]():
                        if s.startswith(record_type):
                            return True
        return False

    @staticmethod
    fn impute(mut json_object: Object) raises:
        var s = String(
            json_object["type"].object()["qualType"].string().strip()
        )
        json_object["id"] = ""
        json_object["kind"] = Self.__name__
        json_object["inner"] = Array()
        json_object["record_name"] = ""
        json_object["children_"] = Array()
        json_object["is_struct"] = False
        json_object["type"] = Object()
        json_object["type"].object()["qualType"] = s
        var new_qual_type: String = s.copy()
        for record_type in materialize[RECORD_TYPES]():
            if new_qual_type.startswith(record_type):
                new_qual_type = String(new_qual_type.removeprefix(record_type))
                if record_type == "struct":
                    json_object["is_struct"] = True
                break

        inner_json_object = (
            UnprocessedTypeNode.make_unprocessed_type_json_object(
                String(new_qual_type.strip())
            )
        )
        json_object["inner"].array().append(inner_json_object^)
        for ref child in json_object["inner"].array():
            AstNode.impute(child.object())

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        # TODO: Need to propagate whether this is inside a ParmVar so we don't newline this.
        # var indent = "\t" * self.level
        # We do not indent since this is part of more complex types.
        if self.children_:
            for child in self.children():
                s += child.to_string(just_code)  # + "\n"
        else:
            s += self.record_name + "\n"
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.record_name + ")"

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
