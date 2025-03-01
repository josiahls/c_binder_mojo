# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo import c_ast_nodes
from c_binder_mojo.mojo_ast_nodes.nodes import AstNode
from c_binder_mojo.mojo_ast_nodes.common import TreeInterface

struct Tree:
    var nodes: ArcPointer[List[AstNode]]
    var str_just_code: Bool
    var macro_defs: ArcPointer[List[StringLiteral]]

    fn __init__(out self, macro_defs: List[StringLiteral]): 
        self.nodes = ArcPointer(List[AstNode]())
        self.str_just_code = False
        self.macro_defs = ArcPointer(macro_defs)

    fn __moveinit__(out self, owned other: Tree): 
        self.nodes = other.nodes^
        self.str_just_code = other.str_just_code
        self.macro_defs = other.macro_defs^

    fn get_current_node(mut self, current_idx: Int, c_ast_node: c_ast_nodes.nodes.AstNode) raises -> Int:
        # Initialize if empty
        if len(self.nodes[]) == 0:
            self.nodes[].append(AstNode(RootNode.create(c_ast_node, -1, TreeInterface(self.nodes, self.macro_defs))))
            return 0

        # Get current node state
        current_node = self.nodes[][current_idx]
        
        # State transitions
        # NOTE: C API does done_no_cascade -> done -> append -> make_child 
        # The above might not be needed, but important to be aware of that this order
        # might be there based on past experience.
        if current_node.is_accepting_tokens(c_ast_node, TreeInterface(self.nodes, self.macro_defs)):
            # Still building current node
            _ = current_node.append(c_ast_node)
            return current_idx
        
        elif current_node.is_complete(c_ast_node, TreeInterface(self.nodes, self.macro_defs)):
            # Move back to parent
            return self.get_current_node(current_node.parent_idx(), c_ast_node)
        
        elif current_node.wants_child(c_ast_node, TreeInterface(self.nodes, self.macro_defs)):
            # Create child node
            new_node = AstNode.accept(c_ast_node, current_idx, TreeInterface(self.nodes, self.macro_defs)   )
            # NOTE: Maybe change this to insert_node. We will want to support
            # appending, but also overwriting deleted nodes.
            self.nodes[].append(new_node)
            current_node.add_child(len(self.nodes[]) - 1)
            return len(self.nodes[]) - 1

        raise Error("Invalid node state")



    fn __str__(self) -> String:
        var s = String('')
        for node in self.nodes[]:
            if self.str_just_code:
                if node[].node[].isa[RootNode]():
                    continue
                node[].set_str_just_code(True)
            s += String(node[])
            s += String('\n')
        return s


# NOTE: for later: CTree might need to be explicitely a pointer. Not important for now.
fn make_tree(input_tree: c_ast_nodes.tree.Tree, macro_defs: List[StringLiteral]) raises -> Tree:
    tree = Tree(macro_defs)
    current_idx = 0
    for node in input_tree.nodes:
        current_idx = tree.get_current_node(current_idx, node[])
    return tree^
