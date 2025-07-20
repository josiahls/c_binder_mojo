cmake_minimum_required(VERSION 3.16)
project(mujoco_hello_world)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set MuJoCo paths manually
set(MUJOCO_ROOT "/home/c_binder_mojo_user/c_binder_mojo/mujoco")
set(MUJOCO_INCLUDE_DIR "${MUJOCO_ROOT}/include")
set(MUJOCO_LIBRARY "${MUJOCO_ROOT}/build/lib/libmujoco.so")

# Create executable
add_executable(hello_world hello_world.cpp)

# Link MuJoCo directly
target_link_libraries(hello_world ${MUJOCO_LIBRARY})

# Set include directories
target_include_directories(hello_world PRIVATE ${MUJOCO_INCLUDE_DIR})

# Add runtime library path
set_target_properties(hello_world PROPERTIES
    BUILD_WITH_INSTALL_RPATH TRUE
    INSTALL_RPATH "${MUJOCO_ROOT}/build/lib"
) 