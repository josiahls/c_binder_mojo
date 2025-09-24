# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct UnprocessedTypeNode(AstNodeLike):
    """
    Unprocessed type node that is used to represents an unknown type in the AST.

    Used in order for other nodes to evaluate if they can be used to represent an unknown type.
    """

    alias __name__ = "UnprocessedType"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        """Other nodes must consume this node, so we return False."""
        return False

    @staticmethod
    fn make_unprocessed_type_json_object(
        var qual_type: String,
    ) raises -> Object:
        var json_object = Object()
        json_object["id"] = Self.make_object_id(json_object)
        json_object["kind"] = Self.__name__
        json_object["inner"] = Array()
        json_object["qualifiers"] = ""
        json_object["type"] = Object()
        json_object["type"].object()["qualType"] = String(qual_type)
        return json_object^

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
