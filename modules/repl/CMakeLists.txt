set (LIB_NAME scientool_repl)
add_library(${LIB_NAME}
   
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME}
    PRIVATE
        
     
)
