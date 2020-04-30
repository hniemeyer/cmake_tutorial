add_library(algos STATIC algorithms.cpp include/algorithms.hpp)
target_include_directories(algos PUBLIC include)
target_link_libraries(algos PRIVATE project_options project_warnings)