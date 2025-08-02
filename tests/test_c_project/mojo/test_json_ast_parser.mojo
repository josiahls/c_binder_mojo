from c_binder_mojo.clang_ast_nodes.json_ast_parser import *

fn test_json_ast_parser() raises:
    var ast_parser = AstParser()
    var ast_entries = ast_parser.parse(Path("tests/test_c_project/include/simple_type_defs.h"))
    var ast_entries_path = Path("tests/test_c_project/build/simple_type_defs_json_parsed.ast_entries")
    ast_entries_path.write_text(String("\n").join(ast_entries))


fn main() raises:
    test_json_ast_parser()