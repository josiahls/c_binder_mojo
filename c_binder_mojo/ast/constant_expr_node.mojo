# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct ConstantExprNode(AstNodeLike):
    alias __name__ = "ConstantExpr"

    var value: String
    var value_category: String
    var type: String
    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.type = ""
        self.value = self.get_field(json_object, "value")
        self.value_category = self.get_field(json_object, "valueCategory")
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.type = self.get_field(type_object, "qualType")
        self.children_ = self.make_children[assert_in=True](
            json_object, level + 1
        )

    fn get_value(self) -> Optional[Int]:
        try:
            return Int(self.value)
        except e:
            print("Error getting value from ConstantExprNode: ", e)
            return None

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        if not just_code:
            s += self.signature() + "\n"
        s += self.value + " "
        s += self.children_to_string(just_code)
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
