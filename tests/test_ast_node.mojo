import os 
from pathlib import Path
from memory import UnsafePointer
# from c_binder_mojo.ast_node import make_graph
from c_binder_mojo.minimal_example import make_graph
# from c_binder_mojo.ast_statements.ast_statements import AstStatements
# from c_binder_mojo.ast_statements.ast_statement_place_holder import AstStatementPlaceHolder
# from c_binder_mojo.display_tree import DisplayAstNode


fn test_ast_node() raises:
    # mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    # num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    # if not num_mojo_path.exists():
    #     raise Error('This path doesnt exist: ' + str(num_mojo_path))
    num_mojo_path = Path('fdsfdas') # Works when debug-level is not full
    root_node = make_graph(num_mojo_path)
    # root_node = test_fn(num_mojo_path)
    # hi()
    print('done')
    # display_node = DisplayAstNode(root_node[])
    # print('DisplayTree:')
    # print(str(display_node))
    # print('done')


fn main():
    try:
        test_ast_node()
        print('succeeded')
    except e:
        print('failed')
