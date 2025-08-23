---
title: node_variant
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/node_variant
parent: mojo_json_ast_nodes
---

# `struct Variant[*Ts: JsonNodeAstLike]`
## Functions
### `fn __init__(out self, *, unsafe_uninitialized: Tuple[])`

### `fn __init__[T: Movable](out self, var value: T)`


### `fn __copyinit__(out self, other: Self)`


### `fn __moveinit__(out self, var other: Self)`


### `fn __del__(var self)`


### `fn __getitem__[T: AnyType](ref self) -> ref [self] T`


### `fn copy(self, out copy: Self)`


### `fn take[T: Movable](mut self) -> T`


### `fn unsafe_take[T: Movable](mut self) -> T`


### `fn replace[Tin: Movable, Tout: Movable](mut self, var value: Tin) -> Tout`


### `fn unsafe_replace[Tin: Movable, Tout: Movable](mut self, var value: Tin) -> Tout`


### `fn set[T: Movable](mut self, var value: T)`


### `fn isa[T: AnyType](self) -> Bool`


### `fn unsafe_get[T: AnyType](ref self) -> ref [self] T`


### `fn is_type_supported[T: AnyType]() -> Bool`



