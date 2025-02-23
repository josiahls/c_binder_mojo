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

    fn get_current_node(mut self, current_idx: Int, token_bundle: ParsedTokenBundles) raises -> Int:
        # Initialize if empty
        if len(self.nodes[]) == 0:
            self.nodes[].append(AstNode(RootNode.create(token_bundle, -1, self.nodes)))
            return 0

        # Get current node state
        current_node = self.nodes[][current_idx]
        
        # State transitions
        # NOTE: C API does done_no_cascade -> done -> append -> make_child 
        # The above might not be needed, but important to be aware of that this order
        # might be there based on past experience.
        if current_node.is_accepting_tokens(token_bundle, self.nodes):
            # Still building current node
            _ = current_node.append(token_bundle)
            return current_idx
        
        elif current_node.is_complete(token_bundle, self.nodes):
            # Move back to parent
            return self.get_current_node(current_node.parent_idx(), token_bundle)
        
        elif current_node.wants_child(token_bundle, self.nodes):
            # Create child node
            new_node = AstNode.accept(token_bundle, current_idx, self.nodes)
            # NOTE: Maybe change this to insert_node. We will want to support
            # appending, but also overwriting deleted nodes.
            self.nodes[].append(new_node)
            current_node.add_child(len(self.nodes[]) - 1)
            return len(self.nodes[]) - 1

        raise Error("Invalid node state")



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
