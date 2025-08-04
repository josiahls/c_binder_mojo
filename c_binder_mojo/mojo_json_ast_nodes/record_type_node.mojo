# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode
from c_binder_mojo.mojo_json_ast_nodes.translation_unit_decl_node import (
    TranslationUnitDeclNode,
)


struct RecordTypeNode(JsonNodeAstLike):
    alias __name__ = "RecordType"

    var mem_address: String
    var level: Int
    var record_name: String

    var children: List[JsonAstNode]

    var is_struct: Bool

    fn __init__(
        out self, object: Object, level: Int, root_node: Optional[JsonAstNode]
    ):
        self.level = level
        self.mem_address = ""
        self.record_name = ""
        self.children = List[JsonAstNode]()
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
                    self.children.append(
                        JsonAstNode.accept_from_json_object(
                            child.object(), level + 1, root_node
                        )
                    )
            if "decl" in object:
                if root_node:
                    if root_node[].node[].isa[TranslationUnitDeclNode]():
                        # NOTE: We possibly need to maintain a reference to this node for
                        # getting the node name.
                        record_decl_node = JsonAstNode.accept_from_json_object(
                            # NOTE: This is set from the TranslationUnitDeclNode so the level is also
                            # reset to 1.
                            object["decl"].object(),
                            1,
                            root_node,
                        )
                        if record_decl_node.node[].isa[RecordDeclNode]():
                            self.record_name = record_decl_node.node[][
                                RecordDeclNode
                            ].record_name
                            print("RecordTypeNode: ", self.record_name)
                            root_node[].node[][
                                TranslationUnitDeclNode
                            ].children.append(record_decl_node)

                    else:
                        print(
                            "Error creating RecordTypeNode: ", to_string(object)
                        )
        except e:
            print("Error creating RecordTypeNode: ", e)

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object,
        read level: Int,
        root_node: Optional[JsonAstNode],
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object,
        read level: Int,
        root_node: Optional[JsonAstNode],
    ) raises -> JsonAstNode:
        return JsonAstNode(Self(json_object, level, root_node))

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * self.level
        # We do not indent since this is part of more complex types.
        s += self.record_name + "\n"
        for child in self.children:
            s += child.to_string(just_code) + "\n"
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.record_name + ")"
