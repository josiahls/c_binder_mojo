# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode

# from c_binder_mojo.typing import TypeMapper
from c_binder_mojo.ast.custom.return_decl_node import ReturnDeclNode


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
            if "inner" in object:
                for inner_object in object["inner"].array():
                    node = AstNode.accept_from_json_object(
                        inner_object.object(), level
                    )
                    self.children_.append(node^)
        except e:
            print("Error creating FunctionDeclNode: ", e)

    @staticmethod
    fn parse_return_type(read qual_type: String) raises -> String:
        var outer_most_paran_begin = List[Int]()

        var level = -1
        for i in range(len(qual_type)):
            if qual_type[i] == "(":
                level += 1
            elif qual_type[i] == ")":
                level -= 1
            if level == 0:
                outer_most_paran_begin.append(i)
                break

        return String(qual_type[: outer_most_paran_begin[-1]].strip())

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        function_qual_type = json_object["type"].object()["qualType"].string()
        var return_type = Self.parse_return_type(function_qual_type)

        return_type_object = Object()
        return_type_object["id"] = "1"
        return_type_object["kind"] = "ReturnDecl"
        return_type_object["type"] = Object()
        return_type_object["type"].object()["returnType"] = return_type
        return_type_object["inner"] = Array()
        json_object["inner"].array().append(return_type_object)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        var indent = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"
        s += indent + "alias " + self.function_name + " = "
        # s += TypeMapper.convert_c_type_to_mojo_type(
        #     self.function_type, is_fn_decl=True
        # )
        var return_type: String = ""
        s += "fn ("
        for child in self.children_:
            if child.isa[ReturnDeclNode]():
                return_type = child.to_string(just_code)
            else:
                s += child.to_string(just_code)
        s += ")"
        s += " -> " + return_type
        s += "\n"

        if self.is_disabled:
            comment = "# Forward declaration of " + self.function_name + "\n"
            s = comment + "# " + s.replace("\n", "\n# ") + "\n"

        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
