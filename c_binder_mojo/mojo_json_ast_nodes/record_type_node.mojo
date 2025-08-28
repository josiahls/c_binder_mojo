# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode

# from c_binder_mojo.mojo_json_ast_nodes.record_decl_node import (
#     get_global_record_decl_node_queue,
# )


struct RecordTypeNode(JsonNodeAstLike):
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
                self.children_.append(decl_record_node)
        except e:
            print("Error creating RecordTypeNode: ", e)

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Self:
        return Self(json_object, level)

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        # var indent = "\t" * self.level
        # We do not indent since this is part of more complex types.
        s += self.record_name + "\n"
        for child in self.children_:
            s += child.to_string(just_code) + "\n"
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.record_name + ")"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[AstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
