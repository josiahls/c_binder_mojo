#!/usr/bin/env bash

# pixi run mojo test -I tests/test_c_project/build --filter 'tests/test_c_project/mojo/' and all versions of it
# segfault. 

# pixi run mojo run -I tests/test_c_project/build tests/test_c_project/mojo/test_simple_type_defs.mojo
pixi run mojo run -I firehose -I EmberJson -I . tests/test_c_project/mojo/test_json_ast_parser.mojo