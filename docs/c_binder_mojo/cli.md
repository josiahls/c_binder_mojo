---
title: cli
layout: page
permalink: /c_binder_mojo/cli
parent: c_binder_mojo
---

# `struct ParseMode`
## Aliases
### alias NEXT_ARG

### alias NEXT_NAMED_ARG_VALUE


# `struct ArgParser`
## Fields
### var `args`: `VariadicList[StringSlice[StaticConstantOrigin]]`

### var `positional_args`: `List[String]`

### var `named_args`: `List[String]`

## Functions
### `fn is_named_arg(v: String) -> Bool`


### `fn get_named_arg_name(v: String) -> String`


### `fn parse(self) -> Dict[String, String]`



