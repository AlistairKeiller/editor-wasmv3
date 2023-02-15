cmake_minimum_required(VERSION 3.24.2)

add_subdirectory(llvm-project/llvm llvm-build)

get_target_property(LLVM_INCLUDE_DIRS LLVMSupport INCLUDE_DIRECTORIES)

add_executable(build build.cpp)

message("LLVM_INCLUDE_DIRS: ${LLVM_INCLUDE_DIRS}")
message("LLVM_DEFINITIONS: ${LLVM_DEFINITIONS}")

target_include_directories(build PRIVATE ${LLVM_INCLUDE_DIRS})
target_compile_definitions(build PRIVATE ${LLVM_DEFINITIONS})
target_link_libraries(build PRIVATE clang)