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

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.mem_address = ""
        self.record_name = ""
        self.children_ = List[AstNode]()
        self.is_struct = False

        try:
            if "id" in object:
                self.mem_address = object["id"].string()
            if "type" in object:
                var type_object = object["type"].object()
                if "qualType" in type_object:
                    record_name = type_object["qualType"].string()
                    self.is_struct = record_name.startswith("struct")
                    if self.is_struct:
                        self.record_name = record_name.replace("struct ", "")
                else:
                    print("Error creating RecordTypeNode: ", to_string(object))
            if "inner" in object:
                for child in object["inner"].array():
                    self.children_.append(
                        AstNode.accept_from_json_object(
                            child.object(), level + 1
                        )
                    )
            if "decl" in object:
                decl_record_node = AstNode.accept_from_json_object(
                    object["decl"].object(), 1
                )
                if decl_record_node.isa[RecordDeclNode]():
                    self.record_name = decl_record_node[
                        RecordDeclNode
                    ].record_name
                self.children_.append(decl_record_node^)
        except e:
            print("Error creating RecordTypeNode: ", e)

    @staticmethod
    fn accept_impute_json_object(read json_object: Object) raises -> Bool:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    ref s = json_object["type"].object()["qualType"].string()
                    for record_type in RECORD_TYPES:
                        if s.startswith(record_type):
                            return True
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
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
        for record_type in RECORD_TYPES:
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
        json_object["inner"].array().append(inner_json_object)
        for ref child in json_object["inner"].array():
            AstNode.impute_json_object(child.object())

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        # TODO: Need to propagate whether this is inside a ParmVar so we don't newline this.
        # var indent = "\t" * self.level
        # We do not indent since this is part of more complex types.
        if self.children_:
            for child in self.children_:
                s += child.to_string(just_code)  # + "\n"
        else:
            s += self.record_name + "\n"
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.record_name + ")"

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
