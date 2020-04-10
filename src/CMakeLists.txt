add_subdirectory(algorithms)
add_executable(hello main.cpp)
target_include_directories(hello PRIVATE algorithms)
target_link_libraries(hello PRIVATE algos CONAN_PKG::fmt)

# automatically enable catch2 to generate ctest targets
if(CONAN_CATCH2_ROOT_DEBUG)
  include(${CONAN_CATCH2_ROOT_DEBUG}/lib/cmake/Catch2/Catch.cmake)
else()
  include(${CONAN_CATCH2_ROOT}/lib/cmake/Catch2/Catch.cmake)
endif()


add_executable(algotest algorithms_test.cpp)
target_include_directories(algotest PRIVATE algorithms)
target_link_libraries(algotest PRIVATE algos CONAN_PKG::catch2)

catch_discover_tests(
  algotest
  TEST_PREFIX
  "algotest."
  EXTRA_ARGS
  -s
  --reporter=xml
  --out=tests.xml)