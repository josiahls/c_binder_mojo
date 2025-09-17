# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.typing import TypeMapper


struct TypedefDeclNode(AstNodeLike):
    alias __name__ = "TypedefDecl"

    var level: Int
    var children_: List[AstNode]
    var name: String
    var dtype: String
    var is_function_type_def: Bool
    var is_disabled: Bool

    fn __init__(out self, object: Object, level: Int):
        self.level = level
        self.name = ""
        self.dtype = ""
        self.children_ = List[AstNode]()
        self.is_function_type_def = False
        self.is_disabled = False
        try:
            if "name" in object:
                self.name = object["name"].string()
            if "type" in object:
                type_object = object["type"].object()
                if "qualType" in type_object:
                    self.dtype = type_object["qualType"].string()
                    if "(*)" in self.dtype:
                        self.is_function_type_def = True
                else:
                    print(
                        "Error creating TypedefDeclNode: ",
                        to_string(type_object.copy()),
                    )
            if "inner" in object:
                for value in object["inner"].array():
                    self.children_.append(
                        AstNode.accept_from_json_object(
                            value.object(), level + 1
                        )
                    )
            else:
                print("Error creating TypedefDeclNode: ", object)
        except e:
            print("Error creating TypedefDeclNode: ", e)

    fn signature(self) -> String:
        return "Node: " + self.__name__ + "(" + self.name + ")"

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        var indent = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"

        s += indent + "alias " + self.name + " = "
        # NOTE: We don't iterate children if this is a function type def since
        # we have machinary to parse this directly.
        if self.is_function_type_def:
            s += TypeMapper.convert_c_type_to_mojo_type(self.dtype) + "\n"
        else:
            for node in self.children_:
                s += node.to_string(False) + "\n"

        if self.is_disabled:
            comment = "# Forward declaration of " + self.name + "\n"
            s = comment + "# " + s.replace("\n", "\n# ") + "\n"

        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
