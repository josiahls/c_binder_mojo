# Native Mojo Modules

# Third Party Mojo Modules
from emberjson import Object, Array, to_string

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.ast.custom.unprocessed_type_node import UnprocessedTypeNode


struct SignNode(AstNodeLike):
    alias __name__ = "Sign"

    var children_: List[AstNode]
    var sign: String
    var id: String

    fn __init__(out self, json_object: Object, level: Int):
        self.children_ = List[AstNode]()
        self.sign = ""
        self.id = ""
        try:
            if "type" not in json_object:
                raise Error(
                    "'type' not found in json_object: "
                    + to_string(json_object.copy())
                )
            if "qualType" not in json_object["type"].object():
                raise Error(
                    "'qualType' not found in json_object['type']: "
                    + to_string(json_object["type"].object())
                )
            self.sign = json_object["type"].object()["qualType"].string()
            if "id" not in json_object:
                raise Error(
                    "'id' not found in json_object: "
                    + to_string(json_object.copy())
                )
            self.id = json_object["id"].string()
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
        # print('checking sign node for json_object: ', to_string(json_object.copy()))
        if json_object["kind"].string() == "BuiltinType":
            qual_type = json_object["type"].object()["qualType"].string()
            if "wrappingType" in json_object:
                if Self.__name__ in json_object["wrappingType"].array():
                    return False

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
            elif qual_type.startswith("unsigned "):
                return True
            elif qual_type.startswith("signed "):
                return True
            elif qual_type.startswith("uint"):
                return True
            elif qual_type.startswith("__SVU"):
                return True
        elif json_object["kind"] == UnprocessedTypeNode.__name__:
            qual_type = json_object["type"].object()["qualType"].string()
            qual_type = json_object["type"].object()["qualType"].string()
            if "wrappingType" in json_object:
                if Self.__name__ in json_object["wrappingType"].array():
                    return False

            if qual_type.startswith("unsigned "):
                return True
            elif qual_type.startswith("signed "):
                return True
            elif qual_type.startswith("uint"):
                return True
            elif qual_type.startswith("__SVU"):
                return True
        # print('sign node not accepted')
        return False

    @staticmethod
    fn impute_json_object(mut json_object: Object) raises:
        new_json_object = json_object.copy()
        new_json_object["id"] = String(UnsafePointer(to=new_json_object))

        qual_type = new_json_object["type"].object()["qualType"].string()
        if "wrappingType" not in new_json_object:
            new_json_object["wrappingType"] = Array()
        new_json_object["type"].object()["_qualType"] = qual_type

        var sign: String
        if qual_type.startswith("unsigned "):
            sign = "unsigned"
        elif qual_type.startswith("__SVU"):
            sign = "unsigned"
        elif qual_type.startswith("uint"):
            sign = "unsigned"
        else:
            # If signed is missing, we assume signed.
            sign = "signed"

        qual_type = String(qual_type.removeprefix(sign + " "))

        new_json_object["wrappingType"].array().append(Self.__name__)
        new_json_object["type"].object()["qualType"] = qual_type
        json_object["kind"] = "Sign"
        json_object["type"].object()["qualType"] = sign

        if "inner" not in json_object:
            json_object["inner"] = Array()
        json_object["inner"].array().append(new_json_object)
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
                pass  # Assuming this is a sugared type that doesn't require a sign.
            # else:
            #     raise Error(
            #         "Unexpected dtype for unsigned: " + s + " id: " + self.id
            #     )
        return s

    fn children[
        T: Copyable & Movable = AstNodeVariant
    ](ref self: Self) -> ref [self] List[T]:
        return (
            UnsafePointer(to=self.children_)
            .bitcast[List[T]]()
            .origin_cast[target_origin = __origin_of(self)]()[]
        )
