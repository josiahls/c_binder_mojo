#!/bin/bash

# Function to echo and run a command
run_cmd() {
    echo "Running Test: $*"
    "$@"
}


run_cmd pixi run mojo run $C_BINDER_INCLUDES tests/test_simple_nodes.mojo

run_cmd pixi run generate_example_bindings tests/test_c_project/include/rte_mbuf_core.h true

run_cmd pixi run generate_example_bindings tests/test_c_project/include/simple_type_defs.h

run_cmd pixi run generate_example_bindings tests/test_c_project/include/complex_structs.h

run_cmd pixi run generate_example_bindings tests/test_c_project/include/complex_unions.h

run_cmd pixi run generate_example_bindings tests/test_c_project/include/complex_type_defs.h true
