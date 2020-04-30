#Preamble
cmake_minimum_required(VERSION 3.16)
project(tutorial-app LANGUAGES CXX)
enable_testing()

#Project wide setting
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)

add_library(project_options INTERFACE)
target_compile_features(project_options INTERFACE cxx_std_17)

#time tracing for clang
if(CMAKE_CXX_COMPILER_ID MATCHES ".*Clang")
target_compile_options(project_options INTERFACE -ftime-trace)
endif()

#global includes
include(Common)
include(StaticAnalyzers)
include(CompilerWarnings)
include(Doxygen)

enable_doxygen()

add_library(project_warnings INTERFACE)
set_project_warnings(project_warnings)

# Set up some extra Conan dependencies based on our needs
# before loading Conan
set(CONAN_EXTRA_REQUIRES catch2/2.11.0 fmt/6.0.0)
set(CONAN_EXTRA_OPTIONS "")

include(Conan)
run_conan()

add_subdirectory(src)