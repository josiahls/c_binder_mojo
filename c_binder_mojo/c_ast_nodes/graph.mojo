# Native Mojo Modules
from pathlib import Path
from utils.variant import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle,TokenBundles


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

struct Graph:
    var path: Path

    var nodes: List[AstNodes]

    fn __init__(out self, path:Path):
        self.path  = path
        self.nodes = List[AstNodes]()

    
    fn __moveinit__(out self, owned existing:Self):
        self.path = existing.path^
        self.nodes = existing.nodes^

    
    fn __str__(self) -> String:
        var s = String('')
        for node in self.nodes:
            s += string(node[])
            s += '\n'
        return s


    fn get_current_node(mut self, current_idx:Int, token_bundle:TokenBundle) -> Int:

        is_even = len(self.nodes) % 2
        if is_even == 1:
            self.nodes.append(AstNodeA(token_bundle))
        else:
            self.nodes.append(AstNodeB(token_bundle))

        node = self.nodes[-1]
        apply_context(node, self)

        return current_idx


fn make_graph(path:Path) raises -> Graph:
    root_node = Graph(path)
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