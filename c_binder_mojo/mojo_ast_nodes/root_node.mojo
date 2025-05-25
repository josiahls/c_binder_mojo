# Native Mojo Modules
from memory import ArcPointer

# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.mojo_ast_nodes.nodes import NodeAstLike
from c_binder_mojo.mojo_ast_nodes.tree import ModuleInterface


struct RootNode(NodeAstLike):
    alias __name__:String = "RootNode"

    fn __str__(self) -> String: return self.__name__


    fn to_string(
        self, just_code: Bool, module_interface: ModuleInterface
    ) raises -> String:
        return self.__name__