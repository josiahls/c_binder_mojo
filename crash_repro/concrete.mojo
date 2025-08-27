# Concrete node with children
from crash_repro.node import Node


struct ConcreteNode(Copyable, Movable):
    var children: List[Node]  # This completes the cycle

    fn __init__(out self):
        self.children = List[Node]()
