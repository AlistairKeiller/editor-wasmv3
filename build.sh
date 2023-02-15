#!/bin/sh
set -e

sudo apt install -y ninja-build

cmake -G Ninja -S llvm-project/llvm -B build \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_EXTERNAL_PROJECTS="build" \
    -DLLVM_EXTERNAL_BUILD_SOURCE_DIR="$(pwd)" \
    -DLLVM_ENABLE_PROJECTS="clang" \
    # -DLLVM_PARALLEL_LINK_JOBS=2 \
# ninja -C build -- build