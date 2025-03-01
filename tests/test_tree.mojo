import os 
from pathlib import Path
from memory import UnsafePointer
from c_binder_mojo import c_ast_nodes
from c_binder_mojo import mojo_ast_nodes
from c_binder_mojo.display_tree import RootDisplayAstNode

fn test_make_tree_mjtnum() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + String(num_mojo_path))
    print('Processing: ' + String(num_mojo_path))
    root_node = c_ast_nodes.tree.make_tree(num_mojo_path)
    # print('Root node: ' + String(root_node))
    # print(String(root_node))
    display_node = RootDisplayAstNode(root_node)
    print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.ast').write_text(String(display_node))
    # root_node = test_fn(num_mojo_path)
    mojo_tree = mojo_ast_nodes.tree.make_tree(root_node, List[StringLiteral]('mjUSESINGLE'))
    # mojo_tree.str_just_code = True
    # print('Root mojo node: ' + String(mojo_tree))
    # display_node = RootDisplayAstNode(root_mojo_node)
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.mojo').write_text(String(mojo_tree))


fn test_make_tree_mjtmodel() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjmodel.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + String(num_mojo_path))
    print('Processing: ' + String(num_mojo_path))
    root_node = c_ast_nodes.tree.make_tree(num_mojo_path)
    # root_node = test_fn(num_mojo_path)
    display_node = RootDisplayAstNode(root_node)
    # print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtmodel.ast').write_text(String(display_node))
    mojo_tree = mojo_ast_nodes.tree.make_tree(root_node, List[StringLiteral]())
    # mojo_tree.str_just_code = True
    # print('Root mojo node: ' + String(mojo_tree))
    # display_node = RootDisplayAstNode(root_mojo_node)
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtmodel.mojo').write_text(String(mojo_tree))


fn main():
    try:
        test_make_tree_mjtnum()
        # test_make_tree_mjtmodel()
        print('succeeded')
    except e:
        print('failed' + String(e))
