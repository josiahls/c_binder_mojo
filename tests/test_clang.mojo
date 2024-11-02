import os 
from pathlib import Path
from c_binder_mojo.clang import clang_ast



fn test_clang_ast_1() raises:
    mujoco_path = os.getenv('C_BINDING_MOJO_TEST_MUJOCO')
    num_mojo_path = Path(mujoco_path) / 'include/mujoco/mjtnum.h'
    if not num_mojo_path.exists():
        raise Error('This path doesnt exist: ' + str(num_mojo_path))
    mojo_ptr = str(num_mojo_path).unsafe_cstr_ptr()

    print(num_mojo_path)
    var error = clang_ast(mojo_ptr)
    print(String(error))
    # print(String(error))

 



fn main() raises:
    test_clang_ast_1()
