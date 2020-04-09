find_program(CCACHE ccache)
if(CCACHE)
  message("using ccache")
  set(CMAKE_CXX_COMPILER_LAUNCHER ${CCACHE})
else()
  message("ccache not found. Cannot be used")
endif()

#Export compiler commands to external tooling
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)