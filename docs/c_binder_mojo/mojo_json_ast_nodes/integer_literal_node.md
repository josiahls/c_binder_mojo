---
title: integer_literal_node
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/integer_literal_node
parent: mojo_json_ast_nodes
---

# `struct IntegerLiteralNode`
## Aliases
### alias __name__

## Fields
### var `value`: `String`

### var `children_`: `List[JsonAstNode]`

### var `level`: `Int`

## Functions
### `fn __init__(out self, object: Object, level: Int)`


### `fn get_value(self) -> Optional[Int]`


### `fn accept_from_json_object(json_object: Object, level: Int) -> Bool`


### `fn create_from_json_object(json_object: Object, level: Int) -> JsonAstNode`


### `fn to_string(self, just_code: Bool) -> String`


### `fn signature(self) -> String`


### `fn children[mut: Bool, //, origin: Origin[mut]](ref [origin] self) -> ref [origin] List[JsonAstNode]`



