cmake_minimum_required(VERSION 3.13.4)
project(build)

add_subdirectory(llvm-project/llvm)

set(LLVM_LINK_COMPONENTS
  FrontendOpenMP
  Support
  )

add_clang_executable(build
  build.cpp
  )

clang_target_link_libraries(build
  PRIVATE
  clangAST
  clangASTMatchers
  clangBasic
  clangFrontend
  clangTooling
  clangToolingRefactoring
  )
