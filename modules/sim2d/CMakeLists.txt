set (LIB_NAME scientool_sim2d)
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
        scientool_physics
    PRIVATE
        sfml-graphics
        sfml-window
        sfml-system
        box2d
        Qt6::Core
        Qt6::Gui
        Qt6::Widgets
)
