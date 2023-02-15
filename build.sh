#!/bin/sh
set -e

sudo apt install -y ninja-build

cmake -G Ninja -S llvm-project/llvm -B build \
    -DCMAKE_BUILD_TYPE=Release \
    # -DLLVM_ENABLE_PROJECTS="clang;lld" \
