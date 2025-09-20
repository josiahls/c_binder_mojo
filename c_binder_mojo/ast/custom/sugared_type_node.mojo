# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


struct SugaredTypeNode(AstNodeLike):
    alias __name__ = "SugaredType"

    var qual_type: String
    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.qual_type = ""
        try:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    self.qual_type = (
                        json_object["type"].object()["qualType"].string()
                    )
                    if " " in self.qual_type:
                        raise Error(
                            "SugaredTypeNode: qual_type: ",
                            self.qual_type,
                            (
                                " has a space in it, which is not allowed and"
                                " implies that there is a new node that needs"
                                " to be created to handle this."
                            ),
                            to_string(json_object.copy()),
                        )
        except e:
            print("Error creating SugaredTypeNode: ", e)

    @staticmethod
    fn accept_impute_json_object(read json_object: Object) raises -> Bool:
        """
        Assmes that BuiltinTypeNode or any of the other nodes have failed to consume the json object.

        The assumption is that this is a type that is being defined else where.
        """

        if json_object["kind"].string() == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    return True
            raise Error(
                "SugaredTypeNode: failed to consume: ",
                to_string(json_object.copy()),
                (
                    " there is likely a bug since this should be the last node,"
                    " before PlaceHolderNode "
                ),
            )
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        json_object["kind"] = Self.__name__

    fn to_string(self, just_code: Bool) raises -> String:
        if self.qual_type == "":
            raise Error("SugaredTypeNode: qual_type is empty")
        return self.qual_type

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
