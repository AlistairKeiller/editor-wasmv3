cmake_minimum_required(VERSION 3.24.2)

add_subdirectory(llvm-project/llvm llvm-build)

get_target_property(LLVM_INCLUDE_DIRS)

add_executable(build build.cpp)

target_include_directories(build PRIVATE ${LLVM_INCLUDE_DIRS})
target_compile_definitions(build PRIVATE ${LLVM_DEFINITIONS})
target_link_libraries(build PRIVATE clang)