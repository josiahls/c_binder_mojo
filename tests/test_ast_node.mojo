import os 
from pathlib import Path
from memory import UnsafePointer
from c_binder_mojo.ast_node import AstNode,RootAstStatement, OtherRootAstStatement



fn test_ast_node() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + str(num_mojo_path))
    
    root_node = AstNode()
    node1 = AstNode(root_node,OtherRootAstStatement())
    node2 = AstNode(node1)
    # current_node = UnsafePointer.address_of(root_node)

    # line_num = 0
    # for line in num_mojo_path.read_text().split('\n'):
    #     current_node = current_node[].get_current_node(line[], line_num)
    #     line_num += 1
    handler = node2.handler[RootAstStatement]()
    handler[].accept("hello")
    
    print(str(root_node))
    print(str(node1))
    print(str(node2))




fn main() raises:
    test_ast_node()
