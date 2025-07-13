# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    MessageableEnum,
    NodeIndices,
    TokenFlow,
    NodeState,
)
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface
from c_binder_mojo.mojo_ast_nodes import AstNodeVariant
from c_binder_mojo.mojo_ast_nodes.place_holder_node import PlaceHolderNode
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry, AstEntries


fn string_children(
    node: AstNode,
    just_code: Bool,
    module_interface: ModuleInterface,
    indent_level: Int,
) -> String:
    """Converts children to string with proper indentation and line breaks.

    Args:
        node: The node to convert to a string.
        just_code: If True, outputs only code and comments. If False, includes node metadata
            with '>>>' separator to show node ownership.
        module_interface: The tree interface to use for the node.
    """
    var s = String()
    for child_idx in node.indicies().child_idxs:
        var child = module_interface.nodes()[][child_idx]
        try:
            s += child.to_string(just_code, module_interface, indent_level)
        except Exception:
            print(
                "WARNING: error converting child to string:"
                + child.name(include_sig=True)
            )
    return s


fn default_to_string(
    node: AstNode,
    module_interface: ModuleInterface,
    just_code: Bool = False,
    indent_level: Int = 0,
    children_indent_level: Int = 0,
    space_before_code: Bool = False,
    newline_before_ast_entries: Bool = False,
    newline_before_children: Bool = False,
    newline_after_children: Bool = False,
    newline_after_tail: Bool = False,
    indent_before_ast_entries: Bool = False,
    indent_before_children: Bool = False,
    indent_after_children: Bool = False,
    print_parent_level: Bool = False,
    alternate_string: String = "",
    alternate_string_tail: String = "",
    unhandled_tokens: String = "",
) -> String:
    """Default string conversion for nodes.

    Args:
        node: The node to convert to a string.
        module_interface: The tree interface to use for the node.
        just_code: If True, only output code content (no metadata).
        indent_level: The indentation level for the parent node.
        children_indent_level: The indentation level for the children nodes. If 0, will use indent_level.

    Format when just_code=False:
        NodeName >>> actual content
        NodeName >>> continued content
        NodeName >>> more content...
    """
    var s = String()
    var indent = String()
    var children_indent = String()
    if indent_level > 0:
        indent = "\t" * indent_level
    if children_indent_level > 0:
        children_indent = "\t" * children_indent_level

    parent_level = String(
        "(parent_indent_level: "
        + String(indent_level)
        + ", children_indent_level: "
        + String(children_indent_level)
        + ")"
    )
    if not just_code:
        if indent_level != 0:
            s += "\n"
        s += indent + node.name(include_sig=True) + parent_level + "\n"
    if print_parent_level:
        s += indent + (parent_level) + "\n"
    if space_before_code:
        s += " "
    if newline_before_ast_entries:
        s += "\n"
    if indent_before_ast_entries:
        s += indent

    if alternate_string:
        s += alternate_string.replace("\n", "\n" + indent)
    else:
        s += node.ast_entries().join(" ", indent, just_tokens=just_code)

    # Add children
    if len(node.indicies().child_idxs) > 0:
        if newline_before_children:
            s += "\n"
        if indent_before_children:
            s += children_indent
        s += string_children(node, just_code, module_interface, indent_level)
        if newline_after_children:
            s += "\n"
        if indent_after_children:
            s += indent

    if alternate_string_tail:
        s += alternate_string_tail.replace("\n", "\n" + indent)
    else:
        s += node.ast_entries_tail().join(" ", indent, just_tokens=just_code)

    if unhandled_tokens != "":
        s += "\n" + indent + unhandled_tokens

    if newline_after_tail:
        s += "\n"
    return s


trait NodeAstLike(Copyable & Movable, Stringable):
    alias __name__: String

    @staticmethod
    fn accept(
        ast_entry: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        ...

    @staticmethod
    fn create(
        ast_entry: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> AstNode:
        ...

    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        ...

    fn node_state(self) -> MessageableEnum:
        ...

    fn process(
        mut self,
        ast_entry: AstEntry,
        ast_entry_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        ...

    # NOTE(josiahls): I think this will return a immutable reference.
    fn indicies(self) -> NodeIndices:
        ...

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        ...

    # NOTE(josiahls): I think this will return a immutable reference.
    fn ast_entries(self) -> AstEntries:
        ...

    fn ast_entries_ptr(mut self) -> ArcPointer[AstEntries]:
        ...

    fn ast_entries_tail(self) -> AstEntries:
        ...

    fn name(self, include_sig: Bool = False) -> String:
        ...

    fn to_string(
        self,
        just_code: Bool,
        module_interface: ModuleInterface,
        parent_indent_level: Int = 0,
    ) raises -> String:
        ...


@fieldwise_init
struct AstNode(Copyable & Movable & Stringable):
    alias type = AstNodeVariant
    var node: ArcPointer[Self.type]

    fn __init__(out self, node: Self.type):
        self.node = ArcPointer[Self.type](node)

    fn __copyinit__(out self, other: Self):
        self.node = other.node

    fn __moveinit__(out self, owned other: Self):
        self.node = other.node^

    @always_inline("nodebug")
    @staticmethod
    fn accept(
        ast_entry: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """
        Iterates over each type in the variant at compile-time and calls accept.
        """

        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if T.accept(ast_entry, module_interface, indices):
                return T.create(ast_entry, module_interface, indices)
        print(
            "WARNING: none of the nodes accepted the ast_entry: "
            + String(ast_entry.ast_name)
        )
        return PlaceHolderNode.create(ast_entry, module_interface, indices)

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
    fn indicies(self) -> NodeIndices:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].indicies()
        print("WARNING: indicies called on AstNode with no indicies")
        return NodeIndices(-1, -1)

    @always_inline("nodebug")
    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].indicies_ptr()
        print("WARNING: indicies_ptr called on AstNode with no indicies")
        return ArcPointer[NodeIndices](NodeIndices(-1, -1))

    @always_inline("nodebug")
    fn ast_entries(self) -> AstEntries:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].ast_entries()
        print("WARNING: ast_entries called on AstNode with no ast_entries")
        return AstEntries()

    @always_inline("nodebug")
    fn ast_entries_ptr(mut self) -> ArcPointer[AstEntries]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].ast_entries_ptr()
        print(
            "WARNING: ast_entries_ptr called on AstNode with no ast_entries_ptr"
        )
        return ArcPointer[AstEntries](AstEntries())

    @always_inline("nodebug")
    fn ast_entries_tail(self) -> AstEntries:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].ast_entries_tail()
        print(
            "WARNING: ast_entries_tail called on AstNode with no"
            " ast_entries_tail"
        )
        return AstEntries()

    @always_inline("nodebug")
    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return (
                    self.node[]
                    ._get_ptr[T]()[]
                    .determine_token_flow(ast_entry, module_interface)
                )
        print(
            "WARNING: determine_token_flow called on AstNode with no"
            " determine_token_flow method"
        )
        return TokenFlow.PASS_TO_PARENT

    @always_inline("nodebug")
    fn process(
        mut self,
        ast_entry: AstEntry,
        ast_entry_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                self.node[]._get_ptr[T]()[].process(
                    ast_entry, ast_entry_flow, module_interface
                )
                return
        print(
            "WARNING: process called on AstNode with no process method for"
            " node: "
            + self.__str__()
        )

    @always_inline("nodebug")
    fn name(self, include_sig: Bool = False) -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].name(include_sig)
        print(
            "WARNING: name called on AstNode with no name method for node: "
            + self.__str__()
        )
        return "<unknown type>"

    @always_inline("nodebug")
    fn node_state(self) -> MessageableEnum:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].node_state()
        print(
            "WARNING: node_state called on AstNode with no node_state method"
            " for node: "
            + self.__str__()
        )
        return NodeState.INVALID

    @always_inline("nodebug")
    fn to_string(
        self,
        just_code: Bool,
        module_interface: ModuleInterface,
        parent_indent_level: Int = 0,
    ) raises -> String:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return (
                    self.node[]
                    ._get_ptr[T]()[]
                    .to_string(just_code, module_interface, parent_indent_level)
                )
        print(
            "WARNING: to_string called on AstNode with no to_string method for"
            " node: "
            + self.__str__()
        )
        return "<unknown type>"
