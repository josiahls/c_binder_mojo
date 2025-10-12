# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.attributes import AttributesSubsetName


struct AllocAlignAttrNode(AstNodeLike):
    """
    Node for alloc align attributes.

    Note: We will need to revisit this if this attr appears on function or struct declarations.
    """

    alias __name__ = "AllocAlignAttr"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = List[AstNode]()

    fn get_subset_name(self) raises -> StaticString:
        return AttributesSubsetName

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
