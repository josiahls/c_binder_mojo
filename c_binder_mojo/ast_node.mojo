# Native Mojo Modules
from collections import Optional
from memory import UnsafePointer
# Third Party Mojo Modules
# First Party Modules


@value
struct OriginalText(CollectionElement):
    var raw_text:String
    var line_num:Int 


struct AstTypes:
    alias ROOT:Int = 0


trait AstStatement(CollectionElement):
    alias ast_type: Int

    fn accept(self, line:String) -> Bool: pass
    fn done(self) -> Bool: pass


@value
struct RootAstStatement(AstStatement):
    alias ast_type = AstTypes.ROOT

    fn accept(self, line:String) -> Bool:
        return True

    fn done(self) -> Bool:
        return True


struct AstNode[T:AstStatement]:
    var parent:Optional[UnsafePointer[NoneType]]
    var children:List[UnsafePointer[Self]]
    var raw_text:List[OriginalText]
    var ast_statement:T

    fn __init__(inout self):
        self.parent = None
        self.children = List[UnsafePointer[Self]]()
        self.raw_text = List[OriginalText]()
        self.ast_statement = RootAstStatement()

    fn __init__(inout self, s:String, line_num:Int):
        self.parent = None
        self.children = List[UnsafePointer[Self]]()
        self.raw_text = List[OriginalText]()
        self.raw_text.append(OriginalText(s,line_num))

    fn get_current_node(self, line:String, line_num:Int) -> UnsafePointer[Self]:
        return UnsafePointer.address_of(self)



    fn __str__(self) -> String:
        return "fds"