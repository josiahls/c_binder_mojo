import os 
from pathlib import Path
from memory import UnsafePointer
from c_binder_mojo.c_ast_nodes.tree import make_tree
from c_binder_mojo.display_tree import RootDisplayAstNode

fn test_make_tree() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + String(num_mojo_path))
    print('Processing: ' + String(num_mojo_path))
    root_node = make_tree(num_mojo_path)
    print('Root node: ' + String(root_node))
    # print(String(root_node))
    display_node = RootDisplayAstNode(root_node)
    print('DisplayTree:')
    Path('/home/fastrl_mojo_user/fastrl_mojo/c_binder_mojo/tests/data/mjtnum.ast').write_text(String(display_node))
    # root_node = test_fn(num_mojo_path)


fn main():
    try:
        test_make_tree()
        print('succeeded')
    except e:
        print('failed' + String(e))
