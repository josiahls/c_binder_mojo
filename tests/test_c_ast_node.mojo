import os 
from pathlib import Path
from memory import UnsafePointer
# from c_binder_mojo.ast_node import make_graph
from c_binder_mojo.c_ast_node import make_graph
# from c_binder_mojo.ast_statements.ast_statements import AstStatements
# from c_binder_mojo.ast_statements.ast_statement_place_holder import AstStatementPlaceHolder
from c_binder_mojo.display_tree import RootDisplayAstNode


fn test_ast_node_mjtnum() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + str(num_mojo_path))
    print('Processing: ' + str(num_mojo_path))
    root_node = make_graph(num_mojo_path)
    # root_node = test_fn(num_mojo_path)
    display_node = RootDisplayAstNode(root_node)
    # print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.ast').write_text(str(display_node))
    # print(str(display_node))

fn test_ast_node_model() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjmodel.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + str(num_mojo_path))
    print('Processing: ' + str(num_mojo_path))
    root_node = make_graph(num_mojo_path)
    # root_node = test_fn(num_mojo_path)
    display_node = RootDisplayAstNode(root_node)
    # print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtmodel.ast').write_text(str(display_node))
    # print(str(display_node))


fn main():
    try:
        test_ast_node_mjtnum()
        test_ast_node_model()
        print('succeeded')
    except e:
        print('failed' + str(e))
