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

    fn __init__(out self, object: Object, level: Int):
        self.value = ""
        self.value_category = ""
        self.type = ""
        self.children_ = List[AstNode]()
        try:
            if "value" in object:
                self.value = object["value"].string()
            if "valueCategory" in object:
                self.value_category = object["valueCategory"].string()
            if "type" in object:
                ref type_object = object["type"].object()
                if "qualType" in type_object:
                    self.type = type_object["qualType"].string()
                else:
                    print(
                        "Error creating ConstantExprNode: ",
                        to_string(type_object.copy()),
                    )
            if "inner" in object:
                for inner_object in object["inner"].array():
                    self.children_.append(
                        AstNode.accept_from_json_object(
                            inner_object.object(), level + 1
                        )
                    )
        except e:
            print("Error creating ConstantExprNode: ", e)

    fn get_value(self) -> Optional[Int]:
        try:
            return Int(self.value)
        except e:
            print("Error getting value from ConstantExprNode: ", e)
            return None

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s: String = ""
        if not just_code:
            s += self.signature() + "\n"
        s += self.value + " "
        for child in self.children_:
            s += child.to_string(just_code)
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
