#!/bin/sh
set -e

sudo apt install -y ninja-build

cmake -G Ninja -S llvm-project/llvm -B build \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_EXTERNAL_PROJECTS="editor" \
    -DLLVM_EXTERNAL_EDITOR_SOURCE_DIR="$(pwd)" \
    # -DLLVM_ENABLE_PROJECTS="clang;lld" \
ninja -C build