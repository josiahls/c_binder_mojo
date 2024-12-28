import os 
from pathlib import Path
from memory import UnsafePointer
from c_binder_mojo.minimal_example import make_graph


fn test_ast_node() raises:
    num_mojo_path = Path('fdsfdas') # Works when debug-level is not full
    root_node = make_graph(num_mojo_path)
    print('done')


fn main():
    try:
        test_ast_node()
        print('succeeded')
    except e:
        print('failed')
