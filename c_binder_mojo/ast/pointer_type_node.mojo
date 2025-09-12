# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.typing import TypeMapper


struct PointerTypeNode(AstNodeLike):
    alias __name__ = "PointerType"

    var children_: List[AstNode]
    var qualifiers: String

    fn __init__(out self, object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.qualifiers = ""
        try:
            if "inner" in object:
                for child in object["inner"].array():
                    node = AstNode.accept_from_json_object(child.object(), 0)
                    if node.isa[QualTypeNode]():
                        self.qualifiers = node[QualTypeNode].qualifiers
                    self.children_.append(node^)
        except e:
            print("Error creating PointerTypeNode: ", e)

    @staticmethod
    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var dtype = String()
        # NOTE: We don't indent since this is typically part of a more complex type.
        for child in self.children_:
            dtype += child.to_string(just_code)

        # NOTE: decomposition of child types, the * is from right to left.
        dtype = "UnsafePointer[" + dtype
        if self.qualifiers == "const":
            dtype += ", mut=False"
        dtype += "]"
        return dtype

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
