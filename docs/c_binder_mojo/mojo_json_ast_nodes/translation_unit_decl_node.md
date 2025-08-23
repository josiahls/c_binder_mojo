---
title: translation_unit_decl_node
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/translation_unit_decl_node
parent: mojo_json_ast_nodes
---

## Aliases
### alias HEADER

### alias BANNED_TYPES

# `struct TranslationUnitDeclNode`
## Aliases
### alias __name__

## Fields
### var `children_`: `List[JsonAstNode]`

### var `level`: `Int`

## Functions
### `fn __init__(out self, object: Object, level: Int)`


### `fn accept_from_json_object(json_object: Object, level: Int) -> Bool`


### `fn create_from_json_object(json_object: Object, level: Int) -> JsonAstNode`


### `fn signature(self) -> String`


### `fn to_string(self, just_code: Bool) -> String`


### `fn children[mut: Bool, //, origin: Origin[mut]](ref [origin] self) -> ref [origin] List[JsonAstNode]`



## Functions
### `fn move_record_decls_to_top_level(mut children: List[JsonAstNode], mut node: JsonAstNode)`


### `fn move_enum_decls_to_top_level(mut children: List[JsonAstNode], mut node: JsonAstNode)`


### `fn prune_repeated_decls(mut children: List[JsonAstNode])`


