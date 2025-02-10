# Native Mojo Modules
from pathlib import Path
from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.nodes import AstNode,AstNodeA,AstNodeB


struct Tree:
    # Might not need path here. 
    var path: Path

    var nodes: List[AstNode]

    fn __init__(out self, path:Path):
        self.path  = path
        self.nodes = List[AstNode]()

    
    fn __moveinit__(out self, owned existing:Self):
        self.path = existing.path^
        self.nodes = existing.nodes^

    
    fn __str__(self) -> String:
        var s = String('')
        for node in self.nodes:
            s += String(node[])
            s += '\n'
        return s


    fn get_current_node(mut self, current_idx:Int, token_bundle:TokenBundle) -> Int:

        if len(self.nodes) == 0:
            # Create the first node
            new_node = AstNode.accept(token_bundle, current_idx, self)
            self.nodes.append(new_node)
            return current_idx
        else:
            node = self.nodes[current_idx]
            
            if node.done(token_bundle,self):
                # Create the first node
                new_node = AstNode.accept(token_bundle,  current_idx, self)
                # TODO(josiahls): Maybe check deleted indicies and 
                # assign those first? In general this is probably
                # ok, but we want to reuse list space ideally.
                self.nodes.append(new_node)
                return len(self.nodes) - 1
            elif node.append(token_bundle, self):
                return node.current_idx()
            elif (child_idx := node.make_child(token_bundle, self)) != -1:
                return child_idx
            else:
                print('Warning invalid path for token: ' + String(token_bundle))
               # Create the first node
                new_node = AstNode.accept(token_bundle,  current_idx, self)
                # TODO(josiahls): Maybe check deleted indicies and 
                # assign those first? In general this is probably
                # ok, but we want to reuse list space ideally.
                self.nodes.append(new_node)
                return len(self.nodes) - 1
                


fn make_tree(path:Path) raises -> Tree:
    root_node = Tree(path)
    line_num = 1 # Line numbers start at 1 for vscode at least
    col_num = 0
    current_idx = 0
    for line in path.read_text().split('\n'):
        col_num = 0
        for token in line[].replace(';',' ; ').split(' '):
            token_bundle = TokenBundle(token[], line_num, col_num)
            current_idx = root_node.get_current_node(current_idx, token_bundle)
            col_num += len(token[])
        line_num += 1

    return root_node^