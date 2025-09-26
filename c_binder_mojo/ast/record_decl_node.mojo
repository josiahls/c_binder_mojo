# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.ast.traits import AstNodeLike
from c_binder_mojo.ast.nodes import AstNode
from c_binder_mojo.typing import TypeMapper


struct _GlobalAnonomousRecordDeclTypeRegistry(Movable):
    # Mem address and record inc name
    var record_decl_type_registry: Dict[String, Int]

    fn __init__(out self):
        self.record_decl_type_registry = Dict[String, Int]()


fn _init_global_anonomous_record_decl_type_registry() -> (
    _GlobalAnonomousRecordDeclTypeRegistry
):
    return _GlobalAnonomousRecordDeclTypeRegistry()


@always_inline
fn get_global_anonomous_record_decl_type_registry() raises -> (
    UnsafePointer[_GlobalAnonomousRecordDeclTypeRegistry]
):
    return GLOBAL_ANONOMOUS_RECORD_DECL_TYPE_REGISTRY.get_or_create_ptr()


alias GLOBAL_ANONOMOUS_RECORD_DECL_TYPE_REGISTRY = _Global[
    "GLOBAL_ANONOMOUS_RECORD_DECL_TYPE_REGISTRY",
    _init_global_anonomous_record_decl_type_registry,
]


# struct _GlobalRecordDeclNodeQueue(Movable):
#     # Mem address and record inc name
#     var record_decl_node_queue: List[AstNode]

#     fn __init__(out self):
#         self.record_decl_node_queue = List[AstNode]()


# fn _init_global_record_decl_node_queue() -> _GlobalRecordDeclNodeQueue:
#     return _GlobalRecordDeclNodeQueue()


# @always_inline
# fn get_global_record_decl_node_queue() -> (
#     UnsafePointer[_GlobalRecordDeclNodeQueue]
# ):
#     return GLOBAL_RECORD_DECL_NODE_QUEUE.get_or_create_ptr()


# alias GLOBAL_RECORD_DECL_NODE_QUEUE = _Global[
#     "GLOBAL_RECORD_DECL_NODE_QUEUE",
#     _GlobalRecordDeclNodeQueue,
#     _init_global_record_decl_node_queue,
# ]


struct RecordDeclNode(AstNodeLike):
    alias __name__ = "RecordDecl"

    var record_name: String

    var children_: List[AstNode]
    var level: Int
    var mem_address: String
    var disabled: Bool
    var tag_used: String
    var has_body: Bool

    fn __init__(out self, json_object: Object, level: Int) raises:
        self.record_name = ""
        # TODO: Should this assert_in=True? RecordDecl should have inners no?
        self.children_ = self.make_children(json_object, level + 1)
        self.level = level
        self.mem_address = ""
        self.disabled = False
        self.tag_used = ""
        self.has_body = False

        struct_type_queue = List[String]()
        union_struct_type_queue = List[String]()
        enum_type_queue = List[String]()
        anonomous_record_increment = 0
        if "name" in json_object:
            self.record_name = json_object["name"].string()
        if "id" in json_object:
            self.mem_address = json_object["id"].string()
        if "tagUsed" in json_object:
            self.tag_used = json_object["tagUsed"].string()
        for ref node in self.children():
            if node.isa[Self]():
                self.has_body = True
                struct_type_queue.append(node[Self].record_name)
            elif node.isa[EnumDeclNode]():
                self.has_body = True
                enum_type_queue.append(node[EnumDeclNode].name)
            elif node.isa[FieldDeclNode]():
                self.has_body = True
                if (
                    node[FieldDeclNode].is_union
                    and node[FieldDeclNode].is_anonomous_type
                ):
                    anonomous_record_increment += 1
                    node[FieldDeclNode].name = "union_placeholder_" + String(
                        anonomous_record_increment
                    )
                    if len(struct_type_queue) == 0:
                        print(
                            "FieldDeclNode has struct type queue for"
                            " unions is empty"
                        )
                    else:
                        node[
                            FieldDeclNode
                        ].desugared_type = struct_type_queue.pop()

                elif struct_type_queue:
                    var desugared_type = struct_type_queue.pop()
                    node[FieldDeclNode].desugared_type = desugared_type
                elif enum_type_queue:
                    var desugared_type = enum_type_queue.pop()
                    node[FieldDeclNode].desugared_type = desugared_type

        if self.record_name == "":
            registry = get_global_anonomous_record_decl_type_registry()
            var record_id = 0
            if self.mem_address not in registry[].record_decl_type_registry:
                max_num = 0
                for value in registry[].record_decl_type_registry.values():
                    if value > max_num:
                        max_num = value
                record_id = max_num + 1
                registry[].record_decl_type_registry[
                    self.mem_address
                ] = record_id
            else:
                record_id = registry[].record_decl_type_registry[
                    self.mem_address
                ]
                self.disabled = True
            self.record_name = "anonomous_record_" + String(record_id)

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * 1  # structs must not be indented.
        if self.tag_used == "union":
            s += "alias " + self.record_name + " = C_Union["
            var overflow: String = ""
            iter_started = False
            for child in self.children():
                if iter_started:
                    s += ", "
                if child.isa[FieldDeclNode]():
                    var dtype = child[FieldDeclNode].desugared_type
                    if dtype == "":
                        dtype = child[FieldDeclNode].type
                    s += TypeMapper.convert_c_type_to_mojo_type(dtype)
                    iter_started = True
                else:
                    overflow += child.to_string(just_code)
            s += "]" + "\n" + overflow + "\n"
        else:
            # structs must not be indented.
            # TODO(josiahls): Is there ever a case where we can't do this? Like struct size or something?
            # s += '@register_passable("trivial")\n'
            s += "struct " + self.record_name + "(Copyable & Movable):\n"

            for child in self.children():
                s += child.to_string(just_code) + "\n"
            if not self.has_body:
                s += indent + "pass\n"
        if self.disabled:
            comment = "# Forward declaration of " + self.record_name + "\n"
            s = comment + "# " + s.replace("\n", "\n# ") + "\n"

        return s

    fn children(ref self) -> ref [self] List[AstNode]:
        return UnsafePointer(to=self.children_).origin_cast[
            target_origin = __origin_of(self)
        ]()[]
