# Native Mojo Modules
from collections import Optional,Dict,Set
from memory import UnsafePointer, bitcast, OwnedPointer, ArcPointer
from sys.ffi import OpaquePointer
from utils import Variant
from pathlib import Path
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo import c_ast_nodes
from c_binder_mojo import mojo_ast_statements

from c_binder_mojo.c_ast_nodes.tree import Tree as CTree
# from c_binder_mojo.mojo_ast_node import RootMojoAstNode
from c_binder_mojo.base import STRING_SPLIT_AT


@value
struct DisplayAstNode(CollectionElement):
    """AstNode is a datastructure that represents the structure ofa C codebase.

    This node is part of a bidirectional acyclical graph.    
    """
    var parent: Int
    var children: List[Int]
    var string:  String
    var root: UnsafePointer[RootDisplayAstNode]
    var indent_root:Bool

    fn indents(self) -> Int:
        var indent = 0
        var _parent = self.parent
        while _parent != -1:
            _parent = self.root[].nodes[_parent].parent
            indent += 1

        if indent > 0 and not self.indent_root:
            indent -= 1
        return indent

    def __str__(self) -> String: 
        var s = String("")
        var indents = String("")
        for _ in range(self.indents()):
            indents += "\t"

        var begin_end_s = self.string.split(STRING_SPLIT_AT)

        s += indents + begin_end_s[0].replace('\n','\n' + indents)
        for child in self.children:
            node_s = String(self.root[].nodes[child[]])

            if node_s == "" or node_s == " " or node_s == "\n":
                continue
            # TODO(josiahls): This is not great. We need a generic way for a 
            # node to indicate that there should be a new line vs inline. Right now
            # the ability to know this is obsquired. 
            s += "\n"
            s += node_s

        if len(begin_end_s) > 1:
            s += "\n" 
            s += indents + STRING_SPLIT_AT + " " + begin_end_s[1].replace('\n','\n' + indents)
        return s

@value
struct RootDisplayAstNode(AnyType):
    var nodes:List[DisplayAstNode]
    var string_just_code:Bool
    var indent_root:Bool

    fn __init__(mut self, read root:CTree) raises:
        self.string_just_code = False
        self.indent_root = True
        self.nodes = List[DisplayAstNode]()
        self.update_nodes(-1, 0, root)

    # fn __init__(mut self, read root:RootMojoAstNode) raises:
    #     self.string_just_code = False
    #     self.indent_root = False
    #     self.nodes = List[DisplayAstNode]()
    #     self.update_nodes(-1, 0, root) 

    # fn update_nodes(mut self, parent_idx:Int, idx: Int, read root:RootMojoAstNode) raises:
    #     node = root.nodes[idx]
    #     mojo_ast_statements.to_toggle_string_just_code(node.ast_statement,True)

    #     self.nodes.append(
    #         DisplayAstNode(
    #             parent_idx, 
    #             List[Int](),
    #             mojo_ast_statements.ast_statements.to_string(node.ast_statement),
    #             UnsafePointer[mut=True].address_of(self),
    #             indent_root=self.indent_root
    #         )
    #     )

    #     if len(node.children) == 0:
    #         return None

    #     for child in node.children:
    #         self.update_nodes(idx, child[], root)
    #         self.nodes[idx].children.append(child[])


    fn validate_node(self, parent_idx: Int, node_idx: Int, root: CTree) raises:
        # Validate current node exists
        if node_idx >= len(self.nodes):
            print("ERROR: Invalid node index: " + String(node_idx))
            print("Node's parent index: " + String(parent_idx))
            if parent_idx >= 0:  # Only print parent info if there is a parent
                print("Parent node type: " + String(root.nodes[parent_idx]))
            else:
                print("Node has no parent (root node)")
            print("Total nodes in display tree: " + String(len(self.nodes)))
            print("Total nodes in original tree: " + String(len(root.nodes)))
            raise Error("Node index out of bounds")
        
        # Validate all children
        node = self.nodes[node_idx]
        for child in node.children:
            if child[] >= len(self.nodes):
                print("ERROR: Invalid child index: " + String(child[]) + 
                      " in node: " + String(node_idx))
                print("Node type: " + String(root.nodes[node_idx]))
                if parent_idx >= 0:  # Only print parent info if there is a parent
                    print("Parent node type: " + String(root.nodes[parent_idx]))
                else:
                    print("Node has no parent (root node)")
                print('Child node type: ' + String(root.nodes[child[]]))
                print("Total nodes in display tree: " + String(len(self.nodes)))
                print("Total nodes in original tree: " + String(len(root.nodes)))
                raise Error("Child index out of bounds")
            
            # Recursively validate children
            self.validate_node(node_idx, child[], root)

    fn update_nodes(mut self, parent_idx: Int, idx: Int, read root:CTree) raises:
        node = root.nodes[idx]

        # print('Is this node here? index 39' + String(root.nodes[39]) + ' total nodes: ' + String(len(root.nodes)))
        self.nodes.append(
            DisplayAstNode(
                parent_idx, 
                List[Int](),
                String(node),
                UnsafePointer[mut=True].address_of(self),
                indent_root=self.indent_root
            )
        )

        var children = node.children()
        if len(children[]) == 0:
            return None

        for child in children[]:
            # print('Updating child: ' + String(child[]) + ' parent: ' + String(idx))
            self.update_nodes(idx, child[], root)
            self.nodes[idx].children.append(child[])

        # Add validation at the end
        self.validate_node(parent_idx, idx, root)

    fn __del__(owned self):
        self.nodes.clear()

    def __str__(self) -> String: 
        idx = 0
        node = self.nodes[idx]
        var s = String(node)
        return s