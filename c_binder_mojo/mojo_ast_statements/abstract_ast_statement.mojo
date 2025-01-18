# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle
from c_binder_mojo import c_ast_statements


trait AbstractAstStatement(CollectionElement,Stringable):
    @staticmethod
    fn accept(ast_statement: c_ast_statements.ast_statements.AstStatements) -> Bool: 
        """Whether the current text is something this statement can process.
        
        Args:
          ast_statement: A C ast statement.

        Returns: Bool whether this statement will accept the current text.
        """
        ...

    fn togggle_string_just_code(mut self, string_just_code:Bool) -> None:
      ...

