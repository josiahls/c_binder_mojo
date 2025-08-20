# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


struct ConstantExprNode(JsonNodeAstLike):
    alias __name__ = "ConstantExpr"

    var value: String
    var value_category: String
    var type: String
    var children_: List[JsonAstNode]

    fn __init__(out self, object: Object, level: Int):
        self.value = ""
        self.value_category = ""
        self.type = ""
        self.children_ = List[JsonAstNode]()
        try:
            if "value" in object:
                self.value = object["value"].string()
            if "valueCategory" in object:
                self.value_category = object["valueCategory"].string()
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    self.type = type_object["qualType"].string()
                else:
                    print(
                        "Error creating ConstantExprNode: ",
                        to_string(type_object),
                    )
            if "inner" in object:
                for inner_object in object["inner"].array():
                    self.children_.append(
                        JsonAstNode.accept_from_json_object(
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

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> JsonAstNode:
        return JsonAstNode(Self(json_object, level))

    fn to_string(self, just_code: Bool) raises -> String:
        var s: String = ""
        if not just_code:
            s += self.signature() + "\n"
        s += self.value + " "
        for child in self.children_:
            s += child.to_string(just_code)
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[JsonAstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]
