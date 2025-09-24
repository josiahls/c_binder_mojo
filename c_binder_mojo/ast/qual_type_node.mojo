# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


alias QUALIFIERS: List[String] = ["const", "restrict", "volatile"]


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
                        AstNode.accept_create_from(
                            inner_object.object(), level + 1
                        )
                    )
        except e:
            print("Error creating QualTypeNode: ", e)

    @staticmethod
    fn accept_impute_json_object(read json_object: Object) raises -> Bool:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    ref s = json_object["type"].object()["qualType"].string()
                    for qualifier in materialize[QUALIFIERS]():
                        # TODO: This is really only going to be true
                        # for restrict keyword since that appears at the end.
                        # const and volatile usually appear at the beginning.
                        # Not sure where this should be handled since
                        # its easier to just have PointerTypeNode handle it
                        # and self configure accordingly.
                        if s.endswith(qualifier):
                            return True

                    # If it is not a pointer, then we need to check if the qualifier is at the beginning.
                    if not s.endswith("*"):
                        for qualifier in materialize[QUALIFIERS]():
                            if s.startswith(qualifier):
                                return True
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        var s = json_object["type"].object()["qualType"].string().copy()
        json_object["id"] = ""
        json_object["kind"] = Self.__name__
        json_object["inner"] = Array()
        json_object["qualifiers"] = ""
        for qualifier in materialize[QUALIFIERS]():
            if s.endswith(qualifier):
                if json_object["qualifiers"].string() == "":
                    json_object["qualifiers"] = qualifier + " "
                else:
                    json_object["qualifiers"] = (
                        json_object["qualifiers"].string() + qualifier + " "
                    )
                s = String(s.removesuffix(qualifier))
            elif s.startswith(qualifier):
                if json_object["qualifiers"].string() == "":
                    json_object["qualifiers"] = qualifier + " "
                else:
                    json_object["qualifiers"] = (
                        json_object["qualifiers"].string() + qualifier + " "
                    )
                s = String(s.removeprefix(qualifier))
            # elif s.startswith(qualifier):
            #     json_object["qualifiers"] += qualifier + " "
        json_object["type"] = Object()
        json_object["type"].object()["_qualType"] = s.copy()
        json_object["type"].object()["qualType"] = s.copy()
        var unprocessed_type_json_object = (
            UnprocessedTypeNode.make_unprocessed_type_json_object(
                String(s.strip())
            )
        )
        json_object["inner"].array().append(unprocessed_type_json_object^)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s: String = ""
        for child in self.children_:
            s += child.to_string(just_code)
        # s += " # QualType: " + self.qualifiers
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
