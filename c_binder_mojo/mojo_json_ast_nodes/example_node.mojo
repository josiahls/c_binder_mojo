# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode


struct ExampleNode(AstNodeLike):
    alias __name__ = "Example"

    var children_: List[AstNode]

    fn __init__(out self):
        self.children_ = List[AstNode]()

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Self:
        return Self()

    fn to_string(self, just_code: Bool) raises -> String:
        return self.signature()

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"

    fn children[
        T: ExplicitlyCopyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
