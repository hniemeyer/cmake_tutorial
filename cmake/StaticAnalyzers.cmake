
#Cppcheck
find_program(CPPCHECK cppcheck)
if(CPPCHECK)
set(CMAKE_CXX_CPPCHECK ${CPPCHECK} --enable=all --inconclusive)
else()
message("cppcheck executable not found")
endif()


#clang-tidy
find_program(CLANGTIDY clang-tidy)
if(CLANGTIDY)
set(CMAKE_CXX_CLANG_TIDY ${CLANGTIDY})
else()
message("clang-tidy executable not found")
endif()
