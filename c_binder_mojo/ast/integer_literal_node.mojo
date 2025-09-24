# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct IntegerLiteralNode(AstNodeLike):
    alias __name__ = "IntegerLiteral"

    var value: String
    var children_: List[AstNode]
    var level: Int

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.children_ = List[AstNode]()
        self.value = ""
        try:
            if "value" in json_object:
                self.value = json_object["value"].string()
        except e:
            print("Error creating IntegerLiteralNode: ", e)

    fn get_value(self) -> Optional[Int]:
        try:
            return Int(self.value)
        except e:
            print("Error getting value from IntegerLiteralNode: ", e)
            return None

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        var indent: String = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"
        for child in self.children():
            s += child.to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
