cmake_minimum_required(VERSION 3.24.2)

add_subdirectory(llvm-project/llvm llvm-build)

add_executable(build build.cpp)

target_link_libraries(build PRIVATE clangBasic clangCodeGen clangDriver clangFrontend clangFrontendTool clangSerialization)