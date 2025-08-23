---
title: nodes
layout: page
permalink: /c_binder_mojo/mojo_json_ast_nodes/nodes
parent: mojo_json_ast_nodes
---

# `struct JsonAstNode`
## Aliases
### alias __name__

### alias type

## Fields
### var `node`: `ArcPointer[Variant[TranslationUnitDeclNode, TypedefDeclNode, BuiltinTypeNode, RecordTypeNode, RecordDeclNode, PointerTypeNode, ElaboratedTypeNode, FunctionDeclNode, TypedefTypeNode, QualTypeNode, ModeAttrNode, VarDeclNode, EnumDeclNode, EnumConstantDeclNode, ConstantExprNode, ParagraphCommentNode, FullCommentNode, TextCommentNode, BinaryOperatorNode, IntegerLiteralNode, EnumTypeNode, FieldDeclNode, IndirectFieldDeclNode, PlaceHolderNode, ExampleNode]]`

## Functions
### `fn __init__(out self, node: Variant[TranslationUnitDeclNode, TypedefDeclNode, BuiltinTypeNode, RecordTypeNode, RecordDeclNode, PointerTypeNode, ElaboratedTypeNode, FunctionDeclNode, TypedefTypeNode, QualTypeNode, ModeAttrNode, VarDeclNode, EnumDeclNode, EnumConstantDeclNode, ConstantExprNode, ParagraphCommentNode, FullCommentNode, TextCommentNode, BinaryOperatorNode, IntegerLiteralNode, EnumTypeNode, FieldDeclNode, IndirectFieldDeclNode, PlaceHolderNode, ExampleNode])`


### `fn __copyinit__(out self, other: Self)`


### `fn __moveinit__(out self, var other: Self)`


### `fn name(self) -> String`


### `fn accept_from_json_object(json_object: Object, level: Int) -> Self`


### `fn to_string(self, just_code: Bool) -> String`


### `fn children[mut: Bool, //, origin: Origin[mut]](ref [origin] self) -> ref [origin] List[JsonAstNode]`



