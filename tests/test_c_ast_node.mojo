import os 
from pathlib import Path
from memory import UnsafePointer
# from c_binder_mojo.ast_node import make_graph
from c_binder_mojo.c_ast_node import make_graph
# from c_binder_mojo.ast_statements.ast_statements import AstStatements
# from c_binder_mojo.ast_statements.ast_statement_place_holder import AstStatementPlaceHolder
from c_binder_mojo.display_tree import RootDisplayAstNode
from c_binder_mojo.mojo_ast_node import RootMojoAstNode


fn test_ast_node_mjtnum() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + String(num_mojo_path))
    print('Processing: ' + String(num_mojo_path))
    root_node = make_graph(num_mojo_path)
    # root_node = test_fn(num_mojo_path)
    display_node = RootDisplayAstNode(root_node)
    # print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.ast').write_text(String(display_node))
    # print(String(display_node))
    root_mojo_node = RootMojoAstNode()

    mojo_display_node = RootDisplayAstNode(root_mojo_node)
    # print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/mujoco_mojo/mujoco_mojo/_c_api/mjtnum.mojo').write_text(String(mojo_display_node))

fn test_ast_node_model() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjmodel.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + String(num_mojo_path))
    print('Processing: ' + String(num_mojo_path))
    root_node = make_graph(num_mojo_path)
    # root_node = test_fn(num_mojo_path)
    display_node = RootDisplayAstNode(root_node)
    # print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtmodel.ast').write_text(String(display_node))
    # print(String(display_node))
    root_mojo_node = RootMojoAstNode()

    mojo_display_node = RootDisplayAstNode(root_mojo_node)
    # print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/mujoco_mojo/mujoco_mojo/_c_api/mjtmodel.mojo').write_text(String(mojo_display_node))


fn main():
    try:
        test_ast_node_mjtnum()
        test_ast_node_model()
        print('succeeded')
    except e:
        print('failed' + String(e))
