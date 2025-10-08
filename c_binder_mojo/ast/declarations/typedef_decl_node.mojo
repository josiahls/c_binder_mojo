"""
TypedefDeclNode - C typedef declaration handling for Mojo bindings

In C, you can have multiple record types with the same name differentiated by their tag:
- `union RecordName { ... }`  
- `struct RecordName { ... }`
- `enum RecordName { ... }`

To access these without the tag prefix, C uses typedef:
- `typedef struct RecordName RecordName;` -> allows `RecordName` instead of `struct RecordName`
- `typedef union RecordName RecordName;` -> allows `RecordName` instead of `union RecordName`  
- `typedef enum RecordName RecordName;` -> allows `RecordName` instead of `enum RecordName`

In Mojo, this concept doesn't exist. `struct MojoType` is immediately accessible as `MojoType`.
Therefore, typedef declarations serve to create aliases that remove the C tag prefixing,
making C types accessible in a Mojo-idiomatic way.

The typedef also handles function pointer typedefs and other complex type aliases.
"""

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
    alias MaybeRefersAnonymous = True

    var level: Int
    var children_: List[AstNode]
    var name: String
    var dtype: String
    var is_function_type_def: Bool
    var is_disabled: Bool

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.level = level
        self.name = self.get_field[assert_in=True](json_object, "name")
        self.dtype = ""
        self.is_function_type_def = False
        self.is_disabled = False

        if "type" in json_object:
            ref type_object = json_object["type"].object()
            self.dtype = self.get_field(type_object, "qualType")
            if "(*)" in self.dtype:
                self.is_function_type_def = True

        self.children_ = self.make_children[assert_in=True](json_object, level)

    fn signature(self) -> String:
        return "Node: " + self.__name__ + "(" + self.name + ")"

    fn get_symbol_name(self) raises -> String:
        return self.name

    fn set_disabled(mut self, disabled: Bool = True) raises:
        self.is_disabled = disabled

    fn get_disabled(ref self) raises -> Bool:
        return self.is_disabled

    fn to_string(self, just_code: Bool) raises -> String:
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

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
