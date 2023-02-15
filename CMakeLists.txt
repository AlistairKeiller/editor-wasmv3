cmake_minimum_required(VERSION 3.24.2)

add_executable(build build.cpp)

target_include_directories(build PRIVATE clang)
# target_compile_definitions(build PRIVATE ${LLVM_DEFINITIONS})
target_link_libraries(build PRIVATE clang)