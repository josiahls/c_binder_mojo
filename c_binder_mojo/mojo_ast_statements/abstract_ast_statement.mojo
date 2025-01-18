# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules
from c_binder_mojo.base import TokenBundle


trait AbstractAstStatement(CollectionElement,Stringable):
    @staticmethod
    fn accept(token_bundle: TokenBundle) -> Bool: 
        """Whether the current text is something this statement can process.
        
        Args:
            token_bundle: A line of text from the .h or .cpp file we are processing.

        Returns: Bool whether this statement will accept the current text.
        """
        ...

    fn done(self, token_bundle: TokenBundle) -> Bool: 
        """Whether the current statement is finished accepting code lines.

        This is called before any processing is done.

        Args:
            token_bundle: The text to accumulate.

        Returns: Bool whether the statement is finished processing lines.
        """
        ...

    fn accumulate(mut self, token_bundle: TokenBundle) -> Bool: 
        """Accumulate text into a private buffer.
        
        Some AST statements span multiple lines and require the full
        context to do their respective ops.

        Args:
            token_bundle: The text to accumulate.

        Returns: Bool whether this statement accumulated text
        """        
        ...

    fn do_make_child(mut self, token_bundle: TokenBundle) -> Bool: 
        """Whether to create a child AST statement.

        TODO: Is this needed? If the given the current line, and if we are not
        done, and the current statement does not accept this line, we should be able to 
        just create a new line anyways. 

        Args:
            token_bundle: The text to accumulate.

        Returns: Whether to create a child AST statement.
        """
        ...
