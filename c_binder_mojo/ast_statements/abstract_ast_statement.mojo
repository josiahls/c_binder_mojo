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
    fn accept(line:String) -> Bool: ...
    fn done(self) -> Bool: ...
    fn do_accumulate(self) -> Bool: ...
    fn accumulate(self, text:String, line_num:Int) -> None: ...
    @staticmethod
    fn do_make_new(text:String, line_num:Int) -> Bool: ...
    @staticmethod
    fn make_new(text:String, line_num:Int) -> Self: ...

