# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
from firehose.logging import Logger
from firehose import FileLoggerOutputer, OutputerVariant


# First Party Modules
from c_binder_mojo.common import (
    TokenBundle,
    MessageableEnum,
    NodeIndices,
    TokenFlow,
    NodeState,
)
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface
from c_binder_mojo.mojo_ast_nodes.nodes import (
    AstNode,
    NodeAstLike,
    default_to_string,
)
from c_binder_mojo.clang_ast_nodes.ast_parser import AstEntry, AstEntries

from c_binder_mojo.mojo_ast_nodes.builtin_type_node import BuiltinTypeNode
from c_binder_mojo.mojo_ast_nodes.pointer_type_node import PointerTypeNode
from c_binder_mojo.mojo_ast_nodes.typedef_type_node import TypedefTypeNode


@fieldwise_init
struct FunctionProtoTypeNode(NodeAstLike):
    alias __name__ = "FunctionProtoTypeNode"
    var _indicies: ArcPointer[NodeIndices]
    var _current_level: Int
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum

    var _unhandled_tokens: String
    
    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._current_level = ast_entry.level
        self._node_state = NodeState.COMPLETED
        self._unhandled_tokens = String()

        # NOTE: I think clang decomposes FunctionProtoTypes into individual nodes.
        # so we should not need to parse anything here.


    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == String(Self.__name__)[:-4]

    @staticmethod
    fn create(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> AstNode:
        return AstNode(Self(indices, ast_entries))

    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if ast_entry.level <= self._current_level:
            return TokenFlow.PASS_TO_PARENT
        else:
            return TokenFlow.CREATE_CHILD

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        if token_flow == TokenFlow.CREATE_CHILD:
            self._node_state = NodeState.BUILDING_CHILDREN
        else:
            self._node_state = NodeState.COMPLETED

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies

    # TODO(josiahls): I think we are moving away from using ast entries.
    fn ast_entries(self) -> AstEntries:
        return self._ast_entries[]

    # TODO(josiahls): I think we are moving away from using ast entries.
    fn ast_entries_ptr(mut self) -> ArcPointer[AstEntries]:
        return self._ast_entries

    # TODO(josiahls): I think we are moving away from using ast entries.
    fn ast_entries_tail(self) -> AstEntries:
        return AstEntries()

    fn node_state(self) -> MessageableEnum:
        return self._node_state

    @always_inline("nodebug")
    fn __str__(self) -> String:
        return self.__name__

    fn name(self, include_sig: Bool = False) -> String:
        if include_sig:
            return (
                self.__name__
                + "("
                + String(self._indicies[])
                + ", node_state="
                + String(self._node_state)
                + ")"
            )
        else:
            return self.__name__

    fn to_string(
        self,
        just_code: Bool,
        module_interface: ModuleInterface,
        parent_indent_level: Int = 0,
    ) raises -> String:

        var s:String = "fn("
        var return_type:String = ""
        var params = List[String]()

        var error_msg:String = ""

        for child_idx in self._indicies[].child_idxs:
            child = module_interface.nodes()[][child_idx]
            if child.node[].isa[BuiltinTypeNode]():
                if return_type == "":
                    return_type = child.to_string(just_code, module_interface, parent_indent_level + 1)
                else:
                    params.append(child.to_string(just_code, module_interface, parent_indent_level + 1))
            elif child.node[].isa[PointerTypeNode]():
                if return_type == "":
                    return_type = child.to_string(just_code, module_interface, parent_indent_level + 1)
                else:
                    params.append(child.to_string(just_code, module_interface, parent_indent_level + 1))
            elif child.node[].isa[TypedefTypeNode]():
                # TODO(josiahls): I'm not sure if this is right. I think we need to search `module_interface` for the type.
                # We are not trying to define it, we are trying to reference it.
                if return_type == "":
                    return_type = child.to_string(just_code, module_interface, parent_indent_level + 1)
                else:
                    params.append(child.to_string(just_code, module_interface, parent_indent_level + 1))
            else:
                error_msg = "FunctionProtoTypeNode: Unknown child type: " + child.name()

        if error_msg != "":
            s += '\n' + error_msg

        s += String(',').join(params)
        s += ")"
        s += " -> " + return_type

        return s
