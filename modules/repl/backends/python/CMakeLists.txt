set(LIB_NAME scientool_repl_python)

add_library(${LIB_NAME}
    PythonBackend.cpp
    PythonBackend.hpp
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME}
    PRIVATE
        Python3_Embed
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

