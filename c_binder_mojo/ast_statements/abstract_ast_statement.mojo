# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
from utils import Variant
# Third Party Mojo Modules
# First Party Modules


@value
struct OriginalText(CollectionElement):
    var raw_text:String
    var line_num:Int 


trait AbstractAstStatement(CollectionElement,Stringable):
    @staticmethod
    fn accept(text:String) -> Bool: 
        """Whether the current text is something this statement can process.
        
        Args:
            text: A line of text from the .h or .cpp file we are processing.

        Returns: Bool whether this statement will accept the current text.
        """
        ...

    fn done(self) -> Bool: 
        """Whether the current statement is finished accepting code lines.

        Returns: Bool whether the statement is finished processing lines.
        """
        ...

    fn accumulate(self, text:String, line_num:Int) -> Bool: 
        """Accumulate text into a private buffer.
        
        Some AST statements span multiple lines and require the full
        context to do their respective ops.

        Args:
            text: The text to accumulate.
            line_num: The specific line number this text is from.

        Returns: Bool whether this statement accumulated text
        """        
        ...

    @staticmethod
    fn do_make_child(text:String, line_num:Int) -> Bool: 
        """Whether to create a child AST statement.

        TODO: Is this needed? If the given the current line, and if we are not
        done, and the current statement does not accept this line, we should be able to 
        just create a new line anyways. 

        Args:
            text: The text to accumulate.
            line_num: The specific line number this text is from.

        Returns: Whether to create a child AST statement.
        """
        
        ...
