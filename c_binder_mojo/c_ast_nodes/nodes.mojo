# Native Mojo Modules
from pathlib import Path
from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.tree import Tree



fn node2string(name:String,token_bundles:TokenBundles, just_code:Bool) -> String:
    var s:String = ""
    if not just_code:
        s += name + " " + String(token_bundles)
    else:
        s += String(token_bundles)
    return s


@value
struct ExampleNode(CollectionElement):
    alias __name__ = "ExampleNode"
    
    var token_bundles: TokenBundles
    var just_code:Bool

    fn __init__(out self,token_bundle:TokenBundle):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)

    fn apply_context(self, mut tree: Tree):
        print(len(tree.nodes))


@value
struct AstNodeA(CollectionElement):
    alias __name__ = "AstNodeA"
    
    var token_bundles: TokenBundles
    var just_code:Bool

    fn __init__(out self,token_bundle:TokenBundle):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)

    fn apply_context(self, mut tree: Tree):
        print(len(tree.nodes))


@value
struct AstNodeB(CollectionElement):
    alias __name__ = "AstNodeB"

    var token_bundles: TokenBundles
    var just_code:Bool

    fn __init__(out self,token_bundle:TokenBundle):
        self.token_bundles = TokenBundles()
        self.token_bundles.append(token_bundle)
        self.just_code = False

    fn __str__(self) -> String: return node2string(self.__name__,self.token_bundles,False)

    fn apply_context(self, mut tree: Tree):
        print(len(tree.nodes))


@value
struct DeletedNode(CollectionElement):
    alias __name__ = "DeletedNode"

    fn apply_context(self, mut tree: Tree): ...


@value
struct AstNode(CollectionElement):
    alias type = Variant[
        AstNodeA,
        AstNodeB,
        DeletedNode
    ]
    var node:Self.type

    fn string(self, node:Self.type) -> String:
        if   node.isa[AstNodeA](): return String(node[AstNodeA])
        elif node.isa[AstNodeB](): return String(node[AstNodeB])
        return "Missing"

    fn apply_context(self, node:Self.type, mut tree:Tree):
        if   node.isa[AstNodeA](): node[AstNodeA].apply_context(tree)
        elif node.isa[AstNodeB](): node[AstNodeB].apply_context(tree)
