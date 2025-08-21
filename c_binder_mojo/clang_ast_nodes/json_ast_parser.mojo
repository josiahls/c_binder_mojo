# Native Mojo Modules
import os
from pathlib import Path
from memory import UnsafePointer
from sys.ffi import external_call
from collections.list import _ListIter
from subprocess import run

# Third Party Mojo Modules
from firehose.logging import Logger, set_global_logger_settings
from emberjson import parse, to_string, Object

# First Party Modules

from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode, JsonNodeAstLike


@fieldwise_init
struct AstParser:
    @staticmethod
    fn clang_call(file_path: Path, extra_args: String = "") raises -> String:
        """Get the AST dump of the processed code."""
        cmd = (
            "clang -Xclang -ast-dump=json -fsyntax-only -fparse-all-comments"
            " -fno-color-diagnostics "
            + file_path.path
            + " "
            + extra_args
        )
        return run(cmd)

    fn parse(
        self,
        file_path: Path,
        extra_args: String = "",
        raw_ast: Optional[Path] = None,
    ) raises -> JsonAstNode:
        result = self.clang_call(file_path, extra_args)
        var root_object = parse(result)

        if raw_ast:
            raw_ast[].write_text(to_string[pretty=True](root_object))

        var root_node = JsonAstNode.accept_from_json_object(
            root_object.object(), level=0
        )
        # var json_object_stack = List(root_object.object())

        # while json_object_stack:
        #     var current_object = json_object_stack.pop()
        # var ast_entry = AstEntry()
        # ast_entry.ast_name = current_object["kind"].string()
        # ast_entry.mem_address = current_object["id"].string()
        # ast_entry.level = len(json_object_stack)

        #     entries.append(ast_entry^)

        # ast_entry.full_location = current_object.get("loc").get("file")
        # ast_entry.precise_location = current_object.get("loc").get("file")
        # ast_entry.tokens = List[String]()
        # ast_entry.original_line = current_object.get("loc").get("file")

        # for line in result:
        #     level = 0
        #     consequetive_space = False
        #     expect_parent_address = False
        #     expect_prev = False
        #     var is_prev = False

        #     var ast_entry = AstEntry()
        #     for _token in line.split(" "):
        #         var token = String(_token)
        #         if token.startswith("0x") and ast_entry.mem_address == "":
        #             ast_entry.mem_address = token
        #         elif token == "parent" and ast_entry.full_location == "":
        #             # Check if the next token is a valid address. This happens immendiately
        #             # before the location section of the ast output.
        #             expect_parent_address = True
        #         elif expect_parent_address and token.startswith("0x"):
        #             ast_entry.mem_address = (
        #                 token + " -> " + ast_entry.mem_address
        #             )
        #             expect_parent_address = False
        #         elif token == "prev" and ast_entry.full_location == "":
        #             expect_prev = True
        #             is_prev = True
        #             # NOTE: I think that prev implies a redefinition. Not sure what the point is
        #             # of this, but I know this will not compile in mojo. So we will skip it.
        #             continue
        #         elif expect_prev and token.startswith("0x"):
        #             expect_prev = False
        #             continue
        #         elif token.startswith("|-") and ast_entry.ast_name == "":
        #             ast_entry.ast_name = token[2:]
        #             level += 1
        #         elif token.startswith("`-") and ast_entry.ast_name == "":
        #             ast_entry.ast_name = token[2:]
        #             level += 1
        #         elif (
        #             token.startswith("TranslationUnitDecl")
        #             and ast_entry.ast_name == ""
        #         ):
        #             # TranslationUnitDecl is a special case which is located at the root
        #             # of the ast output.
        #             ast_entry.ast_name = token
        #         elif token.startswith("<") and ast_entry.full_location == "":
        #             ast_entry.full_location = token
        #         elif token.endswith(
        #             ">"
        #         ) and not ast_entry.full_location.endswith(">"):
        #             ast_entry.full_location += " " + token
        #         elif (
        #             token.startswith("<<invalid")
        #             and ast_entry.full_location == ""
        #         ) or (
        #             token.endswith("sloc>>")
        #             and not ast_entry.full_location.endswith(">>")
        #         ):
        #             ast_entry.full_location = "invalid"
        #         elif (
        #             token.startswith("<<scratch")
        #             and ast_entry.full_location == ""
        #         ) or (
        #             "space>" in token
        #             and ':' not in ast_entry.full_location
        #         ):
        #             ast_entry.full_location = "scratch"
        #         elif (
        #             token.startswith("<invalid")
        #             and ast_entry.precise_location == ""
        #         ) or (
        #             token.endswith("sloc>")
        #             and not ast_entry.precise_location.endswith(">")
        #         ):
        #             ast_entry.precise_location = "invalid"
        #         elif (
        #             token.startswith("<scratch")
        #             and ast_entry.precise_location == ""
        #         ) or (
        #             "space>" in token
        #             and ':' not in ast_entry.precise_location
        #         ):
        #             ast_entry.precise_location = "scratch"
        #         elif (
        #             token.startswith("col:")
        #             and ast_entry.precise_location == ""
        #         ):
        #             ast_entry.precise_location = token
        #         elif (
        #             token.startswith("line:")
        #             and ast_entry.precise_location == ""
        #         ):
        #             ast_entry.precise_location = token
        #         elif (
        #             '/' in token
        #             and ":" in token
        #             and ast_entry.precise_location == ""
        #         ):
        #             ast_entry.precise_location = token
        #         elif (
        #             token == ""
        #             and ast_entry.ast_name == ""
        #             and consequetive_space
        #         ):
        #             level += 1
        #             consequetive_space = False
        #         elif (
        #             token == ""
        #             and ast_entry.ast_name == ""
        #             and not consequetive_space
        #         ):
        #             consequetive_space = True
        #         elif token == "|" and ast_entry.ast_name == "":
        #             level += 1
        #         else:
        #             if "'" in token:
        #                 current_token:String = ""
        #                 for ch in token.codepoint_slices():
        #                     if ch == "'":
        #                         if current_token != "":
        #                             ast_entry.tokens.append(current_token)
        #                             current_token = ""
        #                         ast_entry.tokens.append("'")
        #                     else:
        #                         current_token += ch
        #                 if current_token != "":
        #                     ast_entry.tokens.append(current_token)
        #             else:
        #                 ast_entry.tokens.append(token)

        #         # Cancel checking for consequtive spaces if the next token
        #         # isn't an empty space.
        #         if consequetive_space and token != "":
        #             consequetive_space = False

        # ast_entry.original_line = line
        # ast_entry.level = level
        # ast_entry.is_prev = is_prev
        # if ast_entry.ast_name == "":
        #     raise Error("Could not find name for line: " + line)

        # entries.append(ast_entry^)

        # entry = AstEntry()
        # entry.ast_name = C_BINDER_MOJO_END_FILE
        # entry.level = 0
        # entry.original_line = C_BINDER_MOJO_END_FILE
        # entry.tokens = List[String]()
        # entry.mem_address = ""
        # entry.full_location = ""
        # entry.precise_location = ""
        # entry.is_prev = False
        # entries.append(entry^)
        return root_node
