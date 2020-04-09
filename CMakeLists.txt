#Preamble
cmake_minimum_required(VERSION 3.16)
project(tutorial-app LANGUAGES CXX)
enable_testing()

#Project wide setting
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS NO)

add_subdirectory(algorithms)
add_executable(hello main.cpp)
target_include_directories(hello PRIVATE algorithms)
target_link_libraries(hello PRIVATE algos)
add_executable(algotest algorithms_test.cpp)
target_include_directories(algotest PRIVATE algorithms)
target_link_libraries(algotest PRIVATE algos)