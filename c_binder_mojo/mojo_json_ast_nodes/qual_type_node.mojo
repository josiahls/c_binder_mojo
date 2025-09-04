# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode


struct QualTypeNode(AstNodeLike):
    alias __name__ = "QualType"

    var level: Int
    var qualifiers: String

    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.qualifiers = ""
        self.children_ = []

        try:
            if "qualifiers" in object:
                self.qualifiers = object["qualifiers"].string()
            if "inner" in object:
                for inner_object in object["inner"].array():
                    self.children_.append(
                        AstNode.accept_from_json_object(
                            inner_object.object(), level + 1
                        )
                    )
        except e:
            print("Error creating QualTypeNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s: String = ""
        for child in self.children_:
            s += child.to_string(just_code)
        s += " # QualType: " + self.qualifiers
        return s

    fn children[
        T: ExplicitlyCopyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
