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
    fn accept(self, line:String) -> Bool: ...
    fn done(self) -> Bool: ...

