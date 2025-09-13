# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode


struct SignNode(AstNodeLike):
    alias __name__ = "Sign"

    var children_: List[AstNode]
    var sign: String

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.sign = ""

        try:
            self.sign = json_object["type"].object()["qualType"].string()
            if "inner" in json_object:
                for inner_object in json_object["inner"].array():
                    node = AstNode.accept_from_json_object(
                        inner_object.object(), level
                    )
                    self.children_.append(node^)
        except e:
            print("Error creating SignNode: ", e)

    @staticmethod
    fn accept_impute_json_object(read json_object: Object) raises -> Bool:
        # Check if the builtin type has been imputed by the AstNode sign.
        if json_object["kind"].string() == "BuiltinType":
            qual_type = json_object["type"].object()["qualType"].string()
            if "bool" in qual_type.lower():
                return False
            elif "void" in qual_type.lower():
                return False
            elif "double" in qual_type.lower():
                return False
            elif "float" in qual_type.lower():
                return False
            elif "__clang_sv" in qual_type.lower():
                # Handle via SIMD node.
                return False
            elif "wrappingType" not in json_object:
                return True
            elif Self.__name__ not in json_object["wrappingType"].array():
                return True
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        builtin_type_copy = json_object.copy()
        builtin_qual_type = (
            builtin_type_copy["type"].object()["qualType"].string()
        )
        if "wrappingType" not in builtin_type_copy:
            builtin_type_copy["wrappingType"] = Array()
        builtin_type_copy["type"].object()["_qualType"] = builtin_qual_type

        var sign: String
        if builtin_qual_type.startswith("unsigned "):
            sign = "unsigned"
        elif builtin_qual_type.startswith("__SVU"):
            sign = "unsigned"
        elif builtin_qual_type.startswith("uint"):
            sign = "unsigned"
        else:
            # If signed is missing, we assume signed.
            sign = "signed"

        builtin_qual_type = String(builtin_qual_type.removeprefix(sign + " "))

        builtin_type_copy["wrappingType"].array().append(Self.__name__)
        builtin_type_copy["type"].object()["qualType"] = builtin_qual_type
        json_object["kind"] = "Sign"
        json_object["type"].object()["qualType"] = sign

        if "inner" not in json_object:
            json_object["inner"] = Array()
        json_object["inner"].array().append(builtin_type_copy)
        for ref inner_object in json_object["inner"].array():
            AstNode.impute_json_object(inner_object.object())

    fn to_string(self, just_code: Bool) raises -> String:
        self._to_string_hook()
        var s = String()
        for child in self.children_:
            s += child.to_string(just_code)
        if self.sign == "unsigned":
            if "c_long" in s:
                s = s.replace("c_long", "c_ulong")
            elif s.startswith("Int"):
                s = s.replace("Int", "UInt")
            else:
                raise Error("Unexpected dtype for unsigned: " + s)
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[origin = __origin_of(self)]()[]
        )
