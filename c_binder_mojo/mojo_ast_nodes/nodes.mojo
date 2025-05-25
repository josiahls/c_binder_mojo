# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes import AstNodeVariant
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface


trait NodeAstLike(Copyable & Movable, Stringable):
    alias __name__: String

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) raises -> String:
        ...


@fieldwise_init
struct AstNode(Copyable & Movable & Stringable):
    alias type = AstNodeVariant
    var node: ArcPointer[Self.type]

    @always_inline("nodebug")
    fn __str__(self) -> String:
        """
        Iterates over each type in the variant at compile-time and calls to_string.
        """

        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            # Ts[i] is one of NodeA, NodeB, etc.
            alias T = Self.type.Ts[i]

            # NOTE: Originally was self.node.isa...
            if self.node[].isa[T]():
                # We know node is a T, so get it out:
                # var ref_val = self.node.unsafe_get[T]()  # or node[T]
                # NOTE: Originally was self.node._get_ptr[T]()
                var val_ptr = self.node[]._get_ptr[T]()
                # Now call the trait method:
                return String(val_ptr[])

        # If we somehow never matched (should never happen if the variant covers all):
        print("WARNING: __str__ called on AstNode with no __str__ method")
        return "<unknown type>"

    @always_inline("nodebug")
    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) raises -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return (
                    self.node[]
                    ._get_ptr[T]()[]
                    .to_string(just_code, module_interface)
                )
        print(
            "WARNING: to_string called on AstNode with no to_string method for"
            " node: "
            + self.__str__()
        )
        return "<unknown type>"