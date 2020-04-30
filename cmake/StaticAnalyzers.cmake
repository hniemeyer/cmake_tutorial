
#Cppcheck
find_program(CPPCHECK cppcheck)
if(CPPCHECK)
set(CMAKE_CXX_CPPCHECK ${CPPCHECK} --suppress=missingInclude --enable=all --inconclusive)
else()
message("cppcheck executable not found")
endif()


#clang-tidy
find_program(CLANGTIDY clang-tidy)
if(CLANGTIDY)
set(CMAKE_CXX_CLANG_TIDY ${CLANGTIDY} -extra-arg=-Wno-unknown-warning-option)
else()
message("clang-tidy executable not found")
endif()
