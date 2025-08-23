---
title: generate_docs
layout: page
permalink: /c_binder_mojo/docs/generate_docs
parent: docs
---

# `struct DocFunctionOverload`
## Fields
### var `name`: `String`

### var `signature`: `String`

### var `description`: `String`

## Functions
### `fn from_object(parent_path: Path, uri_path: String, object: Object) -> Self`


### `fn to_markdown(self) -> String`



# `struct DocFunction`
## Fields
### var `name`: `String`

### var `signature`: `String`

### var `overloads`: `List[DocFunctionOverload]`

## Functions
### `fn from_object(parent_path: Path, uri_path: String, object: Object) -> Self`


### `fn to_markdown(self) -> String`



# `struct DocField`
## Fields
### var `name`: `String`

### var `type`: `String`

### var `description`: `String`

## Functions
### `fn from_object(parent_path: Path, uri_path: String, object: Object) -> Self`


### `fn to_markdown(self) -> String`



# `struct DocAlias`
## Fields
### var `uri_path`: `String`

### var `fs_path`: `Path`

### var `name`: `String`

### var `signature`: `String`

## Functions
### `fn from_object(parent_path: Path, uri_path: String, object: Object) -> Self`


### `fn to_markdown(self) -> String`



# `struct DocStruct`
## Fields
### var `uri_path`: `String`

### var `fs_path`: `Path`

### var `name`: `String`

### var `signature`: `String`

### var `aliases`: `List[DocAlias]`

### var `fields`: `List[DocField]`

### var `functions`: `List[DocFunction]`

## Functions
### `fn from_object(parent_path: Path, uri_path: String, object: Object) -> Self`


### `fn to_markdown(self) -> String`



# `struct DocModule`
## Fields
### var `uri_path`: `String`

### var `fs_path`: `Path`

### var `name`: `String`

### var `structs`: `List[DocStruct]`

### var `aliases`: `List[DocAlias]`

### var `functions`: `List[DocFunction]`

## Functions
### `fn to_file(parent_path: Path, uri_path: String, object: Object)`


### `fn to_markdown(self, parent: String) -> String`


### `fn write_to[W: Writer](self, mut writer: W)`



# `struct DocPackage`
## Fields
### var `uri_path`: `String`

### var `fs_path`: `Path`

### var `name`: `String`

## Functions
### `fn to_file(parent_path: Path, uri_path: String, object: Object)`


### `fn write_to[W: Writer](self, mut writer: W)`



## Functions
### `fn doc_dispatch(parent_path: Path, uri_path: String, object: Object)`


### `fn generate_docs(json_path: Path)`


