#Preamble
cmake_minimum_required(VERSION 3.16)
project(tutorial-app LANGUAGES CXX)
enable_testing()

#Project wide setting
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)
set(CMAKE_CXX_EXTENSIONS NO)

#global includes
include(Common)

add_subdirectory(src)