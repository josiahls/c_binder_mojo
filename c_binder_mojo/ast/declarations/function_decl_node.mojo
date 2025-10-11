"""




# Variadic Function Parameter Support

Variadic argument bindings are not currently possible. The va_list is not part 
of the function signature in C, but rather a compiler-specific pointer accessed 
via va_list, va_start and related macros.

For reference, other systems languages like Rust do not support variadic 
arguments (see https://github.com/rust-lang/rust/issues/44930). While this would 
be a useful feature, the lack of support in more mature systems languages 
indicates significant technical challenges. 

Related Rust RFC: https://github.com/rust-lang/rust/pull/57760

Additional discussion of the technical challenges can be 
found at: https://github.com/rust-lang/rust/issues/44930#issuecomment-374609300

Example of desired variadic function binding syntax that is not currently possible:
The va_list pointer in C cannot be directly accessed or manipulated from Mojo
since it relies on compiler-specific implementation details.

```mojo
@export("count_variadic_args", ABI="C") # Not supported
alias count_variadic_args = fn (n: ffi.c_int, *args: ffi.c_int) -> ffi.c_int
alias variadic_args_node_count_variadic_args = ExternalFunction[
    'count_variadic_args', 
    count_variadic_args
]

@fieldwise_init
struct variadic_args_node(Copyable, Movable):
    var lib: DLHandle
    var count_variadic_args: variadic_args_node_count_variadic_args.type

    fn __init__(out self):
...
            self.lib = DLHandle(_get_lib_path('libvariadic_args_node.so'))
...
        self.count_variadic_args = variadic_args_node_count_variadic_args\
            .load(self.lib)
```
Variadic functions are not currently supported in c_binder_mojo.
This is because there is no reliable way to pass unnamed argument lists by value 
in C. See: https://en.wikipedia.org/wiki/Stdarg.h
Best practice is for C APIs to provide equivalent functions that accept va_list 
arguments instead of variadic arguments. Since c_binder_mojo focuses on binding 
to existing C code that cannot be modified, variadic functions must be disabled.
A potential future solution could involve exposing the va_list pointer directly 
through a C API, but this would only work for C code that can be modified.
"""

# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object, to_string, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.extensions.return_decl_node import ReturnDeclNode
from c_binder_mojo.ast.extensions.unprocessed_type_node import (
    UnprocessedTypeNode,
)
from c_binder_mojo.ast.declarations.parm_var_decl_node import ParmVarDeclNode
from c_binder_mojo.ast.compound_stmt_node import CompoundStmtNode

from c_binder_mojo.ast.comments.full_comment_node import FullCommentNode
from c_binder_mojo.ast.variadic_args_node import VariadicArgsNode
from c_binder_mojo.ast.attributes import AstAttributeVariant
from c_binder_mojo.ast.comments import AstCommentVariant
from c_binder_mojo.ast.symbol_registry import SymbolRegistry, SymbolTypes


struct FunctionDeclNode(AstNodeLike):
    alias __name__ = "FunctionDecl"

    var storage_class: String
    var function_name: String
    var function_mangled_name: String
    var function_type: String
    var is_disabled: Bool
    var is_parm_var_decl: Bool
    var is_variadic: Bool
    var level: Int
    var has_pass_by_value_record: Bool
    var in_field_decl: Bool
    var _symbol_registry: SymbolRegistry.ResultType
    var children_: List[AstNode]

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.function_type = ""
        self.is_disabled = False
        self.level = level
        self.is_parm_var_decl = False
        self.is_variadic = False
        self.has_pass_by_value_record = False
        self.in_field_decl = False
        self._symbol_registry = SymbolRegistry.get_or_create_ptr()
        self.children_ = self.make_children[assert_in=True](json_object, level)
        self.storage_class = self.get_field(json_object, "storageClass")
        self.function_name = self.get_field(json_object, "name")
        self.function_mangled_name = self.get_field(json_object, "mangledName")
        for child in self.children():
            if child.isa[ParmVarDeclNode]():
                if child[ParmVarDeclNode].is_pass_by_value_record:
                    self.is_disabled = True
                    self.has_pass_by_value_record = True
        if "wrappingType" in json_object:
            for wrapping_type in json_object["wrappingType"].array():
                if wrapping_type.string() == ParmVarDeclNode.__name__:
                    self.is_parm_var_decl = True
        if "variadic" in json_object:
            # TODO: Create get_field for Bool type
            self.is_variadic = json_object["variadic"].bool()
            if self.is_variadic:
                self.is_disabled = True
        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.function_type = self.get_field(type_object, "qualType")

    fn set_symbol_name(mut self, symbol_name: String) raises:
        self.function_name = symbol_name
        self._symbol_registry[].add_symbol(
            self.function_name, SymbolTypes.Function
        )

    fn get_symbol_name(self) raises -> String:
        return self.function_name

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

            if String(qual_type[i]) in materialize[open_chars]():
                level += 1
            elif String(qual_type[i]) in materialize[close_chars]():
                level -= 1
        return outer_most_commas^

    @staticmethod
    fn parse_return_type(read qual_type: String) raises -> String:
        var outer_most_paren_begin = Self.outer_most_paren_begin(qual_type)
        return String(qual_type[: outer_most_paren_begin[0]].strip())

    @staticmethod
    fn parse_parm_var_decls(read qual_type: String) raises -> List[Object]:
        # TODO: Handle cases where we have (*const) e.g. a constant function pointer
        var outer_most_paren_begin = Self.outer_most_paren_begin(qual_type)
        # Get the last outer most (, and cut the last )
        var parm_vars = qual_type[outer_most_paren_begin[-1] + 1 : -1]
        var separated_parm_vars = List[String]()
        if "," in parm_vars:
            var outer_most_commas = Self.outer_most_commas(parm_vars)

            for i in range(len(outer_most_commas)):
                if i == 0:
                    separated_parm_vars.append(
                        parm_vars[: outer_most_commas[i]]
                    )
                else:
                    separated_parm_vars.append(
                        parm_vars[
                            outer_most_commas[i - 1] + 1 : outer_most_commas[i]
                        ]
                    )
            separated_parm_vars.append(parm_vars[outer_most_commas[-1] + 1 :])
        else:
            separated_parm_vars.append(parm_vars)

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
            separated_parm_var_decl_types.append(parm_var_decl_type^)

        return separated_parm_var_decl_types^

    @staticmethod
    fn accept_impute(read json_object: Object) raises -> Bool:
        if json_object["kind"] == UnprocessedTypeNode.__name__:
            if "type" in json_object:
                if "qualType" in json_object["type"].object():
                    ref s = json_object["type"].object()["qualType"].string()
                    if " (*)" in s or " *(*)" in s or " (*const)" in s:
                        return True
        elif json_object["kind"] == Self.__name__:
            return True
        return False

    @staticmethod
    fn impute(mut json_object: Object) raises:
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

        if "variadic" in json_object:
            var length = len(json_object["inner"].array())
            var idx = 0
            for ref inner_object in json_object["inner"].array():
                # TODO: Fitler out non-parm var decls.
                if idx == length - 1:
                    inner_object.object()["variadic"] = True
                idx += 1

        return_type_object = Object()
        return_type_object["id"] = "1"
        return_type_object["kind"] = "ReturnDecl"
        return_type_object["type"] = Object()
        return_type_object["type"].object()["returnType"] = return_type
        return_type_object["inner"] = Array()
        if "inner" not in json_object:
            json_object["inner"] = Array()
        json_object["inner"].array().append(return_type_object^)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute(inner_object.object())

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * self.level
        if not just_code:
            s += indent + self.signature() + "\n"

        if self.is_parm_var_decl:
            # s += self.function_name + ": "
            pass
        elif self.in_field_decl:
            pass
        else:
            s += indent + "alias " + self.function_name + " = "

        var return_type: String = ""
        var comment: String = ""
        s += "fn ("
        var n_parm_var_decls = 0
        for child in self.children():
            if child.is_in[*AstCommentVariant.Ts]():
                comment += child.to_string(just_code)
                continue
            if child.is_in[*AstAttributeVariant.Ts]():
                continue

            if child.isa[ReturnDeclNode]():
                return_type = child.to_string(just_code)
            elif child.isa[CompoundStmtNode]():
                # Skip this.
                pass
            elif child.isa[ParmVarDeclNode]() or child.isa[VariadicArgsNode]():
                if n_parm_var_decls > 0:
                    s += ", "
                # if child[ParmVarDeclNode].is_kwarg and not has_kwarg_pos_mix:
                #     has_kwarg_pos_mix = True
                #     s += "/,"
                s += child.to_string(just_code)
                n_parm_var_decls += 1
            else:
                raise Error(
                    "FunctionDeclNode: Unexpected child: "
                    + child.to_string(just_code)
                    + " name: "
                    + child.name()
                )
        s += ")"
        s += " -> " + return_type
        if not self.is_parm_var_decl:
            s += "\n"

        if self.is_variadic:
            comment = (
                "# Note: Binding to c variadic function: "
                + self.function_name
                + "\n"
            )
            comment += (
                "# is not supported yet. Reference `FunctionDeclNode` docs for"
                " more details.\n"
            )
            s = comment + "# " + s.replace("\n", "\n# ") + "\n"
        elif self.has_pass_by_value_record:
            comment = "# Note: Binding to c function: " + self.function_name
            comment += " with pass by value record\n"
            comment += (
                "# is not supported yet. Reference `FunctionDeclNode` docs"
            )
            comment += " for more details.\n"
            s = comment + "# " + s.replace("\n", "\n# ") + "\n"
        elif self.is_disabled:
            comment = "# Forward declaration of " + self.function_name + "\n"
            s = comment + "# " + s.replace("\n", "\n# ") + "\n"

        if comment != "":
            return comment + "\n" + s
        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).unsafe_origin_cast[
            target_origin = __origin_of(self)
        ]()[]
