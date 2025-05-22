Alright, refactoring a ton of stuff. Hopefully to be less buggy.
We will have 2 modules this time:
- clang_ast_nodes
- mojo_ast_nodes

First tasks:
- strip down the tests_old module and make a new tests module. Goal is to start from a fresh start with the existing unit test headers and output
file formaters