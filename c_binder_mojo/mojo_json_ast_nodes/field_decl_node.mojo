# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode
from c_binder_mojo.typing import TypeMapper
from c_binder_mojo.common import MOJO_KEYWORDS, MOJO_METHOD_KEYWORDS


struct FieldDeclNode(AstNodeLike):
    alias __name__ = "FieldDecl"

    var name: String
    var children_: List[AstNode]
    var level: Int
    var type: String
    var desugared_type: String
    var is_union: Bool
    var is_struct: Bool

    fn __init__(out self, object: Object, level: Int):
        self.name = ""
        self.children_ = List[AstNode]()
        self.level = 1  # Fields must always be at the top level + 1
        self.type = ""
        self.desugared_type = ""
        self.is_union = False
        self.is_struct = False

        try:
            if "name" in object:
                self.name = object["name"].string()
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    self.type = type_object["qualType"].string()
                    if self.type.startswith("union "):
                        self.is_union = True
                    if self.type.startswith("struct "):
                        self.is_struct = True
                if "desugaredQualType" in type_object:
                    self.desugared_type = type_object[
                        "desugaredQualType"
                    ].string()
                # else:
                #     print("Error creating FieldDeclNode: ", to_string(type_object))
        except e:
            print("Error creating FieldDeclNode: ", e, to_string(object))

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
        var s: String = ""
        var indent: String = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"

        name = self.name
        if name in MOJO_KEYWORDS or name in MOJO_METHOD_KEYWORDS:
            name = name + "_"

        s += indent + "var " + name + " : "

        var dtype: String
        if self.desugared_type != "":
            dtype = self.desugared_type
        else:
            dtype = self.type

        s += TypeMapper.convert_c_type_to_mojo_type(dtype) + "\n"
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[AstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
