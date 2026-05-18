set (LIB_NAME scientool_plotting)
add_library(${LIB_NAME}
   src/placeholder.cpp
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_link_libraries(${LIB_NAME}
    PUBLIC
        scientool_core
        scientool_math
    PRIVATE
        matplot
        Qt6::Core        # optional
        Qt6::Gui         # optional
        Qt6::Widgets
     
)
