#!/bin/sh
set -e

ls

ls llvm-project

ls llvm-project/llvm

cmake -G Ninja -S llvm-project/llvm -B build \
    -DCMAKE_BUILD_TYPE=Release \
    # -DLLVM_ENABLE_PROJECTS="clang;lld" \
