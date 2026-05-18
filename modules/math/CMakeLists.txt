set (LIB_NAME scientool_math)
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
    PRIVATE
        Eigen3::Eigen
)


