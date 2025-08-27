# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode
from c_binder_mojo.typing import TypeMapper


# struct _GlobalFunctionDeclTypeRegistry(Movable):
#     # Mem address and typedef inc name
#     var function_decl_type_registry: List[String]

#     fn __init__(out self):
#         self.function_decl_type_registry = List[String]()


# fn _init_global_function_decl_type_registry() -> (
#     _GlobalFunctionDeclTypeRegistry
# ):
#     return _GlobalFunctionDeclTypeRegistry()


# @always_inline
# fn get_global_function_decl_type_registry() -> (
#     UnsafePointer[_GlobalFunctionDeclTypeRegistry]
# ):
#     return GLOBAL_FUNCTION_DECL_TYPE_REGISTRY.get_or_create_ptr()


# alias GLOBAL_FUNCTION_DECL_TYPE_REGISTRY = _Global[
#     "GLOBAL_FUNCTION_DECL_TYPE_REGISTRY",
#     _GlobalFunctionDeclTypeRegistry,
#     _init_global_function_decl_type_registry,
# ]


struct FunctionDeclNode(JsonNodeAstLike):
    alias __name__ = "FunctionDecl"

    var storage_class: String
    var function_name: String
    var function_mangled_name: String
    var function_type: String
    var is_disabled: Bool
    var level: Int

    var children_: List[JsonAstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.storage_class = ""
        self.function_name = ""
        self.function_mangled_name = ""
        self.function_type = ""
        self.children_ = List[JsonAstNode]()
        self.is_disabled = False
        self.level = level
        try:
            if "storageClass" in object:
                self.storage_class = object["storageClass"].string()
            if "name" in object:
                self.function_name = object["name"].string()
                # if (
                #     self.function_name
                #     in get_global_function_decl_type_registry()[].function_decl_type_registry
                # ):
                #     self.is_disabled = True
                # else:
                #     get_global_function_decl_type_registry()[].function_decl_type_registry.append(
                #         self.function_name
                #     )
            if "mangledName" in object:
                self.function_mangled_name = object["mangledName"].string()
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    self.function_type = type_object["qualType"].string()
                else:
                    print(
                        "Error creating FunctionDeclNode: ",
                        to_string(type_object),
                    )
        except e:
            print("Error creating FunctionDeclNode: ", e)

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Self:
        return Self(json_object, level)

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"
        s += indent + "alias " + self.function_name + " = "
        s += TypeMapper.convert_c_type_to_mojo_type(
            self.function_type, is_fn_decl=True
        )
        s += "\n"

        if self.is_disabled:
            comment = "# Forward declaration of " + self.function_name + "\n"
            s = comment + "# " + s.replace("\n", "\n# ") + "\n"

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
