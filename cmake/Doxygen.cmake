 
function(enable_doxygen)
set(DOXYGEN_CALLER_GRAPH ON)
set(DOXYGEN_CALL_GRAPH ON)
set(DOXYGEN_EXTRACT_ALL ON)
find_package(Doxygen REQUIRED dot)
doxygen_add_docs(doxygen-docs ${PROJECT_SOURCE_DIR})
endfunction()