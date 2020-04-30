# automatically enable catch2 to generate ctest targets
if(CONAN_CATCH2_ROOT_DEBUG)
  include(${CONAN_CATCH2_ROOT_DEBUG}/lib/cmake/Catch2/Catch.cmake)
else()
  include(${CONAN_CATCH2_ROOT}/lib/cmake/Catch2/Catch.cmake)
endif()


add_executable(algotest algorithms_test.cpp)
target_link_libraries(algotest PRIVATE project_options project_warnings algos CONAN_PKG::catch2)

catch_discover_tests(
  algotest
  TEST_PREFIX
  "algotest."
  EXTRA_ARGS
  -s
  --reporter=xml
  --out=tests.xml)