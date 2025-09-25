# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.nodes import AstNode


alias VERBOSE: Bool = False


trait AstNodeLike(Copyable & Movable):
    alias __name__: String
    """The name of the node as shown in the json. Example: 'EnumDecl' for the 
    `EnumDeclNode` class."""

    # ==========================================================================
    # Conbstructors
    # ==========================================================================

    fn __init__(out self, json_object: Object, level: Int) raises:
        pass

    @staticmethod
    fn create_from(read json_object: Object, read level: Int) raises -> Self:
        return Self(json_object, level)

    # ==========================================================================
    # Acceptors
    # ==========================================================================

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

    # ==========================================================================
    # Utilities and Fields
    # ==========================================================================

    fn signature(self) -> String:
        return "# Node: " + String(Self.__name__) + "()"

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        """Returns a List of AstNodes.

        The concrete implementation should look identical to the following:

        ```
        fn children(ref self) -> ref [self] List[AstNode]:
            return (
                UnsafePointer(to=self.children_)
                .origin_cast[target_origin = __origin_of(self)]()[]
            )
        ```
        The `orgin_cast` is required since traits don't support `var fields`.
        For example:

        `-> ref [self.children_] List[AstNode]`

        Would be the correct implementation however instead we cast the origin
        of the returning `self.children_` to the origin of the `self` to void
        requiring direct field access in trait implementations.
        """

        pass

    # ==========================================================================
    # Static Utilties
    # ==========================================================================

    @staticmethod
    fn impute(mut json_object: Object) raises:
        if "inner" in json_object:
            for ref inner_object in json_object["inner"].array():
                AstNode.impute(inner_object.object())

    @staticmethod
    fn make_object_id(read json_object: Object) -> String:
        return String(UnsafePointer(to=json_object))
