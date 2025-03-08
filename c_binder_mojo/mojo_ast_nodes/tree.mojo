# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.mojo_ast_nodes.common import TreeInterface, NodeIndices


struct Tree:
    var nodes: ArcPointer[List[AstNode]]
    var str_just_code: Bool
    var c_macro_defs: ArcPointer[List[String]]
    var mojo_aliases: ArcPointer[List[String]]

    fn __init__(out self, c_macro_defs: List[String]): 
        self.nodes = ArcPointer(List[AstNode]())
        self.str_just_code = False
        self.c_macro_defs = ArcPointer(c_macro_defs)
        self.mojo_aliases = ArcPointer(List[String]())

    fn __moveinit__(out self, owned other: Tree): 
        self.nodes = other.nodes^
        self.str_just_code = other.str_just_code
        self.c_macro_defs = other.c_macro_defs^
        self.mojo_aliases = other.mojo_aliases^

    fn get_current_node(mut self, current_idx: Int, c_ast_node: c_ast_nodes.nodes.AstNode) raises -> Int:
        # print('Processing node: ' + String(c_ast_node.display_name()) + ' current_idx: ' + String(current_idx))
        tree_interface = TreeInterface(self.nodes, self.c_macro_defs, self.mojo_aliases)
        # Initialize if empty
        if len(self.nodes[]) == 0:
            # print("Creating root node")
            self.nodes[].append(AstNode(RootNode.create(c_ast_node, -1, tree_interface)))
            return 0

        # Get current node state
        current_node = self.nodes[][current_idx]
        # print("Current node:", current_node.display_name(), "checking state...")
        
        # State transitions
        # NOTE: C API does done_no_cascade -> done -> append -> make_child 
        # The above might not be needed, but important to be aware of that this order
        # might be there based on past experience.
        if current_node.is_accepting_tokens(c_ast_node, tree_interface):
            # print("Still building current node")
            _ = current_node.append(c_ast_node)
            return current_idx
        
        elif current_node.is_complete(c_ast_node, tree_interface):
            # print("Node complete, moving back to parent:", current_node.indices()[].mojo_parent_idx)
            current_node.finalize(current_node.indices()[].mojo_parent_idx, tree_interface)
            return self.get_current_node(current_node.indices()[].mojo_parent_idx, c_ast_node)
        
        elif current_node.wants_child(c_ast_node, tree_interface):
            new_node = AstNode.accept(c_ast_node, current_idx, tree_interface)
            new_node.indices()[].mojo_parent_idx = current_node.indices()[].mojo_node_idx
            new_node.indices()[].mojo_node_idx = len(self.nodes[])
            # print("Creating child node")
            # print("New node created:", new_node.display_name())
            # NOTE: Maybe change this to insert_node. We will want to support
            # appending, but also overwriting deleted nodes.
            self.nodes[].append(new_node)
            current_node.add_child(len(self.nodes[]) - 1)
            return len(self.nodes[]) - 1

        raise Error("Invalid node state for " + current_node.display_name())


    fn __str__(self) -> String:
        if len(self.nodes[]) == 0:
            return ""
        return self.nodes[][0].to_string(
            just_code=self.str_just_code,
            tree_interface=TreeInterface(self.nodes, self.c_macro_defs, self.mojo_aliases)
        )


# NOTE: for later: CTree might need to be explicitely a pointer. Not important for now.
fn make_tree(input_tree: c_ast_nodes.tree.Tree, c_macro_defs: List[String]) raises -> Tree:
    tree = Tree(c_macro_defs)
    current_idx = 0
    for node in input_tree.nodes:
        if node[].node.isa[c_ast_nodes.nodes.DeletedNode]():
            continue
        current_idx = tree.get_current_node(current_idx, node[])
    return tree^
