import os 
from pathlib import Path
from memory import UnsafePointer
from c_binder_mojo.ast_node import AstNode



fn test_ast_node() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + str(num_mojo_path))
    
    root_node = AstNode()
    current_node = UnsafePointer.address_of(root_node)

    line_num = 0
    for line in num_mojo_path.read_text().split('\n'):
        current_node = current_node[].get_current_node(line[], line_num)
        line_num += 1
    
    print(str(root_node))




fn main() raises:
    test_ast_node()
