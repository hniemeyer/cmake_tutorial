add_subdirectory(algorithms)
add_subdirectory(algorithms_test)

add_executable(hello main.cpp)
target_link_libraries(hello PRIVATE project_options algos CONAN_PKG::fmt)