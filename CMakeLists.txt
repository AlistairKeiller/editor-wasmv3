include(CMakeDependentOption)
include(GNUInstallDirs)

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
