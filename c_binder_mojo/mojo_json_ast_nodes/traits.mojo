# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules


trait AstNodeLike(ExplicitlyCopyable & Copyable & Movable):
    alias __name__: String

    fn __init__(out self, json_object: Object, level: Int):
        pass

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
        pass

    fn children[
        T: ExplicitlyCopyable & Movable
    ](ref self) -> ref [self] List[T]:
        pass
