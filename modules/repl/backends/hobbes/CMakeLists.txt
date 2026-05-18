set(LIB_NAME scientool_repl_hobbes)

add_library(${LIB_NAME}
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

set_target_properties(${LIB_NAME} PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
    LIBRARY_OUTPUT_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
    ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY}
)


enable_project_warnings(${LIB_NAME})

