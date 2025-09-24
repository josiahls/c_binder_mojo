# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct AtomicTypeNode(AstNodeLike):
    alias __name__ = "AtomicType"

    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.children_ = List[AstNode]()
        try:
            if "inner" in json_object:
                for child in json_object["inner"].array():
                    self.children_.append(
                        AstNode.accept_create_from(child.object(), level)
                    )
        except e:
            print("Error creating AtomicTypeNode: ", e)

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        # TODO: Implement mojo amotic wrapping
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
