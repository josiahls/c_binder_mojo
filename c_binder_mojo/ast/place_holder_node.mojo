# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct PlaceHolderNode(AstNodeLike):
    alias __name__ = "PlaceHolder"

    var nodes: List[AstNode]
    var level: Int
    var json_string: String
    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.nodes = List[AstNode]()
        self.level = level
        self.json_string = to_string(object.copy())
        self.children_ = List[AstNode]()
        if "inner" in object:
            try:
                for value in object["inner"].array():
                    self.nodes.append(
                        AstNode.accept_create_from(value.object(), level + 1)
                    )
            except e:
                print("Error creating PlaceHolderNode: ", e)
                print(to_string(object.copy()))

    @staticmethod
    fn accept_create_from(read json_object: Object) raises -> Bool:
        return True

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * self.level
        s += indent + "# " + self.signature() + "\n"
        s += indent + "# " + self.json_string + "\n"
        # for node in self.nodes:
        #     s += node.to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
