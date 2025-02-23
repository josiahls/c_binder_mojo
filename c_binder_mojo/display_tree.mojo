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
from c_binder_mojo.base import STRING_SPLIT_AT, TokenBundle,TokenBundles


@value
struct DisplayAstNode:
    var parent_idx: Int
    var children_idxs: ArcPointer[List[Int]]
    var display_name: String
    var token_bundles: TokenBundles
    var root: UnsafePointer[RootDisplayAstNode]
    var indent_root:Bool
    var inline_children:Bool
    var just_code:Bool

    fn __init__(mut self, parent_idx: Int, children_idxs: ArcPointer[List[Int]], 
                display_name: String, token_bundles: TokenBundles, 
                root: UnsafePointer[RootDisplayAstNode], indent_root: Bool, 
                inline_children: Bool, just_code: Bool):
        self.parent_idx = parent_idx
        self.children_idxs = children_idxs
        self.display_name = display_name
        self.token_bundles = token_bundles
        self.root = root
        self.indent_root = indent_root
        self.inline_children = inline_children
        self.just_code = just_code

    fn indents(self) -> Int:
        var indent = 0
        var _parent = self.parent_idx
        while _parent != -1:
            _parent = self.root[].nodes[_parent].parent_idx
            indent += 1

        if indent > 0 and not self.indent_root:
            indent -= 1
        return indent

    fn append_children(self) -> String:
        var s = String('')
        for child in self.children_idxs[]:
            if not self.inline_children:
                s += "\n"
            s += String(self.root[].nodes[child[]])
        return s


    fn __str__(self) -> String:
        var s = String("")
        var indents = String("")
        for _ in range(self.indents()):
            indents += "\t"

        if not self.just_code:
            s += indents + self.display_name
        else:
            s += indents 

        iterated_children = False
        token_i = 0
        for token_bundle in self.token_bundles:
            if token_bundle[].is_splitter:
                if token_i == 0:
                    s += String('\n')
                iterated_children = True
                token_i = 0
                s += self.append_children()
                s += String('\n' + indents)
            elif token_i == 0:
                s += String(token_bundle[].token).replace('\n','\n' + indents)
                token_i += 1
            else:
                s += ' ' + String(token_bundle[].token).replace('\n','\n' + indents)
                token_i += 1

        if not iterated_children:
            s += self.append_children()
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
        for child in node.children_idxs[]:
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

        display_name = node.display_name()
        if idx == 0:
            # Also add the tree datatypes if this is a root node.
            display_name += String('\n')
            display_name += root.registered_datatypes_to_string()
        self.nodes.append(
            DisplayAstNode(
                parent_idx = parent_idx, 
                children_idxs = List[Int](),
                display_name = display_name,
                token_bundles = node.token_bundles(),
                root = UnsafePointer[mut=True].address_of(self),
                indent_root = self.indent_root,
                inline_children = node.should_children_inline(),
                just_code = self.string_just_code
            )
        )

        var children = node.children_idxs()
        if len(children[]) == 0:
            return None

        for child in children[]:
            self.update_nodes(idx, child[], root)
            self.nodes[idx].children_idxs[].append(child[])

        # Add validation at the end
        self.validate_node(parent_idx, idx, root)

    fn __del__(owned self):
        self.nodes.clear()

    def __str__(self) -> String: 
        idx = 0
        node = self.nodes[idx]
        var s = String(node)
        return s