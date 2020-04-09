#!/bin/bash
mkdir build-clang
cd build-clang
cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=RelWithDebInfo -DCMAKE_CXX_COMPILER:STRING=/usr/bin/clang++ ..
cd ..
mkdir build-gcc
cd build-gcc
cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=RelWithDebInfo -DCMAKE_CXX_COMPILER:STRING=/usr/bin/g++ ..
cd ..