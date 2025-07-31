#!/bin/bash
set -e

for lang in $(ls source); do
  echo "Building package for: $lang"
  mkdir -p build-$lang
  cd build-$lang
  cmake .. -DLANG_CODE=$lang
  make
  cpack
  cd ..
done