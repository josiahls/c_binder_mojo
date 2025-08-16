# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode
from c_binder_mojo.typing import TypeMapper


struct BuiltinTypeNode(JsonNodeAstLike):
    alias __name__ = "BuiltinType"

    var level: Int
    var dtype: String

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.dtype = ""
        try:
            if "type" in object:
                var type_object = object["type"].object()
                if "qualType" in type_object:
                    self.dtype = type_object["qualType"].string()
                else:
                    print("Error creating BuiltinTypeNode: ", to_string(object))
        except e:
            print("Error creating BuiltinTypeNode: ", e)

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
        var s = String()
        var dtype = TypeMapper.convert_c_type_to_mojo_type(self.dtype)
        # Builtin doesn't indent since it is typically composed with large types.
        s += dtype
        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "(" + self.dtype + ")"

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[JsonAstNode]:
        # Create an unsafe pointer to the member, then cast the origin
        # NOTE: this node does not have any children, so it will return an empty list

        # TODO: This is too complicated. We should just have this as a field in thsi node
        # so the origins are standard. I have no idea if we do a var somelist = List[JsonAstNode]()
        # whether it will get removed after this funciton call.
        return UnsafePointer[mut=mut](to=List[JsonAstNode]()).origin_cast[
            origin = __origin_of(self)
        ]()[]
