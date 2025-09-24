# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.nodes import AstNode


alias VERBOSE: Bool = False


trait AstNodeLike(Copyable & Movable):
    alias __name__: String

    fn __init__(out self, json_object: Object, level: Int):
        pass

    @staticmethod
    fn accept_create_from(read json_object: Object) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        """Whether this node should accupt and update the json object.

        Default is True assuming that the default `impute` is
        being used, which allows for traversing the AST.
        """
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn impute(mut json_object: Object) raises:
        if "inner" in json_object:
            for ref inner_object in json_object["inner"].array():
                AstNode.impute(inner_object.object())

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Self:
        @parameter
        if VERBOSE:
            print("creating " + String(Self.__name__) + " from json object")
        var obj = Self(json_object, level)

        @parameter
        if VERBOSE:
            print("created " + String(Self.__name__) + " from json object: ")
        return obj^

    fn signature(self) -> String:
        return "# Node: " + String(Self.__name__) + "()"

    fn _to_string_hook(self):
        @parameter
        if VERBOSE:
            print("to_string hook for " + String(Self.__name__))

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        return self.signature()

    @staticmethod
    fn make_object_id(read object: Object) -> String:
        return String(UnsafePointer(to=object))

    fn children[T: Copyable & Movable](ref self) -> ref [self] List[T]:
        pass
