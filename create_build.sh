#!/bin/bash
mkdir build-clang-debug
cd build-clang-debug
cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=RelWithDebInfo -DCMAKE_CXX_COMPILER:STRING=/usr/bin/clang++ ..
cd ..
mkdir build-gcc-debug
cd build-gcc-debug
cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=RelWithDebInfo -DCMAKE_CXX_COMPILER:STRING=/usr/bin/g++ ..
cd ..
mkdir build-gcc-release
cd build-gcc-release
cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_CXX_COMPILER:STRING=/usr/bin/g++ ..
cd ..
mkdir build-clang-release
cd build-clang-release
cmake -GNinja -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_CXX_COMPILER:STRING=/usr/bin/clang++ ..
cd ..