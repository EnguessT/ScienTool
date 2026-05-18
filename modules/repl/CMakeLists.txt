set (LIB_NAME scientool_repl)
add_library(${LIB_NAME}
   src/ReplEngine.cpp
   include/scientool/repl/ReplEngine.hpp
   include/scientool/repl/IReplBackend.hpp
   
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_subdirectory(backends/hobbes)
add_subdirectory(backends/python)
add_subdirectory(backends/lua)

target_link_libraries(${LIB_NAME}
    PRIVATE
        scientool_core
        scientool_math
        scientool_plotting   
)

enable_project_warnings(scientool_repl)
