find_program(CCACHE ccache)
if(CCACHE)
  message("using ccache")
  set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE})
else()
  message("ccache not found. Cannot be used")
endif()

#Export compiler commands to external tooling
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

#Enable link time optimization if possible
include(CheckIPOSupported)
check_ipo_supported(RESULT result OUTPUT output)
if(result)
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)
message("Link time optimization is possible")
else()
message("Link time optimization is not supported: ${output}")
endif()