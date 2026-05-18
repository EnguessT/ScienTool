set(LIB_NAME scientool_repl_hobbes)

add_library(scientool_repl_hobbes
    HobbesBackend.cpp
    HobbesBackend.hpp
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        ${CMAKE_SOURCE_DIR}/external/hobbes/include
)

target_link_libraries(${LIB_NAME}
    PRIVATE
    	hobbes
        scientool_core
        scientool_math
        scientool_plotting   
)

enable_project_warnings(${LIB_NAME})

