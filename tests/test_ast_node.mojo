import os 
from pathlib import Path
from memory import UnsafePointer
from c_binder_mojo.ast_node import make_graph
from c_binder_mojo.ast_statements.ast_statements import AstStatements
from c_binder_mojo.ast_statements.ast_statement_other_root import AstStatementOtherRoot
from c_binder_mojo.display_tree import DisplayAstNode


fn test_ast_node() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + str(num_mojo_path))
    
    root_node = make_graph(num_mojo_path)
    display_node = DisplayAstNode(root_node[])
    print(str(display_node))


fn main() raises:
    test_ast_node()
