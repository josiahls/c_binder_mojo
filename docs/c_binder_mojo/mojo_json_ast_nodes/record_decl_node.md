---
title: record_decl_node
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/record_decl_node
parent: mojo_json_ast_nodes
---

## Aliases
### alias GLOBAL_ANONOMOUS_RECORD_DECL_TYPE_REGISTRY

# `struct RecordDeclNode`
## Aliases
### alias __name__

## Fields
### var `record_name`: `String`

### var `children_`: `List[JsonAstNode]`

### var `level`: `Int`

### var `mem_address`: `String`

### var `disabled`: `Bool`

### var `tag_used`: `String`

## Functions
### `fn __init__(out self, object: Object, level: Int)`


### `fn accept_from_json_object(json_object: Object, level: Int) -> Bool`


### `fn create_from_json_object(json_object: Object, level: Int) -> JsonAstNode`


### `fn to_string(self, just_code: Bool) -> String`


### `fn signature(self) -> String`


### `fn children[mut: Bool, //, origin: Origin[mut]](ref [origin] self) -> ref [origin] List[JsonAstNode]`



## Functions
### `fn get_global_anonomous_record_decl_type_registry() -> UnsafePointer[_GlobalAnonomousRecordDeclTypeRegistry]`


