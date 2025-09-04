# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules


alias VERBOSE: Bool = False


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
        @parameter
        if VERBOSE:
            print("creating " + String(Self.__name__) + " from json object")
        obj = Self(json_object, level)

        @parameter
        if VERBOSE:
            print("created " + String(Self.__name__) + " from json object: ")
        return obj

    fn signature(self) -> String:
        return "# Node: " + String(Self.__name__) + "()"

    fn _to_string_hook(self):
        @parameter
        if VERBOSE:
            print("to_string hook for " + String(Self.__name__))

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        return self.signature()

    fn children[
        T: ExplicitlyCopyable & Movable
    ](ref self) -> ref [self] List[T]:
        pass
