#Preamble
cmake_minimum_required(VERSION 3.16)
project(tutorial-app LANGUAGES CXX)
enable_testing()

#Project wide setting
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)

add_library(project_options INTERFACE)
target_compile_features(project_options INTERFACE cxx_std_17)

#time tracing for clang
#if(CMAKE_CXX_COMPILER_ID MATCHES ".*Clang")
#add_compile_definitions(project_options INTERFACE -ftime-trace)
#endif()

#global includes
include(Common)
include(StaticAnalyzers)
include(CompilerOptions)

# Set up some extra Conan dependencies based on our needs
# before loading Conan
set(CONAN_EXTRA_REQUIRES catch2/2.11.0 fmt/6.0.0)
set(CONAN_EXTRA_OPTIONS "")

include(Conan)
run_conan()

add_subdirectory(src)