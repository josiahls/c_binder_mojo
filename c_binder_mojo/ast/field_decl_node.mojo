# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
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
    var is_anonomous_type: Bool
    var is_struct: Bool

    fn __init__(out self, object: Object, level: Int):
        self.name = ""
        self.children_ = List[AstNode]()
        self.level = 1  # Fields must always be at the top level + 1
        self.type = ""
        self.desugared_type = ""
        self.is_union = False
        self.is_struct = False
        self.is_anonomous_type = False

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
                    if "anonymous at" in self.type:
                        self.is_anonomous_type = True
                if "desugaredQualType" in type_object:
                    self.desugared_type = type_object[
                        "desugaredQualType"
                    ].string()

                    if "anonymous at" in self.desugared_type:
                        self.is_anonomous_type = True
                # else:
                #     print("Error creating FieldDeclNode: ", to_string(type_object))
        except e:
            print("Error creating FieldDeclNode: ", e, to_string(object.copy()))

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

        var dtype: String
        if self.desugared_type != "":
            dtype = self.desugared_type
        else:
            dtype = self.type

        s += TypeMapper.convert_c_type_to_mojo_type(dtype) + "\n"
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
