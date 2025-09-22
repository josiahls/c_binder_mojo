#!/bin/bash

# Function to echo and run a command
run_cmd() {
    echo "Running Test: $*"
    "$@"
}


run_cmd pixi run mojo run -I . $C_BINDER_INCLUDES tests/test_simple_nodes.mojo

# We don't have a unit test to assert this.
# run_cmd pixi run generate_example_bindings_and_test rte_mbuf_core true

run_cmd pixi run generate_example_bindings_and_test simple_type_defs

run_cmd pixi run generate_example_bindings_and_test complex_structs

run_cmd pixi run generate_example_bindings_and_test complex_unions

run_cmd pixi run generate_example_bindings_and_test variadic_args_node

# We don't have a unit test to assert this.
# run_cmd pixi run generate_example_bindings tests/test_c_project/include/complex_type_defs.h true
