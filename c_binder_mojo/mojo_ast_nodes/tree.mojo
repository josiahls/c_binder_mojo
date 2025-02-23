# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_nodes.tree import Tree as CTree



struct Tree:

    fn __init__(out self): pass


    fn __moveinit__(out self, owned other: Tree): pass


    fn __str__(self) -> String:
        return String('Tree')


# NOTE: for later: CTree might need to be explicitely a pointer. Not important for now.
fn make_tree(input_tree: CTree) raises -> Tree:
    tree = Tree()
    return tree^
