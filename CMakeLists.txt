cmake_minimum_required (VERSION 3.8)
project(vuh)

option(VUH_BUILD_TESTS "Build tests for vuh library" ON)
option(VUH_BUILD_BENCHMARKS "Build benchmarks for vuh library" OFF)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/config)
enable_testing()

add_subdirectory(src)
add_subdirectory(test)
