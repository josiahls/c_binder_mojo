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


struct TextComment(Copyable, Movable, Stringable, Writable):
    var _text: String
    var _entry: AstEntry

    @implicit
    fn __init__(out self, ast_entry: AstEntry):
        # Change to mojo
        self._text = String(" ").join(ast_entry.tokens)
        self._entry = ast_entry

    fn __str__(self) -> String:
        if len(self._text) > 6:
            text = "#" + self._text[6:-1]
        else:
            text = (
                "# TextComment INVALID: `"
                + self._text
                + "` original_line: "
                + self._entry.original_line
            )
        return text

    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


struct ParagraphComment(Copyable, Movable, Stringable, Writable):
    var _text_comments: List[TextComment]

    @implicit
    fn __init__(out self, ast_entry: AstEntry):
        self._text_comments = List[TextComment]()

    fn add_ast_entry(mut self, ast_entry: AstEntry):
        self._text_comments.append(TextComment(ast_entry))

    fn __str__(self) -> String:
        return String("\n").join(self._text_comments)

    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


struct Grammar(Copyable, Movable, Stringable, Writable):
    var _paragraph_comments: List[ParagraphComment]

    @implicit
    fn __init__(out self, ast_entries: AstEntries):
        self._paragraph_comments = List[ParagraphComment]()
        for ast_entry in ast_entries:
            if ast_entry[].ast_name == "ParagraphComment":
                self._paragraph_comments.append(ast_entry[])
            elif ast_entry[].ast_name == "TextComment":
                self._paragraph_comments[-1].add_ast_entry(ast_entry[])
            elif ast_entry[].ast_name == "FullComment":
                # Skip this since this a single FullComment node should only ever have 1 FullComment ast
                # entry.
                pass
            else:
                print("Unknown ast entry: " + ast_entry[].original_line)

    fn __str__(self) -> String:
        return String("\n").join(self._paragraph_comments)

    fn write_to[W: Writer](self, mut writer: W):
        writer.write(String(self))


@value
struct FullCommentNode(NodeAstLike):
    alias __name__ = "FullCommentNode"
    var _indicies: ArcPointer[NodeIndices]
    var _ast_entries: ArcPointer[AstEntries]
    var _node_state: MessageableEnum
    var _comment_level: Int

    fn __init__(out self, indicies: NodeIndices, ast_entry: AstEntry):
        self._indicies = indicies
        self._ast_entries = AstEntries()
        self._comment_level = ast_entry.level
        self._ast_entries[].append(ast_entry)
        self._node_state = NodeState.COMPLETED

    @staticmethod
    fn accept(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Bool:
        return ast_entries.ast_name == "FullComment"

    @staticmethod
    fn create(
        ast_entries: AstEntry,
        module_interface: ModuleInterface,
        indices: NodeIndices,
    ) -> Self:
        return Self(indices, ast_entries)

    fn determine_token_flow(
        mut self, ast_entry: AstEntry, module_interface: ModuleInterface
    ) -> MessageableEnum:
        if ast_entry.level <= self._comment_level:
            return TokenFlow.PASS_TO_PARENT
        else:
            return TokenFlow.CONSUME_TOKEN

    fn process(
        mut self,
        ast_entry: AstEntry,
        token_flow: MessageableEnum,
        mut module_interface: ModuleInterface,
    ):
        if token_flow == TokenFlow.CONSUME_TOKEN:
            self._ast_entries[].append(ast_entry)
            self._node_state = NodeState.BUILDING_CHILDREN
        elif token_flow == TokenFlow.PASS_TO_PARENT:
            self._node_state = NodeState.COMPLETED

    fn indicies(self) -> NodeIndices:
        return self._indicies[]

    fn indicies_ptr(mut self) -> ArcPointer[NodeIndices]:
        return self._indicies

    fn ast_entries(self) -> AstEntries:
        return self._ast_entries[]

    fn ast_entries_ptr(mut self) -> ArcPointer[AstEntries]:
        return self._ast_entries

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
        return default_to_string(
            node=AstNode(self),
            module_interface=module_interface,
            just_code=just_code,
            indent_level=parent_indent_level,
            newline_before_ast_entries=True,
            newline_after_tail=True,
            alternate_string=String(Grammar(self._ast_entries[])),
        )
