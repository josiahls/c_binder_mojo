from emberjson import parse, to_string, Object, Value
from pathlib import Path
from c_binder_mojo.ast.nodes import AstNode


fn main() raises:
    p = Path("tests/simple_nodes_ast.json")
    if not p.exists():
        raise Error("File does not exist: " + String(p))

    var json_info = parse(p.read_text())
    AstNode.impute(json_info.object())
    ref node = AstNode.accept_create_from(json_info.object(), level=0)
    print("done accepting from json object")
    print(node.to_string(just_code=True))
