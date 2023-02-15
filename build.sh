#!/bin/sh
set -e

sudo apt install -y ninja-build

cmake -G Ninja -S llvm-project/llvm -B build \
    -DLLVM_EXTERNAL_PROJECTS="editor" \
    -DLLVM_EXTERNAL_EDITOR_SOURCE_DIR="$(pwd)" \
    -DLLVM-ENABLE-PROJECTS="clang;build" \
    # -DLLVM_PARALLEL_LINK_JOBS=2 \
    # -DCMAKE_BUILD_TYPE=Release \
    # -DLLVM_ENABLE_PROJECTS="clang;lld" \
ninja -C build -- build