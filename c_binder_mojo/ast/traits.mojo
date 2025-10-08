# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.nodes import AstNode


trait AstNodeLike(Copyable & Movable):
    alias __name__: String
    """The name of the node as shown in the json. Example: 'EnumDecl' for the 
    `EnumDeclNode` class."""

    alias MaybeAnonymous = False
    """Whether a node can have an anonymous representation"""

    alias MaybeHasAnonymous = False
    """Whether a node can have an anonymous representations as children."""

    alias MaybeRefersAnonymous = False
    """Whether a node can refer to an anonymous representation"""

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

    fn set_symbol_name(mut self, symbol_name: String) raises:
        raise Error(Self.__name__, ": set_symbol_name is not implemented")

    fn get_symbol_name(self) raises -> String:
        raise Error(Self.__name__, ": get_symbol_name is not implemented")

    fn set_disabled(mut self, disable: Bool = True) raises:
        raise Error(Self.__name__, ": set_disabled is not implemented")

    fn get_disabled(ref self) raises -> Bool:
        raise Error(Self.__name__, ": get_disabled is not implemented")

    fn signature(self) -> String:
        return "# Node: " + String(Self.__name__) + "()"

    fn children_to_string(self, just_code: Bool) raises -> String:
        var s = String()
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn to_string(self, just_code: Bool) raises -> String:
        return self.children_to_string(just_code)

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
    # Static Utilties Json
    # ==========================================================================

    @staticmethod
    fn is_anonymous(read json_object: Object) raises -> Bool:
        debug_assert(
            json_object["kind"].string() == Self.__name__,
            "json_object['kind'].string() == ",
            json_object["kind"].string(),
            " != ",
            Self.__name__,
        )
        return False

    @staticmethod
    fn get_field[
        assert_in: Bool = False
    ](read json_object: Object, read key: String) raises -> String:
        if assert_in:
            Self.assert_in(key, json_object)
        else:
            if key not in json_object:
                return ""

        return json_object[key].string()

    @staticmethod
    fn get_field_bool[
        assert_in: Bool = False
    ](read json_object: Object, read key: String) raises -> Bool:
        if assert_in:
            Self.assert_in(key, json_object)
        else:
            if key not in json_object:
                return False

        return json_object[key].bool()

    @staticmethod
    fn assert_in(read key: String, read json_object: Object) raises:
        if key not in json_object:
            raise Error(
                Self.__name__,
                ": `",
                key,
                "` not found in json_object: ",
                to_string(json_object.copy()),
            )

    @staticmethod
    fn make_children[
        assert_in: Bool = False
    ](read json_object: Object, level: Int,) raises -> List[AstNode]:
        children_ = List[AstNode]()

        @parameter
        if assert_in:
            Self.assert_in("inner", json_object)

        if "inner" in json_object:
            for inner_object in json_object["inner"].array():
                if len(inner_object.object()) == 0:
                    continue
                var node = AstNode.accept_create_from(
                    inner_object.object(), level
                )
                children_.append(node^)
        return children_^

    # ==========================================================================
    # Static Utilties
    # ==========================================================================

    @staticmethod
    fn impute(mut json_object: Object) raises:
        if "inner" in json_object:
            for ref inner_object in json_object["inner"].array():
                # Note: We don't process empty inner objects.
                if len(inner_object.object()) == 0:
                    continue
                AstNode.impute(inner_object.object())

    @staticmethod
    fn make_object_id(read json_object: Object) -> String:
        return String(UnsafePointer(to=json_object))
