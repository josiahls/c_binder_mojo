cmake_minimum_required(VERSION 3.10)
project(TestCProject)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)

# Create a shared library for Mojo C bindings
file(GLOB_RECURSE SOURCES "src/*.c")
add_library(test_c_project SHARED ${SOURCES})

add_library(complex_unions SHARED src/complex_unions.c)
add_library(complex_structs SHARED src/complex_structs.c)
add_library(simple_type_defs SHARED src/simple_type_defs.c)

add_library(example_node SHARED src/example_node.c)
target_include_directories(example_node PUBLIC include/)

# Make headers available to consumers
target_include_directories(test_c_project PUBLIC include/)

target_include_directories(complex_unions PUBLIC include/)
target_include_directories(complex_structs PUBLIC include/)
target_include_directories(simple_type_defs PUBLIC include/)

