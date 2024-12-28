from collections import Optional,Dict,Set
from memory import UnsafePointer
from utils import Variant
from pathlib import Path
import os


struct AstNode(CollectionElement):
    var parent:   UnsafePointer[AstNode]

    fn __init__(mut self):
        self.parent   = UnsafePointer[Self]()

    fn __moveinit__(mut self, owned existing:Self):
        self.parent = existing.parent

    fn __copyinit__(mut self, read existing:Self):
        self.parent = existing.parent


fn make_graph(path:Path) raises -> UnsafePointer[AstNode]:
    return UnsafePointer[AstNode]() 

