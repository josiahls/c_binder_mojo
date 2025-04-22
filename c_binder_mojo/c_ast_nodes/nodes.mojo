# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    MessageableEnum,
    TokenBundles,
    NodeIndices,
    TokenFlow,
    NodeState,
)
from c_binder_mojo.c_ast_nodes.tree import ModuleInterface
from c_binder_mojo.c_ast_nodes import AstNodeVariant
from c_binder_mojo import c_ast_nodes


fn string_children(
    node: AstNode, just_code: Bool, module_interface: ModuleInterface
) -> String:
    """Converts children to string with proper indentation and line breaks.

    Args:
        node: The node to convert to a string.
        just_code: If True, outputs only code and comments. If False, includes node metadata
            with '>>>' separator to show node ownership.
        module_interface: The tree interface to use for the node.
    """
    var s = String()
    for child_idx in node.indicies().c_child_idxs:
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
        current_parent_idx = parent.indicies().c_parent_idx
    return level





fn default_to_string(
    node: AstNode, module_interface: ModuleInterface
) -> String:
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
    var new_line_added = False

    # Add node name if not just code
    s += indent + node.name(include_sig=True) + "\n"

    # Add tokens
    s += node.token_bundles().join(
        " ",
        indent
    )

    # Add children
    if len(node.indicies().c_child_idxs) > 0:
        s += indent
        s += string_children(node, False, module_interface)

    s += node.token_bundles_tail().join(
        " ",
        indent
    )
    # for token in node.token_bundles_tail():
    #     if new_line_added:
    #         s += indent
    #         new_line_added = False
    #     else:
    #         s += " "
    #     s += token[].token
    #     if token[].token == "\n":
    #         new_line_added = True

    # s += "\n"
    return s


fn default_to_string_just_code(
    node: AstNode,
    module_interface: ModuleInterface,
    inline_children: Bool = False,
    inline_nodes: Bool = False,
    inline_tail: Bool = False,
) -> String:
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
    var new_line_added = False

    s += node.token_bundles().join(
        " ",
        indent
    )

    # Add children
    if len(node.indicies().c_child_idxs) > 0:
        if not inline_children:
            s += indent
        s += string_children(node, True, module_interface)

    tail_s = node.token_bundles_tail().join(
        " ",
        indent
    )
    print('tail_s: "' + tail_s + '" for token bundles length: ' + String(len(node.token_bundles_tail())))
    print('s: "' + s + '"')
    s += tail_s

    # for token in node.token_bundles_tail():
    #     if new_line_added:
    #         s += indent
    #         new_line_added = False
    #     else:
    #         s += " "
    #     s += token[].token
    #     if token[].token == "\n":
    #         new_line_added = True

    return s


trait NodeAstLike(CollectionElement, Stringable):
    alias __name__: String

    @staticmethod
    fn accept(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        ...

    @staticmethod
    fn create(
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        ...

    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> MessageableEnum:
        ...

    fn node_state(self) -> MessageableEnum:
        ...

    fn process(
        mut self,
        token: TokenBundle,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        ...

    # NOTE(josiahls): I think this will return a immutable reference.
    fn indicies(self) -> NodeIndices:
        ...

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        ...

    # NOTE(josiahls): I think this will return a immutable reference.
    fn token_bundles(self) -> TokenBundles:
        ...

    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        ...

    fn token_bundles_tail(self) -> TokenBundles:
        ...

    fn name(self, include_sig: Bool = False) -> String:
        ...

    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> String:
        ...

    fn scope_level(
        self, just_code: Bool, module_interface: ModuleInterface
    ) -> Int:
        ...

    fn scope_offset(self, just_code: Bool) -> Int:
        ...


@value
struct AstNode(CollectionElement):
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
        token: TokenBundle,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        """
        Iterates over each type in the variant at compile-time and calls accept.
        """

        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if T.accept(token, module_interface, indices):
                return Self(T.create(token, module_interface, indices))
        print(
            "WARNING: none of the nodes accepted the token: "
            + String(token.token)
        )
        return Self(PlaceHolderNode.create(token, module_interface, indices))

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
    fn token_bundles(self) -> TokenBundles:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].token_bundles()
        print("WARNING: token_bundles called on AstNode with no token_bundles")
        return TokenBundles()

    @always_inline("nodebug")
    fn token_bundles_ptr(mut self) -> ArcPointer[TokenBundles]:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].token_bundles_ptr()
        print(
            "WARNING: token_bundles_ptr called on AstNode with no"
            " token_bundles_ptr"
        )
        return ArcPointer[TokenBundles](TokenBundles())

    @always_inline("nodebug")
    fn token_bundles_tail(self) -> TokenBundles:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return self.node[]._get_ptr[T]()[].token_bundles_tail()
        print(
            "WARNING: token_bundles_tail called on AstNode with no"
            " token_bundles_tail"
        )
        return TokenBundles()

    @always_inline("nodebug")
    fn determine_token_flow(
        mut self, token: TokenBundle, module_interface: ModuleInterface
    ) -> MessageableEnum:
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                return (
                    self.node[]
                    ._get_ptr[T]()[]
                    .determine_token_flow(token, module_interface)
                )
        print(
            "WARNING: determine_token_flow called on AstNode with no"
            " determine_token_flow method"
        )
        return TokenFlow.PASS_TO_PARENT

    @always_inline("nodebug")
    fn process(
        mut self,
        token: TokenBundle,
        token_flow: MessageableEnum,
        module_interface: ModuleInterface,
    ):
        @parameter
        for i in range(len(VariadicList(Self.type.Ts))):
            alias T = Self.type.Ts[i]
            if self.node[].isa[T]():
                self.node[]._get_ptr[T]()[].process(
                    token, token_flow, module_interface
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
    ) -> String:
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
