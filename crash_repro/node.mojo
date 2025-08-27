# Simple node that causes LSP crash
from crash_repro import NodeVariant


struct Node(Copyable, Movable):
    var data: NodeVariant  # This creates the circular reference

    fn __init__(out self, data: NodeVariant):
        self.data = data
