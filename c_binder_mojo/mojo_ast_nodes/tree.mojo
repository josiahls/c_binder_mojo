# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_nodes.tree import Tree as CTree



struct Tree:

    fn __init__(out self): pass


    fn __moveinit__(out self, owned other: Tree): pass


    fn get_current_node(mut self, current_idx:Int, token_bundle:TokenBundle) raises -> Int:
        return 0


    fn __str__(self) -> String:
        return String('Tree')





# NOTE: for later: CTree might need to be explicitely a pointer. Not important for now.
fn make_tree(input_tree: CTree) raises -> Tree:
    tree = Tree()
    for node in input_tree.nodes:
        pass
    return tree^
