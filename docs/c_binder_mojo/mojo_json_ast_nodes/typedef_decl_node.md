---
title: typedef_decl_node
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/typedef_decl_node
parent: mojo_json_ast_nodes
---

# `struct TypedefDeclNode`
## Aliases
### alias __name__

## Fields
### var `level`: `Int`

### var `children_`: `List[JsonAstNode]`

### var `name`: `String`

### var `dtype`: `String`

### var `is_function_type_def`: `Bool`

### var `is_disabled`: `Bool`

## Functions
### `fn __init__(out self, object: Object, level: Int)`


### `fn accept_from_json_object(json_object: Object, level: Int) -> Bool`


### `fn create_from_json_object(json_object: Object, level: Int) -> JsonAstNode`


### `fn signature(self) -> String`


### `fn to_string(self, just_code: Bool) -> String`


### `fn children[mut: Bool, //, origin: Origin[mut]](ref [origin] self) -> ref [origin] List[JsonAstNode]`



