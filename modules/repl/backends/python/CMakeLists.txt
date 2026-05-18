set(LIB_NAME scientool_repl_python)

add_library(scientool_repl_hobbes
    PythonBackend.cpp
    PythonBackend.hpp
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME}
    PRIVATE
    	Python::python
        scientool_core
        scientool_math
        scientool_plotting   
)

enable_project_warnings(${LIB_NAME})

