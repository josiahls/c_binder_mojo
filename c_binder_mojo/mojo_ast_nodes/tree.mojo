# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_nodes.tree import Tree as CTree
from c_binder_mojo.mojo_ast_nodes.common import ParsedTokenBundles
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode



struct Tree:
    var nodes: ArcPointer[List[AstNode]]

    fn __init__(out self): 
        self.nodes = ArcPointer(List[AstNode]())


    fn __moveinit__(out self, owned other: Tree): 
        self.nodes = other.nodes^


    fn get_current_node(mut self, current_idx:Int, token_bundle:ParsedTokenBundles) raises -> Int:
        if len(self.nodes[]) == 0:
            self.nodes[].append(
                AstNode(RootNode.create(token_bundle, current_idx, self.nodes))
            )

        current_node = self.nodes[][current_idx]
        current_node = AstNode.accept(token_bundle, current_idx, self.nodes)
        self.nodes[].append(current_node)
        return len(self.nodes[])



    fn __str__(self) -> String:
        var s = String('')
        for node in self.nodes[]:
            s += String(node[])
            s += String('\n')
        return s





# NOTE: for later: CTree might need to be explicitely a pointer. Not important for now.
fn make_tree(input_tree: CTree) raises -> Tree:
    tree = Tree()
    current_idx = 0
    for node in input_tree.nodes:
        parsed_token_bundle = ParsedTokenBundles(
            token_bundles=node[].token_bundles(),
            parent_idx=node[].parent_idx(),
            current_idx=node[].current_idx(),
            children_idxs=node[].children_idxs()
        )
        current_idx = tree.get_current_node(current_idx, parsed_token_bundle)
    return tree^
