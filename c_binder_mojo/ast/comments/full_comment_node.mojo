# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.comments import CommentsSubsetName


struct FullCommentNode(AstNodeLike):
    alias __name__ = "FullComment"

    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, json_object: Object, level: Int) raises:
        # NOTE: FullCommentNode's are typically children of an assicated node.
        # These should be on the same level as the associated node.
        self.level = level
        if self.level > 0:
            self.level = self.level - 1
        self.children_ = self.make_children[assert_in=True](
            json_object, self.level
        )

    fn get_subset_name(self) raises -> StaticString:
        return CommentsSubsetName

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
