# Native Mojo Modules
from sys.ffi import _Global

# Third Party Mojo Modules
from emberjson import Object

# First Party Modules
from c_binder_mojo.mojo_json_ast_nodes.traits import JsonNodeAstLike
from c_binder_mojo.mojo_json_ast_nodes.nodes import JsonAstNode


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
fn get_global_anonomous_record_decl_type_registry() -> (
    UnsafePointer[_GlobalAnonomousRecordDeclTypeRegistry]
):
    return GLOBAL_ANONOMOUS_RECORD_DECL_TYPE_REGISTRY.get_or_create_ptr()


alias GLOBAL_ANONOMOUS_RECORD_DECL_TYPE_REGISTRY = _Global[
    "GLOBAL_ANONOMOUS_RECORD_DECL_TYPE_REGISTRY",
    _GlobalAnonomousRecordDeclTypeRegistry,
    _init_global_anonomous_record_decl_type_registry,
]


struct _GlobalRecordDeclNodeQueue(Movable):
    # Mem address and record inc name
    var record_decl_node_queue: List[JsonAstNode]

    fn __init__(out self):
        self.record_decl_node_queue = List[JsonAstNode]()


fn _init_global_record_decl_node_queue() -> _GlobalRecordDeclNodeQueue:
    return _GlobalRecordDeclNodeQueue()


@always_inline
fn get_global_record_decl_node_queue() -> (
    UnsafePointer[_GlobalRecordDeclNodeQueue]
):
    return GLOBAL_RECORD_DECL_NODE_QUEUE.get_or_create_ptr()


alias GLOBAL_RECORD_DECL_NODE_QUEUE = _Global[
    "GLOBAL_RECORD_DECL_NODE_QUEUE",
    _GlobalRecordDeclNodeQueue,
    _init_global_record_decl_node_queue,
]


struct RecordDeclNode(JsonNodeAstLike):
    alias __name__ = "RecordDecl"

    var record_name: String

    var children: List[JsonAstNode]
    var level: Int
    var mem_address: String
    var disabled: Bool

    fn __init__(out self, object: Object, level: Int):
        self.record_name = ""
        self.children = List[JsonAstNode]()
        self.level = level
        self.mem_address = ""
        self.disabled = False
        try:
            if "name" in object:
                self.record_name = object["name"].string()
            if "id" in object:
                self.mem_address = object["id"].string()
            if "inner" in object:
                for inner_object in object["inner"].array():
                    var node = JsonAstNode.accept_from_json_object(
                        inner_object.object(), level + 1
                    )
                    self.children.append(node)
        except e:
            print("Error creating RecordDeclNode: ", e)

        if self.record_name == "":
            registry = get_global_anonomous_record_decl_type_registry()

            try:
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
            except e:
                print("Error creating RecordDeclNode: ", e)

    @staticmethod
    fn accept_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> Bool:
        return json_object["kind"].string() == Self.__name__

    @staticmethod
    fn create_from_json_object(
        read json_object: Object, read level: Int
    ) raises -> JsonAstNode:
        return JsonAstNode(Self(json_object, level))

    fn to_string(self, just_code: Bool) raises -> String:
        var s = String()
        var indent = "\t" * 1  # structs must not be indented.
        # structs must not be indented.
        s += "struct " + self.record_name + ":\n"

        for child in self.children:
            s += child.to_string(just_code) + "\n"
        if len(self.children) == 0:
            s += indent + "pass\n"
        if self.disabled:
            comment = "# Forward declaration of " + self.record_name + "\n"
            s = comment + "# " + s.replace("\n", "\n# ") + "\n"

        return s

    fn signature(self) -> String:
        return "# Node: " + self.__name__ + "()"
