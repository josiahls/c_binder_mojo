---
title: var_decl_node
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/var_decl_node
parent: mojo_json_ast_nodes
---

# `struct VarDeclNode`
## Aliases
### alias __name__

## Fields
### var `level`: `Int`

### var `name`: `String`

### var `mangled_name`: `String`

### var `type`: `String`

### var `children_`: `List[JsonAstNode]`

## Functions
### `fn __init__(out self, object: Object, level: Int)`


### `fn accept_from_json_object(json_object: Object, level: Int) -> Bool`


### `fn create_from_json_object(json_object: Object, level: Int) -> JsonAstNode`


### `fn to_string(self, just_code: Bool) -> String`


### `fn signature(self) -> String`


### `fn children[mut: Bool, //, origin: Origin[mut]](ref [origin] self) -> ref [origin] List[JsonAstNode]`



