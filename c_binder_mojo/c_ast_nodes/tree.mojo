# Native Mojo Modules
from memory import ArcPointer
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.common import TokenBundle
from c_binder_mojo.c_ast_nodes.nodes import AstNode, NodeState, NodeAstLike


@value
struct NodeIndices:
    var original_parent_idx: Int
    var original_current_idx: Int
    var new_parent_idx: Int
    var new_current_idx: Int

    fn __init__(out self, original_parent_idx:Int, original_current_idx:Int, new_parent_idx:Int = -1, new_current_idx:Int = -1):
        self.original_parent_idx = original_parent_idx
        self.original_current_idx = original_current_idx
        self.new_parent_idx = new_parent_idx
        self.new_current_idx = new_current_idx


@value
struct TreeInterface:
    var _nodes: ArcPointer[List[AstNode]]
    var _tokens: ArcPointer[List[TokenBundle]]
    var _indices: NodeIndices
    var node_state: Int

    fn nodes(self) -> ArcPointer[List[AstNode]]:
        return self._nodes

    fn tokens(self) -> ArcPointer[List[TokenBundle]]:
        return self._tokens

    fn insert_node(mut self, owned node:AstNode) -> Int:
        self._nodes[].append(node)
        return len(self._nodes[]) - 1


fn get_current_node(
    mut token:TokenBundle, 
    current_idx:Int, 
    node_state_:Int, 
    nodes:ArcPointer[List[AstNode]], 
    tokens:ArcPointer[List[TokenBundle]]
) -> Int:

    _current_idx = current_idx

    if _current_idx < 0: 
        print('current_idx is less than 0')
        return _current_idx

    if token.deleted:
        return _current_idx
    
    node_state = node_state_

    if node_state == NodeState.STARTED:
        indices = NodeIndices(-1, _current_idx)
        tree_interface = TreeInterface(nodes, tokens, indices, node_state)
        node = AstNode.accept(token, tree_interface)
        return tree_interface.insert_node(node)
    elif node_state == NodeState.WANTING_CHILD:
        tree_interface = TreeInterface(
            nodes, 
            tokens, 
            nodes[][_current_idx].indicies(), 
            node_state
        )
        node = AstNode.accept(token, tree_interface)
        return tree_interface.insert_node(node)
    else:
        node = nodes[][_current_idx]

    tree_interface = TreeInterface(nodes, tokens, node.indicies(), node_state)
    node_state = node.determine_state(token, tree_interface)

    if node_state == NodeState.COMPLETE:
        node.process(token, tree_interface)
        return get_current_node(token, node.indicies().original_parent_idx, node_state, nodes, tokens)
    elif node_state == NodeState.APPENDING:
        node.process(token, tree_interface)
        return _current_idx
    elif node_state == NodeState.WANTING_CHILD:
        return get_current_node(token, _current_idx, NodeState.WANTING_CHILD, nodes, tokens)
    else:
        print('WARNING: get_current_node called on AstNode with no determine_state method')
        return _current_idx


fn make_tree(owned token_bundles:List[TokenBundle]) -> ArcPointer[List[AstNode]]:
    _token_bundles = ArcPointer(token_bundles)
    nodes = ArcPointer(List[AstNode]())
    var current_idx = 0
    node_state = NodeState.STARTED
    for token in token_bundles:
        current_idx = get_current_node(token[], current_idx, node_state, nodes, _token_bundles)
    return nodes
