#!/bin/bash

# Function to echo and run a command
run_cmd() {
    echo "Running Test: $*"
    "$@"
}


run_cmd pixi run mojo run -I . $C_BINDER_INCLUDES tests/test_simple_nodes.mojo

run_cmd pixi run generate_example_bindings_and_test rte_mbuf_core true

run_cmd pixi run generate_example_bindings_and_test simple_type_defs

run_cmd pixi run generate_example_bindings_and_test complex_structs

run_cmd pixi run generate_example_bindings_and_test complex_unions

run_cmd pixi run generate_example_bindings_and_test complex_type_defs true
