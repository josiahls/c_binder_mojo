from c_binder_mojo.clang_ast_nodes.json_ast_parser import *


fn test_json_ast_parser() raises:
    var ast_parser = AstParser()
    var raw_ast = Path(
        "tests/test_c_project/build/simple_type_defs.raw_json_ast"
    )
    var root_node = ast_parser.parse(
        Path("tests/test_c_project/include/simple_type_defs.h"), raw_ast=raw_ast
    )
    var output_path = Path(
        "tests/test_c_project/build/simple_type_defs_with_ast.mojo"
    )
    output_path.write_text(root_node.to_string(just_code=False))


fn main() raises:
    test_json_ast_parser()
