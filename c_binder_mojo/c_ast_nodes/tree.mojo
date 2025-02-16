# Native Mojo Modules
from pathlib import Path
from utils.variant import Variant
from memory import UnsafePointer,ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.nodes import AstNode


struct Tree:
    # Might not need path here. 
    var path: Path

    var nodes: List[AstNode]
    var deleted_nodes:List[Int]
    var registered_datatypes: ArcPointer[List[String]]  # Track known datatypes

    fn __init__(out self, path:Path):
        self.path  = path
        self.nodes = List[AstNode]()
        self.deleted_nodes = List[Int]()
        self.registered_datatypes = ArcPointer(List[String]())
        
        # Pre-register basic C types
        self.registered_datatypes[].append("char")
        self.registered_datatypes[].append("int")
        self.registered_datatypes[].append("float")
        self.registered_datatypes[].append("double")
        self.registered_datatypes[].append("void")
        self.registered_datatypes[].append("unsigned")
        self.registered_datatypes[].append("signed")
        self.registered_datatypes[].append("short")
        self.registered_datatypes[].append("long")
        self.registered_datatypes[].append("*") # C Pointer

    
    fn __moveinit__(out self, owned existing:Self):
        self.path = existing.path^
        self.nodes = existing.nodes^
        self.deleted_nodes = existing.deleted_nodes^
        self.registered_datatypes = existing.registered_datatypes^
    
    fn __str__(self) -> String:
        var s = String('')
        s += String('\nRegistered Datatypes: \n')
        sub_s = String('')
        max_len = 80
        for dt in self.registered_datatypes[]:
            sub_s += dt[] + String(', ')
            if len(sub_s) > max_len:
                s += sub_s + String('\n')
                sub_s = String('')
        s += sub_s + String('\n')

        for node in self.nodes:
            indent = self.node_indent(node[])
            for _ in range(indent):
                s += '\t'
            s += String(node[])
            s += '\n'
        return s

    
    fn node_indent(self, node:AstNode) -> Int:
        indent = 0
        current_node = node
        while True:
            _parent_idx = current_node.parent_idx()
            if _parent_idx == 0:
                break
            current_node = self.nodes[_parent_idx]
            indent += 1
        return indent


    fn insert_node(mut self, mut node:AstNode) -> Int:
        for deleted_idx in self.deleted_nodes:
            idx = deleted_idx[]
            node.set_current_idx(idx)
            self.nodes[idx] = node
            return idx
        
        idx = len(self.nodes)
        node.set_current_idx(idx)
        self.nodes.append(node)
        return idx


    fn get_current_node(mut self, current_idx:Int, token_bundle:TokenBundle) raises -> Int:
        if len(self.nodes) == 0:
            # Create the first node
            new_node = AstNode(RootNode.create(token_bundle, current_idx, self))
            self.nodes.append(new_node)

        #NOTE unsafe_get / getitem copies the value.
        #NOTE node = self.nodes.unsafe_ptr() + current_idx
        node = self.nodes[current_idx]

        if node.done_no_cascade(token_bundle,self):
            parent_idx = node.parent_idx()
            node = self.nodes[parent_idx]
            new_node = AstNode.accept(token_bundle,  parent_idx, self)
            child_idx = self.insert_node(new_node)
            
            # Add the new node to parent's children list
            children_ptr = node.children_idxs()
            children_ptr[].append(child_idx)
            
            self.nodes[parent_idx] = node #NOTE Dumb, cant work with ptr though
            return child_idx
        elif node.done(token_bundle,self):
            return self.get_current_node(node.parent_idx(), token_bundle)
        elif node.append(token_bundle, self):
            self.nodes[current_idx] = node #NOTE Dumb, cant work with ptr though
            return node.current_idx()
        elif node.make_child(token_bundle, self):
            new_node = AstNode.accept(token_bundle,  node.current_idx(), self)
            child_idx = self.insert_node(new_node)
            children_ptr = node.children_idxs()
            children_ptr[].append(child_idx)
            self.nodes[current_idx] = node #NOTE Dumb, cant work with ptr though
            return child_idx
        else:
            raise Error(
                'Warning invalid path for token: ' + String(token_bundle) + " current node: " + String(node) + '\n' + String(self)
            )


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