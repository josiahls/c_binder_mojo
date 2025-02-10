# Native Mojo Modules
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.c_ast_nodes.tree import Tree
from c_binder_mojo.base import TokenBundle

trait NodeAstLike(CollectionElement,Stringable): 

    fn apply_context(self, mut tree:Tree): ...
    @staticmethod
    fn accept(token_bundle:TokenBundle) -> Bool: ...
    @staticmethod
    fn create(token_bundle:TokenBundle, mut tree:Tree) -> Self: ...

