cmake_minimum_required(VERSION 3.13.4)
project(build)

include(llvm-project/llvm)

set(LLVM_LINK_COMPONENTS
  FrontendOpenMP
  Support
  )

add_clang_executable(build
  build.cpp
  )

clang_target_link_libraries(tool-template
  PRIVATE
  clangAST
  clangASTMatchers
  clangBasic
  clangFrontend
  clangTooling
  clangToolingRefactoring
  )
