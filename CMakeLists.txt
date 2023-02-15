cmake_minimum_required(VERSION 3.24.2)

add_executable(build build.cpp)

find_package(LLVM REQUIRED CONFIG) # may not be needed
find_package(Clang REQUIRED CONFIG) # may not be needed

target_include_directories(build SYSTEM PRIVATE ${LLVM_INCLUDE_DIRS})
target_compile_definitions(build PRIVATE ${LLVM_DEFINITIONS})
target_link_libraries(build PRIVATE clang)