set(LIB_NAME scientool_repl_lua)

add_library(scientool_repl_hobbes
    LuaBackend.cpp
    LuaBackend.hpp
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME}
    PRIVATE
    	lua
        scientool_core
        scientool_math
        scientool_plotting   
)

enable_project_warnings(${LIB_NAME})

