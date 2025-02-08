# Native Mojo Modules
from pathlib import Path
from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles
from c_binder_mojo.c_ast_nodes.graph import Graph


@value
struct AstNodeA(CollectionElement):
    var value: TokenBundle

    fn __str__(self) -> String:
        return String('AstNodeA ') + String(self.value)

    fn apply_context(self, mut graph: Graph):
        print(len(graph.nodes))


@value
struct AstNodeB(CollectionElement):
    var value: TokenBundle

    fn __str__(self) -> String:
        return String('AstNodeB ') + String(self.value)

    fn apply_context(self, mut graph: Graph):
        print(len(graph.nodes))


alias AstNodes = Variant[
    AstNodeA,
    AstNodeB
]

fn string(node:AstNodes) -> String:
    if   node.isa[AstNodeA](): return String(node[AstNodeA])
    elif node.isa[AstNodeB](): return String(node[AstNodeB])
    return "Missing"

fn apply_context(node:AstNodes, mut graph:Graph):
    if   node.isa[AstNodeA](): node[AstNodeA].apply_context(graph)
    elif node.isa[AstNodeB](): node[AstNodeB].apply_context(graph)
