# Proves the compiler can handle the circular reference
from crash_repro.node import Node
from crash_repro.concrete import ConcreteNode


fn main():
    print("Creating ConcreteNode...")
    var concrete = ConcreteNode()

    print("Creating Node with ConcreteNode...")
    var node = Node(concrete)
    print(len(node.data.children))

    print("✅ SUCCESS: Compiler handles circular references perfectly!")
    print("The LSP crashes, but the code compiles and runs fine.")
