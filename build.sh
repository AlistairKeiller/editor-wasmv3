#!/bin/sh
set -e

sudo ap install -y ninja

cmake -G Ninja -S llvm-project/llvm -B build \
    -DCMAKE_BUILD_TYPE=Release \
    # -DLLVM_ENABLE_PROJECTS="clang;lld" \
