# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import AstNodeLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import AstNode
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


struct FunctionDeclNode(AstNodeLike):
    alias __name__ = "FunctionDecl"

    var storage_class: String
    var function_name: String
    var function_mangled_name: String
    var function_type: String
    var is_disabled: Bool
    var level: Int

    var children_: List[AstNode]

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.storage_class = ""
        self.function_name = ""
        self.function_mangled_name = ""
        self.function_type = ""
        self.children_ = List[AstNode]()
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

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
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

    fn children[
        T: ExplicitlyCopyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
