cmake_minimum_required(VERSION 3.16)
project(tutorial-app  LANGUAGES CXX)
add_executable(hello main.cpp algorithms.cpp)
add_executable(algotest algorithms_test.cpp algorithms.cpp)