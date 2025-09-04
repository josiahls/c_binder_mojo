# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct TypedefTypeNode(AstNodeLike):
    alias __name__ = "TypedefType"

    var typedef_type: String
    var level: Int
    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.typedef_type = ""
        self.children_ = List[AstNode]()
        # TODO: May need to handle children here also.

        try:
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    self.typedef_type = type_object["qualType"].string()
                else:
                    print(
                        "Error creating TypedefTypeNode: ",
                        to_string(type_object),
                    )
        except e:
            print("Error creating TypedefTypeNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        # NOTE: There is no indentation since this is typically
        # used in a typedef decl node or wrapping type node.
        return self.typedef_type

    fn children[
        T: ExplicitlyCopyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
