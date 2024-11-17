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


trait AbstractAstStatement(CollectionElement):
    alias ast_type: Int

    fn accept(self, line:String) -> Bool: ...
    fn done(self) -> Bool: ...


@value
struct RootAstStatement(AbstractAstStatement):
    alias ast_type = AstTypes.ROOT

    fn accept(self, line:String) -> Bool:
        return True

    fn done(self) -> Bool:
        return True

@value
struct OtherRootAstStatement(AbstractAstStatement):
    alias ast_type = AstTypes.ROOT

    fn accept(self, line:String) -> Bool:
        return True

    fn done(self) -> Bool:
        return True


# struct AstNode[T:AstStatement]:
#     var parent:Optional[UnsafePointer[NoneType]]
#     var children:List[UnsafePointer[Self]]
#     var raw_text:List[OriginalText]
#     var handle:UnsafePointer[T]

#     fn __init__(inout self):
#         self.parent = None
#         self.children = List[UnsafePointer[Self]]()
#         self.raw_text = List[OriginalText]()
#         self.handle = UnsafePointer[AstStatement].address_of(RootAstStatement())

#     fn __init__(inout self, s:String, line_num:Int):
#         self.parent = None
#         self.children = List[UnsafePointer[Self]]()
#         self.raw_text = List[OriginalText]()
#         self.raw_text.append(OriginalText(s,line_num))

#     fn get_current_node(self, line:String, line_num:Int) -> UnsafePointer[Self]:
#         return UnsafePointer.address_of(self)
    # fn __str__(self) -> String:
    #     return "fds"

struct AstNode:
    """AstNode is a datastructure that represents the structure ofa C codebase.

    This node is part of a bidirectional acyclical graph.    
    """
    var parent:UnsafePointer[Self]
    var children:List[UnsafePointer[Self]]
    var _handler:UnsafePointer[NoneType]

    fn __init__(inout self):
        """
        
        Args:
            parent: The parent this node is connected to.
            children: The immediate subnodes that have this node as a parent.
            handler: The handle instance for this node.
        """
        self.parent = UnsafePointer[Self]()
        self.children = List[UnsafePointer[Self]]()

        ptr = UnsafePointer.address_of(RootAstStatement())
        self._handler = ptr.bitcast[NoneType]()

    fn __init__(inout self, borrowed other: Self):
        self.parent = UnsafePointer.address_of(other)

        self.children = List[UnsafePointer[Self]]()

        # TODO(josiahls): Need to have something else besides RootAstStatement since this
        # isnt actually a root in this case. 
        handler_ptr = UnsafePointer.address_of(RootAstStatement())
        self._handler = handler_ptr.bitcast[NoneType]()

    fn __init__[T:AbstractAstStatement](inout self, borrowed other: Self, owned handler:T):
        self.parent = UnsafePointer.address_of(other)

        self.children = List[UnsafePointer[Self]]()

        ptr = UnsafePointer.address_of(handler)
        self._handler = ptr.bitcast[NoneType]()

    fn handler[T:AbstractAstStatement](self) -> UnsafePointer[T]:
        return  self._handler.bitcast[T]()

    fn get_current_node(self, line:String, line_num:Int) -> UnsafePointer[Self]:
        return UnsafePointer.address_of(self)

    fn __str__(self) -> String:
        return "fds"


