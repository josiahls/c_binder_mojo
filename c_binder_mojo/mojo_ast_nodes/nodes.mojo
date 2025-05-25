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
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry


fn string_children(
    node: AstNode, just_code: Bool, module_interface: ModuleInterface
) raises -> String:
    """Converts children to string with proper indentation and line breaks.

    Args:
        node: The node to convert to a string.
        just_code: If True, outputs only code and comments. If False, includes node metadata
            with '>>>' separator to show node ownership.
        module_interface: The tree interface to use for the node.
    """
    var s = String()

    for child_idx in node.indicies().child_idxs:
        var child = module_interface.nodes()[][child_idx[]]
        s += child.to_string(just_code, module_interface)
    return s


fn default_scope_level(
    parent_idx: Int, just_code: Bool, module_interface: ModuleInterface
) -> Int:
    """Default scope level implementation that most nodes can use.

    Calculates scope level by walking up parent chain and summing scope_offsets.
    """
    var level = 0
    var current_parent_idx = parent_idx
    if parent_idx == -1:
        var parent = module_interface.nodes()[][0]
        var scope_offset = parent.scope_offset(just_code)
        return scope_offset

    while current_parent_idx != -1:
        var parent = module_interface.nodes()[][current_parent_idx]
        level += parent.scope_offset(just_code)
        current_parent_idx = parent.indicies().parent_idx
    return level


fn default_to_string(
    node: AstNode,
    module_interface: ModuleInterface,
) raises -> String:
    """Default string conversion for nodes. Includes the node signature and the node's content.

    If we want just code, use default_to_string_just_code instead.

    Args:
        node: The node to convert to a string.
        module_interface: The tree interface to use for the node.

    Format when just_code=False:
        NodeName >>> actual content
        NodeName >>> continued content
        NodeName >>> more content...
    """
    var s = String()
    var level = node.scope_level(False, module_interface)
    var indent = String()
    if level > 0:
        indent = "\t" * level
    var line_num = -1

    # Add node name if not just code
    s += indent + node.name(include_sig=True)

    # Add ast_entrys
    for ast_entry in node.ast_entries():
        s += ast_entry[].ast_name + " "

    # Add children
    if len(node.indicies().child_idxs) > 0:
        if line_num != -1:
            s += "\n"
        s += indent
        s += string_children(node, False, module_interface)

    for ast_entry in node.ast_entries_tail():
        s += ast_entry[].ast_name + " "

    s += "\n"
    return s


fn default_to_string_just_code(
    node: AstNode,
    module_interface: ModuleInterface,
    inline_children: Bool = False,
    inline_nodes: Bool = False,
    inline_tail: Bool = False,
) raises -> String:
    """Default string conversion for nodes.

    Args:
        node: The node to convert to a string.
        module_interface: The tree interface to use for the node.

    Format when just_code=False:
        NodeName >>> actual content
        NodeName >>> continued content
        NodeName >>> more content...
    """
    var s = String()
    var level = node.scope_level(True, module_interface)
    var indent = String()

    if level > 0:
        indent = "\t" * level
    # NOTE(josiahls): This is different from the default_to_string function.
    # We start at line_num = 0 because we want to include the first line of code.
    # For default_to_string, we start at line_num = -1 because otherwise,
    # the first line of code is going to be on the same line as the signature.
    var line_num = 0

    # Add ast_entrys
    for ast_entry in node.ast_entries():
        s += ast_entry[].ast_name + " "

    # Add children
    if len(node.indicies().child_idxs) > 0:
        if not inline_children:
            s += indent
        s += string_children(node, True, module_interface)

    for ast_entry in node.ast_entries_tail():
        s += ast_entry[].ast_name + " "

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
    ) -> Self:
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
    fn ast_entries(self) -> List[AstEntry]:
        ...

    fn ast_entries_ptr(mut self) -> ArcPointer[List[AstEntry]]:
        ...

    fn ast_entries_tail(self) -> List[AstEntry]:
        ...

    fn name(self, include_sig: Bool = False) -> String:
        ...

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) raises -> String:
        ...

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        ...

    fn scope_offset(self, just_code: Bool) -> Int:
        ...


@value
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
                return Self(T.create(ast_entry, module_interface, indices))
        print(
            "WARNING: none of the nodes accepted the ast_entry: "
            + String(ast_entry.ast_name)
        )
        return Self(PlaceHolderNode.create(ast_entry, module_interface, indices))

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
    fn ast_entries(self) -> List[AstEntry]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].ast_entries()
        print("WARNING: ast_entries called on AstNode with no ast_entries")
        return List[AstEntry]()

    @always_inline("nodebug")
    fn ast_entries_ptr(mut self) -> ArcPointer[List[AstEntry]]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].ast_entries_ptr()
        print(
            "WARNING: ast_entries_ptr called on AstNode with no"
            " ast_entries_ptr"
        )
        return ArcPointer[List[AstEntry]](List[AstEntry]())

    @always_inline("nodebug")
    fn ast_entries_tail(self) -> List[AstEntry]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].ast_entries_tail()
        print(
            "WARNING: ast_entries_tail called on AstNode with no"
            " ast_entries_tail"
        )
        return List[AstEntry]()

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

    @always_inline("nodebug")
    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return (
                    self.node[]
                    ._get_ptr[T]()[]
                    .scope_level(just_code, module_interface)
                )
        print(
            "WARNING: scope_level called on AstNode with no scope_level method"
            " for node: "
            + self.__str__()
        )
        return 0

    @always_inline("nodebug")
    fn scope_offset(self, just_code: Bool) -> Int:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].scope_offset(just_code)
        print(
            "WARNING: scope_offset called on AstNode with no scope_offset"
            " method for node: "
            + self.__str__()
        )
        return 0
