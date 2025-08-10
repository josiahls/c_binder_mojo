cmake_minimum_required(VERSION 3.10)
project(TestCProject)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)

# Create a shared library for Mojo C bindings
file(GLOB_RECURSE SOURCES "src/*.c")
add_library(test_c_project SHARED ${SOURCES})

# Make headers available to consumers
target_include_directories(test_c_project PUBLIC include/)
