# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct SignNode(AstNodeLike):
    alias __name__ = "Sign"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()

    @staticmethod
    fn accept_from_json_object(read json_object: Object) raises -> Bool:
        if json_object["kind"].string() == Self.__name__:
            return True

        # Check if the builtin type has been imputed by the AstNode sign.
        if json_object["kind"].string() == "BuiltinType":
            print(
                "checking if builtin type has been imputed by the AstNode sign"
            )
            if "wrappingType" not in json_object:
                return True
            if Self.__name__ not in json_object["wrappingType"].array():
                print("accepting json object for sign node because BuiltinType")
                return True
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        if json_object["kind"].string() == "BuiltinType":
            builtin_type_copy = json_object.copy()
            if "wrappingType" not in builtin_type_copy:
                builtin_type_copy["wrappingType"] = Array()

            builtin_type_copy["wrappingType"].array().append(Self.__name__)
            json_object["kind"] = "Sign"

            if "inner" not in json_object:
                json_object["inner"] = Array()
            json_object["inner"].array().append(builtin_type_copy)
            for ref inner_object in json_object["inner"].array():
                AstNode.impute_json_object(inner_object.object())

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
