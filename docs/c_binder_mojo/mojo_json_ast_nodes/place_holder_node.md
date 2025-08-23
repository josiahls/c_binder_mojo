---
title: place_holder_node
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/place_holder_node
parent: mojo_json_ast_nodes
---

# `struct PlaceHolderNode`
## Aliases
### alias __name__

## Fields
### var `nodes`: `List[JsonAstNode]`

### var `level`: `Int`

### var `json_string`: `String`

### var `children_`: `List[JsonAstNode]`

## Functions
### `fn __init__(out self, object: Object, level: Int)`


### `fn accept_from_json_object(json_object: Object, level: Int) -> Bool`


### `fn create_from_json_object(json_object: Object, level: Int) -> JsonAstNode`


### `fn signature(self) -> String`


### `fn to_string(self, just_code: Bool) -> String`


### `fn children[mut: Bool, //, origin: Origin[mut]](ref [origin] self) -> ref [origin] List[JsonAstNode]`



