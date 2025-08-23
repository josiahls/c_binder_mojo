---
title: enum_constant_decl_node
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/enum_constant_decl_node
parent: mojo_json_ast_nodes
---

# `struct EnumConstantDeclNode`
## Aliases
### alias __name__

## Fields
### var `name`: `String`

### var `level`: `Int`

### var `children_`: `List[JsonAstNode]`

### var `parent_is_anonymous`: `Bool`

### var `value`: `Optional[Int]`

## Functions
### `fn __init__(out self, object: Object, level: Int)`


### `fn get_value(self) -> Optional[Int]`


### `fn set_value(mut self, value: Int)`


### `fn accept_from_json_object(json_object: Object, level: Int) -> Bool`


### `fn create_from_json_object(json_object: Object, level: Int) -> JsonAstNode`


### `fn to_string(self, just_code: Bool) -> String`


### `fn signature(self) -> String`


### `fn children[mut: Bool, //, origin: Origin[mut]](ref [origin] self) -> ref [origin] List[JsonAstNode]`



