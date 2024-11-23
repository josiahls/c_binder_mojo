import os 
from pathlib import Path
from memory import UnsafePointer
from c_binder_mojo.ast_node import make_graph
from c_binder_mojo.ast_statements.ast_statements import AstStatements
from c_binder_mojo.ast_statements.ast_statement_other_root import AstStatementOtherRoot


fn test_ast_node() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + str(num_mojo_path))
    
    root_node = make_graph(num_mojo_path)
    # current_node = UnsafePointer.address_of(root_node)

    # line_num = 0
    # for line in num_mojo_path.read_text().split('\n'):
    #     current_node = current_node[].get_current_node(line[], line_num)
    #     line_num += 1
    # root_node.handler[].accept("hello")
    # node1.handler()[].accept("hello")
    # node2.handler()[].accept("hello")

    # print(str(root_node.handler[]))
    # print(str(node1.handler()[]))
    # print(str(node1.handler()[]))
    
    print(root_node[].__str__())
    # print(node1.__str__())
    # print(node2.__str__())




fn main() raises:
    test_ast_node()
