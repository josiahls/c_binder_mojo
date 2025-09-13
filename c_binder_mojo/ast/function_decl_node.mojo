# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.return_decl_node import ReturnDeclNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode
from c_binder_mojo.ast.parm_var_decl_node import ParmVarDeclNode


struct FunctionDeclNode(AstNodeLike):
    alias __name__ = "FunctionDecl"

    var storage_class: String
    var function_name: String
    var function_mangled_name: String
    var function_type: String
    var is_disabled: Bool
    var is_parm_var_decl: Bool
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
        self.is_parm_var_decl = False
        try:
            if "storageClass" in object:
                self.storage_class = object["storageClass"].string()
            if "name" in object:
                self.function_name = object["name"].string()
            if "mangledName" in object:
                self.function_mangled_name = object["mangledName"].string()
            if "wrappingType" in object:
                for wrapping_type in object["wrappingType"].array():
                    if wrapping_type.string() == ParmVarDeclNode.__name__:
                        self.is_parm_var_decl = True
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
    fn outer_most_paren_begin(read qual_type: String) raises -> List[Int]:
        var outer_most_paren_begin = List[Int]()
        var level = -1
        for i in range(len(qual_type)):
            if qual_type[i] == "(":
                if level == -1:
                    outer_most_paren_begin.append(i)
                level += 1
            elif qual_type[i] == ")":
                level -= 1

        return outer_most_paren_begin^

    @staticmethod
    fn outer_most_commas(read qual_type: String) raises -> List[Int]:
        var outer_most_commas = List[Int]()
        var level = -1
        alias open_chars: List[String] = ["(", "[", "{"]
        alias close_chars: List[String] = [")", "]", "}"]
        for i in range(len(qual_type)):
            if qual_type[i] == "," and level == -1:
                outer_most_commas.append(i)

            if String(qual_type[i]) in open_chars:
                level += 1
            elif String(qual_type[i]) in close_chars:
                level -= 1
        return outer_most_commas^

    @staticmethod
    fn parse_return_type(read qual_type: String) raises -> String:
        var outer_most_paren_begin = Self.outer_most_paren_begin(qual_type)
        return String(qual_type[: outer_most_paren_begin[0]].strip())

    @staticmethod
    fn parse_parm_var_decls(read qual_type: String) raises -> List[Object]:
        var outer_most_paren_begin = Self.outer_most_paren_begin(qual_type)
        # Get the last outer most (, and cut the last )
        var parm_vars = qual_type[outer_most_paren_begin[-1] + 1 : -1]
        var outer_most_commas = Self.outer_most_commas(parm_vars)

        var separated_parm_vars = List[String]()
        for i in range(len(outer_most_commas)):
            if i == 0:
                separated_parm_vars.append(parm_vars[: outer_most_commas[i]])
            else:
                separated_parm_vars.append(
                    parm_vars[
                        outer_most_commas[i - 1] + 1 : outer_most_commas[i]
                    ]
                )
        separated_parm_vars.append(parm_vars[outer_most_commas[-1] + 1 :])

        var separated_parm_var_decl_types = List[Object]()
        for separated_parm_var in separated_parm_vars:
            var parm_var_decl_type = Object()
            parm_var_decl_type["name"] = ""
            parm_var_decl_type["kind"] = "ParmVarDecl"
            parm_var_decl_type["inner"] = Array()
            parm_var_decl_type["loc"] = Object()
            parm_var_decl_type["range"] = Object()
            parm_var_decl_type["type"] = Object()
            parm_var_decl_type["type"].object()["qualType"] = String(
                separated_parm_var.strip()
            )
            separated_parm_var_decl_types.append(parm_var_decl_type)

        return separated_parm_var_decl_types^

    @staticmethod
    fn accept_impute_json_object(read json_object: Object) raises -> Bool:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    ref s = json_object["type"].object()["qualType"].string()
                    if " (*)" in s or " *(*)" in s:
                        return True
        elif json_object["kind"] == Self.__name__:
            return True
        print(
            "FunctionDeclNode: accept_impute_json_object: ",
            json_object["kind"].string(),
        )
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            json_object["kind"] = Self.__name__
            json_object["inner"] = Array()
            var parm_var_decls = Self.parse_parm_var_decls(
                json_object["type"].object()["qualType"].string()
            )
            for parm_var_decl in parm_var_decls:
                # TODO: Update the stdlib to use drain instead. We shouldn't need to copy here.
                json_object["inner"].array().append(parm_var_decl.copy())

        function_qual_type = json_object["type"].object()["qualType"].string()
        var return_type = Self.parse_return_type(function_qual_type)

        return_type_object = Object()
        return_type_object["id"] = "1"
        return_type_object["kind"] = "ReturnDecl"
        return_type_object["type"] = Object()
        return_type_object["type"].object()["returnType"] = return_type
        return_type_object["inner"] = Array()
        if "inner" not in json_object:
            raise Error("inner not found in json_object")
        json_object["inner"].array().append(return_type_object)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        var indent = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"

        if self.is_parm_var_decl:
            s += self.function_name + ": "
        else:
            s += indent + "alias " + self.function_name + " = "

        var return_type: String = ""
        s += "fn ("
        var n_parm_var_decls = 0
        for child in self.children_:
            if child.isa[ReturnDeclNode]():
                return_type = child.to_string(just_code)
            else:
                if n_parm_var_decls > 0:
                    s += ", "
                s += child.to_string(just_code)
                n_parm_var_decls += 1
        s += ")"
        s += " -> " + return_type
        if not self.is_parm_var_decl:
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
