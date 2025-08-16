trait Childrenable:
    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[Node]:
        pass


@fieldwise_init
struct Node(Copyable & Movable & Writable & Childrenable):
    var children_: List[Node]
    var name_: String

    fn __copyinit__(out self, other: Self):
        print("copyinit")
        self.children_ = other.children_
        self.name_ = other.name_

    fn __init__(out self):
        self.children_ = List[Node]()
        self.name_ = ""

    fn children[
        mut: Bool, //, origin: Origin[mut]
    ](ref [origin]self) -> ref [self] List[Node]:
        # Create an unsafe pointer to the member, then cast the origin
        return UnsafePointer(to=self.children_).origin_cast[
            origin = __origin_of(self)
        ]()[]

    fn write_to[W: Writer](self, mut writer: W):
        writer.write("Node")


fn main():
    var node = Node()
    node.children_.append(Node())
    node.children_.append(Node())

    for ref child in node.children[mut=False]():
        print(child)
        child.name_ = "child"
